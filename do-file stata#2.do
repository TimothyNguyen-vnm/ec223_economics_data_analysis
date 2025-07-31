* Duc Thanh Nguyen
* Test for normality

* Helpful Commands  

clear all
set more off
capture log close 

* Start a log file

log using "/Users/ducthanh/Desktop/Spring25/EC223/EC223 Stata session #2.smcl", replace

* Bring the data in

use "/Users/ducthanh/Desktop/Spring25/EC223/ObesityData_StataSession_#2.dta"

* Describe obesity percentage 2013

describe PCT_OBESE_ADULTS13


* Summary table for PCT_OBESE_ADULTS13
sum PCT_OBESE_ADULTS13

* Summary table for PCT_OBESE_ADULTS13 (more details)
sum PCT_OBESE_ADULTS13, d

* Print only the stats I care about

tabstat PCT_OBESE_ADULTS13, stat(mean sd min max sk k med)

* Box plot 

graph box PCT_OBESE_ADULTS13

* Histogram 
histogram PCT_OBESE_ADULTS13, bin(20) normal xtitle("Percentage Obese 2013") title("Histogram For Obesity 2013")

* QQ plot

qnorm PCT_OBESE_ADULTS13

* List counties with more than 99th percentile obesity

list County if PCT_OBESE_ADULTS13 > 42


tabstat PCT_OBESE_ADULTS13, stat(mean med)
* Close the log file
log close

