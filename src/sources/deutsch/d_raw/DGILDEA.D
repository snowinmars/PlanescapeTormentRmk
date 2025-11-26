// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~Du siehst eine junge Frau. Sie sieht ziemlich gelangweilt aus, wird aber munter, als du näherkommst. "Guten Tag, Schleifer. Kann ich dir irgendwie weiterhelfen?"~ */
  IF ~~ THEN REPLY #58501 /* ~"Sei gegrüßt."~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~Sie lächelt. "Ich bin Gildea. Möchtest du nicht einen Blick auf meine Waren werfen?"~ */
  IF ~~ THEN REPLY #58504 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~Sie schüttelt den Kopf. "Ich bin eine einfache Kauffrau, ich habe keine Antworten auf Lager."~ */
  IF ~~ THEN REPLY #58508 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~Du siehst Gildea, die Kauffrau. Sie lächelt dich an. "Schön, dich wiederzusehen. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #58511 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~"Nichts. Leb wohl."~ */ EXIT
END
