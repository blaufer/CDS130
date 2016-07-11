clc; clear;

re = 6371000; % Radius of Earth in meters
g0 = 9.81; % Acceleration due to gravity in m/s^2
gh = 0; % Gravity at height h above Earth

for h = 3750000:0.1:7000000
    gh = g0*((re/(re+h))^2);
    if gh < 2.53
        h
        break
    end
end
