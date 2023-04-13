% Calculating the velocity of a star based on the Doppler effect
% Using given spectrum information

% Spectrum information
wavelengths = [656.28, 486.13, 434.05]; % wavelengths (nm)
intensities = [1.2, 0.8, 0.6]; % intensities

% Wavelength shift caused by the motion of the star
delta_lambda = [0.1, 0.08, 0.06]; % nm

% Speed of light
c = 299792458; % m/s

% Calculate the velocity based on the Doppler effect
for i = 1:length(wavelengths)
f = c / (wavelengths(i) * 10^-9); % frequency
delta_f = f * (delta_lambda(i) / wavelengths(i)); % frequency shift
v(i) = delta_f * wavelengths(i) * 10^-9; % velocity
end

% Display the results
fprintf('Velocity of the star for H-alpha line: %d m/s\n', v(1))
fprintf('Velocity of the star for H-beta line: %d m/s\n', v(2))
fprintf('Velocity of the star for H-gamma line: %d m/s\n', v(3))
