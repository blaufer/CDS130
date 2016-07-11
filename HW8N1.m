clc; clear;

r = 0.015; % Interest rate
B(1) = 7250; % Initial deposit

for t = 1:9
    B(t+1) = B(t) + B(t) * r;
    if t > 1
        B(t+1) = B(t+1) - 475;
    end
end

B(10)
