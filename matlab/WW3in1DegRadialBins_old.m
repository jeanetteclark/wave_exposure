
function [E_m] = WW3in1DegRadialBins_old(isle,date1,date2, bins)

%%
% [E_m] = WW3in1DegRadialBins_old(time, CgE, dp,date1,date2, bins)

%
% Calculates wave energy flux (E_m, in kwm2) from ww3 data (time, CgE(wave energy), dp(direction)) at each 
%row in the matrix bins, where a row represents a vector of 1s and NaNs indicating exposure to waves for each
%direction (0:359),between start date (date1) end an end date (date2).
%NOTE: timeseries of direction inputs must be integers only
%bins is the output matrix from function "create_radial_bins"
% 
% Adapted from code written by Oliver Vetter, March 2013, by JC
%%


 time = isle.time; %code can be used with a structure containing the time,
% CgE, and dp variabiles, depending on what input is easiest. 
CgE = isle.CgE;
dp = isle.dp;
% 
% Define radial sections
Dbin = 0:1:359;

if nargin > 1 ;
    % Find and select data within the date range
    D = find(time >= date1 & time <= date2);
    CgE = CgE(D);
    dp = dp(D);
   
else
end

% Create wave energy variabile in 'cell' format
 CgES = {};    


% Separate the wave energy into 1 degree sections
for i = 1:360
    [I,F] = find(dp == Dbin(i));
    CgES{i} = CgE(I);
 
 
     
end

ss = size(bins);
for p = 1:ss(1) %for loop beginning to run through every row in bins
    bin = bins(p,:);

    for i = 1:360 %multiplies separated wave energy data by the matrix NaNs, resulting in a NaN value for exposure data bins 
        %that are not within the wave exposure swath
    ef(i) = cellfun(@(x) x*bin(i), CgES(i),'UniformOutput', 0);
   
    end

[E,tf] = padcat(ef{:}); %concatenates the 'vectors' in the cell structure ef into a matrix padded with nans

E_m(p) = nansum(E(:)); %adds all real values in the matrix together to get one value of wave exposure for each point




end

end

