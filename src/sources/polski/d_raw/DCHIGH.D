// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHIGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHIGH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2901 /* ~Jestem jednym z wielce groźnych mechanicznych konstruktów, uformowanych z samego labiryntu modronów. Nie jestem pewien, czy mam jakiś dialog, ale to jego początek, gdybym go potrzebował.~ */
  IF ~~ THEN REPLY #2902 /* ~Cóż, miło się z tobą rozmawiało. Jestem pewien, że poradzisz sobie... Uch, gdy tylko projektant cię uruchomi.~ */ EXIT
END
