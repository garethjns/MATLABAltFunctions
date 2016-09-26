function [xNorm, dataMean, dataSig] = meanNorm(x)
% xNorm = (x-mean(x)) / std(x);

dataMean = mean(x);
dataSig = std(x);

xNorm = NaN(size(x));
for c = 1:size(x,2)
    xNorm(:,c) = (x(:,c)-dataMean(1,c)) ./ dataSig(1,c); 
end

