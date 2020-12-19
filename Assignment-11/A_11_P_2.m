clc; clear; close all;
Theta = [- pi / 4, 0, pi / 4];
% U = 0
V_1 = cos(Theta);
V_2 = sin(Theta);
plot(V_1, V_2, 'bx', 'markersize', 10)
hold on
% U = 1
V_1 = -cos(Theta);
V_2 = -sin(Theta);
plot(V_1, V_2, 'ro', 'markersize', 10)
xlim([-1, 1])
xticks([-1, 0, 1])
xticklabels({'-a', '0', 'a'})
xlabel('$V_1$', 'interpreter', 'latex', 'fontsize', 16)
ylim([-1, 1])
yticks([-1, 0, 1])
yticklabels({'-a', '0', 'a'})
ylabel('$V_2$', 'interpreter', 'latex', 'fontsize', 16)
grid on
legend('$U = 0$', '$U = 1$', 'interpreter', 'latex', 'location', 'north', 'fontsize', 16)