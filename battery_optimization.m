% Quadcopter Battery Endurance Calculator
% Parameters for a standard 700g quadcopter
frame_weight = 700; % grams
motor_efficiency = 8; % grams of thrust per watt
avg_voltage = 14.8; % 4S Battery

% Battery options to compare (Capacity in mAh vs Weight in grams)
capacities = [1500, 3000, 5000, 8000]; 
weights = [180, 350, 450, 750]; 

fprintf('Capacity (mAh) | Total Weight (g) | Est. Flight Time (min)\n');
fprintf('-----------------------------------------------------------\n');

for i = 1:length(capacities)
    total_weight = frame_weight + weights(i);
    % Required power to hover (Weight / Efficiency)
    power_required = total_weight / motor_efficiency;
    % Energy in Watt-hours
    watt_hours = (capacities(i) / 1000) * avg_voltage;
    % Flight time in minutes
    flight_time = (watt_hours / power_required) * 60;
    
    fprintf('%14d | %16d | %20.2f\n', capacities(i), total_weight, flight_time);
end
