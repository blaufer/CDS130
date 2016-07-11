clear; clc;
 
a0e = 40.75;
a1e = 11.47E-2;
a2e = -6.891E-5;
a3e = 17.66E-9;
 
a0m = 34.31;
a1m = 5.469E-2;
a2m = 0.3661E-5;
a3m = -11.00E-9;
 
hmax = 175;
hmin = 15;
panels = 175;
h = (hmax-hmin)/panels;
 
total_area = 0;
 
for t = hmin:h:(hmax-h)
    b1e = a0e + a1e * t + a2e * t^2 + a3e * t^3;
    b2e = a0e + a1e * (t + h) + a2e * (t + h)^2 + a3e * (t + h)^3;
    trapezoide = 0.5 * (b1e + b2e) * h;
    b1m = a0m + a1m * t + a2m * t^2 + a3m * t^3;
    b2m = a0m + a1m * (t + h) + a2m * (t + h)^2 + a3m * (t + h)^3;
    trapezoidm = 0.5 * (b1m + b2m) * h;
    total_area = total_area + trapezoide + trapezoidm;
end
 
disp('The enthalpy is')
disp(total_area)
