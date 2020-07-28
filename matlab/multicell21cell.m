
for i = 1:length(isls)
    isl = isls(i,:);
    cd C:\Users\Susan.Clark\Documents\exposure\coasts
    eval(sprintf('load(''%s'')',isl));
    cd C:\Users\Susan.Clark\Documents\exposure\updated_WW3\formatted
    eval(sprintf('load(''%s'')',isl));

eval(sprintf('[arclen, ar] = distance(nanmean(coasty),nanmean(coastx),%s.lat,%s.lon);', isl, isl));
[t,iz] = sort(arclen);
eval(sprintf('CgE = %s.CgE(iz(1),:);', isl));
eval(sprintf('dp = %s.dp(iz(1),:);', isl));
eval(sprintf('time = %s.time;', isl));
cd C:\Users\Susan.Clark\Documents\exposure\updated_WW3\formatted_1cell
eval(sprintf('save %s dp CgE time', isl));
clearvars -except isls
end