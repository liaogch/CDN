
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
qmax=3;
pmax=7;
Cmax=5;
U=0;
q_opt=0;
p_opt=0;
C_opt=0;
n_opt=0;
d_opt=0;

for q=1:0.1:2
    %tic
    for p=3:0.1:5
            for C=2.5:0.1:6
                %fprintf('q=%1.2f,p=%1.2f,C=%1.2f\n',q,p,C);
                [ n,d ] = optimal_n_d( q,q0,p,p0,D,N,C,delta,k,l);
                Res = n*q+d*p-L*C;
                if Res>U
                    U = Res;
                    q_opt = q;
                    p_opt = p;
                    C_opt = C;
                    n_opt = n;
                    d_opt = d;
                end
            end
        
    end
    %toc;
    %fprintf('a');
end

if C_opt == 0
        Q_opt = delta;
    else if n_opt >= C_opt
            Q_opt = delta+(1-delta)*C_opt/n_opt*(1-log(C_opt/n_opt));
        else
            Q_opt=1;
        end
    end
U
q_opt
p_opt
C_opt
n_opt
d_opt
Q_opt
saveresult([U q_opt p_opt C_opt n_opt d_opt Q_opt],'D:\Users\liao\ÎÄµµ\MATLAB\CDN\result\','cooperation_k=3_','.txt');