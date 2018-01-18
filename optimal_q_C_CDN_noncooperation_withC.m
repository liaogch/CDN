function [ q_opt,C_opt,n_opt,d_opt ] = optimal_q_C_CDN_noncooperation_withC( qmax,q0,p,p0,D,N,Cmax,delta,k,l,L)

%OPTIMAL_Q_CDN 此处显示有关此函数的摘要
%   此处显示详细说明

U=0;
q_opt = 0;
C_opt = 0;
n_opt = 0;
d_opt = 0;
for q = 0:0.1:qmax
    for C = 0:0.1:Cmax
        [ n,d ] = optimal_n_d( q,q0,p,p0,D,N,C,delta,k,l);
        Res = n*q-L*C;
        if Res > U
            U = Res;
            q_opt = q;
            C_opt = C;
            n_opt = n;
            d_opt = d;
        end
    end
end


end

