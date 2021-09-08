# SoC-Design-and-Control-for-DC-Motor

## Description

Here is a System on Chip (SoC) developed for a DC motor control application, using the Zedboard Zynq board. 
The motor, with a maximum theoretical speed of 789 rpm shall be powered at a voltage of 12 V and has a reducer with magnetic encoder fixed to the motor shaft to determine the axis position. 
This is responsible for generating two signals in square, providing 12 flanks per turn, which will determine the direction of rotation in addition to speed. 
To control the engine, a PmodHB5 expansion module will be used, which incorporates an H-bridge in order to control the direction of rotation. 

The H-bridge is controlled by a PWM signal whose working cycle will determine the speed and another signal that will determine the direction of rotation. 
When the direction of rotation is 0, they are driving the transistors A and D, while if the direction is 1, they are driving the transistors B and C. 
Because the transistors have a non-zero switching time, if during this time the PWM signal is active, four transistors could be driving so there would be a short circuit, which could damage the device. 
This is why switching times should be taken into account when designing the PWM generator.

## Important!!

Unzip all files after downloading
