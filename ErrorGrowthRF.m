clc; close all; clear all;
time=[];EG=[];
EG172800 = ErrorGrowthRF172800; time=[time;172800]; EG=[EG;EG172800];
EG194400 = ErrorGrowthRF194400; time=[time;194400]; EG=[EG;EG194400];
EG216000 = ErrorGrowthRF216000; time=[time;216000]; EG=[EG;EG216000];
EG237600 = ErrorGrowthRF237600; time=[time;237600]; EG=[EG;EG237600];
EG259200 = ErrorGrowthRF259200; time=[time;259200]; EG=[EG;EG259200];
EG273600 = ErrorGrowthRF273600; time=[time;273600]; EG=[EG;EG273600];
EG280800 = ErrorGrowthRF280800; time=[time;280800]; EG=[EG;EG280800];
%EG284400 = ErrorGrowthRF284400(284400); time=[time;284400]; EG=[EG;EG284400];
%EG288000 = ErrorGrowthRF288000(288000); time=[time;288000]; EG=[EG;EG288000];
%EG302400 = ErrorGrowthRF302400(302400);time=[time;302400]; EG=[EG;EG302400];
%EG316800 = ErrorGrowthRF316800(316800);time=[time;316800];EG=[EG;EG316800];
EG324000 = ErrorGrowthRF324000;time=[time;324000];EG=[EG;EG324000];
EG345600 = ErrorGrowthRF345600;time=[time;345600];EG=[EG;EG345600];
EG367200 = ErrorGrowthRF367200;time=[time;367200];EG=[EG;EG367200];
EG388800 = ErrorGrowthRF388800;time=[time;388800];EG=[EG;EG388800];
EG410400 = ErrorGrowthRF410400;time=[time;410400];EG=[EG;EG410400];
EG432000 = ErrorGrowthRF432000;time=[time;432000];EG=[EG;EG432000];
EG453600 = ErrorGrowthRF453600;time=[time;453600];EG=[EG;EG453600];
EG475200 = ErrorGrowthRF475200;time=[time;475200];EG=[EG;EG475200];
EG496800 = ErrorGrowthRF496800;time=[time;496800];EG=[EG;EG496800];
EG518400 = ErrorGrowthRF518400;time=[time;518400];EG=[EG;EG518400];
EG540000 = ErrorGrowthRF540000;time=[time;540000];EG=[EG;EG540000];
EG561600 = ErrorGrowthRF561600;time=[time;561600];EG=[EG;EG561600];
EG583200 = ErrorGrowthRF583200;time=[time;583200];EG=[EG;EG583200];
EG604800 = ErrorGrowthRF604800;time=[time;604800];EG=[EG;EG604800];
EG626400 = ErrorGrowthRF626400;time=[time;626400];EG=[EG;EG626400];
EG648000 = ErrorGrowthRF648000;time=[time;648000];EG=[EG;EG648000];
figure(1);
set(gca, 'GridLineStyle', ':') %dotted grid lines
set(gca,'FontSize',14,'LineWidth',2.75)
plot(time/3600,EG,'.-black', 'markersize',20)
xlabel('time (hours)'); 
ylabel('Error Growth'); 

% Plotting the time series for all realization
% T=[48; 54; 60; 66; 72; 76; 78;79;90; 96; 102; 108; 114; 120; 126; 132; 138; 144; 150;156; 162; 168; 174; 180];
%  EG=[0.0094;0.0135; 0.0131;0.0145;0.0153;0.0217; 0.0253; 0.0289; 0.0220; 0.0191; 0.0189; 0.0158; 0.0082; 0.0035;0.0066;0.0043; 0.0041;0.0046; 0.0085; 0.0086; 0.0064; 0.0062; 0.0058;0.0074 ];
% 
% figure(2);
% set(gca, 'GridLineStyle', ':') %dotted grid lines
% set(gca,'FontSize',14,'LineWidth',2.75)
% plot(T,EG,'.-black', 'markersize',20)% Plotting the time series for all realization
