// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2554 /* ~Tu vois un homme vêtu d'un habit noir, au visage pâle et grave. Il fixe son verre en silence.~ */
  IF ~~ THEN REPLY #2556 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #2557 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2555 /* ~Tu vois un Homme-Poussière vêtu d'un habit noir, au visage pâle et grave. Il fixe son verre en silence.~ */
  IF ~~ THEN REPLY #2558 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #2559 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2560 /* ~L'Homme-Poussière lève les yeux. "Oui ?"~ */
  IF ~~ THEN REPLY #2561 /* ~"Je peux te poser quelques questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #2562 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2563 /* ~"Pas maintenant." L'Homme-Poussière devient silencieux et regarde son verre.~ */
  IF ~~ THEN REPLY #2564 /* ~"Alors, au revoir."~ */ EXIT
END
