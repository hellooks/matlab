function draw_subject(x,y,n)
% figure5(b) from computesubjectsrocc
% other method
for i = 1:n
    num(i)=i;
end
% figure('Position', [400,500,306,170])

figure('Position', [0,0,430,270])
scatter(num,x,60,'^','MarkerEdgeColor',[255,65,82]/255,'MarkerFaceColor',[255,65,82]/255)
hold on
scatter(num,y,60, 'p','MarkerEdgeColor',[57,204,204]/255,'MarkerFaceColor',[57,204,204]/255)
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
% % 图例在一行
lgd1=legend('PLCC', 'SRCC   ','interpreter', 'latex','orientation','horizontal','location','north');
legend boxon;
set(lgd1,'FontSize',10.5, 'Fontname', 'Times');


% lgd2=legend(ah,[h3,h4],'{\itC}(a2)', '{\itCv}(b2) ','orientation','horizontal','location','north');
% legend boxoff;set(lgd2,'FontName','Helvetica','FontSize',11);ah=axes('position',get(gca,'position'),'visible','off');
% 
% lgd3=legend(ah,[h5,h6],'{\itC}(a1)', '{\itCv}(b1) ','orientation','horizontal','location','north');
% legend boxoff;set(lgd3,'FontName','Helvetica','FontSize',11);

% legend({'PLCC','SRCC'}, 'interpreter', 'latex', 'Location','north', 'Position', [0.39,0.74,0.25,0.18],'FontSize',10, 'Fontname', 'Times', 'box', 'on')



% ylabel("Score", 'interpreter', 'latex', 'FontSize', 2, 'Fontname', 'Times')
% xlabel("Subjects", 'interpreter', 'latex', 'FontSize', 20, 'Fontname', 'Times')
% set(gca,'LineWidth',1.3);  %将图中的曲线加粗，1.0表示线的粗
% set(gca,'FontName','Times','FontSize',20)
box on
set(gca,'xtick',0:1:25,'FontSize',15);
% set(gca,'xticklabels','')
xlabel('Subject index','FontSize', 17, 'Fontname', 'Times')
xticklabels({'0','','','','','5','','','','','10','','','','','15','','','','','20','',''});
ylabel('Correlations', 'FontSize', 17, 'Fontname', 'Times');
xlim([0 ,21])
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

