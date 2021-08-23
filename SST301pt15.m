%
% NOTE: This is for calculating variance and error growth from cm1 model when Noise is introduced at 172800
%
% HIST:  - 13 Jan, 2021: Created by Patra
%=========================================================================
function MS3MV3 = SST301pt15
T1=1:1:16801; %Time steps
T=T1*36/3600; % converting time to hours
T2=1:1:24001; %Time steps
T3=T2*36/3600; % converting time to hours

%N=importdata('N.txt');% Noise amplitude
%N=[0.01; 0.02; 0.03; 0.04; 0.05; 0.06; 0.07; 0.08; 0.09];
sum=0;% initialization for the error growth
S=[];tao=14400;delta=600;vmean=[]; MV=[];
V = importdata('SST301pt15v.txt');%Time series with zero noise amplitude
for i=1: 40 % number of realization
    filename = sprintf('SST301pt15v%d.txt',i);% loading the v-wind data for all realization
    Vmax(:,i)= load(filename);
%     figure(1);
%     set(gca, 'GridLineStyle', ':') %dotted grid lines
%     set(gca,'FontSize',14,'LineWidth',2.75)
%     plot(T,Vmax(:,i),'.', 'markersize',2)% Plotting the time series for all realization
%     hold on;
%     xlabel('Time / Hours');
%     ylabel('Vmax')
    v1=Vmax(:,i);
    S=[S;std(v1(11000:14001))];% calculates the standard deviation from step 17500 to 19000
    vmean=[vmean;mean(v1(11000:14001))];
%    sum=sum+(((v1(tao+delta)-V(tao+delta))/delta)*(((v1(tao+delta)-V(tao+delta))/delta)));% summing up for all realization
end
% hold on;
% plot(T3,V,  '.black','markersize',8)% Plotting the time series for zero noise amplitude
% hold off;
MS3=mean(S);
MV3=mean(vmean);
MS3MV3=[MS3,MV3];
end