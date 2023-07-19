% Define the values of K1 and K2
K1 = 1;
K2 = 1;

% Create transfer functions G(s) and D(s)
numerator_G = K1;
denominator_G = [1 0 0]; % s^2 has coefficients [1 0 0]
G = tf(numerator_G, denominator_G);

numerator_D = K2;
denominator_D = [1 100 1]; % (s+1)/(s+100) has coefficients [1 100 1]
D = tf(numerator_D, denominator_D);

% Compute the overall transfer function G(s) * D(s)
GD = G * D;

% Generate the Bode plot of G(s) * D(s)
bode(GD);
grid on;