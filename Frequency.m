Time = AccelerationData{:,1}; % Time (s)
Acceleration = AccelerationData{:,2}; % Acceleration (m/s^2)
n = length(Acceleration); 
Ts = Time(2)-Time(1);            % Sample Time
Fs = 1/Ts;                       % Sampling Frequency
NFFT = 2^nextpow2(n);            % Next power of 2 from length of data
Y = fft(Acceleration,NFFT)/n;
f = Fs/2*linspace(0,1,NFFT/2+1);
Iv = 1:length(f); 
figure
plot(f,abs(Y(Iv))) 
hold on
Time = AccelerationData{:,1}; % Time (s)
Acceleration = AccelerationData{:,4}; % Acceleration (m/s^2)
n = length(Acceleration); 
Ts = Time(2)-Time(1);            % Sample Time
Fs = 1/Ts;                       % Sampling Frequency
NFFT = 2^nextpow2(n);            % Next power of 2 from length of data
Y = fft(Acceleration,NFFT)/n;
f = Fs/2*linspace(0,1,NFFT/2+1);
Iv = 1:length(f); 
plot(f, abs(Y(Iv)))
xlabel('Frequency (Hz)')
ylabel('Amplitude (m)')