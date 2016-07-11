clear; clc;
 
a0m = 34.31;
a1m = 5.469E-2;
a2m = 0.3661E-5;
a3m = -11.00E-9;
 
hmax = 1075;
hmin = 25;
panels = 450;
h = (hmax-hmin)/panels;
 
total_area = 0;
 
for t = hmin:h:(hmax-h)
    b1m = a0m + a1m * t + a2m * t^2 + a3m * t^3;
    b2m = a0m + a1m * (t + h) + a2m * (t + h)^2 + a3m * (t + h)^3;
    trapezoidm = 0.5 * (b1m + b2m) * h;
    total_area = total_area + trapezoidm;
end
 
units = 13495112/total_area;
disp('The number of units of methane is')
disp(units)
