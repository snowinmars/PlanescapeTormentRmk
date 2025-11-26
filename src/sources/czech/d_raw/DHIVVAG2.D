// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~Vidíš křehce vyhlížejícího muže, který se schovává v koutě.~ */
  IF ~~ THEN REPLY #48813 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~Nechej muže být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~"Nepřišel jsi mi ublížit, že ne? Prosím tě, nech mě být."~ */
  IF ~~ THEN REPLY #48970 /* ~"O čem to mluvíš?"~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~"Prosím tě, neubližuj mi. Nic nedělám."~ */
  IF ~~ THEN REPLY #48974 /* ~"O čem to mluvíš?"~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~"Prosím... prosím, neubližuj mi."~ */
  IF ~~ THEN REPLY #48978 /* ~"Sbohem."~ */ EXIT
END
