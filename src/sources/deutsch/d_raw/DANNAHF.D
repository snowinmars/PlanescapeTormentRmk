// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~"An einem Ort, wo *du* ihn nie findest. Wenn du vorhast, ihn dir zu schnappen, dann mußt du zuerst mich besiegen."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~"Wenn es mir die Kraft gibt, dich in Stücke zu zerlegen, dann ist es mir egal."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~"Genug geredet. Wenn du kämpfen willst, dann k-!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~"Wenn - wenn du versuchen willst, an mir *vorbeizukommen*, dann nur zu! Ich..."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~"*Halt* deine Knochenklappe, hörst du?! Halt d-"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
