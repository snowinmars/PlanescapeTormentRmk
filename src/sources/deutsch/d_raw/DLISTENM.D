// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9358 /* ~Diesen Zuhörer scheinen die Worte der Frau völlig in ihren Bann zu ziehen. Er bemerkt dich nicht einmal, als du ihn direkt ansprichst.~ */
  IF ~~ THEN REPLY #9359 /* ~"Dann eben nicht."~ */ EXIT
END
