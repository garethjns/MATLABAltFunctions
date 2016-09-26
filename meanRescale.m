function [xNorm, dataMax, dataMean, dataMin] = meanRescale(x)
% xNorm = (x-mean(x)) / (max(x)-min(x));

dataMean = mean(x);
dataMax = max(x);
dataMin = min(x);

xNorm = NaN(size(x));
for c = 1:size(x,2)
    xNorm(:,c) = (x(:,c)-dataMean(1,c)) / (dataMax(1,c)-dataMin(1,c)); 
end

