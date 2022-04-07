function  [PLCC,SROCC,STRESS]=computesubjectsrocc(results,average)
%COMPUTESUBJECTSROCC 此处显示有关此函数的摘要
%   此处显示详细说明
% 19 subjects
%注意results 要table2array
average=results(:,20);
for i = 1:20
    subject = results(:,i);
    [PLCC(i),SROCC(i),STRESS(i)] = rewrite_correlations(average,subject,0);
end

% subject = results(:,3);
% [PLCC(3),SROCC(3),STRESS] = rewriter_correlations(subject,average,1);
end

