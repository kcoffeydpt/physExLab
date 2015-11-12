# Max VO2 test data

Max VO2 testing on 25 college aged males conducted between 2012 - 2013

subjectData.csv includes basic demographics (age, height, weight) as well as summary statistics for the test (max values)

testingProtocol.csv includes the treadmill protocol utilized with estimated VO2 demand by stage; note that this was a ramped protocol, the 3 minute stages in this file are only providing the speed and elevation for that time period. For example, at 6 minutes the subjects are at 4 MPH with a 4% grade


## 
### Folders include:
###
#### RSA-figureDrafts 

### Files include:
### 
repeatedShuttleAnalysis.R (R code for the analysis - will likely break this apart)

repeatedShuttleData.csv - data needed for this analysis - essentially the same as the teamTestingData but with derived variables about the repeated shuttle testing

repeatedShuttleDescriptiveStats.csv - initial descriptives about the repeated shuttle testing

seasonStats.csv - subject end of season stats (all games), and career stats as of the end of that season

teamTestingData.csv - includes all the Tsongas and treadmill data
combined - including several derived variables

teamTestingDataDerivedVariables.txt - equations for the derived
variables

testingProtocol.csv - treadmill testing protocol

#### added FMS-Fall2013 data - going to test whether FMS is related at all to efficiency
