from numpy import rint
import pandas as pd
data=pd.read_csv('rit.csv',header=None)
# print(data)
# print(data[1][0])
flag=0
sum=0
num=0
# print(data[0][22]-data[0][23])
for i in range(1,156):
    if (abs(data[0][i]-data[0][i-1]))<2 and (abs(data[1][i]-data[1][i-1]))<2 and (abs(data[2][i]-data[2][i-1]))<2:
        if i==1:
            down=0
        sum=sum+1
        # print(data[0][i],data[1][i],data[2][i])
    else:
        up=i
        if sum>3:
            num=num+1
            print('a{}=all({}:{},:)'.format(num,down+1,up))
            print('c{}=allr({}:{},:)'.format(num,down+1,up))
            # print('{}_{}'.format(down+1,up))
            
        sum=1
        # print('new')
        # print(data[0][i],data[1][i],data[2][i])
        down=i
print(num)
for i in range(num):
    print('[coefs1({},:),record{}] = ellipsoidfit_2D(a{}(:,7),a{}(:,8),a{}(:,9),c{}(:,label)*scale,1)'.format(i+1,i+1,i+1,i+1,i+1,i+1))
    

for i in range(num):
    print('center({},1)=mean(a{}(:,1))'.format(i+1,i+1))
    print('center({},2)=mean(a{}(:,2))'.format(i+1,i+1))
    print('center({},3)=mean(a{}(:,3))'.format(i+1,i+1))