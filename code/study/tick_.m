% create line chart
x = linspace(-10, 10, 200);
y = cos(x);
figure;
plot(x,y);

% add tick mark
figure;
plot(x,y);
set(gca, 'XTick', [-3*pi, -2*pi, -pi, 0, pi, 2*pi, 3*pi]);
set(gca, 'YTick', [-1, -0.5, 0, 0.5, 1]);

% change tick mark labels
figure;
plot(x,y);
set(gca, 'XTick', [-3*pi, -2*pi, -pi, 0, pi, 2*pi, 3*pi]);
set(gca, 'YTick', [-1, -0.5, 0, 0.5, 1]);

set(gca, 'XTickLabel',{'-3pi','-2pi','-pi','0','pi','2pi','3pi'})
set(gca, 'YTickLabel',{'min = -1', '-0.5', '0', '0.5', 'max = 1'});