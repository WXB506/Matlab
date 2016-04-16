% sinx
x = linspace(0,2*pi,  100);
y = sin(x);
figure;
plot(x,y);

% new window
x = linspace(0,2*pi,  25);
y = sin(x);
figure;
stairs(x,y);

% plot multiple lines
x = linspace(0,2*pi,  100);
y1 = sin(x);
y2 = cos(x);
figure;
plot(x, y1,  x, y2);

% line style, color, marker
x = linspace(0,2*pi, 100);
y1 = sin(x);
y2 = cos(x);
figure;
plot(x,y1,'g--o', x,y2,'r:*');


% only data points
x = linspace(0,2*pi, 25);
y = sin(x);
figure;
plot(x,y,'*');

% add title, axis labels, legend
x = linspace(-2*pi, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
figure;
plot(x,y1,'r', x,y2,'g');
title('Graph of Sine and Cosine Between -2\pi and 2\pi');
xlabel('-2\pi < x < 2\pi');
ylabel('sine and cosine values');
%legend('y = sin(x)','y = cos(x)');
legend('y = sin(x)', 'y = cos(x)', 'Location', 'southwest');