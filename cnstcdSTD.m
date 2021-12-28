clc; close all; clear all;
Noise=[];EB=[];tau=172800;
MS1MV1 = cnstcd001; cnstcd1=[0.001]; 
MS2MV2 = cnstcd0011; cnstcd2=[0.0011];
MS3MV3 = cnstcd0012; cnstcd3=[0.0012]; 
MS4MV4 = cnstcd0013; cnstcd4=[0.0013]; 
MS5MV5 = cnstcd0014; cnstcd5=[0.0014];
MS6MV6 = cnstcd0015; cnstcd6=[0.0015]; 
cnstcd=[0.001;0.0011;0.0012;0.0013;0.0014;0.0015];
MS=[MS1MV1(1); MS2MV2(1); MS3MV3(1); MS4MV4(1); MS5MV5(1); MS6MV6(1)];
MV=[MS1MV1(2); MS2MV2(2); MS3MV3(2); MS4MV4(2); MS5MV5(2); MS6MV6(2)];
figure(1);
plot(cnstcd,MS,'.-black', 'markersize',20)
xlabel('cnstcd'); 
ylabel('Standard deviation'); 

figure(2);
plot(cnstcd,MV,'.-black', 'markersize',20)
xlabel('cnstcd'); 
ylabel('V_{mean}'); 