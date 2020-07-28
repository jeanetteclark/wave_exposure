%buffering...not really needed for Oahu data...
e_m1 = squeeze(e_m(1,:,:));
e_j = squeeze(ee(1,:,:));

[yl,xl] = utm2deg(xx,yy,repmat('04 Q', length(xx),1));
xxl = reshape(xl, 61,81);
yyl = reshape(yl, 61,81);


k = find(isnan(e_m1));
e_m1(k) = -999;
e_w = interp2(xOA,yOA,e_m1, xxl+360,yyl);


utmzone = '04 Q';
utmzone = repmat(utmzone, length(coastx), 1);
[lat, lon] = utm2deg(coastx, coasty, utmzone);

[latb, lonb] = bufferm(lat, lon, .01,'in');

in = inpolygon(xxl,yyl,lonb, latb);
k = find(in == 1);
e_w(k) = nan;