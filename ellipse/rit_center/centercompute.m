function[l,a,b]= centercompute()
for i = 1:19
   c=xlsread([num2str(i),'.xlsx'])
   l(i)=mean(c(:,1))
   a(i)=mean(c(:,2))
   b(i)=mean(c(:,3))
   
end
% for i = 1:19
%      =xlsread([num2str(i),'.xlsx'])
%      save(c)
% end
end

