function [stress] = 

(data)
%COMPUTEPATCH 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:16
    dv = data(:,16);
    de = data(:,i);
    fcv=sum(de.*dv)/sum(de.*de);
    stress(i) = 100*sqrt(sum((fcv*de-dv).^2)/sum(dv.*dv));
end

