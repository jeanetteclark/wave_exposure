%grid making

%% swains
lat0 = -11.099;
lon0 = -171.133;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+10*dc;
y = yo:dc:yo+10*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);


%tutuila
lat0 = -14.46685;
lon0 = -171.000659;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+68*dc;
y = yo:dc:yo+38*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);


%ofu/olo & tau

lat0 = -14.37021;
lon0 = -169.78243;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+53*dc;
y = yo:dc:yo+53*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);


%rose

lat0 = -14.65255;
lon0 = -168.26743;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+24*dc;
y = yo:dc:yo+24*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);


%ffs

lat0 = 23.533475;
lon0 = -166.43958;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+54*dc;
y = yo:dc:yo+54*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% mar

lat0 = 25.3100;
lon0 = -170.7024;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+27*dc;
y = yo:dc:yo+27*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% lis

lat0 = 25.89618;
lon0 = -174.05618;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+24*dc;
y = yo:dc:yo+24*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% mid

lat0 = 28.15425;
lon0 = -177.47483;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+21*dc;
y = yo:dc:yo+21*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% phr

lat0 = 27.69754;
lon0 = -176.02528;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+34*dc;
y = yo:dc:yo+34*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% kur

lat0 = 28.35973;
lon0 = -178.39755;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+14*dc;
y = yo:dc:yo+14*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% lay
lat0 = 25.6988;
lon0 = -171.81914;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+17*dc;
y = yo:dc:yo+17*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);

%% KAU
lat0 = 21.7;
lon0 = -160.35;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+125*dc;
y = yo:dc:yo+65*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);


%% OAH
lat0 = 21.21;
lon0 = -158.34;

[xo,yo] = deg2utm(lat0, lon0);
dc = 1000;

x = xo:dc:xo+80*dc;
y = yo:dc:yo+60*dc;

[xx,yy] = meshgrid(x,y);
xx = xx(:); yy = yy(:);
