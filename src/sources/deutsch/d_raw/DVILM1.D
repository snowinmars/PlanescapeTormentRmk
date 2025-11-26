// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILM1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILM1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3396 /* ~Ich bin einer der Sammler im Begrabenen Dorf. Ich ziehe durch die Gegend und sammle für Pharod Gegenstände und Leichen.~ */
  IF ~~ THEN REPLY #3397 /* ~Hört sich toll an.~ */ EXIT
END
