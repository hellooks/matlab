function [PLCC,SROCC,pf] = ...
    rewrite_correlation(objectiveValues, subjectiveValues, f)
%   input:
%   objectiveValues: ...  (model prediction)
%   subjectiveValues: ... (mos)
%   subjective_stdValues: ...(mos)
%   output:
%   SROCC, KRCC, PLCC, OR, RMSE: values of the five performance metrics
%   ypre: after non-linear mapping

% calculate SROCC and KROCC before the non-linear mapping
SROCC = corr(objectiveValues, subjectiveValues,'type','Spearman');
KROCC = corr(objectiveValues, subjectiveValues,'type','Kendall');

%initialize the parameters used by the nonlinear fitting function
beta0(1) = max(subjectiveValues);
beta0(2) = min(subjectiveValues);
beta0(3) = mean(objectiveValues);
beta0(4) = std(objectiveValues)/4; %
% options = statset('MaxIter', 400, 'TolFun',1e-7, 'Display', 'iter');
options = statset('MaxIter', 400);
%fitting a curve using the data
model= @(beta,x) ((beta(1)-beta(2))./(1+exp((-x+beta(3))./beta(4))))+beta(2);
[betam, ehat, J] = nlinfit(objectiveValues,subjectiveValues,model,beta0,options);

%plot objective-subjective score pairs
%figure
%plot(objectiveValues,subjectiveValues,'+b','LineWidth',1);
%draw the fitted curve
t = linspace(min(objectiveValues),max(objectiveValues),200);
[ypre_t , ~] = nlpredci(model,t,betam,ehat,J);
hold on;
plot(t,ypre_t,'k','LineWidth',2);
set(gca,'FontSize',20);
axis normal;
hold off;
%given a objective value, predict the correspoing mos (ypre) using the fitted curve
[ypre , ~] = nlpredci(model,objectiveValues,betam,ehat,J);
%
RMSE = sqrt(sum((ypre-subjectiveValues).^2)/length(subjectiveValues));%root mean squared error
PLCC = corr(subjectiveValues, ypre, 'type','Pearson'); %pearson linear coefficient

dv = subjectiveValues;
de = objectiveValues;

if(f==1)
	fcv=1;
else
    fcv=sum(de.*dv)/sum(de.*de);
end
    
pf = 100*sqrt(sum((fcv*de-dv).^2)/sum(dv.*dv));

end