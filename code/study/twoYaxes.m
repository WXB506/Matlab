clear;clc;

% plot
A = 1000;
a = 0.005;
b = 0.005;

t = 0:900;
z1 = A*exp(-a*t);
z2 = sin(b*t);

figure;
[haxes, hline1, hline2] = plotyy(t,z1,  t,z2,  'semilogy', 'plot');

% label the axes
ylabel(haxes(1),'Semilog Plot') % label left y-axis
ylabel(haxes(2),'Linear Plot') % label right y-axis
xlabel(haxes(2),'Time') % label x-axis

% change appearance of lines
set(hline1, 'LineStyle','--','LineWidth',2);
set(hline2, 'LineWidth',2);

% display grid lines
grid(haxes(1), 'on');