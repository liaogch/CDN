q=2;%subscription fee CP to CDN 
q0=1;
p=1;%subscription fee user to ISP
p0=3;
Q=0;%quality per download. 1: cached content; <1: uncached content
k=3;%sensitivity parameter of user
l=2;%sensitivity parameter of CP
L=1;%price per unit of server capacity C
C=0;%server capacity

N=10;%base mass of content
n=0;%mass of content; indicator for innovation
D=10;%base mass of users
d=0;%mass of users
delta=0.6;
qmax=5;
pmax=10;
Cmax=5;
U=0;
q_opt=0;
p_opt=0;
C_opt=0;
d_opt=0;
n_opt=0;

q=0.1:0.1:qmax;
p=0.1:0.1:pmax;
BR_CDN=zeros(4,length(p));
BR_ISP=zeros(1,length(q));
for i=1:length(p)
    [BR_CDN(1,i), BR_CDN(2,i), BR_CDN(3,i), BR_CDN(4,i)]=optimal_q_C_CDN_noncooperation_withC( qmax,q0,p(i),p0,D,N,Cmax,delta,k,l,L);
end

for i=1:length(p)
    BR_ISP(i)=optimal_p_ISP_noncooperation( BR_CDN(1,i),q0,pmax,p0,D,N,BR_CDN(2,i),delta,k,l,L,0 );
end

dif = 100;
flag = 0;
for i = 1:length(p)
    res = abs(p(i)-BR_ISP(i));
    if res < dif
        dif = res;
        flag = i;
    end
end

%NE = [p(flag) BR_q_CDN(,flag)];
p_opt=p(flag);
q_opt=BR_CDN(1,flag);
C_opt=BR_CDN(2,flag);
n_opt=BR_CDN(3,flag);
d_opt=BR_CDN(4,flag)';

if C_opt == 0
        Q_opt = delta;
    else if n_opt >= C_opt
            Q_opt = delta+(1-delta)*C_opt/n_opt*(1-log(C_opt/n_opt));
        else
            Q_opt=1;
        end
    end

U_ISP = d_opt*p_opt;
U_CDN = n_opt*q_opt-L*C_opt;
U = U_ISP + U_CDN;
U_ISP
U_CDN
U
diff
q_opt
p_opt
C_opt
n_opt
d_opt
Q_opt

%plot(p,BR_CDN,'r',BR_ISP,q,'b');

saveresult([U_ISP U_CDN U q_opt p_opt C_opt n_opt d_opt Q_opt],'D:\Users\liao\ÎÄµµ\MATLAB\CDN\result\','noncooperationwithC_k=3_','.txt');