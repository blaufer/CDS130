clc; clear; clf;

gr = 0.065; % Growth rate
dr = 0.032; % Death rate
B(1) = 65; % Initial deposit

for t = 1:21
    B(t+1) = B(t) + B(t) * (gr-dr);
    if mod(t,2) == 0
        B(t+1) = B(t+1) * 0.25;
    elseif mod(t,2) == 1 && t ~= 1
        B(t+1) = B(t+1) + 22;
    end
    B(t+1) = floor(B(t+1));
end

B(22)
plot(1:22,B)
