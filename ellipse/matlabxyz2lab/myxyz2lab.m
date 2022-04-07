function [lab1,lab2,delta] = myxyz2lab(xyz)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%[94.65, 100, 103.97]/100
for i = 1:312
    lab1(i,:)= xyz2lab([xyz(i,1),xyz(i,2),xyz(i,3)]/100 ,'WhitePoint',[0.9481,1,1.0733]);
%     lab(i,:)= xyz2lab([xyz(i,1),xyz(i,2),xyz(i,3)]/100 ,'WhitePoint',[98.07, 100, 118.23]/100)
%     bfd-c  [98.07, 100, 118.23]/100
%     bfd-m [94.65, 100, 103.97]/100 
%     bfd [94.81, 100, 107.33]
%     lab(i,:)= xyz2lab([xyz(i,1),xyz(i,2),xyz(i,3)]/100
%     ,'WhitePoint',[0.9465,1,1.0397])%bfd-m
end
for i = 1:312
    lab2(i,:)= xyz2lab([xyz(i,4),xyz(i,5),xyz(i,6)]/100 ,'WhitePoint',[0.9481,1,1.0733]);
%     lab(i,:)= xyz2lab([xyz(i,1),xyz(i,2),xyz(i,3)]/100 ,'WhitePoint',[98.07, 100, 118.23]/100)
%     bfd-c  [98.07, 100, 118.23]/100
%     bfd-m [94.65, 100, 103.97]/100 
%     bfd [94.81, 100, 107.33]
%     lab(i,:)= xyz2lab([xyz(i,1),xyz(i,2),xyz(i,3)]/100
%     ,'WhitePoint',[0.9465,1,1.0397])%bfd-m
end
delta(:,1)=lab1(:,1)-lab2(:,1)
delta(:,2)=lab1(:,2)-lab2(:,2)
delta(:,3)=lab1(:,3)-lab2(:,3)

