% MAKE SURE YOU HAVE VECTORS X,Y,SITES LOADED
%CHANGE PATHNAME IN FIRST FOR LOOP
%LOAD WW3_HINDCAST_ALLISLANDS BEFORE RUNNING SECOND LOOP
for i = 1:length(x);
%     site1 = sites(i,:);
   isl1 = sites(i,1:3);
    if isl1 == 'FFP'
        isl = 'KAU';
    elseif isl1 == 'LEH'
        isl = 'KAU';
    elseif isl1 == 'OLO'
        isl = 'OFU';
    elseif isl1 == 'SOB'
        isl = 'GUA';
    elseif isl1 == 'SRR'
        isl = 'TUT';
    elseif isl1 == 'GAR' 
       isl = 'FFS';
    elseif isl1 == 'SOB' 
       isl = 'GUA';
    elseif isl1 == 'ZEA' 
       isl = 'SAR';
    elseif isl1 == 'SUP' 
       isl = 'SAR';
    else
        isl = isl1;
    end
    
%isl = 'PHR';
%k = strmatch(isl, REALocation);
% cd C:\Users\Susan.Clark\Documents\exposure\data\WW3
% load(isl);

cd C:\Users\Susan.Clark\Documents\exposure\coasts
%x = Longitude(k); y = Latitude(k);

