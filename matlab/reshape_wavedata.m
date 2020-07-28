%create time vector that does seasonal blocks
 time1 = datenum(2002:2013,1,1);
time2 = datenum(2002:2013, 12, 31, 23, 0, 0);

for i = 1:12
[efMn(i,:)] = WW3in1DegRadialBins(FFS, time1(i), time2(i), bins);
end

ee = nanmean(efMn,1);





% efMn_tut = repmat(efMn, 1,1,length(x));
% efMn_tut = permute(efMn_tut, [3,2,1]);
% efMn_tut = repmat(bins, 1, 1, 44).*efMn_tut;
% efMn_tut = squeeze(nansum(efMn_tut,2));
% 
% efMn_tut = reshape(efMn_tut, 39,69,44);
% 
% hsMn_tut = repmat(hsMn, 1,1,length(x));
% hsMn_tut = permute(hsMn_tut, [3,2,1]);
% hsMn_tut = repmat(bins, 1, 1, 44).*hsMn_tut;
% hsMn_tut = squeeze(max(hsMn_tut,[],2));
% 
% hsMn_tut = reshape(hsMn_tut, 39,69,44);