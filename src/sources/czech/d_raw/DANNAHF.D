// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~"Na místě, kde ho *ty* nikdy nenajdeš. Pokud si myslíš, že si ho vemeš, budeš se muset nejdřív dostat přeze mne."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~"Pokavaď mi to dá sílu, abych se tě zbavila, postarám se vo to!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~"Dost už toho tvýho žvanění! Pokavaď je to *boj* co chceš, pak d-!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~"Jestli - jestli se chceš dostat *přeze* mne, tak to udělej! Já..."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~"*Uvězním* tvé kosti, slyšiš mně?! Uvězním t-"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
