function [PLCC,SRCC] = MMMA(results,n,m)

% caculate [min,max,median,average] of SRCC and PLCC 
% results only contain n subjects
% n means the number of subjects
% m means the number of pairs
% min,max,media,mean
for k=1:100
    r=randperm( size(results,2) ); 
    new=results(:, r);
    for i=1:m
        sum1(i)=0;
        for j=1:10
            sum1(i)=sum1(i)+new(i,j);
        end
        average1(i)=sum1(i)/10;
        sum2(i)=0;
        for j=11:19
            sum2(i)=sum2(i)+new(i,j);
        end
        average2(i)=sum2(i)/9;
    end
    average3=average1'
    average4=average2'
    [PLCC(k),SRCC(k),pf] = rewrite_correlations(average3,average4,1)
end
end

