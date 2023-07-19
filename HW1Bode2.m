% Define K2
K2 = 1;

% Create a transfer function G(s) = K1(s+1)/(s+100)
numerator = [K2, K2]; % Coefficients of s+1
denominator = [1, 100]; % Coefficients of s+100
G = tf(numerator, denominator);

% Generate the Bode plot
bode(G);
grid on;