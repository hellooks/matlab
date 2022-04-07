% global fig plt ax txt;
% data = textread('./dataset/scoreData.txt');
%  SI = textread('./dataset/SI.txt');%[0,10,65][0,10,90]
%  TI = textread('./dataset/TI.txt');%[0,20,120][0,10,70]
% % Brightness = textread('./dataset/Brightness.txt');%[0,50,250][0,20,120]
% % Colorfulness = textread('./dataset/Colorfulness.txt');%[0,20,200],[0,10,100]
% % Contrast = textread('./dataset/Contrast.txt');%[0,50,450],[0,50,250]
% diff = textread('./dataset/eyeData.txt');
% seven = diff(:,2);
% total = diff(:,4);
% fig = figure;
%plt = histogram(Contrast,'color',[78, 33, 53]/255);
% axes1 = axes('Parent',fig,'xAxisLocation','top','yAxisLocation','right');
% hold(axes1,'all');
% axes2 = axes('Parent',fig,'xAxisLocation','bottom','yAxisLocation','left');
% box(axes2,'on');
% set(axes2,'xtick',0:10:120)
% set(axes1,'xtick',[])
% set(axes2,'ylim',[0,70])
% set(axes2,'ytick',0:10:70)
% set(axes1,'ytick',[])
% set(axes1,'ylim',[0,70])
% fig('Position', [400,500,306,170])




% % 
figure('Position', [400,500,430,270])
plt =  scatter(brightness_sum,colorfulness_sum, 50, '.','MarkerEdgeColor',[128,128,128]/255, 'LineWidth', 2,'MarkerFaceColor',[128,128,128]/255);
% set(gca,'FontSize',50);  %改变图中坐标的大小 20表示坐标显示的大小
% set(gca,'LineWidth',1.3);  %将图中的曲线加粗，1.0表示线的粗细
set(gca,'FontName','Times','FontSize',24,'YTick',0:40:125)
set(gca,'FontName','Times','FontSize',24,'XTick',0:100:300)
xlabel('Brightness','FontSize', 24, 'Fontname', 'Times');
ylabel('Colorfulness', 'FontSize', 24, 'Fontname', 'Times')

% figure('Position', [400,500,430,270])
% plt =  scatter(contrast_sum,colorfulness_sum, 50, '.', 'MarkerEdgeColor',[128,128,128]/255,'LineWidth', 2,'MarkerFaceColor',[128,128,128]/255);
% % set(gca,'xlim',[0,30])
% % set(gca,'ylim',[0,80])
% set(gca,'LineWidth',1.3);  %将图中的曲线加粗，1.0表示线的粗
% set(gca,'FontName','Times','FontSize',24,'YTick',0:40:120)
% set(gca,'FontName','Times','FontSize',24,'XTick',0:10:30)
% % 
% xlabel('Contrast','FontSize', 24, 'Fontname', 'Times');
% ylabel('Colorfulness', 'FontSize', 24, 'Fontname', 'Times');


% plt =  scatter(sharpness_sum,contrast_sum, 60, '.', 'MarkerEdgeColor',[0.36,0.76,0.95],'LineWidth', 2,'MarkerFaceColor',[0 .7 .7]);
% set(gca,'xlim',[0,30])
set(gca,'ylim',[0,120])
% % 
% set(gca,'FontName','Times','FontSize',17)
% xlabel('Contrast','FontSize', 21, 'Fontname', 'Times');
% ylabel('Colorfulness', 'FontSize', 21, 'Fontname', 'Times');

%box on
% alpha(0.6)Fontname
%xticks([0:15:120]);
%yticks([0:10:70]);

%plt = histogram(TI,'FaceAlpha',0.6);
box on

% xticks([70:-10:0]);

%plt = histfit(seven,'');
%hold on
%plt = histfit(total);
%hold on
%histogram(Contrast);

%legend('Starting point I','Starting point I','Starting point II','Starting point II')
%legend('7s','7s','15s','15s');
%text(1,1,num2str((mean(seven))));
%text(1,2,num2str(std(seven)));
%text(2,1,num2str((mean(total))));
%text(2,2,num2str(std(total)));
txt = title('');
ax = gca;

% figure('Position', [400,500,432,240])
% scatter(SI,Colorfulness);
% %histogram(SI)
% set(gca,...
%     'Units','normalized',...
%     'YTick',25:25:100,...
%     'XTick',0:15:65,...
%     'LineWidth',1.0,...
%     'color',[1,1,1],...
%     'FontSize',14,...
%     'FontName','Helvetica',...
%     'Color', '#FFFFFF',...
%     'looseInset',[0 0 0.08 0])
% % legend({'$p$=0.0', '$p$=0.5', '$p$=1.0'}, 'interpreter', 'latex', 'Location','north', 'Position', [0.39,0.74,0.25,0.18],'FontSize',9, 'Fontname', 'Helvetica', 'box', 'off')
% ylabel("Count", 'Fontname', 'Helvetica', 'FontSize', 14)
% xlabel("SI", 'interpreter', 'latex', 'FontSize', 14, 'Fontname', 'Helvetica')
%histfit(seven,'kernel');
