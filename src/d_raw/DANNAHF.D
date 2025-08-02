// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~«Там, где *ты* его никогда не найдешь. Если думаешь взять его, тебе придется сперва пройти через меня».~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~«Если это позволит мне вспороть тебе брюхо, тогда мне все равно!»~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~«С меня хватит твоей болтовни! Если хочешь *драться*, ну так д...»~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~«Если... если собираешься *пройти* через меня, тогда вперед, попробуй! Я...»~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~«*Заткни* свою черепушку, слышал меня?! Заткни с...»~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
