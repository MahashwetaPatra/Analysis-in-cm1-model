clc; close all; clear all;
Noise=[];EB=[];tau=172800;
MS1MV1 = SST299pt15; SST1=[299.15]; 
MS2MV2 = SST300pt15; SST2=[300.15];
MS3MV3 = SST301pt15; SST3=[301.15]; 
MS4MV4 = SST302pt15; SST4=[302.15]; 
MS5MV5 = SST303pt15; SST5=[303.15];
SST=[299.15; 300.15; 301.15; 302.15; 303.15];
MS=[MS1MV1(1); MS2MV2(1); MS3MV3(1); MS4MV4(1); MS5MV5(1)];
MV=[MS1MV1(2); MS2MV2(2); MS3MV3(2); MS4MV4(2); MS5MV5(2)];
figure(1);
plot(SST,MS,'.-black', 'markersize',20)
xlabel('Tsk0'); 
ylabel('Standard deviation'); 
figure(2);
plot(SST,MV,'.-black', 'markersize',20)
xlabel('Tsk0'); 
ylabel('V_{mean}'); 