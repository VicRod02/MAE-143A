% Define the transfer function G(s) = K(1/s^2)
K1 = 1; % Set the value of K1
numerator = K1;
denominator = [1 0 0]; % s^2 has coefficients [1 0 0]

% Create the transfer function object
G = tf(numerator, denominator);

% Generate the Bode plot
bode(G);
grid on;