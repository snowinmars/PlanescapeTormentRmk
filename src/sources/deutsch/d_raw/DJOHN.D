// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9709 /* ~Dieser Kerl ignoriert dich. Er verhandelt eifrig mit der Hure, die vor ihm steht.~ */
  IF ~~ THEN EXIT
END