%% 
if isl == 'AGR'
%& AGR
load('agr.mat');
coastx1 = coastx; coasty1 = coasty;
load('pag.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'AGU'
load('agr.mat');
coastx1 = coastx; coasty1 = coasty;
load('tin.mat');
coastx2 = coastx; coasty2 = coasty;
load('sai.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'ALA'
load('ala.mat');
coastx1 = coastx; coasty1 = coasty;
load('pag.mat');
coastx2 = coastx; coasty2 = coasty;
load('gug.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'ANA'
load('ana.mat');
coastx1 = coastx; coasty1 = coasty;
load('sar.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'ASC'
load('asc.mat');
coastx1 = coastx; coasty1 = coasty;
load('mau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);
elseif isl == 'BAK'
% BAK
load('bak.mat');
coastx1 = coastx; coasty1 = coasty;
load('how.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'FDP'
load('fdp.mat');
coastx1 = coastx; coasty1 = coasty;
load('mau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'FFS'
load('ffs.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'GUA'
load('gua.mat');
coastx1 = coastx; coasty1 = coasty;
load('rot.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'GUG'
load('gug.mat');
coastx1 = coastx; coasty1 = coasty;
load('ala.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'HAW'
load('haw.mat');
coastx1 = coastx; coasty1 = coasty;
load('maui_nui.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'HOW'
load('how.mat');
coastx1 = coastx; coasty1 = coasty;
load('bak.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'JAR'
load('jar.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'JOH'
load('joh.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'KAU'
load('kau.mat');
coastx1 = coastx; coasty1 = coasty;
load('oah.mat');
coastx2 = coastx; coasty2 = coasty;
load('nii.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'KAH'
load('mai.mat');
coastx1 = coastx; coasty1 = coasty;
load('kah.mat');
coastx2 = coastx; coasty2 = coasty;
load('mol_lan.mat');
coastx3 = coastx; coasty3 = coasty;
load('haw.mat');
coastx4 = coastx; coasty4 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3, coastx4, coasty4);


elseif isl == 'KIN'
load('kin.mat');
coastx1 = coastx; coasty1 = coasty;
load('pal.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'KUR'
load('kur.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'LAN'
load('lan.mat');
coastx1 = coastx; coasty1 = coasty;
load('mol.mat');
coastx2 = coastx; coasty2 = coasty;
load('mai.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'LAY'
load('lay.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'LIS'
load('lis.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'MAI' 
load('mai_haw.mat');
coastx1 = coastx; coasty1 = coasty;
load('mol_lan.mat');
coastx2 = coastx; coasty2 = coasty;
load('kah.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'MAR'
load('mar.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'MAU'
load('mau.mat');
coastx1 = coastx; coasty1 = coasty;
load('fdp.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'MID'
load('mid.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'MOL'
load('mol.mat');
coastx1 = coastx; coasty1 = coasty;
load('lan.mat');
coastx2 = coastx; coasty2 = coasty;
load('mai.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'NEC'
load('nec.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'NIH'
load('nih.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'NII'
load('nii.mat');
coastx1 = coastx; coasty1 = coasty;
load('oah.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'OAH'
load('oah.mat');
coastx1 = coastx; coasty1 = coasty;
load('kau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'OFU'
load('ofu.mat');
coastx1 = coastx; coasty1 = coasty;
load('tau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'PAG'
load('pag.mat');
coastx1 = coastx; coasty1 = coasty;
load('agr.mat');
coastx2 = coastx; coasty2 = coasty;
load('ala.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

elseif isl == 'PAL'
load('pal.mat');
coastx1 = coastx; coasty1 = coasty;
load('kin.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'PHR'
load('phr.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'ROS'
load('ros.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'ROT'
load('rot.mat');
coastx1 = coastx; coasty1 = coasty;
load('gua.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'SAI'
load('sai.mat');
coastx1 = coastx; coasty1 = coasty;
load('tin.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'SAR'
load('sar.mat');
coastx1 = coastx; coasty1 = coasty;
load('ana.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'SWA'
load('swa.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

elseif isl == 'TAU'
load('tau.mat');
coastx1 = coastx; coasty1 = coasty;
load('ofu.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'TIN'
load('tin.mat');
coastx1 = coastx; coasty1 = coasty;
load('sai.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'TUT'
load('tut.mat');
coastx1 = coastx; coasty1 = coasty;
load('samoa.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1, coastx2, coasty2);

elseif isl == 'WAK'
load('wak.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x(i),y(i),coastx1, coasty1);

end
bins1(i,:) = bins;
end
%% 
% time1 = datenum(2013,1,1);
% time2 = datenum(2013, 12, 31, 23, 0, 0);
for i = 1:length(x);
%     site1 = sites(i,:);
     isl1 = sites(i,1:3);
    if isl1 == 'KAU' 
       isl = 'OAH_c2';
    elseif isl1 == 'MOL' 
        isl = 'OAH_c2';
    elseif isl1 == 'LAN' 
        isl = 'OAH_c2';
    elseif isl1 == 'NII' 
        isl = 'OAH_c2';
    elseif isl1 == 'OAH' 
        isl = 'OAH_c2';
    elseif isl1 == 'KAH' 
        isl = 'OAH_c2';
%     elseif isl1 == 'HAW' 
%        isl = 'OAH_ext';
    elseif isl1 == 'GAR' 
       isl = 'FFS';
    elseif isl1 == 'SOB' 
       isl = 'GUA';
    elseif isl1 == 'ZEA' 
       isl = 'SAR';
    elseif isl1 == 'SUP' 
       isl = 'SAR';
    elseif isl1 == 'LEH' 
       isl = 'OAH_c2';
%     elseif isl1 == 'OAH' 
%         isl = 'OAH_ext';%'OAH_ext';
%     elseif isl1 == 'MOL'
%         isl = 'OAH_ext';
%     elseif isl1 == 'NII'
%         isl = 'OAH_ext';
%     elseif isl1 == 'MAI'
%         isl = 'OAH_ext';
%     elseif isl1 == 'LAN' 
%         isl = 'OAH_ext';
%     elseif isl1 == 'LEH'
%         isl = 'OAH_ext';
    elseif isl1 == 'FFP'
     isl = 'OAH_c2';
    elseif isl1 == 'ANA'
        isl = 'SAR';
    elseif isl1 == 'OLO'
        isl = 'OFU';
    elseif isl1 == 'SOB'
        isl = 'GUA';
    elseif isl1 == 'SRR'
        isl = 'TUT';
    else
        isl = isl1;
    end

   %eval(sprintf('load(''%s'')', isl));
for z = 1:34
 %time1 = datenum(2011:2016,month_isl_avg(i)-1,1);
 %time2 = datenum(2000:2013, month_isl_avg(i)+1, 30);
 time1 = datenum(1979:2012,1,1); time2 = datenum(1979:2012, 12, 31);
 %time1 = datenum(year(i),1,1);
 %time2 = datenum(year(i), 12, 31);
%if isnan(time1) == 1
 %   efMn(i,z) = nan;
%elseif isnan(time1) == 0
eval(sprintf('[efMn(i,z)] = WW3in1DegRadialBins_old(%s, time1(z), time2(z), bins1(i,:));', isl));
%efMn(i,z) = WW3in1DegRadialBins_old(time, CgE, dp, time1(z), time2(z), bins1(i,:));

end
end

%end

efMn = efMn';
%ee(k,:) = efMn;

clearvars -except ee lats lons
%clearvars -except ee Latitude Longitude REA_site REALocation Rownum




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