%% Normalisation examples

% Prepare
data = [randn(10,1)*25, exp(0.5:0.5:5)', (-100:(200/9):100)'];

figure
subplot(4,1,1)
plot(data)
title('Original')


%% Mean normalisation
[dataNorm, dataMean, dataSTD] = meanNorm(data);

dataOrig = meanNormRecover(dataNorm, dataMean, dataSTD);

subplot(4,1,2)
plot(dataNorm);
title('MeanNorm')


%% Mean rescale

[dataNorm, dataMax, dataMean, dataMin] = meanRescale(data);
subplot(4,1,3)
plot(dataNorm);
title('MeanRescale')


%% Min/Max rescale

[dataNorm, dataMax, dataMin] = minMaxRescale(data);
dataOrig = minMaxRescaleRecover(dataNorm, dataMax, dataMin);

subplot(4,1,4)
plot(dataNorm);
title('MeanRescale')