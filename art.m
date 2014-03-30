function Iart = art(Idet,z,Iref,lambda)
% art: algebraic reconstruction technique (ART)
% "Optical coherence tomography by using frequency measurements in 
%  wavelength domain, 2011" - by Hon Luen Seck 
%% Create A matrix
A= repmat(Idet,1,length(z));
for i = 1:length(Idet)
    for j= 1:length(z)
        A(i,j)=A(i,j)*exp(1i*4*pi*z(j)/lambda(i));
    end
end
%% Create B matrix
b= Idet-Iref;
%% Getting z distribution
Iart= (A)\b;
plot(z,real(Iart));    xlabel('dist, um'); ylabel('A-scan')
