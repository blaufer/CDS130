clc; clear; clf;

gr = 2; % Growth rate
dr = 0; % Death rate
B(1) = 500; % Initial deposit

for t = 1:19
    if t < 9
    B(t+1) = B(t) + B(t) * (gr - dr);
    elseif t == 9
        B(t+1) = B(t) * 0.1;
    elseif t < 15
        B(t+1) = B(t) + B(t) * 0.15;
    else
        B(t+1) = B(t) + B(t) * 0.55;
    end
end

B(20)
plot(1:20,B)
