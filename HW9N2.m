clear; clc;
 
ca = 5000; % Checking account balance
sa(1) = 17500; % Initial savings account balance
cd(1) = 0; % Initial cd account balance
si = 0.0125; % Savings interest rate
cdi = 0.0275; % CD interest rate, initially
 
for t = 1:17
    sa(t+1) = sa(t) + sa(t) * si;
    cd(t+1) = cd(t) + cd(t) * cdi;
    if t == 4 % For year 5
        sa(t+1) = sa(t+1) - 10000;
        cd(t+1) = 10000;
    elseif t == 7 % Change cd interest rate at year 8
        cdi = 0.0345;
    elseif t == 12 % For year 13
        sa(t+1) = sa(t+1) + cd(t+1);
        cd(t+1) = 0;
    end
end
 
disp('Total of all accounts is')
disp(sa(18) + cd(18) + ca)
