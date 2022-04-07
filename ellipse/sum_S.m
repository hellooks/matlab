function Sum=sum_S(x,y)
%calculate STRESS performance metric
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 F1=1;
Sum=sum((x-y).^2)
% STRESS_=sqrt(1-((sum(dEi.*dVi)).^2)/(sum(dEi.^2).*sum(dVi.^2)));
end
