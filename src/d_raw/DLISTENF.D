// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~Похоже, эта женщина загипнотизирована тем, что вот-вот скажет другая женщина. Она не замечает, что ты обращаешься к ней.~ */
  IF ~~ THEN REPLY #9361 /* ~«Ну и неважно».~ */ EXIT
END
