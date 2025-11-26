// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVERW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVERW~

IF ~~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Dieser Durchgang führt nur ein paar Zentimeter in das kleine Gebäude hinein. Dort wird er von einer soliden Müllwand versperrt. Der Müll ist so kompakt aufeinander geschichtet, daß die Wand genauso gut aus Mörtel und Stein sein könnte.~ */
  IF ~~ THEN REPLY #42766 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42768 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42769 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #42772 /* ~~ */
  IF ~~ THEN EXIT
END
