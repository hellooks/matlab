function draw_subjective_score(x)
% p1 = 0;
% p2 = 0.5;
% p3 = 1.0;
% x = [];
% fidelity = [];
% ce = [];
% for diff = -5:0.1:5
%     pw = 0.5 * (1 + erf(diff/sqrt(2)));
%     x = [x; diff];
%     fidelity = [fidelity; [1-sqrt(pw*p1)-sqrt((1-pw)*(1-p1)), 1-sqrt(pw*p2)-sqrt((1-pw)*(1-p2)), 1-sqrt(pw*p3)-sqrt((1-pw)*(1-p3))]];
%     ce = [ce; [-p1*log(pw)-(1-p1)*log(1-pw), -p2*log(pw)-(1-p2)*log(1-pw), -p3*log(pw)-(1-p3)*log(1-pw)]];
% end

figure('Position',  [400,500,430,270])
% hold on

set(gca,'LineWidth',1.3);  %将图中的曲线加粗，1.0表示线的粗细
% plot(x,ce(:,1), 'LineWidth', 2, "color",[222,91,21]/255)
% hold on
% plot(x,ce(:,2), 'LineWidth', 2, "color", [250,210,63]/255)
% hold on
% plot(x,ce(:,3),  'LineWidth',2, "color", [120,109,167]/255)
% hold on
% set(gca,'xlim',[0,5])
% set(gca,...
%     'Units','normalized',...
%     'YTick',0:100:800,...
%     'XTick',0:1:5,...
%     'LineWidth',1.0,...
%     'color',[1,1,1],...
%     'FontSize',9,...
%     'FontName','times',...
%     'Color', '#FFFFFF',...
%     'looseInset',[0 0 0.06 0])
% legend({'$p$=0.0', '$p$=0.5', '$p$=1.0'}, 'interpreter', 'latex', 'Location','north', 'Position', [0.39,0.74,0.25,0.18],'FontSize',9, 'Fontname', 'Helvetica', 'box', 'off')

binranges=0:0.25:5;
[bincounts]=histc(x,binranges)
h=bar(binranges,bincounts,'histc')

set(h,'FaceColor',[128,128,128]/255);

% 
% histogram(x,14,'FaceColor',[128,128,128]/255);
% 
set(gca,'ytick',0:1000:5000,'FontSize',10,'Fontname', 'Helvetica');
set(gca,'xtick',0:1:10,'FontSize',10,'Fontname', 'Helvetica');
xticks(0:0.5:4.5)
xticklabels({'0.0','0.5','1.0','1.5','2.0','2.5','3.0','3.5','4.0','4.5'})
% set(gca,'xTickLabel','xtick','%.2f');
ylabel("Count", 'FontSize', 10, 'Fontname', 'Helvetica')
xlabel("Visual CD (\DeltaV)", 'FontSize', 10, 'Fontname', 'Helvetica')
xlim([0.75,4])
% 
ylim([0,5000])





% xlim([0,5])
% figure('Position', [800,500,306,170])
% plot(x,fidelity(:,1), 'LineWidth', 2, "color", [222,91,21]/255)
% hold on
% plot(x,fidelity(:,2), 'LineWidth', 2, "color", [250,210,63]/255)
% hold on
% plot(x,fidelity(:,3), 'LineWidth', 2, "color", [120,109,167]/255)
% hold off
% set(gca,...
%     'Units','normalized',...
%     'YTick',0:0.2:1.1,...
%     'XTick',-5:2.5:5,...
%     'LineWidth',1.0,...
%     'FontSize',9,...
%     'FontName','Helvetica',...
%     'Color', '#FFFFFF',...
%     'looseInset',[0 0 0.06 0])
% legend({'$p$=0.0', '$p$=0.5', '$p$=1.0'}, 'interpreter', 'latex','Location','north','Position', [0.39,0.74,0.25,0.18], 'FontSize',9, 'Fontname', 'Helvetica', 'box', 'off')
% ylabel("Fidelity Loss", 'Fontname', 'Helvetica', 'FontSize', 9)
% xlabel("$f_w$($x$) - $f_w$($y$)", 'interpreter', 'latex', 'FontSize',9, 'Fontname', 'Helvetica')

%%
% set(L(1),'color',[78, 33, 53]/255);
% set(L(2),'color',[222,91,21]/255);
% set(L(3),'color',[255,65,82]/255);
% set(L(4),'color',[172,82,50]/255);
% set(L(5),'color',[57,204,204]/255);
% set(L(6),'color',[170,170,170]/255);
% set(L(7),'color',[120,109,167]/255);
% set(L(8),'color',[250,210,63]/255);
% set(L(9),'color',[105,102,47]/255);
% set(L(10),'color',[185,141, 112]/255);
end

