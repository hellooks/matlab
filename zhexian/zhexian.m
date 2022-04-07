function  zhexian()
figure('Position',  [400,500,430,270])
x=[1,2,3,4,5,6];%x轴上的数据，第一个值代表数据开始，第二个值代表间隔，第三个值代表终止
a=[0.7864,0.817,0.828,0.831,0.836,0.839]; %a数据y值
b=[0.857,0.860,0.861,0.859,0.860,0.861]; %b数据y值
c=[0.673,0.735,0.759,0.765,0.778,0.786]
grid on;
box on;
hold on;
set(gca,'xtick',0:1:8,'FontSize',11,'Fontname', 'Helvetica','LineWidth',1.3);
plot(x, a,  'color', [100,90,148]/255, 'Marker', '*','LineWidth',1.4 );
plot(x, b,  'color', [182,57,3]/255, 'Marker', 'x' ,'LineWidth',1.4);
plot(x, c,  'color', [246,200,37]/255, 'Marker', 'd' ,'LineWidth',1.4);
% plot(x,a,'-*g',x,b,'-or'); %线性，颜色，标记
% axis([0,6,0,700])  %确定x轴与y轴框图大小
% xticks(0:0.5:4.5)
% xticklabels({'1*1','3*3','5*5','7*7','9*9','11*11','13*13','15*15'})
% xticklabels({'1' ,'2','3','4','5','6','7','8','9','10'})
set(gca,'ytick',0.6:0.05:0.9,'FontSize',11,'Fontname', 'Helvetica','LineWidth',1.3);


H=legend({'All','Pixel-wise aligned','Non-pixel-wise aligned'});   %右上角标注
set(H,'Orientation','vertical','LineWidth',0.8)
ylabel("SRCC", 'FontSize', 11, 'Fontname', 'Helvetica','LineWidth',1.3)
% xlabel("Visual CD (\DeltaV) in CIELAB", 'FontSize', 11, 'Fontname', 'Helvetica','LineWidth',1.3)
% 
% asix([1 8 0.6 0.9])
xlim=([0,8])
ylim([0.6,0.9])


%0.3725,0.7411,0.7411
%0.898,0.749,0.2745
end

