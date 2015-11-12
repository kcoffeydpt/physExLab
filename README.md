# physExLab repository (repo)

Data and analysis files for Physiology of Exercise Lab

**Note that this is a private repository - if you are a Professor of Exercise Physiology (or related field) and you would like to contribute to this repo please let me know. If you are a student in a Physiology of Exercise lab (or class) and you would like to request access follow the steps below.**

smcollins1@plymouth.edu

Students that are interested in using any of the data below should:

1. Send me an email requesting permission (if you are taking the class with me at PSU you can skip this step), please cc your professor in the email
2. Join Github (free) https://github.com/
3. Send me your Github username so I can add you as a collaborator to the repository
4. Fork the repo so it is set up in your Github account
5. Either set up Git on your computer (https://git-scm.com/), or just use Github 

For #3 and #4 you may want to watch the Github tutorials (https://github.com/)

There is also a great resource for starting out (free) on the Data Scientist Toolbox Github page: https://datasciencespecialization.github.io/toolbox/

#### Adding curated data: if you would like to collaborate by adding curated data we can talk about how to do this without having to create too many branches in the repository (i.e. you send it to me and I can add it to the main branch, giving you full attribution)

## Purpose

Students can use any of these files for their second lab report - or can continue to use the data we collect in lab. Reports based on data collected in lab will need to focus on trends within one or two subjects as opposed to looking at patterns both within and between subjects. If you are interested in a project that looks at trends both within and between subjects the data sets attached will be your best approach. 

If you know of freely available (open) data sets that you are interested in using - just let me know and I can check them out, possibly even archive them here for future use.

### Workflow 

If you want to use one of these sets of data then I think it is only natural for me (or your professor) to help you with the analysis if you are interested. We should communicate about what you would like to do and the best way to analyze the data to answer the questions you find interesting. It is common for researchers to collaborate with a data analyst for their project. So, in this situation, consider me your data analyst consultant. Depending on the question you are interested in answering, I may end up doing the analysis for you and helping you with the interpretation. But you remain ultimately responsible for writing the report.

#### Issues
1. Resolved - the attached files are now fixed (The power values for the wingate are far to high, need to figure out this problem)

## Class data files
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

## Astrand_1964 data 

Data on aerobic capacity measures from classic (and existing) published paperand publically available data by Astrand et al in 1954

This includes data on the cardiovascular components of the Fick equation for VO2; as well as indirect calorimetry measures of VO2 during an incremental exercise test to max in a sample of 23 healthy college age subjects

## NHL Combine Data

Data from the NHL combine that is available online at

http://centralscouting.nhl.com/link3/cs/combine.nsf/Attachments/CombineResultsSpreadsheet/$FILE/combine-results.xls

## Max VO2 testing Data

Data from max VO2 tests performed on the treadmill in 25 college aged males 

# Ideas for projects (data collection projects)

1. Step test that controls for the impact of height: I have never thought that the step bench tests should vary bench height based on sex; but rather should vary based on height. Perhaps it's because I am a 65 inch male and I would often watch 70 inch women using a step bench shorter than mine and wonder what was going on with this picture.....
