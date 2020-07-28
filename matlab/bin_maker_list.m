% get bins and wave exposure metric

%% AGR
load('agr.mat');
coastx1 = coastx; coasty1 = coasty;
load('pag.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% AGU
load('agr.mat');
coastx1 = coastx; coasty1 = coasty;
load('tin.mat');
coastx2 = coastx; coasty2 = coasty;
load('sai.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% ALA
load('ala.mat');
coastx1 = coastx; coasty1 = coasty;
load('pag.mat');
coastx2 = coastx; coasty2 = coasty;
load('gug.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% ANA
load('ana.mat');
coastx1 = coastx; coasty1 = coasty;
load('sar.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% ASC
load('asc.mat');
coastx1 = coastx; coasty1 = coasty;
load('mau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% BAK
load('bak.mat');
coastx1 = coastx; coasty1 = coasty;
load('how.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% FDP
load('fdp.mat');
coastx1 = coastx; coasty1 = coasty;
load('mau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% FFS
load('ffs.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% GUA
load('gua.mat');
coastx1 = coastx; coasty1 = coasty;
load('rot.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% GUG
load('gug.mat');
coastx1 = coastx; coasty1 = coasty;
load('ala.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% HAW (has to be lat lon!)
load('haw.mat');
coastx1 = coastx; coasty1 = coasty;
load('maui_nui.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% HOW
load('how.mat');
coastx1 = coastx; coasty1 = coasty;
load('bak.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% JAR
load('jar.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% JOH
load('joh.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% KAU
load('kau.mat');
coastx1 = coastx; coasty1 = coasty;
load('oah.mat');
coastx2 = coastx; coasty2 = coasty;
load('nii.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% KIN
load('kin.mat');
coastx1 = coastx; coasty1 = coasty;
load('pal.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% KUR
load('kur.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% LAN
load('lan.mat');
coastx1 = coastx; coasty1 = coasty;
load('mol.mat');
coastx2 = coastx; coasty2 = coasty;
load('mai.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% LAY
load('lay.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% LIS
load('lis.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% MAI MUST BE IN LAT LON
load('mai_haw.mat');
coastx1 = coastx; coasty1 = coasty;
load('mol_lan.mat');
coastx2 = coastx; coasty2 = coasty;
load('kah.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% MAR
load('mar.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% MAU
load('mau.mat');
coastx1 = coastx; coasty1 = coasty;
load('fdp.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% MID
load('mid.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% MOL
load('mol.mat');
coastx1 = coastx; coasty1 = coasty;
load('lan.mat');
coastx2 = coastx; coasty2 = coasty;
load('mai.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% NEC
load('nec.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% NIH
load('nih.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% NII
load('nii.mat');
coastx1 = coastx; coasty1 = coasty;
load('oah.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% OAH
load('oah.mat');
coastx1 = coastx; coasty1 = coasty;
load('kau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% OFU
load('ofu.mat');
coastx1 = coastx; coasty1 = coasty;
load('tau.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% PAG
load('pag.mat');
coastx1 = coastx; coasty1 = coasty;
load('agr.mat');
coastx2 = coastx; coasty2 = coasty;
load('ala.mat');
coastx3 = coastx; coasty3 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2, coastx3, coasty3);

%% PAL
load('pal.mat');
coastx1 = coastx; coasty1 = coasty;
load('kin.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% PHR
load('phr.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% ROS
load('ros.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% ROT
load('rot.mat');
coastx1 = coastx; coasty1 = coasty;
load('gua.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% SAI
load('sai.mat');
coastx1 = coastx; coasty1 = coasty;
load('tin.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% SAR
load('sar.mat');
coastx1 = coastx; coasty1 = coasty;
load('ana.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% SWA
load('swa.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);

%% TAU
load('tau.mat');
coastx1 = coastx; coasty1 = coasty;
load('ofu.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% TIN
load('tin.mat');
coastx1 = coastx; coasty1 = coasty;
load('sai.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% TUT
load('tut.mat');
coastx1 = coastx; coasty1 = coasty;
load('samoa.mat');
coastx2 = coastx; coasty2 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1, coastx2, coasty2);

%% WAK
load('wak.mat');
coastx1 = coastx; coasty1 = coasty;
bins = CreateRadialBins(x,y,coastx1, coasty1);



