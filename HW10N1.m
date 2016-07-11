clc; clear; clf;
 
d1 = 0.000167; % Decay of DEA to HEOD
d2 = 0.00025; % Decay of DEA to THEED
d3 = 0.000633; % Decay of THEED to BHEP
 
DEA(1) = 0.65; % Initial amount of DEA
HEOD(1) = 0.0; % Initial amount of HEOD
THEED(1) = 0.0; % Initial amount of THEED
BHEP(1) = 0.0; % Initial amount of BHEP
 
for t = 1:7199
    DEA(t+1) = DEA(t) - (d1 + d2) * DEA(t);
    HEOD(t+1) = HEOD(t) + DEA(t) * d1;
    THEED(t+1) = THEED(t) + DEA(t) * d2;
    BHEP(t+1) = BHEP(t) + THEED(t) * d3;
end
 
disp('At 33 hours, DEA = ')
disp(DEA(1980))
disp('At 33 hours, HEOD = ')
disp(HEOD(1980))
disp('At 33 hours, THEED = ')
disp(THEED(1980))
disp('At 33 hours, BHEP = ')
disp(BHEP(1980))
 
disp('At 100 hours, DEA = ')
disp(DEA(6000))
disp('At 100 hours, HEOD = ')
disp(HEOD(6000))
disp('At 100 hours, THEED = ')
disp(THEED(6000))
disp('At 100 hours, BHEP = ')
disp(BHEP(6000))
 
hold on
plot(1:7200,DEA,'b')
plot(1:7200,HEOD,'r')
plot(1:7200,THEED,'g')
plot(1:7200,BHEP,'k')
