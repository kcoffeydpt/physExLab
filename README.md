# physExLab repository

Data and analysis files for the Physiology of Exercise Lab at Plymouth State University

#### Issues
1. The power values for the wingate are far to high, need to figure out what the problem with that data is

### Class data files
All files can be linked through the subject ID number

#### Data files (csv)
1. BasicData.csv: contains height, weight, age
2. BodyComp.csv: contained estimated body composition based on skin fold procedure
3. MuscularFitness.csv: data on muscular fitness (strength and endurance) with grip, pushup, wall sits
4. Power.csv: data on estimated power with vertical jump and a push up test 
5. PreTest.csv: data on subject history of injury, very general information about health (PAR-Q) and exercise habits
6. Wingate.csv: data on Wingate test (small sample)
7. combinedData.csv: contains one row per subject with the above data other than the wingate test
8. allData.csv: includes the wingate so has 6 rows per subject for the subjects that completed the wingate

#### Analysis files (in R)
1. combineData.R is an R script that reads in the data from different labs, cleans it up a bit, and then combines all the data files from separate labs, joins them by "ID". Creates a "combinedData.csv" file that contains one row per subject and does not include the wingate test; whereas the "allData.csv" file includes the wingate so has 6 rows per subject for the subjects that completed the wingate 

### Astrand_1964 data 

Data on aerobic capacity measures from classic (and existing) published paperand publically available data by Astrand et al in 1954

This includes data on the cardiovascular components of the Fick equation for VO2; as well as indirect calorimetry measures of VO2 during an incremental exercise test to max in a sample of 23 healthy college age subjects

### NHL Combine Data

Data from the NHL combine that is available online at

http://centralscouting.nhl.com/link3/cs/combine.nsf/Attachments/CombineResultsSpreadsheet/$FILE/combine-results.xls


