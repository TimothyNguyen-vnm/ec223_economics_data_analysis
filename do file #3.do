* Duc Thanh Nguyen

* Bring the data in 

use "/Users/ducthanh/Downloads/HousingPriceData_video4_assignment1.dta"

* Label Data

label define utownlabel 0 "Golden Oaks" 1 "University Town"

label value utown utownlabel

* Generate a histogram of housing prices in the Golden Oaks district

histogram price if utown ==0, normal width(12) start(130) percent xtitle(House Prices 1000 Golden Oaks)
xlabel(130(24)350) legend(off) 

graph save housingpricesgoldenoaks, replace

* Do the same for University Town

histogram price if utown ==1, normal width(12) start(130) percent xtitle(House Prices $1,000 in University Town) 
xlabel(130(24)350) legend(off)

graph save housingpricesuniversitytown, replace

* Combine the two graphs

graph combine "housingpricesgoldenoaks" "housingpricesuniversitytown", col(1) iscale(1)
graph save combined, replace

* Conduct t-test 

ttest price==200

* . Conduct the test of whether the population variances of housing prices in two towns are equal (the null hypothesis is that the two variances are equal)

robvar price, by(utown)


