clc; close all; clear all;
time=[];EG=[];
EG172800 = ErrorGrowthRI172800; time=[time;172800]; EG=[EG;EG172800];
EG180000 = ErrorGrowthRI180000; time=[time;180000]; EG=[EG;EG180000];
EG190800 = ErrorGrowthRI190800; time=[time;190800]; EG=[EG;EG190800];
EG194400 = ErrorGrowthRI194400; time=[time;194400]; EG=[EG;EG194400];
EG198000 = ErrorGrowthRI198000; time=[time;198000]; EG=[EG;EG198000];
EG216000 = ErrorGrowthRI216000; time=[time;216000]; EG=[EG;EG216000];
EG237600 = ErrorGrowthRI237600; time=[time;237600]; EG=[EG;EG237600];
EG259200 = ErrorGrowthRI259200; time=[time;259200]; EG=[EG;EG259200];
EG280800 = ErrorGrowthRI280800; time=[time;280800]; EG=[EG;EG280800];
EG302400 = ErrorGrowthRI302400;time=[time;302400]; EG=[EG;EG302400];
EG324000 = ErrorGrowthRI324000;time=[time;324000];EG=[EG;EG324000];
EG345600 = ErrorGrowthRI345600;time=[time;345600];EG=[EG;EG345600];
EG367200 = ErrorGrowthRI367200;time=[time;367200];EG=[EG;EG367200];
EG388800 = ErrorGrowthRI388800;time=[time;388800];EG=[EG;EG388800];
EG410400 = ErrorGrowthRI410400;time=[time;410400];EG=[EG;EG410400];
EG432000 = ErrorGrowthRI432000;time=[time;432000];EG=[EG;EG432000];
EG453600 = ErrorGrowthRI453600;time=[time;453600];EG=[EG;EG453600];
EG475200 = ErrorGrowthRI475200;time=[time;475200];EG=[EG;EG475200];
EG496800 = ErrorGrowthRI496800;time=[time;496800];EG=[EG;EG496800];
figure(1);
set(gca, 'GridLineStyle', ':') %dotted grid lines
set(gca,'FontSize',14,'LineWidth',2.75)
plot(time/3600,EG,'.-black', 'markersize',20)% Plotting the time series for all realization
xlabel('time (hours)'); 
ylabel('Error Growth'); 