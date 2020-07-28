%SWAN validation
yyKA = yKA(:); xxKA = xKA(:);
ee_m = squeeze(nanmean(e_m,1));
ee_m = ee_m(:);
for z = 1:length(x)
[arclen, ar] = distance(y(z), x(z), yyKA, xxKA);
[yz,i] = sort(arclen);

e_t = ee_m(i);
k = find(~isnan(e_t));
ee(z) = e_t(k(1));

%ee(z) = ee_m(i);
% xx(z) = xxHA(i);
% yy(z) = yyHA(i);
end

