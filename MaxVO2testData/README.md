# Max VO2 test data

Max VO2 testing on 25 college aged males conducted between 2012 - 2013

**subjectData.csv** includes basic demographics (age, height, weight) as well as summary statistics for the test (max values)

Most variables are self explanatory - but some are derived:

Force(N) = Wt(kg) * 9.81

Speed (m/s) = SpeedMax * .44704

VertVelocity(m/s) = speed(m/s) * grade(decimal)

PowerDone = Force(N) * VertVelocity(m/s)

kcal(max) = vo2_L_max * 5.81

J/min = kcal(min) * 4184

PowerUsed = Joules_min * 60

Efficiency = PowerDone_watts / PowerUsed_watts


**testingProtocol.csv** includes the treadmill protocol utilized with estimated VO2 demand by stage; note that this was a ramped protocol, the 3 minute stages in this file are only providing the speed and elevation for that time period. For example, at 6 minutes the subjects are at 4 MPH with a 4% grade

**Subject Files** Each subject's file has their ID (1 - 25) which is also the name of their file "1.csv, 2.csv" etc. These files have the breath by breath (bxb) data exported

Variable names:
ID - subject ID
tod - time of day
tot - time of test
level - testing level "E" stands for exercise - all subject data is limited to the E level
vo2_L - VO2 consumed for that breath in liters
vo2_mlkgmin - VO2 consumed for that breath in liters/kg/min
vco2_L - VCO2 produced for that breath in liters
rq - respiratory quotient (RER)
ve_stpd - ventilation
ve_btps - ventilation
vt_L - tidal volume (liters)
rr - respiratory rate (breaths per minute - clearly an extrapolation) 
pef - peak expiratory flow
veo2 - VEO2 (Ve/VO2)
veco2 - VECO2 (Ve/VCO2)
Ti_sec - time of inspiration in seconds
Te_sec - time of expiration in seconds
Ttot_sec - Total time for breathing cycle in seconds
Ti_Ttot - Time in inspiration as a percentage of total time
vt_Ti - tidal volume time of inspiration
speed - treadmill speed in miles per hour
grade - treadmill grade (fractional, i.e. 10% = 0.1)
hr - heart rate in beats per minute - clearly an extrapolation
o2pulse - O2 Pulse = VO2 / hr so it's how much oxygen is consumed per heart beat - thought to represent stroke volume (relatively)
peto2 - partial pressure of end tidal O2
petco2 - partial pressure of end tidal CO2
fio2 - Fraction of inspired O2
feo2 - Fraction of expired O2
fico2 - Fraction of inspired CO2
feco2 - Fraction of expired CO2


