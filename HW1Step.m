% Define K1
K1 = 1;

% Create a transfer function G(s) = K(1/s^2)
numerator = K1;
denominator = [1 0 0]; % s^2 has coefficients [1 0 0]
G = tf(numerator, denominator);

% Compute the step response
t = 0:0.01:5; % Time vector from 0 to 5 seconds
step_response = K1 * t.^2 / 2; % Analytical expression for the step response

% Plot the step response
plot(t, step_response, 'b', 'LineWidth', 2);
xlabel('Time (seconds)');
ylabel('Step Response (y(t))');
title('Step Response of G(s) = K(1/s^2)');
grid on;