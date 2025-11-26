// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~"Please! Save me! They're trying to kill me just for doing my job! I didn't mean any harm! Can't they see they're the ones bringing this town to ruin?" He is sobbing. "Please... you have to do something!"~ */
  IF ~~ THEN REPLY #3175 /* ~"I think what I'll do is watch you die."~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~"I'll do what I can."~ */ EXIT
END
