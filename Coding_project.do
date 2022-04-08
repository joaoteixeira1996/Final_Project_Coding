*Navigating 
pwd

ls

cd ..

cd Downloads


*Open csv file of japanese cities population 
import delimited "C:\Users\Nobrega-Pereira_Joao\Downloads\city-size-japan.csv" 

*Installing a package

net install mdesc.pkg

*Checking for missing values 

mdesc

*Dealing with missing values using for loops

foreach y in pop_1995 pop_2000 pop_2005 pop_2010 pop_2015 {
	drop if `y' ==.
}

*Reshaping the dataset

reshape long pop_, i(name) j(year)


*creating transormations of variables
gen pop_1995squared = pop_1995^2

*saving the dataset
save "city-size-japan.dta", replace

*Running OLS
reg pop_2010 pop_2015

*creating a grpah 
twoway (scatter pop_2010 pop_2015, sort)
 
*Installing another package: saving table as a file in Word
 
 reg pop_2010 pop_2015
 ssc install outreg2
 outreg2 using hw-table1.doc
 outreg2 
 
 *saving graph as file 
 graph save "Graph" "C:\Users\Nobrega-Pereira_Joao\Documents\Graph1.gph"
file C:\Users\Nobrega-Pereira_Joao\Documents\Graph1.gph saved

*creating a sample by filtering variables
keep if pop_1995 > 1000000