clc; clear; close all;
N = 8;
A = 2;
W = 1;
W_g = 3 * W;
f_1 = W + W_g;
f = -30:0.01:30;
S_c = 0;
for k = 0:(N - 1)
    S_c = S_c + (48 * k^2 + 12 * k + 1) * ((0.5 * (f >= (k * f_1)) .* (f <= (W + k * f_1))...
        + 0.5 .* (f >= (- W - k * f_1)) .* (f <= (- k * f_1))));
end
S_c = A * S_c;
plot(f, S_c)
hold on
S_n = A / 10 * f.^2;
plot(f, S_n, '--')
xlim([f(1), f(end)])
xtick = [];
xticklabel = {};
n = 1;
f = - W - (N - 1) * f_1;
for k = 1:(N - 1)
    xtick(n) = f;
    xticklabel(n) = {[num2str(f), 'W']};
    n = n + 1;
    f = f + W;
    xtick(n) = f;
    xticklabel(n) = {[num2str(f), 'W']};
    n = n + 1;
    f = f + W_g;
end
xtick(n) = f;
xticklabel(n) = {'-W'};
n = n + 1;
f = f + 2 * W;
xtick(n) = f;
xticklabel(n) = {'W'};
n = n + 1;
f = f + W_g;
for k = 1:(N - 1)
    xtick(n) = f;
    xticklabel(n) = {[num2str(f), 'W']};
    n = n + 1;
    f = f + W;
    xtick(n) = f;
    xticklabel(n) = {[num2str(f), 'W']};
    n = n + 1;
    f = f + W_g;
end
set(gca,'xtick', xtick, 'xticklabel', xticklabel, 'fontsize', 6)
ytick = [0];
yticklabel = {'0'};
set(gca,'ytick', ytick, 'yticklabel', yticklabel)
xlabel('f', 'fontsize', 20)
ylabel('S(f)', 'fontsize', 20)
legend('PSD of signal component S_{DF}(f)','PSD of noise component S_{nF}(f)=K_D^2N_0^2f^2/A_c^2', 'fontsize', 20)
