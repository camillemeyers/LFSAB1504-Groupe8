function [ output_args ] = coord_partitioning( input_args )
% COORD_PARTITIONING Summary of this function goes here
%   Detailed explanation goes here

%% caracteristiques du corps 1:
m1 = 16; % masse du corps 1

%% caracteristiques du corps 2:
L2 = 0.53; %longueur du bras
m2 = 4.5; %masse du bras
I2 = 0.11; %inertie du bras

%% caracteristiques du corps 3:
m3 = 1.5; %masse de la glissiere
I3 = 0.001; %inertie de la glissiere

%% caracteristiques du corps 4:
L4 = 0.1; %longueur de l'actionneur
m4 = 1; %masse de l'actionneur
I4 = 10; %inertie de l'actionneur

%% caracteristiques du corps 5:
L2 = 0.1; %longueur de la bielle
m2 = 2; %masse de la bielle
I2 = 0.0015; %inertie de la bielle

%% Matrices M et J
M12 = -L2/2*m2*sin(theta1)-m3*x2*sin(theta1);
M22 = (L2^2)/2*m2+I2+m3*x2^2+I3;

M = [ m1+m2+m3 M12 m3*cos(theta1) 0 0
    M12 M22 0 0 0
    m3*cos(theta1) 0 m3 0 0
    0 0 0 (L4^2)/2*m4+I4 0
    0 0 0 0 (L5^2)/2*m5+I5];
J = [1 0 1 0
    -x2*sin(theta1) x2*cos(theta1) -L2*sin(theta1) L2*cos(theta1)
    cos(theta1) sin(theta1) 0 0
    L4*sin(theta2) -L4*cos(theta2) 0 0
    0 0 L5*sin(theta3) -L5*cos(theta3)];

end

