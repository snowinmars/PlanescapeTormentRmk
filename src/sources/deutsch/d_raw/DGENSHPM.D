// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~Du siehst einen Mann, der in aller Gemütsruhe die Marktwaren betrachtet.~ */
  IF ~~ THEN REPLY #36045 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~Er sieht dich an. "Ja, Schleifer?"~ */
  IF ~~ THEN REPLY #36048 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~Er runzelt die Stirn und winkt dich fort. "Ich hab dafür keine Zeit, Schleifer. Laß mich in Ruhe." Er dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #36051 /* ~Verschwinde.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~Der Einkäufer dreht sich um, wirft einen kurzen Blick auf dich, und dreht dir dann sofort wieder den Rücken zu. Er ignoriert deine Versuche, mit ihm zu reden.~ */
  IF ~~ THEN REPLY #36053 /* ~Verschwinde.~ */ EXIT
END
