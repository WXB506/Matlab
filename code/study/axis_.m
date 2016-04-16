% create line plot
x = linspace(-10, 10, 200);
y = sin(4*x)./exp(x);
figure;
plot(x,y);

% change axis limits
figure;
plot(x,y);
axis([0,10, -1,1]);

% semiautomatic axis limits
figure;
plot(x,y);
axis([-inf,10, -1,1]);