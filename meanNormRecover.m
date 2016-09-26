function xRec = meanNormRecover(xNorm, dataMean, dataSig)

xRec = NaN(size(xNorm));
for c = 1:size(xNorm,2)
    xRec(:,c) = xNorm(:,c) * dataSig(1,c) + dataMean(1,c);
end