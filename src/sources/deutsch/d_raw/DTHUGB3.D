// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~Der Gesichtsausdruck des Schlägers ist so finster, als ob er eine groteske Maske tragen würde. Er kneift die Augen zusammen, als du näherkommst.~ */
  IF ~~ THEN REPLY #33545 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~"Halt' deine verdammte Klappe, du häßlicher Mistkerl! Wer hat dir überhaupt erlaubt, mit mir zu reden, hä? Und jetzt verpiß dich, bevor ich dich zur Ader laß!"~ */
  IF ~~ THEN REPLY #33544 /* ~"Versuch's doch! Aber heul nicht, wenn ich dich fertig mache!"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~Verschwinde.~ */ EXIT
END
