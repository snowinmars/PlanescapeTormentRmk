// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~Du siehst einen Mann in alten, zerlumpten Kleidern. Als du auf ihn zugehst, bleibt er stehen und starrt dich an.~ */
  IF ~~ THEN REPLY #1560 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~"Hast du 'n *Problem*, Dussel...? Oder *suchst* du jemanden?" Er spuckt dir vor die Füße. "Los, hau ab, bevor du noch mehr Narben kriegst."~ */
  IF ~~ THEN REPLY #1562 /* ~"Schon gut. Ich hätte da bloß ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~Er ist voller Spott. "Das glaub' ich dir gern, und für deine Sorte habe ich keine Antworten. Hau ab!"~ */
  IF ~~ THEN REPLY #1565 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~"Dann leb wohl."~ */ EXIT
END
