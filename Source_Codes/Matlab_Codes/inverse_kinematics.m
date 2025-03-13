clc;


x = 2.5;
y = 35.5;
z = 0;
a1 = 0;
a2 = 12.5;
a3 = 12.5;
a4 = 15;
d1 = 5.2;


theta1 = atan2d(y,x);
gamma = atan2d(z - d1, sqrt((x - a4 * cos(theta1))^2 + (y - a4 * sin(theta1))^2));
P2 = [x - a4 * cos(theta1), y - a4 * sin(theta1), z];
P1 = [0, 0, d1];
l = sqrt(sum((P1 - P2).^2)); 
x = -(l^2 - a2^2 - a3^2) / (2 * a2 * a3);
theta3 = acosd((l^2 - a2^2 - a3^2) / (2 * a2 * a3));
beta = acosd((a2^2 + l^2 - a3^2) / (2 * a2 * l));



theta2 = gamma + beta;
theta4 = gamma;



joint_angles = [abs(theta1), abs(theta2), abs(theta3), abs(theta4)];
disp(joint_angles)
