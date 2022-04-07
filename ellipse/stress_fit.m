function STRESS_=stress_fit(dEi,dVi)
%calculate STRESS performance metric
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 F1=1;
STRESS_=100.*sqrt(sum((dEi-F1.*dVi).^2)./sum((F1.*dVi).^2));
% STRESS_=sqrt(1-((sum(dEi.*dVi)).^2)/(sum(dEi.^2).*sum(dVi.^2)));
end