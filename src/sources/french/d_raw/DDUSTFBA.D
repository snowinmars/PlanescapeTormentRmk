// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~Tu vois une femme vêtue d'un habit noir, au visage pâle et grave. Elle fixe son verre en silence.~ */
  IF ~~ THEN REPLY #2545 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~Tu vois une femme, Homme-Poussière, vêtue d'un habit noir, au visage pâle et grave. Elle fixe son verre en silence.~ */
  IF ~~ THEN REPLY #2547 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~La femme Homme-Poussière lève les yeux. "Oui ?"~ */
  IF ~~ THEN REPLY #2550 /* ~"Je peux te poser quelques questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~"Pas maintenant." La femme Homme-Poussière devient silencieuse et regarde son verre.~ */
  IF ~~ THEN REPLY #2553 /* ~"Alors, au revoir."~ */ EXIT
END
