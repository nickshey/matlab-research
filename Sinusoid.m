x = Array{:,1};
y = Array{:,2};
figure
plot(x,y)
ax = gca;
ax.FontSize = 12;
title('Lab Generated Waveform','FontSize',22);
ylabel('Voltage (V)', 'FontSize',16);
xlabel('Time (s)', 'FontSize',16);
