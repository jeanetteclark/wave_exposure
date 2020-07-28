% Script runs through each island and produces whatever parameters are set
% in 22.5 degree bins, from Wave Watch Three Data around that island.

% Calls: WW3in1DegRadialBins
%        GetWaveWatch3

%% WW3_AllIsland_RadialBin

load IslandList.mat

sector = [0:359];
[filename, pathname] = uiputfile({'*.cdp'},'Save data as .cdp CRED Data Product file');
filen = ([pathname filename(1:end-4)]);

for p = 1:length(isle)
     [efMn,hsMn,efMx,hsMx,efCm,hsCm,efMd,hsMd,efSd,hsSd] = WW3in1DegRadialBins(isle{p});
    file = [filen '_' isle{p} '.cdp'];
    % Save the parameters as separate files, determined by island name
    cleanData = [sector' efMn' efMx' efCm' efMd' efSd' hsMn' hsMx' hsCm' hsMd' hsSd'];    
    dlmwrite(file,cleanData,'delimiter','\t','-append'); 
    clear cleanData file
end


