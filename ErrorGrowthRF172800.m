%
% NOTE: This is for calculating variance and error growth from cm1 model when Noise is introduced at 172800
%
% HIST:  - 13 Jan, 2021: Created by Patra
%=========================================================================
function EG172800 = ErrorGrowthRF172800
T1=1:1:24001; %Time steps
T=T1*30/3600; % converting time to hours
T2=1:1:24001; %Time steps
T3=T2*36/3600; % converting time to hours
sum=0;% initialization for the error growth
S=[];tao=4800;delta=600;
V = importdata('exp172800RFv.txt');%Time series with zero noise amplitude
for i=1: 30 % number of realization
    filename = sprintf('exp172800RFv%d.txt',i);% loading the v-wind data for all realization
    Vmax(:,i)= load(filename);
%     figure(1);
%     set(gca, 'GridLineStyle', ':') %dotted grid lines
%     set(gca,'FontSize',14,'LineWidth',2.75)
%     plot(T3,Vmax(:,i),'.', 'markersize',2)% Plotting the time series for all realization
%     hold on;
%     xlabel('Time / Hours');
%     ylabel('Vmax')
    v1=Vmax(:,i);
    S=[S;std(v1(12400:17601))];
    sum=sum+(((v1(tao+delta)-V(tao+delta))/delta)*(((v1(tao+delta)-V(tao+delta))/delta)));% summing up for all realization
end
MS=mean(S);
EG172800=sqrt(sum/i);% calculating the error growth
% hold on;
% plot(T3,V,  '.black','markersize',8)% Plotting the time series for zero noise amplitude
% hold off;
P=mean(S);
SF=std(S);
ZF=1.96;
nF=30;
P1=P+(ZF*SF)/sqrt(30);
P2=P-(ZF*SF)/sqrt(30);
EB=[P;P1;P2];
end
