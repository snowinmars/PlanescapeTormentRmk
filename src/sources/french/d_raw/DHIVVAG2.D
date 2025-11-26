// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~Tu vois un homme frêle tapi dans le coin.~ */
  IF ~~ THEN REPLY #48813 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~Laisse-le tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~"Tu n'es pas revenu pour me faire du mal, n'est-ce pas ? Je t'en prie, laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #48970 /* ~"De quoi parles-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~"Je t'en prie, ne me fais pas de mal. Je ne fais rien."~ */
  IF ~~ THEN REPLY #48974 /* ~"De quoi parles-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~"Je t'en prie… Je t'en prie, ne me fais pas de mal."~ */
  IF ~~ THEN REPLY #48978 /* ~"Au revoir."~ */ EXIT
END
