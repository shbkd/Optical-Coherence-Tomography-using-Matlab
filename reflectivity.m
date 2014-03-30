function R = reflectivity(m, MaxR, MinR)
% generates reflectivity profile of sample
% m: no. of layers for which to generate profile
% MaxR: maximum reflectivity co-eff. of outermost layer
% MinR: minimum reflectivity co-eff. of innermost layer
dr = -(MaxR-MinR)/(m-1);
R = MaxR:dr:MinR;
