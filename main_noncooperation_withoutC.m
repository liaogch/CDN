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
qmax=8;
pmax=10;
Cmax=0;
U=0;
q_opt=0;
p_opt=0;
C_opt=0;


q=0.1:0.1:qmax;
p=0.1:0.1:pmax;
BR_CDN=zeros(3,length(p));
BR_ISP=zeros(1,length(q));
for i=1:length(p)
    
    [BR_CDN(1,i), BR_CDN(2,i), BR_CDN(3,i) ]=optimal_q_CDN_noncooperation_withoutC(qmax,q0,p(i),p0,D,N,C,delta,k,l,L);
end

for i=1:length(q)
    BR_ISP(i)=optimal_p_ISP_noncooperation( p(i),q0,pmax,p0,D,N,C,delta,k,l,L,0 );
end

plot(p,BR_CDN(1,:),'r',BR_ISP,q,'b');
xlabel('p');
ylabel('q');

diff=100;
for i = 1:length(p)
    p1 =p(i);
    qq = BR_CDN(1,i);
    p2 = BR_ISP(int8(qq*10));
    if abs(p1-p2) < diff
        diff = abs(p1-p2);
        p_opt = p1;
        q_opt = qq;
        n_opt = BR_CDN(2,i);
        d_opt = BR_CDN(3,i);
    end
end
U_ISP = d_opt*p_opt;
U_CDN = n_opt*q_opt;
U = U_ISP + U_CDN;
diff
q_opt
p_opt
n_opt
d_opt
saveresult([U_ISP U_CDN U q_opt p_opt n_opt d_opt],'D:\Users\liao\ÎÄµµ\MATLAB\CDN\result\','noncooperationwithoutC_k=3_','.txt');

