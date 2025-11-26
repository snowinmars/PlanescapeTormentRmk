// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~«Прошу вас, сэр, у меня много дел. Не сочтите за грубость, если вы меня оставите в покое, уж будьте так любезны. Прощайте».~ */
  IF ~~ THEN REPLY #50861 /* ~Уйти.~ */ EXIT
END
