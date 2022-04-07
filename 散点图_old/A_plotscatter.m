global fig plt ax txt;
% data = textread('./dataset/scoreData.txt');
 SI = textread('./dataset/SI.txt');%[0,10,65][0,10,90]
 TI = textread('./dataset/TI.txt');%[0,20,120][0,10,70]
% Brightness = textread('./dataset/Brightness.txt');%[0,50,250][0,20,120]
% Colorfulness = textread('./dataset/Colorfulness.txt');%[0,20,200],[0,10,100]
% Contrast = textread('./dataset/Contrast.txt');%[0,50,450],[0,50,250]
diff = textread('./dataset/eyeData.txt');
seven = diff(:,2);
total = diff(:,4);
fig = figure;
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
plt =  scatter(TI,SI, 60, 'x', 'LineWidth', 2,'MarkerFaceColor',[0.36,0.76,0.95]);
%box on
% alpha(0.6)
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
xlabel('TI');
ylabel('Frequency');
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
% 
%histfit(seven,'kernel');
