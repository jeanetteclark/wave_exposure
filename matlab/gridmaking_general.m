for i = 1:43

lat1 = BOTTOM_YMIN(i);
lon1 = LEFT_XMIN(i);
lat2 =  TOP_YMAX(i);
lon2 = RIGHT_XMAX(i);

res = 1;
dy = floor(((lat2 - lat1)*110.574)/res);
dx = floor(((lon2 - lon1)*(111.320*cosd(lat1)))/res);


lons = lon1:res/(110.574*cosd(lat1)):lon1+(res/(110.574*cosd(lat1)))*dx;
lats = lat1:res/(111.320):lat1+(res/111.320*dy);



[xx,yy] = meshgrid(lons,lats);
xx = xx(:); yy = yy(:);

eval(sprintf('save %s xx yy', isl(i,:)));
end