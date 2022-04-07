clear all
close all
clc
p1 = 0;
p2 = 0.5;
p3 = 1.0;
x = [];
fidelity = [];
ce = [];
for diff = -5:0.1:5
    pw = 0.5 * (1 + erf(diff/sqrt(2)));
    x = [x; diff];
    fidelity = [fidelity; [1-sqrt(pw*p1)-sqrt((1-pw)*(1-p1)), 1-sqrt(pw*p2)-sqrt((1-pw)*(1-p2)), 1-sqrt(pw*p3)-sqrt((1-pw)*(1-p3))]];
    ce = [ce; [-p1*log(pw)-(1-p1)*log(1-pw), -p2*log(pw)-(1-p2)*log(1-pw), -p3*log(pw)-(1-p3)*log(1-pw)]];
end

figure('Position', [400,500,306,170])
plot(x,ce(:,1), 'LineWidth', 2, "color",[222,91,21]/255)
hold on
plot(x,ce(:,2), 'LineWidth', 2, "color", [250,210,63]/255)
hold on
plot(x,ce(:,3),  'LineWidth',2, "color", [120,109,167]/255)
hold off
set(gca,...
    'Units','normalized',...
    'YTick',0:3:15,...
    'XTick',-5:2.5:5,...
    'LineWidth',1.0,...
    'color',[1,1,1],...
    'FontSize',9,...
    'FontName','Helvetica',...
    'Color', '#FFFFFF',...
    'looseInset',[0 0 0.06 0])
legend({'$p$=0.0', '$p$=0.5', '$p$=1.0'}, 'interpreter', 'latex', 'Location','north', 'Position', [0.39,0.74,0.25,0.18],'FontSize',9, 'Fontname', 'Helvetica', 'box', 'off')
ylabel("Cross Entropy Loss", 'Fontname', 'Helvetica', 'FontSize', 9)
xlabel("$f_w$($x$) - $f_w$($y$)", 'interpreter', 'latex', 'FontSize', 9, 'Fontname', 'Helvetica')
ylim([0 15])

figure('Position', [800,500,306,170])
plot(x,fidelity(:,1), 'LineWidth', 2, "color", [222,91,21]/255)
hold on
plot(x,fidelity(:,2), 'LineWidth', 2, "color", [250,210,63]/255)
hold on
plot(x,fidelity(:,3), 'LineWidth', 2, "color", [120,109,167]/255)
hold off
set(gca,...
    'Units','normalized',...
    'YTick',0:0.2:1.1,...
    'XTick',-5:2.5:5,...
    'LineWidth',1.0,...
    'FontSize',9,...
    'FontName','Helvetica',...
    'Color', '#FFFFFF',...
    'looseInset',[0 0 0.06 0])
legend({'$p$=0.0', '$p$=0.5', '$p$=1.0'}, 'interpreter', 'latex','Location','north','Position', [0.39,0.74,0.25,0.18], 'FontSize',9, 'Fontname', 'Helvetica', 'box', 'off')
ylabel("Fidelity Loss", 'Fontname', 'Helvetica', 'FontSize', 9)
xlabel("$f_w$($x$) - $f_w$($y$)", 'interpreter', 'latex', 'FontSize',9, 'Fontname', 'Helvetica')
%
% set(L(1),'color',[78, 33, 53]/255);%��ɫ
% set(L(2),'color',[222,91,21]/255);%��ɫ
% set(L(3),'color',[255,65,82]/255);%��ɫ
% set(L(4),'color',[172,82,50]/255);%��ɫ
% set(L(5),'color',[57,204,204]/255);%��ɫ
% set(L(6),'color',[170,170,170]/255);%��ɫ
% set(L(7),'color',[120,109,167]/255);%����ɫ
% set(L(8),'color',[250,210,63]/255);%��ɫ
% set(L(9),'color',[105,102,47]/255);%����ɫ
% set(L(10),'color',[185,141, 112]/255);%��ɫ

