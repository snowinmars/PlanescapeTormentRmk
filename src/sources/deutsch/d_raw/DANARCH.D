// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~Diese Person sieht dich mit einem Ausdruck tiefsten Mißtrauens an und schaut dann schnell weg, dich ignorierend und sich wieder einer unvollendeten Aufgabe zuwendend. Es sieht aus, als bereite sich die ganze Menge auf eine Art bewaffnete Revolte vor.~ */
  IF ~~ THEN REPLY #3163 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~Wie schon zuvor wirst du auch diesmal wieder gewissenhaft ignoriert.~ */
  IF ~~ THEN REPLY #64389 /* ~Geh weg.~ */ EXIT
END
