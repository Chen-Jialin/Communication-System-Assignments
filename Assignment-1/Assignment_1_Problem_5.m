clc;
clear;
close all;
f = -3000:3000;
figure(1);
X = 0.5 * sign(dirac(f - 300)) + 0.5 * sign(dirac(f + 300)) + sign(dirac(f - 500)) + sign(dirac(f + 500)) + 0.5 * sign(dirac(f - 700)) + 0.5 * sign(dirac(f + 700));
plot(f, X);
xlabel('f / Hz', 'fontsize', 16);
ylabel('Amplitude / a.u.', 'fontsize', 16)
title('X(f)');
figure(2);
X = 0.5 * sign(dirac(f - 300)) + 0.5 * sign(dirac(f + 300)) + sign(dirac(f - 500)) + sign(dirac(f + 500)) + 0.5 * sign(dirac(f - 700)) + 0.5 * sign(dirac(f + 700))...
  + 0.5 * sign(dirac(f - 2300)) + 0.5 * sign(dirac(f - 1700)) + sign(dirac(f - 2500)) + sign(dirac(f - 1500)) + 0.5 * sign(dirac(f - 2700)) + 0.5 * sign(dirac(f - 1300))...
  + 0.5 * sign(dirac(f + 2300)) + 0.5 * sign(dirac(f + 1700)) + sign(dirac(f + 2500)) + sign(dirac(f + 1500)) + 0.5 * sign(dirac(f + 2700)) + 0.5 * sign(dirac(f + 1300));
X = 2000 * X;
plot(f, X);
xlabel('f / Hz', 'fontsize', 16);
ylabel('Amplitude / a.u.', 'fontsize', 16)
title('X_{\delta}(f)');