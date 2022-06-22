function Cycloids
figure('color', 'w', 'Position', [51 13 896 948]);
daspect([1,1,1]); axis([-13, 13, -3,26]); axis off; hold on; 
rs = 1; t = linspace(0, 2*pi, 101);
Cx = rs*cos(t); Cy = rs*sin(t);
Colors = [0.0000 0.4470 0.7410
          0.8500 0.3250 0.0980
          0.1290 0.7940 0.1250];

X1 = -4*pi; Y1 = 18;
radial1 = plot(X1 + [0, 0], Y1 + [0, 4*rs], '-o');
radial1.Color = Colors(1,:);
circle1 = plot(X1 + 4*Cx, Y1 + 4*rs + 4*Cy); circle1.Color = Colors(1,:);
cycloid1 = plot(X1, Y1, 'linewidth', 3); cycloid1.Color = Colors(1,:);
plot([-13,13], Y1 + [0,0], 'linewidth', 3, 'Color', Colors(1,:)); 

X2 = -2*pi; Y2 = 12; R3 = 3*rs;
radial2 = plot(X2 + [-(R3+rs), -(R3+2*rs)], Y2 + [0, 0], '-o'); 
radial2.Color = Colors(2,:);
circle2 = plot(X2 - (R3+rs) + Cx, Y2 + Cy); circle2.Color = Colors(2,:);
cycloid2 = plot(X2 - (R3+2*rs), Y2, 'linewidth', 3); 
cycloid2.Color = Colors(2,:);
plot(X2 + R3*cos(t), Y2 + R3*sin(t), 'linewidth', 3, 'Color', Colors(2,:)); 

X3 = pi; Y3 = 12; R3 = 3*rs;
radial3 = plot(X3 + [-(R3-rs), -R3], Y3 + [0, 0], '-o'); 
radial3.Color = Colors(2,:);
circle3 = plot(X3 - (R3-rs) + Cx, Y3 + Cy); circle3.Color = Colors(2,:);
cycloid3 = plot(X3 - (R3-2*rs), Y3, 'linewidth', 3); 
cycloid3.Color = Colors(2,:);
plot(X3 + R3*cos(t), Y2 + R3*sin(t), 'linewidth', 3, 'Color', Colors(2,:));

X4 = 2*pi; Y4 = 3; R4 = 4*rs;
radial4 = plot(X4 + [-(R4+rs), -(R4+2*rs)], Y4 + [0, 0], '-o'); 
radial4.Color = Colors(3,:);
circle4 = plot(X4 - (R4+rs) + Cx, Y4 + Cy); circle4.Color = Colors(3,:);
cycloid4 = plot(X4 - R4, Y4, 'linewidth', 3); cycloid4.Color = Colors(3,:);
plot(X4 + R4*cos(t), Y4 + R4*sin(t), 'linewidth', 3, 'Color', Colors(3,:));

X5 = -2*pi; Y5 = 2.5; R4 = 4*rs;
radial5 = plot(X5 + [-(R4-rs), -R4], Y5 + [0, 0], '-o'); 
radial5.Color = Colors(3,:);
circle5 = plot(X5 - (R4-rs) + Cx, Y5 + Cy); circle5.Color = Colors(3,:);
cycloid5 = plot(X5 - R4, Y5, 'linewidth', 3); cycloid5.Color = Colors(3,:);
plot(X5 + R4*cos(t), Y5 + R4*sin(t), 'linewidth', 3, 'Color', Colors(3,:));

for t = linspace(0, 2*pi, 201)
    circle1.XData = X1 +       4*Cx + t*4*rs;
    cycloid1.XData = [cycloid1.XData, X1 + 4*rs*(t - sin(t))];
    cycloid1.YData = [cycloid1.YData, Y1 + 4*rs*(1 - cos(t))];
    radial1.XData = X1 + [t*4*rs, 4*rs*(t - sin(t))];
    radial1.YData = Y1 + [4*rs, 4*rs*(1 - cos(t))];

    tt = pi - t;
    xe = (R3+rs)*cos(tt) - rs*cos(4*tt); 
    ye = (R3+rs)*sin(tt) - rs*sin(4*tt);
    cycloid2.XData = [cycloid2.XData, X2 + xe];
    cycloid2.YData = [cycloid2.YData, Y2 + ye];
    circle2.XData = X2 + (R3+rs)*cos(tt) + Cx;
    circle2.YData = Y2 + (R3+rs)*sin(tt) + Cy;
    radial2.XData = X2 + [(R3+rs)*cos(tt), xe];
    radial2.YData = Y2 + [(R3+rs)*sin(tt), ye];


    xh = (R3-rs)*cos(tt) + rs*cos(2*tt); 
    yh = (R3-rs)*sin(tt) - rs*sin(2*tt);
    cycloid3.XData = [cycloid3.XData, X3 + xh];
    cycloid3.YData = [cycloid3.YData, Y3 + yh];
    circle3.XData = X3 + (R3-rs)*cos(tt) + Cx;
    circle3.YData = Y3 + (R3-rs)*sin(tt) + Cy;
    radial3.XData = X3 + [(R3-rs)*cos(tt), xh];
    radial3.YData = Y3 + [(R3-rs)*sin(tt), yh];

    xe = (R4+rs)*cos(tt) - rs*cos(5*tt); 
    ye = (R4+rs)*sin(tt) - rs*sin(5*tt);
    cycloid4.XData = [cycloid4.XData, X4 + xe];
    cycloid4.YData = [cycloid4.YData, Y4 + ye];
    circle4.XData = X4 + (R4+rs)*cos(tt) + Cx;
    circle4.YData = Y4 + (R4+rs)*sin(tt) + Cy;
    radial4.XData = X4 + [(R4+rs)*cos(tt), xe];
    radial4.YData = Y4 + [(R4+rs)*sin(tt), ye];

    xh = (R4-rs)*cos(tt) + rs*cos(3*tt); 
    yh = (R4-rs)*sin(tt) - rs*sin(3*tt);
    cycloid5.XData = [cycloid5.XData, X5 + xh];
    cycloid5.YData = [cycloid5.YData, Y5 + yh];
    circle5.XData = X5 + (R4-rs)*cos(tt) + Cx;
    circle5.YData = Y5 + (R4-rs)*sin(tt) + Cy;
    radial5.XData = X5 + [(R4-rs)*cos(tt), xh];
    radial5.YData = Y5 + [(R4-rs)*sin(tt), yh];
    drawnow;
end