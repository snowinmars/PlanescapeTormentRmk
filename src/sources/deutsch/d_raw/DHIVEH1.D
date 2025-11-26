// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~Du siehst einen Mann in alten, zerlumpten Kleidern. Als du auf ihn zugehst, macht er einen Bogen um dich und geht weiter.~ */
  IF ~~ THEN REPLY #1549 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~"Hey! Einen Moment mal!"~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~Laß ihn in Frieden.
~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~Der Mann ignoriert dich. Er geht jetzt schneller.~ */
  IF ~~ THEN REPLY #1551 /* ~"Mein Herr?"~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~"Hey! Einen Moment mal!"~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~Er dreht sich um und schielt kurz nach rechts und links, um zu sehen, ob du irgendwelche Freunde bei dir hast. Er zieht einen Dolch. "Mach, daß du hier wegkommst, oder ich jag dir das Ding zwischen die Rippen!"~ */
  IF ~~ THEN REPLY #1554 /* ~"Schon gut. Ich hätte da bloß ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~Er ist voller Spott. "Das glaub' ich dir gern, und für deine Sorte hab' ich keine Antworten. Hau ab!"~ */
  IF ~~ THEN REPLY #1558 /* ~Greif ihn an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~"Na dann leb wohl."~ */ EXIT
END
