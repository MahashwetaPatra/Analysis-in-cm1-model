%
% NOTE: This is for calculating variance and error growth from cm1 model when Noise is introduced at 172800
%
% HIST:  - 13 Jan, 2021: Created by Patra
%=========================================================================
function EG410400 = ErrorGrowthRF410400
T1=1:1:24001; %Time steps
T=T1*30/3600; % converting time to hours
T2=1:1:24001; %Time steps
T3=T2*36/3600; % converting time to hours
sum=0;% initialization for the error growth
S=[];tao=11400;delta=600;
V = importdata('exp410400RFv.txt');%Time series with zero noise amplitude
for i=1: 30 % number of realization
    filename = sprintf('exp410400RFv%d.txt',i);% loading the v-wind data for all realization
    Vmax(:,i)= load(filename);
%     figure(1);
%     set(gca, 'GridLineStyle', ':') %dotted grid lines
%     set(gca,'FontSize',14,'LineWidth',2.75)
%     plot(T3,Vmax(:,i),'.', 'markersize',2)% Plotting the time series for all realization
%     hold on;
%     xlabel('Time / Hours');
%     ylabel('Vmax')
    v1=Vmax(:,i);
    sum=sum+(((v1(tao+delta)-V(tao+delta))/delta)*(((v1(tao+delta)-V(tao+delta))/delta)));% summing up for all realization
end
EG410400=sqrt(sum/i);% calculating the error growth
%   hold on;
%   plot(T3,V,  '.black','markersize',8)% Plotting the time series for zero noise amplitude
%   hold off;
end
