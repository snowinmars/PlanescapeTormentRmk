// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIRAGO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIRAGO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2796 /* ~Xanthippe kann noch nicht sprechen. Höchstwahrscheinlich wird sie in einer neuen Szene eingeführt.
~ */
  IF ~~ THEN REPLY #2797 /* ~Schon gut, schon gut! JesusMaria-und-Josef.~ */ EXIT
END
