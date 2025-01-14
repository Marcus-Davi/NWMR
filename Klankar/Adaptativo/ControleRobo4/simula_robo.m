clear
clc
close all

Ts=0.1; % tempo de amostragem
% Par�metros da estrutura f�sica do rob� % Parameters of the robot physic structure
r = 0.07; % Raio da roda
b = 0.4; % Comprimento do eixo entre rodas;

% Par�metros dos motores DC e do controlador de velocidade % Parameters of the DC motors and Speed Controller
J = 0.01 % kg.m^2 momento de inrcia do rotor % moment of inertia of the rotor     
b = 0.1; % N.m.s constante de atrito do motor % motor viscous friction constant     
Ke = 0.08 % V/rad/sec  contante da for�a eletromotriz % electromotive force constant       
Kt = 0.08 % N.m/Amp contante de torque do motor % motor torque constant    
R = 1 % Ohm resist�ncia do motor % electric resistance                
L = 0.5 %H indut�ncia do motor % electric inductance                

% PID
Kp=5.0;
Ki=10.0;
Kd=0;

% Controlador Cinem�tico % Kinematic Controller
ksi = 0.3;
%ohmega_n = 1;
g = 40;

% Condi��es iniciais %Initial Condition
xo = 0.0
yo = -0.3;
thetao = 0.0;

Tsim = 37; % tempo de simula��o
sim('simulink_robo') % inicia o simulink
plota % plota os gr�ficos
