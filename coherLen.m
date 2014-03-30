function len = coherLen(lamda0, fwhm)
% lamda: mean wavelength (nm scale, just put num, will convert to nm)
% same for fwhm
% fwhm:  full width at half maxima of source spectrum
% len: coherence length in nm
lamda0 = lamda0*1e-9;   fwhm = fwhm*1e-9; 
c = 2*log(2)/pi;
len = c*lamda0^2/fwhm;
