%% Oliver Vetter  August 2011
% simply returns wave watch three timeseries data for an island code,
% including Energy flux (ef in kW/m) Significant Wave Height (hs in m)
% Period (tp is seconds) and direction (dp in degrees from north)

% Usage
% Imports wave watch three time series .dat from W drive:
% Automatically looks into folder:
% /Volumes/w-drive/ProjectGroup/Oceanography/Outside Data...
% Souces/WWIII/timeseries
% For latest timeseries use the *_combo_nww3.dat files

% Inputs
% [hs,ef,tp,dp,dates] = GetWaveWatch3(isle)
% Define three letter island code in quotes. 

% Example
% [Hsig, EFlux, Peiod, Dir, DateTime] = GetWaveWatch3('OAH');
% Returns the above variables from wave watch three output for Oahu

% Oliver Vetter August 2011
% Added in the energy flux automation as it has now become more prevelent
% in our work for wave metrics and climatologies.

function [hs,ef,tp,dp,dates] = GetWaveWatch3(isle)

%pathname = '/Volumes/w-drive/ProjectGroup/Oceanography/Outside Data Souces/WWIII/timeseries';
pathname = '/Users/oliver.vetter/Documents/MATLAB/Satellite Data Sources/WaveWatch3/timeseries';

filename = [isle '_combo.nww3.dat'];

%% This block just reads the header line a prints it to the screen for
% clarity
file = fullfile(pathname, filename);

%% trying to add in an option to navigate yourself to file
% fid = fopen(file);
% if fid > 1; 
%     
% else
%     [filename, pathname] = uigetfile({'*.dat'},'Select WWIII timeseries file to import');
%     file = fullfile(pathname, filename);
% end

%% Imports and assigns wave watch three, 3hourly, time series data

A = importdata(file);   
dates = A.data(:,1:4);
data = A.data(:,5:end);
dates = datenum(dates(:,1),  dates(:,2), dates(:,3), dates(:,4),0,0);
[dates,i] = sort(dates);
data = data(i,:);

% header = A.textdata;
% header = [header(5:end)];
% today = datevec(now);

% Create the ww3 structure array
hs = data(:,1);
tp = data(:,2);
dp = data(:,3);
% windu = data(:,4);
% windv = data(:,5);

%% Calculate the energy flux for the entire timeseries
ro = 1024;
g = 9.81^2;
E = ((ro * g) / (64 * pi));
hs2 = hs.^2;
% Wave Energy flux in Watts per Metre of wave crest length
% dependent on significant wave height^2 and period. Ef is in kW/m
ef = E * hs2.* tp / 1000;

% % Test 
% T = 8;
% H = 3;
% 
% P = ((ro * g^2) / (64*pi)) * H^2 * T

