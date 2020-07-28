
function [E_m] = WW3in1DegRadialBins(isle,date1,date2, bins,x,y)

%%
% DESCRIPTION:

% WW3in22DegRadialBins makes files, separated by 3-letter island code,
% of the Radial wave statistics from Wave watch three, at 1 degree sector
% bins from around a designated island.
%
%%% USED IN CODE:  WW3_AllIsland_RadialBin.m to get all islands
%
% Statistics calculated are Mean (Mn) Max (Mx) cumulative sum (Cm) 
% mediam (Md) and standard deviation (Sd) of significant wave height (hs) or 
% wave power (ef) from ww3 around an island (isle) between start date (date1) 
% end an end date (date2).
% 
% USAGE: enter isle as three letter island code, and date1 & date2 as matlab
% dates
% 
% EXAMPLE:
% if you want wave energy flux statistics use:
%   % [efMn,efMx,efCm,efMd,efSd] = WW3in22DegRadialBins(isle,date1,date2)
% For wave height statistics use:
%   % [hsMn,hsMx,hsCm,hsMd,hsSd] = WW3in22DegRadialBins('MAI',datenum(2001,01,01,00,00,00),date2 = datenum(2008,12,12,00,00,00))
% 
% CALLS: GetWaveWatch3.m
%
% nargin = {isle,date1,date2};
% date1 = datenum(2001,01,01,00,00,00);
% date2 = datenum(2008,12,12,00,00,00);
% isle = 'MAI';  %  3 letter island code this example is Maui
% date1 = matlab start date date1 = datenum(yyyy,mon,day,hr,min,sec)
% date2 = matlab end date
% Separates WW3 data from an island in 16 x 22.5 degree bins around the island
% and runs statistics on these segments
%
% WRITTEN BY: Oliver Vetter, March 2013
%%

% Extracts wave watch three data in a one degree bin at an island
%[hs,ef,tp,dp,dates] = GetWaveWatch3(isle);

time = isle.time;


[arclen, ar] = distance(y,x,isle.lat,isle.lon-360);
[t,iz] = sort(arclen);
CgE = isle.CgE(iz(1),:);
dp = isle.dp(iz(1),:);

% Define radial sections
Dbin = 0:1:359;

if nargin > 1 ;
    % Find data within a date range - between cruises for example
    D = find(time >= date1 & time <= date2);
    CgE = CgE(D);
    dp = dp(D);
   
else
end

% This line makes the parameters into 'cell' format
 CgES = {};    


% Separate the parameters into 1 degree sections (S)
for i = 1:360
    [I,F] = find(dp == Dbin(i));
    CgES{i} = CgE(I);
 
 
     
end

ss = size(bins);
for p = 1:ss(1)
    bin = bins(p,:);

    for i = 1:360 %multiplies H and E data by exposure bins

    ef(i) = cellfun(@(x) x*bin(i), CgES(i),'UniformOutput', 0);
   
    end

[E,tf] = padcat(ef{:});

E_m(p) = nansum(E(:));

%EE_max(p) = max(E(:));



end

end

