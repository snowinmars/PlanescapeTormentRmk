// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~Diese Zuhörerin scheinen die Worte der Frau völlig in ihren Bann zu ziehen. Sie bemerkt dich nicht einmal, als du sie direkt ansprichst.~ */
  IF ~~ THEN REPLY #9361 /* ~"Dann eben nicht."~ */ EXIT
END
