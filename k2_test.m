function [h, p_value, k2, df] = k2_test(Observed, Expected)
% h is 1 if the test rejects the null hypothesis at the 5% significance
% level, and 0 otherwise.
% p-value of the hypothesis test
% k2: same as chi score
% df: degree of freedom

nbins = calcnbins(Observed);

Observed_hist = hist(Observed, nbins);
Expected_hist = hist(Expected, nbins);

[h, p_value, stats] = chi2gof(1:nbins,'freq',Observed_hist,'expected',Expected_hist,'ctrs',1:nbins,'nparams',2);
k2 = stats.chi2stat;
df = stats.df;

