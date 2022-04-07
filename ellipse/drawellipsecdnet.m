figure('Position', [400,500,430,400])

% drop=[13,22,28,42,51,54]
% for i=1:55

drop=[1,3,22,25,27,29,32,33,39,41,42,49,56,67,68]%50-55 63
for i=1:69
    if (ismember(i,drop)==0)
    % y=[num2str(coefs1(i,7)),'*(x-',num2str(center(i,2)),')^2+',num2str(coefs1(i,8)),'*(x-',num2str(center(i,2)),')*(y-',num2str(center(i,3)),')+',num2str(coefs1(i,9)),'*(y-',num2str(center(i,3)),')^2=1.02']
    % ezplot(y)
    hold on
    % y=[num2str(coefs1(i,7)),'*x^2+',num2str(coefs1(i,8)),'*x*y+',num2str(coefs1(i,9)),'*y^2=1.02']
    % ezplot(y)
     A=abs(coefs_dv(i,7));
    B=coefs_dv(i,8);
    C=abs(coefs_dv(i,9));
    xx=['(x-',num2str(center(i,2)),')'];
    yy=['(y-',num2str(center(i,3)),')'];
    y=[num2str(A),'*',xx,'^2+',num2str(B),'*',xx,'*',yy,'+',num2str(C),'*',yy,'^2=2'];
    h1=ezplot(y,[-100,100])
    set(h1,'Color','r')
    
%     coefs_pre=coefs_76;
%     A=abs(coefs_pre(i,7));
%     B=coefs_pre(i,8);
%     C=abs(coefs_pre(i,9));
%     xx=['(x-',num2str(center(i,2)),')'];
%     yy=['(y-',num2str(center(i,3)),')'];
%     y=[num2str(A),'*',xx,'^2+',num2str(B),'*',xx,'*',yy,'+',num2str(C),'*',yy,'^2=1.5        '];
%     h2=ezplot(y,[-100,100])
%     set(h2,'color','black')
%     
%     hold on
%     coefs_pre=coefs_2000;
%     A=abs(coefs_pre(i,7));
%     B=coefs_pre(i,8);
%     C=abs(coefs_pre(i,9));
%     xx=['(x-',num2str(center(i,2)),')'];
%     yy=['(y-',num2str(center(i,3)),')'];
%     y=[num2str(A),'*',xx,'^2+',num2str(B),'*',xx,'*',yy,'+',num2str(C),'*',yy,'^2=1'];
%     h2=ezplot(y,[-100,100])
%     set(h2,'Color','black')
%     % 
%     % 
    coefs_pre=coefs_our;
    A=abs(coefs_pre(i,7));
    B=coefs_pre(i,8);
    C=abs(coefs_pre(i,9));
    xx=['(x-',num2str(center(i,2)),')'];
    yy=['(y-',num2str(center(i,3)),')'];
    y=[num2str(A),'*',xx,'^2+',num2str(B),'*',xx,'*',yy,'+',num2str(C),'*',yy,'^2=2'];
    h2=ezplot(y,[-100,100])
    set(h2,'color','black')
%     
    % 
   
    i
    % x0=center(i,2)
    % y0=center(i,3)
    % a=sqrt(-2/(A+C+(A-C)*(A-C)+B*B))
    % b=sqrt(-2/(A+C-(A-C)*(A-C)-B*B))
    % theta=atan(B/(A-C))*0.5
    % plot_ellipse(x0,y0,a,b,theta)
    % plot_ellipse(1,1,1,2,0.1)

    % [-0.364979097776383,0.436885650413407,1.11512578747273]
    hold on
    end
end
set(gca,'FontName','Helvetica','FontSize',11,'YTick',-60:20:100)
set(gca,'FontName','Helvetica','FontSize',11,'XTick',-60:20:60)
xlabel('a*','FontSize', 11, 'Fontname', 'Helvetica');
ylabel('b*', 'FontSize', 11, 'Fontname', 'Helvetica')
box on
grid on
p(1)=plot(NaN,NaN);
set(p(1),'color','r')
p(2)=plot(NaN,NaN);
set(p(2),'Color','black')
% p(3)=plot(NaN,NaN);
% set(p(3),'Color','green')
% p(4)=plot(NaN,NaN);
% set(p(4),'Color','black')
legend(p,'BFD-P','CD-Net','FontSize',11,'Fontname','Helvetica')
set(gca,'LineWidth',1.3)
% ezplot('0.301151118523498*x^2+0.00449338742373950*x*y+0.0542754922849173*y^2=1.02')
% [0.301151118523498,0.00449338742373950,0.0542754922849173]
% ezplot('1.35405313185694*x^2+0.381513275047026*x*y+0.544893118413277*y^2=1.02')
% [1.35405313185694,0.381513275047026,0.544893118413277]
% ezplot('0.407625551342676*x^2-0.0801624084008762*x*y+0.445839907222261*y^2 = 1.02')
% [0.407625551342676,-0.0801624084008762,0.445839907222261]
% ezplot('0.732427235644802*(x+1.403)^2+0.346079369173185*(x+1.403)*(y+27.810)+0.163526748983351*(y+27.810)^2 =0')
axis([-60 60 -60 100]);