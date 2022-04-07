function [plcc,srcc,stress] = compute_24method(data,mos)
%COMPUTE_24METHOD 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:20
     [plcc(i),srcc(i),stress(i)]=rewrite_correlations(data(10006:30000,i),mos(10006:30000),0)
%      save matlabdata/plcc19-21.txt -ascii plcc
%      save matlabdata/srcc19-21.txt -ascii srcc
%      save matlabdata/stress19-21.txt -ascii stress
end

