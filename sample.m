function Isamp = sample(m,amp,lambda,z)
% generates sample charactetistic Intensity
if size(amp,1) == 1
    amp= amp';
end
R = reflectivity(m,.5,.1);   R= repmat(R,length(amp),1);
ampLayer = repmat(amp,1,m);
Isamp= ampLayer.*R;

phasediff = cos(2*pi./lambda'*z); 
Isamp = Isamp.*phasediff;
