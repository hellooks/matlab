function [plcc,srcc,stress] = computesplit(splitdata)
%COMPUTESPLIT 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:100
%1-201
    num=2*i
    [plcc(i),srcc(i),stress(i)]=rewrite_correlations(splitdata(:,num),splitdata(:,num+1),0)
end

