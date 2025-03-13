% Clear workspace and initialize
clear; clc;

% Define DH Parameters
L1 = Link('revolute', 'd', 10, 'a', 0, 'alpha', pi/2, 'offset', 0);
L2 = Link('revolute', 'd', 0,  'a', 12.5, 'alpha', 0, 'offset', 0);
L3 = Link('revolute', 'd', 0,  'a', 12.5, 'alpha', 0, 'offset', 0);
L4 = Link('revolute', 'd', 0,  'a', 15, 'alpha', 0, 'offset', 0);

% Create the SerialLink Robot
robot = SerialLink([L1 L2 L3 L4], 'name', '4DOF_Robot');

% Joint angles (example)
theta = [pi/4, pi/6, pi/3, pi/4]; % Replace with your desired angles

% Transformation Matrices
disp('Transformation Matrices:');
T_all = cell(1, length(robot.links)); % To store all transformation matrices

% Custom threshold for numerical precision
threshold = 1e-10; % Values smaller than this will be considered zero

% Compute and display each transformation matrix
for i = 1:length(robot.links)
    T_all_SE3 = robot.A(1:i, theta); % Compute cumulative transformation matrix up to joint i
    T_all{i} = double(T_all_SE3);    % Convert SE3 to numeric matrix
    
    % Apply threshold to set small values to zero
    T_all{i}(abs(T_all{i}) < threshold) = 0;
    
    fprintf('T_0^%d:\n', i);
    disp(T_all{i});
end

% Overall transformation matrix (end-effector pose)
T_end_effector_SE3 = robot.fkine(theta);
T_end_effector = double(T_end_effector_SE3); % Convert SE3 to numeric matrix

% Apply threshold to end-effector transformation matrix
T_end_effector(abs(T_end_effector) < threshold) = 0;
disp('End-Effector Transformation Matrix:');
disp(T_end_effector);
