%% Gearing Up!!
% clc;    clear all;  close all;
%% Define source
specRange= 750:.1:1050; % Spectrum range with interval
cenLamda= 840;  fwhm= 50;   % central lambda  full width aat half maxima
%% Generate a Source spectrum
[Iso lambda]= broadband(specRange,cenLamda,fwhm);
%% Query sample
m = 50; % Assumed no. of reflectors in sample
depth = 3e-3;   %depth of the sample
% Creating position of reflectors
z= 0:depth/(m-1):depth;
Isamp = sample(m,Iso,lambda,z);
%% Query reference
z0 = 0; Iref = reference(Iso,lambda,z0);
%% Detector characteristic
Idet= sum(Isamp,2) + Iref;
%% Applying algorithms
% Algorithm 1: ART
Iart = art(Idet,z,Iref,lambda);
