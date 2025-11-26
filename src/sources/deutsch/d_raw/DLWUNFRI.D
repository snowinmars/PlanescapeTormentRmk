// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWUNFRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWUNFRI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3034 /* ~Ich bin ein unfreundlicher Bewohner des Unteren Bezirks. Geh mir aus dem Weg.~ */
  IF ~~ THEN REPLY #3035 /* ~Ja, und du scher dich gleich zum Teufel, Hund.~ */ EXIT
END
