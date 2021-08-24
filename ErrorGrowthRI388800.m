%
% NOTE: This is for calculating variance and error growth from cm1 model when Noise is introduced at 172800
%
% HIST:  - 13 Jan, 2021: Created by Patra
%=========================================================================
function EG388800 = ErrorGrowthRI388800
T1=1:1:16801; %Time steps
T=T1*36/3600; % converting time to hours
%N=importdata('N.txt');% Noise amplitude
N=[0.01; 0.02; 0.03; 0.04; 0.05; 0.06; 0.07; 0.08; 0.09];
sum=0;% initialization for the error growth
S=[];tao=10800;delta=600;
V = importdata('exp388800RIv.txt');%Time series with zero noise amplitude
for i=1:39 % number of realization
    filename = sprintf('exp388800RIv%d.txt',i);% loading the v-wind data for all realization
    Vmax(:,i)= load(filename);
%     figure(1);
%     set(gca, 'GridLineStyle', ':') %dotted grid lines
%     set(gca,'FontSize',14,'LineWidth',2.75)
%     plot(T,Vmax(:,i),'.', 'markersize',2)% Plotting the time series for all realization
%     hold on;
%     xlabel('Time / Hours');
%     ylabel('Vmax')
    v1=Vmax(:,i);
    S=[S;std(v1(12000:15001))];% calculates the standard deviation from step 10000 to 15000
    sum=sum+(((v1(tao+delta)-V(tao+delta))/delta)*(((v1(tao+delta)-V(tao+delta))/delta)));% summing up for all realization
end
% hold on;
% plot(T,V,  '.black','markersize',8)% Plotting the time series for zero noise amplitude
% hold off;
EG388800=sqrt(sum/i);% calculating the error growth
% figure(2);
% set(gca, 'GridLineStyle', ':') %dotted grid lines
% set(gca,'FontSize',14,'LineWidth',2.75)
% %plot(N,S,'.-', 'markersize',10)
% hold on;
% xlabel('Noise amplitude');
% ylabel('Standard deviation');
% xlim([0.01 0.09])
% grid on;
end