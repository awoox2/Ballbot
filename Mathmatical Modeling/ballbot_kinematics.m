clear all; close all; clc;

Vx=.5;
Vy=1;
Vz=0;

Vt=Vx+Vy

cos1=cos(-60/(180/pi));
cos2=cos(60/(180/pi));
sin1=sin(-60/(180/pi));
sin2=sin(60/(180/pi));

% speed1 = -((Vx)+(Vy/(2*sin1)))+Vz
% speed2 = -((Vx)+(Vy/(2*sin2)))+Vz
% speed3 = -Vx+Vz

speed1 = ((Vx)+(Vy/-(sqrt(3))))+Vz
speed2 = ((Vx)+(Vy/(sqrt(3))))+Vz
speed3 = -Vx+Vz

X12 = (speed1*cos1)+(speed2*cos2)
Y12 = (speed1*sin1)+(speed2*sin2)

figure
hold on
grid on
plot([0 Vx],[0 Vy],'g','LineWidth',5)
plot([0 -Vx],[0 -Vy],'y','LineWidth',5)
plot([0 speed1*cos1],[0 speed1*sin1],'b','LineWidth',5)
plot([speed1*cos1 speed1*cos1+speed2*cos2],[speed1*sin1 speed1*sin1+speed2*sin2],'r','LineWidth',5)
legend('V total','-V total','V1','V2')

xlim([-2 2]);
ylim([-2 2]);

set(gcf,'Position',[0 500 500 500])
