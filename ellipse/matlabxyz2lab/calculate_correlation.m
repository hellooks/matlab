function [a,b,c] = calculate_correlation(data,true)
%CALCULATE_CORRELATION 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:13
    [a(i),b(i),c(i)]=rewrite_correlations(data(:,i),true,0)
end
