clear; clc;
 
a0 = 29;
a1 = 0.2199E-2;
a2 = 0.5723E-5;
a3 = -2.871E-9;
 
hmax = 100;
hmin = 20;
panels = 500;
h = (hmax-hmin)/panels;
 
total_area = 0;
 
for t = hmin:h:(hmax-h)
    b1 = a0 + a1 * t + a2 * t^2 + a3 * t^3;
    b2 = a0 + a1 * (t + h) + a2 * (t + h)^2 + a3 * (t + h)^3;
    trapezoid = 0.5 * (b1 + b2) * h;
    total_area = total_area + trapezoid;
end
 
disp('The enthalpy is')
disp(total_area)
