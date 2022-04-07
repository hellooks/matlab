function [plcc,srcc,stress] = computecdmethod(data,score)
%COMPUTECDMETHOD 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:20
    [plcc(i),srcc(i),stress(i)] = rewrite_correlations(data(10006:30000,i), score(10006:30000), 0)
end

