function bins = CreateRadialBins(x,y,coastx1,coasty1,coastx2,coasty2,coastx3,coasty3,coastx4,coasty4)
%bins = CreateRadialBins(x,y,coastx1,coasty1,coastx2,coasty2,coastx3,coasty3,coastx4,coasty4)
%Function returns a matrix of radial bins (bins) with NaNs representing
%depth bins that intersect the coast, and 1s as bins that don't intersect
%the coastline. Input is vectors of points (x,y) in lat/lon, and relevant
%coastline points (coastx1, coasty1, etc). Function takes coastline input
%for up to 1-4 separate island coast vectors. Coastline data must be in
%same coordinate system (lat/lon or UTM) as the x,y data.
%
%Returns vector of radial bins for each point in x,y with NaNs as bins that intersect the coast and 1s as bins that 
%don't intersect the coast. Bins will be a matrix of length  = length(x),
%and width 360, where each point in the width represents a degree bin from
%0:359.
%Disclaimer: this code is not very efficient and is very slow. I try to not
%run more than 1000 points at a time.
%Written by JC

for  z= 1:length(x) %begin for loop
    x1 = x(z);
    y1 = y(z);





i = 0:359;
xs = x+sind(i);%*(100*100); %create 360 points at 1 deg intervals around the central point
ys = y+cosd(i);%*(100*100);
if nargin == 4
for d = 1:360 %create for loop to go through each radial line
[xi, yi] = polyxpoly(coastx1, coasty1, [x1 xs(d)],[y1 ys(d)]); %this fuction returns the point(s) at which the line defined by x1,y1;xs ys intersects the coast

if isempty(xi); %if there are no intersection points, xx == 1
    xx(d) = 1;
elseif length(xi) > 0; %if there is an intersection point, xx = NaN
    xx(d) = NaN;
end

clear('xi')
end
bins(z,:) = xx; %store xx in matrix bins


elseif nargin == 6 %if you have more than one coast entered, the process happens twice
    for d = 1:360
[xi, yi] = polyxpoly(coastx1, coasty1, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx(d) = 1;
elseif length(xi) > 0;
    xx(d) = NaN;
end

clear('xi')
    end
bins2(z,:) = xx;

for d = 1:360
[xi, yi] = polyxpoly(coastx2, coasty2, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx1(d) = 1;
elseif length(xi) > 0;
    xx1(d) = NaN;
end

clear('xi')
end
bins1(z,:) = xx1;
bins = bins1.*bins2; %the resulting bins from both runs are multiplied - with only 1*1 values surviving, since 1*NaN = NaN
                       %this way, if a radial line intersects either island
                       %(or both), the result is a NaN so that bin is
                       %considered not exposed to waves.
elseif nargin == 8 %same principle for the rest of the code
    for d = 1:360
[xi, yi] = polyxpoly(coastx1, coasty1, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx(d) = 1;
elseif length(xi) > 0;
    xx(d) = NaN;
end

clear('xi')
    end
bins2(z,:) = xx;

for d = 1:360
[xi, yi] = polyxpoly(coastx2, coasty2, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx1(d) = 1;
elseif length(xi) > 0;
    xx1(d) = NaN;
end

clear('xi')
end
bins1(z,:) = xx1;
bins = bins1.*bins2;

for d = 1:360
[xi, yi] = polyxpoly(coastx3, coasty3, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx2(d) = 1;
elseif length(xi) > 0;
    xx2(d) = NaN;
end

clear('xi')
end
bins3(z,:) = xx2;
bins = bins1.*bins2.*bins3;

elseif nargin == 10
    for d = 1:360
[xi, yi] = polyxpoly(coastx1, coasty1, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx(d) = 1;
elseif length(xi) > 0;
    xx(d) = NaN;
end

clear('xi')
    end
bins2(z,:) = xx;

for d = 1:360
[xi, yi] = polyxpoly(coastx2, coasty2, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx1(d) = 1;
elseif length(xi) > 0;
    xx1(d) = NaN;
end

clear('xi')
end
bins1(z,:) = xx1;
bins = bins1.*bins2;

for d = 1:360
[xi, yi] = polyxpoly(coastx3, coasty3, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx2(d) = 1;
elseif length(xi) > 0;
    xx2(d) = NaN;
end

clear('xi')
end
bins3(z,:) = xx2;
bins = bins1.*bins2.*bins3;

for d = 1:360
[xi, yi] = polyxpoly(coastx4, coasty4, [x1 xs(d)],[y1 ys(d)]);

if isempty(xi);
    xx2(d) = 1;
elseif length(xi) > 0;
    xx2(d) = NaN;
end

clear('xi')
end
bins4(z,:) = xx2;
bins = bins1.*bins2.*bins3.*bins4;

end





end
