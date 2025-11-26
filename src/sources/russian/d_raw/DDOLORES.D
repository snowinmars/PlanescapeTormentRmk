// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Перед тобой темноволосая бледноватая женщина с утонченными чертами. Когда она поворачивается к тебе, ты замечаешь, что ее глаза — кажется, раньше они были серыми — приобрели стальной оттенок.~ */
  IF ~~ THEN REPLY #34366 /* ~«Приветствую...»~ */ EXIT
END
