function [SROCC,KROCC,PLCC,RMSE,ypre,betam,ehat,J] = ...
    scatterandfittingcurve(objectiveValues, subjectiveValues)
%   input:
%   objectiveValues: ...   here please input mos and
%   model prediction
%   subjectiveValues: ... 
%   subjective_stdValues: ...
%   output:
%   SROCC, KRCC, PLCC, OR, RMSE: values of the five performance metrics
%   ypre: after non-linear mapping
objectiveValues=rescale(objectiveValues,0,10)
subjectiveValues=rescale(subjectiveValues,0,10)
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
figure('Position', [400,500,430,270])
% [57,204,204]/255
% set(L(1),'color',[78, 33, 53]/255);
% set(L(2),'color',[222,91,21]/255);
% set(L(3),'color',[255,65,82]/255);
% set(L(4),'color',[172,82,50]/255);
% set(L(5),'color',[57,204,204]/255);
% set(L(6),'color',[170,170,170]/255);
% set(L(7),'color',[120,109,167]/255);
% set(L(8),'color',[250,210,63]/255);
% set(L(9),'color',[105,102,47]/255);
% set(L(10),'color',[185,141, 112]/255);
plot(objectiveValues,subjectiveValues,'.','LineWidth',1,'color',[170,170,170]/255);
set(gca,'FontSize',13, 'Fontname', 'Times');
set(gca,'xtick',0:2:10,'FontSize',12, 'Fontname', 'Helvetica');
set(gca,'ytick',0:2:10,'FontSize',12, 'Fontname', 'Helvetica');
% ylabel('\Delta V','FontSize', 12, 'Fontname', 'Helvetica')
% xticklabels({'','','','','5','','','','','10','','','','','15','','','','','20'});
% xlabel('CD', 'FontSize', 12, 'Fontname', 'Helvetica');
xlim([0,5])
%draw the fitted curve
t = linspace(0,10,200);
[ypre_t , ~] = nlpredci(model,t,betam,ehat,J);
ylim([0,10])
xlim([0,10])
hold on;
plot(t,ypre_t,'k','LineWidth',2,"color", [245,0,0]/255);

set(gca,'FontSize',20);
axis normal;
hold off;
%given a objective value, predict the correspoing mos (ypre) using the fitted curve
[ypre , ~] = nlpredci(model,objectiveValues,betam,ehat,J);
%
RMSE = sqrt(sum((ypre-subjectiveValues).^2)/length(subjectiveValues));%root mean squared error
PLCC = corr(subjectiveValues, ypre, 'type','Pearson'); %pearson linear coefficient

end