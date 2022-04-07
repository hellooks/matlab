function draw_correlation2(x,y,z,mos)
%   散点图 score and mos
%   此处显示详细说明


figure('Position', [400,500,430,270])

scatter(x,mos,10,'.','MarkerEdgeColor',[255,65,82]/255,'MarkerFaceColor',[255,65,82]/255)
hold on
scatter(y,mos,10, '.','MarkerEdgeColor',[57,204,204]/255,'MarkerFaceColor',[57,204,204]/255)
hold on
scatter(z,mos,10, '.','MarkerEdgeColor',[0,47,167]/255,'MarkerFaceColor',[57,204,204]/255)
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
% %     'looseInset',[0 0 0.06 0])
% hl = legend(H([1 6 11 16 21],'1','6','11','16','21'));

% set(hl,'Orientation','horizon')


legend({'MAE','MSE','MAE+MSE'}, 'interpreter', 'latex', 'Location','north', 'Position', [0.39,0.74,0.25,0.18],'FontSize',10, 'Fontname', 'Times', 'box', 'on')



% ylabel("Score", 'interpreter', 'latex', 'FontSize', 2, 'Fontname', 'Times')
% xlabel("Subjects", 'interpreter', 'latex', 'FontSize', 20, 'Fontname', 'Times')
% set(gca,'LineWidth',1.3);  %将图中的曲线加粗，1.0表示线的粗
% set(gca,'FontName','Times','FontSize',20)
box on
set(gca,'xtick',0:1:5,'FontSize',13, 'Fontname', 'Times');
set(gca,'ytick',0:1:5,'FontSize',13, 'Fontname', 'Times');
xlabel('Predicted Quality','FontSize', 13, 'Fontname', 'Times')
% xticklabels({'','','','','5','','','','','10','','','','','15','','','','','20'});
ylabel('MOS', 'FontSize', 13, 'Fontname', 'Times');
% ylim([0 100])
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


