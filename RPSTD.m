clc; close all; clear all;
Noise=[];EB=[];tau=172800;
EB1 = exp172800RP; Noise1=[0.01;0.01;0.01]; 
plot(Noise1,EB1,'-red', 'markersize',20)
hold on;
EB2 = exp172800R2P; Noise2=[0.02;0.02;0.02];
plot(Noise2,EB2,'-red', 'markersize',20)
EB3 = exp172800R3P; Noise3=[0.03;0.03;0.03];
plot(Noise3,EB3,'-red', 'markersize',20)
EB4 = exp172800R4P; Noise4=[0.04;0.04;0.04];
plot(Noise4,EB4,'-red', 'markersize',20)
EB5 = exp172800R5P; Noise5=[0.05;0.05;0.05];
plot(Noise5,EB5,'-red', 'markersize',20)
EB6 = exp172800R6P; Noise6=[0.06;0.06;0.06];
plot(Noise6,EB6,'-red', 'markersize',20)
EB7 = exp172800R7P; Noise7=[0.07;0.07;0.07];
plot(Noise7,EB7,'-red', 'markersize',20)
EB8 = exp172800R8P; Noise8=[0.08;0.08;0.08];
plot(Noise8,EB8,'-red', 'markersize',20)
EB9 = exp172800R9P; Noise9=[0.09;0.09;0.09];
plot(Noise9,EB9,'-red', 'markersize',20)
Noise=[Noise1(1);Noise2(1);Noise3(1);Noise4(1);Noise5(1);Noise6(1);Noise7(1);Noise8(1);Noise9(1);];
EB=[EB1(1);EB2(1);EB3(1);EB4(1);EB5(1);EB6(1);EB7(1);EB8(1);EB9(1);];
plot(Noise,EB,'.-black', 'markersize',20)% Plotting the time series for all realization
xlabel('Noise amplitude'); 
ylabel('Standard deviation'); 