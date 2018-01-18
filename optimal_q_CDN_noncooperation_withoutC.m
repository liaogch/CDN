function [ q_opt, n_opt, d_opt ] = optimal_q_CDN_noncooperation_withoutC(qmax,q0,p,p0,D,N,C,delta,k,l,L )
%OPTIMAL_Q_CDN 此处显示有关此函数的摘要
%   此处显示详细说明

U=0;
q_opt = 0;
n_opt = 0;
d_opt = 0;
for q = 0.1:0.1:qmax
        [ n,d ] = optimal_n_d( q,q0,p,p0,D,N,C,delta,k,l);
        Res = n*q-L*C;
        if Res > U
            U = Res;
            q_opt = q;
            n_opt = n;
            d_opt = d;
        end

end