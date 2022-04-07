function [coefs,record]=ellipsoidfit_2D(dl,da,db,dVi,scale)
if nargin<5
    scale=1;
end

f=@(g)sum_S((abs(g(1)).*da.^2+g(2).*da.*db+abs(g(3)).*db.^2+abs(g(4)).*dl.^2+g(5).*da.*dl+g(6).*db.*dl), dVi.^2);
A=[];
b=[];
Aeq=[];
beq=[];
lb=[-inf,-inf,-inf,-inf,-inf,-inf];
ub=[inf,inf,inf,inf,inf,inf];
nonlcon=@is_ellipse;
options = optimset('MaxFunEvals',200000);
st_max=100;
for t=1:6
%     disp(['optimization random time: ',num2str(t)]);
    g0=scale.*randn(1,6);
%     g0=[0.09+0.1.*rand(1,4),0.4+0.5*rand,0.9+rand];
    try
        g = fmincon(f,g0,A,b,Aeq,beq,lb,ub,nonlcon,options);
        coe=g;
        st=stress_fit(sqrt(abs(g(1)).*da.^2+g(2).*da.*db+abs(g(3)).*db.^2+abs(g(4)).*dl.^2+g(5).*da.*dl+g(6).*db.*dl),dVi);
    catch
        coe=zeros(1,6);
        st=100;
    end
    record(t,:)=[g0 coe st];
    if st<st_max
        st_max=st;
        coefs=[g0 coe st];
    end
end
end

function [c, ceq]=is_ellipse(g)
c = g(2).^2 - abs(g(1))*abs(g(3));
% c = -1
ceq = [];
end