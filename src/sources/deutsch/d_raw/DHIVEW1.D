// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~Du siehst eine Frau in verblichenen, zusammengeflickten Kleidern. Sie schaut dich an, als du dich näherst, wendet sich dann aber rasch ab, als wolle sie den Blickkontakt mit dir meiden.~ */
  IF ~~ THEN REPLY #2294 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~Die Frau schaut dich wieder an, wirft dir einen eiskalten Blick zu und wendet sich dann ab.~ */
  IF ~~ THEN REPLY #2297 /* ~"Ähh... Fräulein?"~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~Sie dreht sich wieder um... jetzt siehst du einen Dolch in ihrer Hand. "Laß mich in Ruhe, du Hund, oder ich ramm dir das Ding so tief rein, daß niemand es je wieder finden wird!"~ */
  IF ~~ THEN REPLY #2300 /* ~"Ganz ruhig... Ich hätte da bloß noch ein paar Fragen, die ich dir stellen wollte."~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~Mit ihrer freien Hand beschreibt sie einen Halbkreis über ihrem Herzen, als wolle sie das Böse fernhalten. "Ich hab' dir nichts zu sagen! Mach, daß du fortkommst!"~ */
  IF ~~ THEN REPLY #2303 /* ~Greif sie an.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~Verschwinde.~ */ EXIT
END
