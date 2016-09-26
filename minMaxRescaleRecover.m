function xRec = minMaxRescaleRecover(xNorm, dataMax, dataMin)

xRec = NaN(size(xNorm));
for c = 1:size(xNorm,2)
    xRec(:,c) = xNorm(:,c) * (dataMax(1,c)-dataMin(1,c)) + dataMin(1,c);
end