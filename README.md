# Quadcopter-Battery-Optimization
This project focuses on designing and optimizing a battery configuration to improve the flight endurance of a quadcopter.

## Project Objectives
Design: Select a battery based on required capacity (mAh), voltage (S-rating), and discharge rate (C-rating).

Optimization: Evaluate the trade-offs between battery weight and flight duration to find the most efficient setup.

Analysis: Utilize MATLAB simulation to calculate estimated flight times.

## How the Code Works
The provided MATLAB script (battery_optimization.m) compares different battery capacities against a fixed frame weight to determine the "sweet spot" where energy density is maximized before the weight penalty becomes too high.
