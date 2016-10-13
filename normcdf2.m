function y = normcdf2(x, mu, sigma)

y = 0.5*(1+erf((x-mu)/sqrt(2*sigma^2)));
