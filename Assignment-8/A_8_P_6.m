%% A-8-P-6 (a)
clc; clear; close all;
f = -4:0.01:4;
uf = (f > - 3 / 2) .* (f < 3 / 2) / 3;
figure(1)
plot(f, uf)
ylim([0, 1])
xlabel('$f$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('$\hat{u}(f)$', 'interpreter', 'latex', 'fontsize', 24)
figure(2)
subplot(1, 3, 1)
v_1f = (f > - 3 / 2) .* (f < - 1 / 2) / 3;
plot(f, v_1f)
ylim([0, 1])
xlabel('$f$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('$\hat{v}_{-1}(f)$', 'interpreter', 'latex', 'fontsize', 24)
title('(a)', 'fontsize', 24)
subplot(1, 3, 2)
v0f = (f > -1 / 2) .* (f < 1 / 2) / 3;
plot(f, v0f)
ylim([0, 1])
xlabel('$f$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('$\hat{v}_0(f)$', 'interpreter', 'latex', 'fontsize', 24)
title('(b)', 'fontsize', 24)
subplot(1, 3, 3)
v1f = (f > 1 / 2) .* (f < 3 / 2) / 3;
plot(f, v1f)
ylim([0, 1])
xlabel('$f$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('$\hat{v}_1(f)$', 'interpreter', 'latex', 'fontsize', 24)
title('(c)', 'fontsize', 24)
%% A-8-P-6 (b)
figure(3)
t = -5:0.01:5;
v0t = sinc(t) / 3;
plot(t, v0t)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('$v_0(t)$', 'interpreter', 'latex', 'fontsize', 24)
figure(4)
subplot(1, 2, 1)
Rev1t = sinc(t) .* cos(2 * pi * t) / 3;
plot(t, Rev1t)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('Re$[v_1(t)]$', 'interpreter', 'latex', 'fontsize', 24)
subplot(1, 2, 2)
Imv1t = sinc(t) .* sin(2 * pi * t) / 3;
plot(t, Imv1t)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('Im$[v_1(t)]$', 'interpreter', 'latex', 'fontsize', 24)
figure(5)
subplot(1, 2, 1)
Rev_1t = sinc(t) .* cos(2 * pi * t) / 3;
plot(t, Rev_1t)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('Re$[v_{-1}(t)]$', 'interpreter', 'latex', 'fontsize', 24)
subplot(1, 2, 2)
Imv_1t = - sinc(t) .* sin(2 * pi * t) / 3;
plot(t, Imv_1t)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 24)
ylabel('Im$[v_{-1}(t)]$', 'interpreter', 'latex', 'fontsize', 24)