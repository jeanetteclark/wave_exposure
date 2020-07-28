% load the radial excel file from Tomoko, including the index matrix for
% each survey around a specific island
%% FIRST USE WW3_AllIsland_RadialBin to calculate the statistics in radial bins
% Then use this code to calculate the Swath Stats

% THEN COPY AND PASTE THE HEADERS AND SITE ID INTO THE EXCEL FILE

% ADAPTED ON CRUISE HA1304 to work on DELL computer. 2013 09 15

% EXAMPLE:  CalcStats4IncidentWaveSwath('FFS','10m')  
% The depth is in the format '1m' or '5m'  not just a number

function CalcStats4IncidentWaveSwath(isle,Depth)

% Eg % isle = 'MAI';
if strcmp(Depth,'1m');
    % excel file input from Tomoko
    xlsxfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\Isle_ExposureBins_xls\' isle '_Output.csv'];
    % Designates the output file and directory as a .csv:
    csvfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\FinalParameters\' isle '_IncidentWaveStats_1Deg_1m.csv'];
elseif strcmp(Depth,'5m');
    xlsxfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\Isle_ExposureBins_xls\' isle '_Output.csv'];
    csvfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\FinalParameters\' isle '_IncidentWaveStats_1Deg_5m.csv'];
else strcmp(Depth,'10m');
    xlsxfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\Isle_ExposureBins_xls\' isle '_Output.csv'];
    csvfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\FinalParameters\' isle '_IncidentWaveStats_1Deg_10m.csv'];
end
[num,text,~] = xlsread(xlsxfile);

% Designates Island three letter code for picking out relevant radial bin matrix
Site = text(2:end,1);
CSite = char(Site);
siteNum = str2num(CSite(:,5:end));
% Lon= num(2:end,1); Lat = num(2:end,2); 
% Theses are for indexing data and preassigning matrix space
[a,b] = size(num); c = a-1;

% Pull out the 0 or 1 Radial indices.0 for land (remove) 1 for open ocean (keep)
RadI = nan(length(Site),360);
for i = 2:a
    RadI(i-1,:) = num(i,3:end);
end

%% Determine which parameters you want from the 1 deg bins
% Now call the mean wave height and power, calculated from the WW3 data for each 1
% degree bin around the island
clear fid
k = 1;
cdpfile = ['C:\Users\oliver.vetter\Desktop\Olivers\MATLAB\WaveMetrics\FishAssemblages\Data\Radial1DegBin\WW3Stats1Deg_' isle '.cdp'];
fid = fopen(cdpfile);
while feof(fid) ~= 1
    m = fgets(fid);
    [Bin(k),efMn(k),~,~,~,~,hsMn(k),~,~,~,~] = strread(m);
    k = k+1;
end
% Preassign matrix of ones
BinI = ones(c,360); efMnI = ones(c,360); hsMnI = ones(c,360);
for i = 1:c
  BinI(i,:) = Bin;  efMnI(i,:) = efMn; hsMnI(i,:) = hsMn;      
end
for i = 1:c
    for j = 1:360;
        if RadI(i,j)
        BinI(i,j) = BinI(i,j); efMnI(i,j) = efMnI(i,j); hsMnI(i,j) = hsMnI(i,j);
        else
        BinI(i,j) = nan; efMnI(i,j) = nan; hsMnI(i,j) = nan;
        end
    end
end

%% Statistics for Mean Degree bins
% Stats on Mean Wave Power
EMnMn = nanmean(efMnI'); EMxMn = nanmax(efMnI');
ECmMn = nansum(efMnI'); EMdMn = nanmedian(efMnI');
ESdMn = nanstd(efMnI');
% Stats on Mean Wave Height
HsMnMn = nanmean(hsMnI'); HsMxMn = nanmax(hsMnI');
HsCmMn = nansum(hsMnI'); HsMdMn = nanmedian(hsMnI');
HsSdMn = nanstd(hsMnI');

%% Save the data 
cleanData = [siteNum EMnMn' EMxMn' ECmMn' EMdMn' ESdMn' HsMnMn'...
    HsMxMn' HsCmMn' HsMdMn' HsSdMn'];
csvwrite(csvfile,cleanData,1,0);
