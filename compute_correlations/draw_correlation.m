function draw_correlation()
%data: 4组，每组5个数据
y=[0.783 0.760 0.781 0.796;
   0.776 0.783 0.781 0;
   0.753 0.731 0.757 0;
];
% y=[0.811 0.806 0.824 0.844;
%    0.794 0.834 0.825 0;
%    0.766 0.780 0.811 0;
% ];
y=[0.147 0.150 0.136 0.134;
   0.147 0.135 0.136 0;
   0.157 0.155 0.140 0;
];
figure('Position', [400,500,430,270])
x=[1 2 3 4]; %对应4组
% t1=y(:,1) 
% t2=y(:,2) 
% t3=y(:,3)
% t4=y(:,4)
t1=y(1,:) 
t2=y(2,:) 
t3=y(3,:)
% t4=y(4,:)
t=[t1;t2;t3];
 
%plot bar
c=bar(x,y);
set(c(1,1),'FaceColor',[166,125,99]/255,'BarWidth',0.91);% c(1,1) 就是设置第一组的第一个数据柱
set(c(1,2),'FaceColor',[207,66,15]/255,'BarWidth',0.91);% c(1,2) 设置第二个
set(c(1,3),'FaceColor',[103,89,156]/255,'BarWidth',0.91);%‘FaceColor’ 设置柱的颜色 %‘BarWidth’ 设置柱的宽度  % 对于单个柱，设置c(1),c(2),c(3),...即可

set(c,'edgecolor','none');
% set(c(1,4),'FaceColor',[71,165,202]/255,'BarWidth',0.91)
% set(c(1,4),'FaceColor',[41,122,178]/255,'BarWidth',0.91)
 
 
% 在每个柱顶部添加相应的数字
for i = 1:4
    h=text(x(i)-0.15,t1(i)+0.005,num2str(t1(i)),...   
        'HorizontalAlignment','center',...    
        'VerticalAlignment','bottom','FontSize',9,'Fontname', 'Times')  %0.3可以调整相邻柱之间的间隔，手动调节 
    set(h,'rotation',90)
    h=text(x(i)+0.1,t2(i)+0.005,num2str(t2(i)),...    
        'HorizontalAlignment','center',...    
        'VerticalAlignment','bottom','FontSize',9,'Fontname', 'Times')   %‘FontSize’设置文字大小
    set(h,'rotation',90)
    h=text(x(i)+0.34,t3(i)+0.005,num2str(t3(i)),...   
        'HorizontalAlignment','center',...   
        'VerticalAlignment','bottom','FontSize',9,'Fontname', 'Times')
    set(h,'rotation',90)
%     text(x(i)+0.1,t4(i)+0.01,num2str(t4(i)),...   
%         'HorizontalAlignment','center',...   
%         'VerticalAlignment','bottom','FontSize',8,'Fontname', 'Times')
%     text(x(i)+0.3,t5(i),num2str(t5(i)),...   
%         'HorizontalAlignment','center',...   
%         'VerticalAlignment','bottom','FontSize',10)
  
end

 
%设置 x y轴刻度标签
set(gca,'XTickLabel',{'Ours','ResNet-18','ResNet-34','ResNeXt-101'},'FontSize',11,'Fontname', 'Times');
% set(gca,'YTicklabel',{'0.6','0.7','0.8','0.9'},'Fontname', 'Times','FontSize',12);
% ylim([0.68,0.9])
% %设置 y轴刻度
% set(gca,'YTick',0.7:0.05:0.9);
 
%给 x y轴加名字
% xlabel('Dataset','FontSize',15)

ylim([0.12,0.17])
%设置 y轴刻度
% set(gca,'YTick',0.1,0.01,0.2);
ylabel('STRESS','FontSize',13,'Fontname', 'Times');
 
%不同算法图例
h=legend('MAE','MSE','MAE+MSE','Contrastive Loss','Ours','location','northwest','FontSize',9,'Fontname', 'Times','interpreter', 'latex','orientation','horizontal');%'location' 控制图例放置位置
set(h,'box','off')
%  
% %将结果图像保存为PDF格式
% set(gcf,'Units','Inches');
% pos = get(gcf,'Position');
% set(gcf,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);
% filename='result';%只需改动名字
% print(gcf,filename,'-dpdf','-r0')
% close(gcf);

%若保存的PDF有较多空白边缘，则修改纸的大小如下
% fig=gcf;
% fig.PaperPositionMode = 'auto';
% fig_pos = fig.PaperPosition;
% fig.PaperSize = [fig_pos(3)-5 fig_pos(4)-4];%PaperSize: WxH 可以调节纸大小，进而修改空白边
% filename='result';
% print(gcf,filename,'-dpdf','-r0');
end

