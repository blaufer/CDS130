clear; clc;
 
P(1) = 1200000; % Initial population
gr = 0.031; % Growth rate
dr = 0.0175; % Death rate
 
for t = 1:12
    P(t+1) = P(t) + P(t) * (gr-dr);
    if t > 3 && t < 6
        P(t+1) = P(t+1) - 20000;
    elseif t == 8
        P(t+1) = P(t+1) + 600000;
    elseif t == 10
        P(t+1) = P(t+1) * 0.7;
        dr = 0.0875;
    elseif t == 12
        P(t+1) = P(t+1) * 0.55;
    end
    floor(P(t+1));
end
 
disp('The population on January 1st is')
disp(P(13))
plot(1:13,P)
