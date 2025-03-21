# Kinematic Analysis of a Robot Arm

## Objective
This mini-project aims to perform a kinematic analysis of a simple robot arm (4 DOF) using servo motors. The analysis includes:
- Creating a Denavit-Hartenberg (DH) table
- Computing forward kinematics
- Deriving inverse kinematics
- Finding the manipulator Jacobian
- Executing a pick-and-place task

## Robot Description
The robot arm consists of a series of connected servo/stepper motors forming a multi-link manipulator. The robot should be capable of performing a pick-and-place task by moving an object from one location to another on a flat surface. The locations are predefined.

## Tasks
### 1. Denavit-Hartenberg (DH) Table
A DH table is created with the following parameters for each joint:
- Link length (a)
- Link twist (alpha)
- Link offset (d)
- Joint angle (theta)

### 2. Forward Kinematics
- Using the DH parameters, compute the transformation matrix from the base frame to the end-effector frame.
- Test the forward kinematics with sample joint angles to verify correct position and orientation of the end-effector.

### 3. Inverse Kinematics
- Derive equations for inverse kinematics to compute joint angles for a given end-effector position.
- Test inverse kinematics with different end-effector positions to validate accuracy.

### 4. Manipulator Jacobian
Compute the Jacobian matrix of the manipulator to analyze velocity relationships.

### 5. Pick and Place Task
- Select a color box (3 cm x 3 cm x 3 cm) and place it onto a color square (5 cm x 5 cm) on the surface.
- Use inverse kinematics to plan and execute the task.
- Record joint angles and end-effector positions for initial and final configurations.
- Document results and provide a video demonstration.

## Project Structure
```
├── docs/               
├── Source_Codes/                
├── media/           
│   ├── Picture1.jpg  
│   ├── Video1.mp4    
├── README.md              
```


## Media
### Robot Arm Image
![Robot Arm](media/Picture1.png)

### Working Video
[![Working Video](media/Working_Video.mp4)](https://github.com/user-attachments/assets/794f82ba-acec-4bf8-b4a3-7ea334c0bb67)


## Contributors
- **Dissanayaka D.M.S.P.**
- **Wickramasingha M.P.D.N.**
- **Kulasingham P.N.**
  



