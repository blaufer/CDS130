clc; clear; clf;

Me = 5.972E24; % Mass of Earth in kg
Mv = 4.687E24; % Mass of Venus in kg
Re = 6371; % Radius of Earth in km
Rv = 6052; % Radius of Venus in km

for x = 0:0.5:30000000
    y = (Mv/((Rv+40000000+x)^2)-(Me/((Re+x)^2)));
    if abs(y) < 500
        x
        break
    end
end
