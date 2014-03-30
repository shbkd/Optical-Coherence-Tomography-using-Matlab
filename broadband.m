function [amp,lambda] = broadband(lambda,cenLamda,fwhm,flag)
%flag: normalization parameter, default 0
if nargin <4
    flag = 0;
end
amp = gauss_distribution(lambda, cenLamda, fwhm);
if flag == 1
    amp = amp/(max(amp)-min(amp));
end

% amp= (amp-min(amp))./(max(amp)-min(amp));
lambda= lambda*10^-9;
