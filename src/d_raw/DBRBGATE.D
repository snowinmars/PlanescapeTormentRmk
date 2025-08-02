// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~Как бы ты не дергал и не тряс эти ворота, они не открываются. Что-то тебе подсказывает, что для них понадобится особенный ключ.~ */
  IF ~~ THEN REPLY #61266 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~Когда ты подходишь к воротам, звено из цепи Триаса, стиснутое у тебя в руке, начинает нагреваться. По краям шипастых ворот появляется предательское мерцание — тут тебя ожидает портал.~ */
  IF ~~ THEN REPLY #61268 /* ~Активировать портал.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~Уйти.~ */ EXIT
END
