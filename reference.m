function Iref = reference(amp,lambda,z0)
% generates reference mirror charactetistic Intensity
% parameter z0 tells if there is any extra phase difference 
if size(amp,1) == 1
    amp= amp';
end
R = .5;   R= repmat(R,length(amp),1);
Iref= amp.*R;

phasediff = cos(2*pi./lambda'*z0); 
Iref = Iref.*phasediff;
