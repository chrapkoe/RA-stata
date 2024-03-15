clear
use "contract_intensity_IO_1997.dta", clear

// calculate mean of specified (non-"other") farming industries
mean frac_lib_diff in f/9
* mean specificity is 0.383, but specificity for "other" is 0.291
* i will let higher powers decide if that is a good estimate

// make specificity (nunn calls it z^{rs1}) table for farming
*list industry_description frac_lib_diff in f/10, noobs divider separator(0)

// export to excel --> change excel rounding on your file to see specificity
*export excel industry_description frac_lib_diff in f/10 using relationship_specificity.xlsx

label variable industry_description "Industry"
label variable frac_lib_diff "Complexity"

gen farming = (substr(industry_code, 1, 3) == "111")

gsort -farming frac_lib_diff

list industry_description frac_lib_diff if farming, noobs divider separator(0)

export excel industry_description frac_lib_diff if farming using relationship_specificity.xlsx
