clear;clc;

% create plot
x1 = linspace(0,5);
y1 = sin(x1);
figure;
plot(x1,y1);

hold on;    % add new plot

x2 = 0:0.5:8;
y2 = 0.5*sin(x2);
stem(x2, y2);

hold off;   % reset hold state