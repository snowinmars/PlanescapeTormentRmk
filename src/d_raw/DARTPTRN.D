// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~«Прошу прощения, сэр, но я здесь для того, чтобы созерцать искусство, а не общаться с незнакомцами. Будьте великодушны простить меня... прощайте».~ */
  IF ~~ THEN REPLY #50865 /* ~Уйти.~ */ EXIT
END
