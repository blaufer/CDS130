clc; clear;

r = 0.0375; % Interest rate
B(1) = 10000; % Initial deposit

for t = 1:25
    B(t+1) = B(t) + B(t) * r;
    if t == 4
        B(t+1) = B(t+1) + 1500;
    elseif t == 7
        B(t+1) = B(t+1) - 2375;
    elseif t == 12
        B(t+1) = B(t+1) + 8000;
    elseif t == 18
        B(t+1) = B(t+1) - 14653;
    end
end
B(25)
