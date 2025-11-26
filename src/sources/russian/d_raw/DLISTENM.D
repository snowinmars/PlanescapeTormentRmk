// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9358 /* ~Этот парень, похоже, очарован тем, что говорит женщина. Кажется, он даже не заметил того, что ты говоришь с ним.~ */
  IF ~~ THEN REPLY #9359 /* ~«Ну и неважно».~ */ EXIT
END
