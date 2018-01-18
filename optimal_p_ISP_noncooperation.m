function [  p_opt ] = optimal_p_ISP_noncooperation( q,q0,pmax,p0,D,N,C,delta,k,l,B,index )
U=0;
p_opt = 0;
for p = 0:0.1:pmax
    [ n,d ] = optimal_n_d( q,q0,p,p0,D,N,C,delta,k,l);
    if index ==1
        Res = d*p+B*min(n,C);
    else
        Res = d*p;
    end
    if Res > U
        U = Res;
        p_opt = p;
    end
end


end

