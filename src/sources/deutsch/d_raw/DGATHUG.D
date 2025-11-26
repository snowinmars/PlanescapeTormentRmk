// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~"He, Reisender! Du befindest dich jetzt im Klingenengel-Territorium... sprich mit Krystall, unserer Anführerin. Sie hat dir bestimmt was zu sagen."~ */
  IF ~~ THEN REPLY #3365 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~"Hör zu: Sprich nicht mit mir. Sprich mit Krystall. Sprich mit Krystall. Sprich mit Krystall. Kapiert?"~ */
  IF ~~ THEN REPLY #3566 /* ~Geh weg.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~"He, Kumpel... danke, daß du diese Wache erledigt hast. Ich glaube, ich spreche für alle, wenn ich sage, daß wir das sehr schätzen. Krystall tut es auf jeden Fall."~ */
  IF ~~ THEN REPLY #3568 /* ~Geh weg.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~"Nochmals vielen Dank für die Hilfe mit der Wache. Und viel Glück!"~ */
  IF ~~ THEN REPLY #3570 /* ~Geh weg.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~"Das wird die Dunkelgassen-Schlitzer vertreiben! Die Gasse gehört jetzt uns!"~ */
  IF ~~ THEN REPLY #3572 /* ~Geh weg.
~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~"Zeig diesen Dunkelgassen-Schlitzern mal, wo's lang geht!"~ */
  IF ~~ THEN REPLY #3574 /* ~Geh weg.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~"Du wagst es, dich hier blicken zu lassen? Stirb, Bösewicht!"~ */
  IF ~~ THEN REPLY #3576 /* ~Geh weg.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END
