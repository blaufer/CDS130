clear; clc;
 
P(1) = 350000; % Initial cost of the machine
dr = 0.15; % Depreciation rate
rc = 200000; % Refurbishment value
nm = 0.25; % Depreciation due to a new model
 
for t = 1:50
    P(t+1) = P(t) - P(t) * dr;
    if t == 6 % For the end of the 7th year
        P(t+1) = P(t+1) + rc;
    elseif t == 12 % For the end of year 13
        P(t+1) = P(t+1) * nm;
        dr = 0.08; % New depreciation rate
    end
    if P(t+1) <= 10000
        disp('The value will be less than $10000 the year after year')
        disp(t)
        break % Stops the for loop
    end
end
