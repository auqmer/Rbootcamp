//// SEDA Data Exploration ///
/// 10/3/19 ///

//// Importing Data from CSV //
clear
cd "C:\Users\wmm0017\Projects\QMER\Rbootcamp"
import delimited "data/seda.csv"

/// Save Data in STATA format ///
save "/Users/amp0129/Desktop/Data Example/STATA/1. SEDA_mfgap.dta"

/// Reopen Data from file
clear
cd "/Users/amp0129/Desktop/Data Example/STATA"
use "1. SEDA_mfgap.dta"

//////////////////////////////
/// Explore Data //
bro

/// Look at Data ///
tab grade
tab year
tab subject
hist achv
hist mfg

mean mfg, over(grade)
mean achv, over(grade)

//// Grade Gap Average ///
bysort grade: egen grade_gap = mean(mfg)
twoway (bar grade_gap grade, sort)
//// SEDA Data Exploration ///
/// 10/3/19 ///

//// Importing Data from CSV //
clear
import delimited "/Users/amp0129/Desktop/Data Example/SEDA_mfgap.csv"

/// Save Data in STATA format ///
save "/Users/amp0129/Desktop/Data Example/STATA/1. SEDA_mfgap.dta"

/// Reopen Data from file
clear
cd "/Users/amp0129/Desktop/Data Example/STATA"
use "1. SEDA_mfgap.dta"

//////////////////////////////
/// Explore Data //
bro

/// Look at Data ///
tab grade
tab year
tab subject
hist achv
hist mfg

mean mfg, over(grade)
mean achv, over(grade)

//// Grade Gap Average ///
bysort grade: egen grade_gap = mean(mfg)
twoway (bar grade_gap grade, sort)
//// SEDA Data Exploration ///
/// 10/3/19 ///

//// Importing Data from CSV //
clear
import delimited "/Users/amp0129/Desktop/Data Example/SEDA_mfgap.csv"

/// Save Data in STATA format ///
save "/Users/amp0129/Desktop/Data Example/STATA/1. SEDA_mfgap.dta"

/// Reopen Data from file
clear
cd "/Users/amp0129/Desktop/Data Example/STATA"
use "1. SEDA_mfgap.dta"

//////////////////////////////
/// Explore Data //
bro

/// Look at Data ///
tab grade
tab year
tab subject
hist achv
hist mfg

mean mfg, over(grade)
mean achv, over(grade)

//// Grade Gap Average ///
bysort grade: egen grade_gap = mean(mfg)
twoway (bar grade_gap grade, sort)
