function [xNorm, dataMean, dataSig] = meanNorm(x)
% Replaces zscore, deals with nans
% xNorm = (x-mean(x)) / std(x);

% Check if nanmean is available and needed.
% nanamean is slower than mean and it's ~25% faster to check for NaNs 
% than to just just use nanmean if it's available
if exist('nanmean.m','file') && any(any(isnan(x)))
    meanFcn = @nanmean;
    stdFcn = @nanstd;
else
    meanFcn = @mean;
    stdFcn = @std;
end

% Get stats
dataMean = meanFcn(x);
dataSig = stdFcn(x);
% Avoid dividing by 0
dataSig(dataSig==0) = 1;

% Two bsxfun calls are quicker than for loop
xNorm = bsxfun(@minus, x, dataMean);
xNorm = bsxfun(@rdivide, xNorm, dataSig);
