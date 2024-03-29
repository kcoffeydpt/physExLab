# physExLab repository (repo)

Data and analysis files for Physiology of Exercise Lab

**Note that this is a private repository - if you are a Professor of Exercise Physiology (or related field) and you would like to contribute to this repo please let me know. If you are a student in a Physiology of Exercise lab (or class) and you would like to request access follow the steps below.**

smcollins1@plymouth.edu

As students have started to working on projects with me serving as their data analyst I have started to upload the analyses performed to RPubs (https://rpubs.com/). As analysis are uploaded they are hosted on my RPubs profile (https://rpubs.com/sean_collins) and I will also try to continue to add direct links to analyses in the appropriate sections of this README file and github front page (i.e. see below under the NHL Combine Data).

Students that are interested in using any of the data below should:

1. Send me an email requesting permission (if you are taking the class with me at PSU you can skip this step), please cc your professor in the email
2. Join Github (free) https://github.com/
3. Send me your Github username so I can add you as a collaborator to the repository
4. Fork the repo so it is set up in your Github account
5. Either set up Git on your computer (https://git-scm.com/), or just use Github 

For #4 and #5 you may want to watch the Github tutorials (https://github.com/)

There is also a great resource for starting out (free) on the Data Scientist Toolbox Github page: https://datasciencespecialization.github.io/toolbox/

And a free course on using git on codeacademy: https://www.codecademy.com/learn/learn-git

Just keep in mind that learning git or github is not necessary if all you want to do is look at data on the respository, come up with questions and work with me as your data analyst on your project. All you have to do in that case is send me your question and hypothesis and we can get started.

#### Adding curated data: if you would like to collaborate by adding curated data we can talk about how to do this without having to create too many branches in the repository (i.e. you send it to me and I can add it to the main branch, giving you full attribution)

## Purpose

Students can use any of these files for their second lab report - or can continue to use the data we collect in lab. Reports based on data collected in lab will need to focus on trends within one or two subjects as opposed to looking at patterns both within and between subjects. If you are interested in a project that looks at trends both within and between subjects the data sets attached will be your best approach. 

If you know of freely available (open) data sets that you are interested in using - just let me know and I can check them out, possibly even archive them here for future use.

### Workflow 

If you want to use one of these sets of data then I think it is only natural for me (or your professor) to help you with the analysis if you are interested. We should communicate about what you would like to do and the best way to analyze the data to answer the questions you find interesting. It is common for researchers to collaborate with a data analyst for their project. So, in this situation, consider me your data analyst consultant. Depending on the question you are interested in answering, I may end up doing the analysis for you and helping you with the interpretation. But you remain ultimately responsible for writing the report.

# Folders

## PhysExFall2015

Data from class held fall semester 2015

Includes data on:
Pre test data - PAR-Q and other general health and exercise information
Basic data - height, weight, sex and age
Body composition - estimated percent body fat based on skin fold measures
Muscular fitness - grip strength, push up reps, wall sits
Flexibility - sit and reach, shoulder elevation, back scratch test
Power - vertical jump and push up reps in 15 seconds
Wingate - tested on a subsample of the class using a Monark Wingate equipped bike with magnet released load with a subject initiated trigger for sudden loading at the moment of test starting with computer connection for counting repetitions during test

## Astrand_1964 

Data on aerobic capacity measures from classic (and existing) published paperand publically available data by Astrand et al in 1954

This includes data on the cardiovascular components of the Fick equation for VO2; as well as indirect calorimetry measures of VO2 during an incremental exercise test to max in a sample of 23 healthy college age subjects

Includes a README.md file has the variables and some ideas as well as some possible questions

## NHLcombineData

Data from the NHL combine that is available online at

http://centralscouting.nhl.com/link3/cs/combine.nsf/Attachments/CombineResultsSpreadsheet/$FILE/combine-results.xls

Includes data on Wingate, vertical jumps, and max bike VO2 testing, as well as several strength, flexibility, coordination and anthropometric variables in about 100 athletes

Analyses Performed:

https://rpubs.com/sean_collins/LemgartAnalysis

https://rpubs.com/sean_collins/AlmonteAnalysis

https://rpubs.com/sean_collins/Hunt_Analysis

## NFLcombineData (added 12/3/15)

Found NFL combine data at: http://nflcombineresults.com/nflcombinedata.php

So far all I have managed to do is write a R script that gets the data from the website above and pulls it into R, creates a data frame and exports a CSV file of the data for use by anyone that wants it in excel - but this does not have all the data as I have done most manipulations in R. The "data_cleaned.csv" has the solution to the previous problem with the 40 yard sprint data.

There are 5346 players that have been in the combine from 1999 - 2015; with the programs this can be added to with each new draft class easily.

Created an RPub on the vertical jump (leap) data from this data set - just to demonstrate the necessity of calculating power due to the huge variability associated with body weight differences.

http://rpubs.com/sean_collins/Vertical_Jump



## MaxVO2testData

Breath by breath exercise test data from max VO2 tests performed on the treadmill in 25 college aged males using a Sensomedics VMax 229 metabolic cart; includes all possible output from the system

## CollinsExTests

Data from exercise tests on myself over the past couple of years (can't find data from previous years testing)



# Ideas for projects (data collection projects)

1. Step test that controls for the impact of height: I have never thought that the step bench tests should vary bench height based on sex; but rather should vary based on height. Perhaps it's because I am a 65 inch male and I would often watch 70 inch women using a step bench shorter than mine and wonder what was going on with this picture. The idea is that if we can add height to the equation for prediction we may be able to use one step height for men and women, my hypothesis is that height would be an interaction term, changing the slope of the relationship between estimated peak VO2 and post test HR slightly, but enough to matter. This might be a nice multi-semester, multi-lab, multi-site project.
