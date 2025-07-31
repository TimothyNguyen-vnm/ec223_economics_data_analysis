
// Duc Thanh (Timothy) Nguyen - Empirical Application Project 
// SeatFit: Statistical Analysis of Passenger Dimensions

* 1. Compute histogram from STATA 

histogram y, width(0.5) frequency normal ytitle("Frequency") xtitle("Hip Measurement (inches)") title("Hip Measurements of U.S. Passengers")

* 2. Summarize the data

summarize y

* 3. Illustrate the property of consistency of the sample mean by using the graph of its sample distribution in large samples.

clear all
set more off

* -  Define number of samples and sample size

local samples = 1000
local n = 50

* - Create dataset with total observations = samples × sample size

set obs `=`samples' * `n''

* - Generate sample ID and observation index within sample

gen sample_id = ceil(_n/`n')

* - Simulate values from N(17.16, 1.81)

set seed 12345
gen y = rnormal(17.16, 1.81)

* - Collapse to compute mean for each sample

collapse (mean) sample_mean = y, by(sample_id)

* - Plot histogram of sample means

histogram sample_mean, width(0.1) title("Sampling Distribution of Sample Mean (n = 50)") xtitle("Sample Mean") ytitle("Frequency") normal

* - Summarize y, detail

summarize y, detail

* - Compute the p-value for the JB test, using the following series of commands in Stata

quietly summarize y, detail
scalar number_observations = r(N)
scalar s = r(skewness)
scalar k = r(kurtosis)

* - Computing the test statistic JB:

scalar jb = (number_observations/6)*(s^2 + ((k-3)^2)/4)
 
* - Computing the 95th percentile of the chi-square distribution:

scalar chi2_95 = invchi2(2, .95)

* - Computing the p-value: 

scalar pvalue = 1 - chi2(2, jb)
display "JB test statistic "  jb
display "95th percentile chi2(2) " chi2_95
display "p-value is   "  pvalue

* - Determine how large would a seat have to be to fit 95% of the population

* - Construct and interpret the 95% confidence interval for the population mean using the hip data

display invnormal(0.95)

* use the critical value from the t-distribution with 50 -1 = 49 degrees of freedom

scalar tc975 = invttail(49,.025)

display tc975

* check the constructed 95% confidence interval 
ci means y

mean y, level(95)

* compute the test statistic of the right-sided test at the level of significance α=0.05

sum y, detail
scalar nobs = r(N)
scalar ybar = r(mean)
scalar df = nobs - 1
scalar sigma_hat = r(sd)
scalar se = sigma_hat / sqrt(nobs)
scalar t1 = (ybar - 16.5)/se
scalar tc95 = invttail(df, 0.05)
scalar p1 = ttail(df, t1)
display "right-tail test"
display "tstat = " t1
display "tc95 =" tc95
display " p-value = " p1

* Implement the same hypothesis test

ttest y == 16.5 

* Test the null hypothesis that the population mean hip size is 17 inches

sum y, detail
scalar t2 = (ybar - 17)/se
scalar p2 = 2* ttail(df, abs(t2))
display "two-tail test"
display "tstat = " t2
display "tc975 =" tc975
display" p-value = "  p2

* Calculate and interpret the p-value for the test of the population mean based on the hip data to test H0 : µ = 16.5 against H1 : µ > 16.5 

scalar p1 = ttail(49, 2.575)
display p1

* Calculate and interpret the p-value for the test H0 : µ = 17 against H1 : µ ≠ 17 (test from part o above). Show the p-value on the graph of the pdf of the sample mean

scalar p_value_test = 2 * ttail(49, 0.6191) 
display "Prob(t(49)>0.6191 and Prob(t(49) < -0.6191  = "  p_value_test


