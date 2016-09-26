# MATLABAltFunctions
Some random alternative functions to MATLAB functions available only in specific toolboxes.

Normalisation

meanNorm.m - Mean normalisation on columns (equiv. to zscore)
meanNormRecover - Restore original data from normalised and col mean/std

meanRescale - rescale based on (x-mean(x)) / (max(x)-min(x))
meanRescaleRecover - not added
minMaxRescale  - rescale on (x-min(x)) / (max(x)-min(x))
minMaxRescaleRecover - Restore original data from rescaled data and col min/max

See normalisationExamples.m
 