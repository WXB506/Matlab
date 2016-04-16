clear;clc;

% add first subplot
x  = linspace(-5,5);
y1 = sin(x);
figure;
subplot(2,2,1);
plot(x,y1);
title('First subplot');

% add second subplot
y2 = sin(2*x);
subplot(2,2,2);
plot(x,y2);
title('Second subplot');

% add third subplot
y3 = sin(4*x);
subplot(2,2,3);
plot(x,y3);
xlabel('x-axis');
ylabel('y-axis');
title('Third subplot');

% add forth subplot
y4 = sin(6*x);
subplot(2,2,4);
plot(x,y4);
title('Fourth subplot');