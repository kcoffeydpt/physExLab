* Encoding: UTF-8.

 * Code to read in combine data


GET DATA  /TYPE=TXT
  /FILE="/Users/collins/maxVO2_RSA/combineData/data.csv"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID F3.0
  WingatePeak_Watts F4.0
  PeakWingate_W_kg F4.1
  WingateMean_Watts F4.0
  WingateMean_Watts_kg F4.1
  WingateRPM F3.0
  WingateHR_End F3.0
  WingateHR_1minPost F3.0
  WingatePercentDrop F4.1
  VO2max_l_min F4.2
  VO2max_ml_kg_min F4.1
  VO2max_PeakHR F3.0
  VO2max_Duration A5
  VO2max_watts F3.0
  DaysSinceLastGame F3.0
  DaysSinceLastWorkout F2.0
  Age F2.0
  Height_in F5.2
  WingSpan_in F5.2
  Weight_lb F5.1
  Skinfold_sum_6_mm F4.1
  YuhaszBodyFat F4.1
  HandEyeCoordination F4.1
  StandingLongJump_in F5.1
  VertekVerticalJump_Pause_in F4.1
  LewisAvg_Pause_watts F6.1
  SayersPeak_Pause_watts F6.1
  VertekVerticalJump_NoPause_in F4.1
  LewisAvg_NoPause_watts F6.1
  SayersPeak_NoPause_watts F4.0
  Jump4ModeGroundTime_sec F4.2
  Jump4ModeGroundPowerFactor F4.2
  Jump4ModeGroundHeight_in F4.1
  Curlups_max F2.0
  SitReach F2.0
  RightHandGrip_lb F3.0
  LeftHandGrip_lb F3.0
  BenchPress_reps150 F2.0
  BenchPress_lbperlbBodyWeight F4.1
  PushUps_max F2.0
  PushUpsxBodyWeight F4.0
  PushStrengthlb F5.1
  PushStrength_lbperlbBodyWeight F4.2
  PullStrength_lb F5.1
  PullStrength_lbperlbBodyWeight F4.2
  UpperBodyPowerkgBall_in F3.0.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.



DATASET ACTIVATE DataSet1.
GRAPH
  /ERRORBAR(CI 95)=SayersPeak_NoPause_watts WingatePeak_Watts WingateMean_Watts VO2max_watts
  /MISSING=LISTWISE.

GRAPH
  /SCATTERPLOT(BIVAR)=SitReach WITH SayersPeak_NoPause_watts
  /MISSING=LISTWISE.

GRAPH
  /SCATTERPLOT(BIVAR)=WingatePeak_Watts WITH SayersPeak_NoPause_watts
  /MISSING=LISTWISE.

GRAPH
  /SCATTERPLOT(BIVAR)=BenchPress_reps150 WITH PushUps_max
  /MISSING=LISTWISE.
