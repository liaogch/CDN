
D1_without_CDN=textread('without_CDN_k=1.75_.txt')
D2_without_CDN=textread('without_CDN_k=2_.txt')
D3_without_CDN=textread('without_CDN_k=2.25_.txt')
D4_without_CDN=textread('without_CDN_k=2.5_.txt')
D5_without_CDN=textread('without_CDN_k=2.75_.txt')
D6_without_CDN=textread('without_CDN_k=3_.txt')
p_without_CDN=[D1_without_CDN(3) D2_without_CDN(3) D3_without_CDN(3) D4_without_CDN(3) D5_without_CDN(3) D6_without_CDN(3) ]



hold on;
D1_cooperation=textread('cooperation_k=1.75_new.txt')
D2_cooperation=textread('cooperation_k=2_new.txt')
D3_cooperation=textread('cooperation_k=2.25_new.txt')
D4_cooperation=textread('cooperation_k=2.5_new.txt')
D5_cooperation=textread('cooperation_k=2.75_new.txt')
D6_cooperation=textread('cooperation_k=3_new.txt')
p_cooperation = [D1_cooperation(3) D2_cooperation(3) D3_cooperation(3) D4_cooperation(3) D5_cooperation(3) D6_cooperation(3)]



% D1_noncooperationwithoutC=textread('noncooperationwithoutC_k=1.75_.txt')
% D2_noncooperationwithoutC=textread('noncooperationwithoutC_k=2_.txt')
% D3_noncooperationwithoutC=textread('noncooperationwithoutC_k=2.25_.txt')
% D4_noncooperationwithoutC=textread('noncooperationwithoutC_k=2.5_.txt')
% D5_noncooperationwithoutC=textread('noncooperationwithoutC_k=2.75_.txt')
% D6_noncooperationwithoutC=textread('noncooperationwithoutC_k=3_.txt')
% p_noncooperationwithoutC=[D1_noncooperationwithoutC(5) D2_noncooperationwithoutC(5) D3_noncooperationwithoutC(5) D4_noncooperationwithoutC(5) D5_noncooperationwithoutC(5) D6_noncooperationwithoutC(5)]
%k=1.75:0.25:3;
%plot(k,p_noncooperationwithoutC,'k.-');
%}

D1_noncooperationwithC=textread('noncooperationwithC_k=1.75_new.txt')
D2_noncooperationwithC=textread('noncooperationwithC_k=2_new.txt')
D3_noncooperationwithC=textread('noncooperationwithC_k=2.25_new.txt')
D4_noncooperationwithC=textread('noncooperationwithC_k=2.5_new.txt')
D5_noncooperationwithC=textread('noncooperationwithC_k=2.75_new.txt')
D6_noncooperationwithC=textread('noncooperationwithC_k=3_new.txt')
p_noncooperationwithC=[D1_noncooperationwithC(5) D2_noncooperationwithC(5) D3_noncooperationwithC(5) D4_noncooperationwithC(5) D5_noncooperationwithC(5) D6_noncooperationwithC(5)]

q_without_CDN=[D1_without_CDN(2) D2_without_CDN(2) D3_without_CDN(2) D4_without_CDN(2) D5_without_CDN(2) D6_without_CDN(2) ]
U_without_CDN=[D1_without_CDN(1) D2_without_CDN(1) D3_without_CDN(1) D4_without_CDN(1) D5_without_CDN(1) D6_without_CDN(1)]
n_without_CDN=[D1_without_CDN(4) D2_without_CDN(4) D3_without_CDN(4) D4_without_CDN(4) D5_without_CDN(4) D6_without_CDN(4)]
d_without_CDN=[D1_without_CDN(5) D2_without_CDN(5) D3_without_CDN(5) D4_without_CDN(5) D5_without_CDN(5) D6_without_CDN(5)]
    


q_cooperation = [D1_cooperation(2) D2_cooperation(2) D3_cooperation(2) D4_cooperation(2) D5_cooperation(2) D6_cooperation(2)]
U_cooperation = [D1_cooperation(1) D2_cooperation(1) D3_cooperation(1) D4_cooperation(1) D5_cooperation(1) D6_cooperation(1)]
C_cooperation = [D1_cooperation(4) D2_cooperation(4) D3_cooperation(4) D4_cooperation(4) D5_cooperation(4) D6_cooperation(4)]
n_cooperation = [D1_cooperation(5) D2_cooperation(5) D3_cooperation(5) D4_cooperation(5) D5_cooperation(5) D6_cooperation(5)]
d_cooperation = [D1_cooperation(6) D2_cooperation(6) D3_cooperation(6) D4_cooperation(6) D5_cooperation(6) D6_cooperation(6)]
Q_cooperation = [D1_cooperation(7) D2_cooperation(7) D3_cooperation(7) D4_cooperation(7) D5_cooperation(7) D6_cooperation(7)]


q_noncooperationwithoutC=[D1_noncooperationwithoutC(4) D2_noncooperationwithoutC(4) D3_noncooperationwithoutC(4) D4_noncooperationwithoutC(4) D5_noncooperationwithoutC(4) D6_noncooperationwithoutC(4)]
U_noncooperationwithoutC=[D1_noncooperationwithoutC(3) D2_noncooperationwithoutC(3) D3_noncooperationwithoutC(3) D4_noncooperationwithoutC(3) D5_noncooperationwithoutC(3) D6_noncooperationwithoutC(3)]
n_noncooperationwithoutC=[D1_noncooperationwithoutC(6) D2_noncooperationwithoutC(6) D3_noncooperationwithoutC(6) D4_noncooperationwithoutC(6) D5_noncooperationwithoutC(6) D6_noncooperationwithoutC(6)]
d_noncooperationwithoutC=[D1_noncooperationwithoutC(7) D2_noncooperationwithoutC(7) D3_noncooperationwithoutC(7) D4_noncooperationwithoutC(7) D5_noncooperationwithoutC(7) D6_noncooperationwithoutC(7)]

