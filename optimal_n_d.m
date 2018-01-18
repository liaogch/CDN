function [ n,d ] = optimal_n_d( q,q0,p,p0,D,N,C,delta,k,l)
nn=0:0.01:N;
n0=zeros(1,length(nn));
d0=zeros(1,length(nn));
i=zeros(1,length(nn));
for m=1:length(nn)
    n=nn(m);
    i(m)=n;
    
   
    
    if C == 0
        Q=delta;
    else if n>=C
            Q=delta+(1-delta)*C/n*(1-log(C/n));
        else
            Q=1;
        end
    end
        
    
    %n=N*(1/q)^l*d/((1/q)^l*d+(1/q0)^l);

    %Ri=d*p;%utility of ISP
    %Rc=n*q-L*C;%utility of CDN
    
    n0(m)=N*(1/q)^l*(D*(1/p)^k*Q*n/((1/p)^k*Q*n+(1/p0)^k))/((1/q)^l*(D*(1/p)^k*Q*n/((1/p)^k*Q*n+(1/p0)^k))+(1/q0)^l);
    
    %plot(i(m),n0(m),'b',i(m),i(m),'r');
end
dif=100;
flag=1;
for m=1:length(nn)
    if abs(n0(m)-i(m))<dif
        flag=m;
    end
end
n=n0(flag);
d=D*(1/p)^k*Q*n/((1/p)^k*Q*n+(1/p0)^k);
end

