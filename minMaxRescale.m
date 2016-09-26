function [xNorm, dataMax, dataMin] = minMaxRescale(x)
% xNorm = (x-mean(x)) / (max(x)-min(x));

dataMax = max(x);
dataMin = min(x);

xNorm = NaN(size(x));
for c = 1:size(x,2)
    xNorm(:,c) = (x(:,c)-dataMin(1,c)) / (dataMax(1,c)-dataMin(1,c)); 
end

