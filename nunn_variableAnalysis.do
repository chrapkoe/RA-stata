
// Nunn's stuff:

* Summarizing specific variables to test variable type *

sum lib_diff cons_diff skill1 capital

* Summarizing variables of interest *

sum xci xc mc num_inputs total_value_used

* Interest in xci_xc variable --> value of xci_xc *

sum xci_xc

* Regression of imports (mc) on exports (xc), and xc on mc *

reg mc xc
reg xc mc

* Regression of imports on exports to all other countries *

reg mc xci

// New variables to generate zrs1 and zrs2 & replicate Table II
// Table II only deals with zrs1 values

gen zrs1 = frac_lib_diff_int / Qc
gen zrs2 = frac_lib_not_homog_int / Qc



