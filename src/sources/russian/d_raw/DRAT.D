// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3333 /* ~Возможно, что черепные крысы в игре смогут общаться с персонажем. Если это так, вот для них шаблончик.~ */
  IF ~~ THEN REPLY #3334 /* ~Как удобно.~ */ EXIT
END
