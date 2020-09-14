clc;
clear;
close;
x = -3000:3000;
figure(1);
y = 0.5 * sign(dirac(x - 300)) + 0.5 * sign(dirac(x + 300)) + sign(dirac(x - 500)) + sign(dirac(x + 500)) + 0.5 * sign(dirac(x - 700)) + 0.5 * sign(dirac(x + 700));
plot(x, y);
xlabel('f / Hz', 'fontsize', 16);
ylabel('Amplitude / a.u.', 'fontsize', 16)
title('X(f)');
figure(2);
y = 0.5 * sign(dirac(x - 300)) + 0.5 * sign(dirac(x + 300)) + sign(dirac(x - 500)) + sign(dirac(x + 500)) + 0.5 * sign(dirac(x - 700)) + 0.5 * sign(dirac(x + 700))...
  + 0.5 * sign(dirac(x - 2300)) + 0.5 * sign(dirac(x - 1700)) + sign(dirac(x - 2500)) + sign(dirac(x - 1500)) + 0.5 * sign(dirac(x - 2700)) + 0.5 * sign(dirac(x - 1300))...
  + 0.5 * sign(dirac(x + 2300)) + 0.5 * sign(dirac(x + 1700)) + sign(dirac(x + 2500)) + sign(dirac(x + 1500)) + 0.5 * sign(dirac(x + 2700)) + 0.5 * sign(dirac(x + 1300));
y = 2000 * y;
plot(x, y);
xlabel('f / Hz', 'fontsize', 16);
ylabel('Amplitude / a.u.', 'fontsize', 16)
title('X_{\delta}(f)');