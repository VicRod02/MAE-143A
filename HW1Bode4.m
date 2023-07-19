syms t
K1K2 = 1000;
p1 = -50+86.6i;
p2 = -50-86.6i;
p3 = -0.1;

% Compute the coefficients A, B, and C
A = K1K2 * (p1 + 1) / ((p1-p2)*(p1-p3));
B = K1K2 * (p2 + 1) / ((p2-p1)*(p2-p3));
C = K1K2 * (p3 + 1) / ((p3-p1)*(p3-p2));

% Compute the step response
y = A*exp(p1*t) + B*exp(p2*t) + C*exp(p3*t);

% Plot the step response
fplot(y, [0, 10]); % Adjust the time range as desired
xlabel('Time');
ylabel('Step Response');
title('Step Response of T(s)');
grid on;