q_noncooperationwithC = [D1_noncooperationwithC(4) D2_noncooperationwithC(4) D3_noncooperationwithC(4) D4_noncooperationwithC(4) D5_noncooperationwithC(4) D6_noncooperationwithC(4)]
U_noncooperationwithC = [D1_noncooperationwithC(3) D2_noncooperationwithC(3) D3_noncooperationwithC(3) D4_noncooperationwithC(3) D5_noncooperationwithC(3) D6_noncooperationwithC(3)]
C_noncooperationwithC = [D1_noncooperationwithC(6) D2_noncooperationwithC(6) D3_noncooperationwithC(6) D4_noncooperationwithC(6) D5_noncooperationwithC(6) D6_noncooperationwithC(6)]
n_noncooperationwithC = [D1_noncooperationwithC(7) D2_noncooperationwithC(7) D3_noncooperationwithC(7) D4_noncooperationwithC(7) D5_noncooperationwithC(7) D6_noncooperationwithC(7)]
d_noncooperationwithC = [D1_noncooperationwithC(8) D2_noncooperationwithC(8) D3_noncooperationwithC(8) D4_noncooperationwithC(8) D5_noncooperationwithC(8) D6_noncooperationwithC(8)]
Q_noncooperationwithC = [D1_noncooperationwithC(9) D2_noncooperationwithC(9) D3_noncooperationwithC(9) D4_noncooperationwithC(9) D5_noncooperationwithC(9) D6_noncooperationwithC(9)]

figure(1)
k=1.75:0.25:3;
plot(k,p_without_CDN,'b-','LineWidth',2)
hold on
set(gca,'XTick',2:0.5:3)
plot(k,p_cooperation,'r--','LineWidth',2);
plot(k,p_noncooperationwithC,'k+-','LineWidth',2);
xlabel('user price sensitivity k','FontSize',20)
ylabel('ISP price p','FontSize',20)
legend('No CDN','Cooperation','Noncooperation','FontSize',14)

figure(2)
k=1.75:0.25:3;
plot(k,q_without_CDN,'b-','LineWidth',2)
hold on
plot(k,q_cooperation,'r--','LineWidth',2)
plot(k,q_noncooperationwithC,'k+-','LineWidth',2)
set(gca,'XTick',2:0.5:3)
xlabel('user price sensitivity k','FontSize',20)
ylabel('CDN price q','FontSize',20)
legend('No CDN','Cooperation','Noncooperation')

figure(3)
k=1.75:0.25:3;
plot(k,d_without_CDN,'b-','LineWidth',2)
hold on
plot(k,d_cooperation,'r--','LineWidth',2)
plot(k,d_noncooperationwithC,'k+-','LineWidth',2)
set(gca,'XTick',2:0.5:3)
xlabel('user price sensitivity k','FontSize',20)
ylabel('subsriber mass d','FontSize',20)
legend('No CDN','Cooperation','Noncooperation')

figure(4)
k=1.75:0.25:3;
plot(k,n_without_CDN,'b-','LineWidth',2)
hold on
plot(k,n_cooperation,'r--','LineWidth',2)
%plot(k,n_noncooperationwithoutC,'k.-')
plot(k,n_noncooperationwithC,'k+-','LineWidth',2)
set(gca,'XTick',2:0.5:3)
xlabel('user price sensitivity k','FontSize',20)
ylabel('content mass n','FontSize',20)
legend('No CDN','Cooperation','Noncooperation')


figure(5)
k=1.75:0.25:3;
plot(k,Q_cooperation,'r--','LineWidth',2)
hold on
%plot(k,Q_noncooperationwithoutC,'k.-')
plot(k,Q_noncooperationwithC,'k+-','LineWidth',2)
set(gca,'XTick',2:0.5:3)
set(gca,'YTick',0.6:0.1:1.1)
ylim([0.5 1])
xlabel('user price sensitivity k','FontSize',20)
ylabel('QoE Q','FontSize',20)
legend('Cooperation','Noncooperation')
%}
figure(6)
plot(k,C_cooperation,'r--','LineWidth',2)
hold on
plot(k,C_noncooperationwithC,'k+-','LineWidth',2)
set(gca,'XTick',2:0.5:3)
set(gca,'YTick',0:1:10)
ylim([-0.5 10])
xlabel('user price sensitivity k','FontSize',20)
ylabel('CDN capacity C','FontSize',20)
legend('Cooperation','Noncooperation')
%}
figure(7)
k=1.75:0.25:3;
plot(k,U_without_CDN,'b-','LineWidth',2)
hold on
plot(k,U_cooperation,'r--','LineWidth',2)
plot(k,U_noncooperationwithC,'k+-','LineWidth',2)
set(gca,'XTick',2:0.5:3)
xlabel('user price sensitivity k','FontSize',20)
ylabel('cumulated revenue','FontSize',20)
legend('No CDN','Cooperation','Noncooperation')
%}