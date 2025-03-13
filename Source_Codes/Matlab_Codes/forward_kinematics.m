% Clear workspace and initialize
clear; clc;

% Define DH Parameters
L1 = Link('revolute', 'd', 10, 'a', 0, 'alpha', pi/2, 'offset', 0);
L2 = Link('revolute', 'd', 0,  'a', 12.5, 'alpha', 0, 'offset', 0);
L3 = Link('revolute', 'd', 0,  'a', 12.5, 'alpha', 0, 'offset', 0);
L4 = Link('revolute', 'd', 0,  'a', 15, 'alpha', 0, 'offset', 0);

% Create the SerialLink Robot
robot = SerialLink([L1 L2 L3 L4], 'name', '4DOF_Robot');

% Plot the Robot in the Initial Pose
robot.plot([0 0 0 0]); % Joint angles: [0, 0, 0, 0]

% Forward Kinematics
theta = [pi/4, pi/6, pi/3, pi/4]; % Example joint angles
T = robot.fkine(theta);
disp('Forward Kinematics - Transformation Matrix:');
disp(T);

% Jacobian Matrix
J = robot.jacob0(theta);
disp('Jacobian Matrix:');
disp(J);

% Inverse Kinematics
% Target pose for the end-effector (position only)
targetTform = transl(2, 3, 2); % Target position [x, y, z]

