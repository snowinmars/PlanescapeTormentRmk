// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~Эта ниша углубляется в северную стену всего лишь на несколько шагов, после чего внезапно обрывается.~ */
  IF ~~ THEN REPLY #48504 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~Эта ниша углубляется в северную стену всего лишь на несколько шагов, после чего внезапно обрывается.

Это то самое место, куда сказала тебе зайти Тухлая Мери, закрыв перед этим глаза и подумав о Безмолвном Короле. Поскольку она все еще «жива», от этого должен активироваться портал в тронный зал Безмолвного Короля.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~Попробовать активировать портал.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~Активировать портал.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~Активировать портал.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~Попробовать активировать портал.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~Уйти, не активировав портал.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~Ничего не произошло. Наверное, Тухлая Мери мертва...~ */
  IF ~~ THEN REPLY #48510 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~Ничего не произошло. Наверно, после твоего «вторжения» в тронный зал Безмолвного Короля Харгримм уничтожил портал или изменил его устройство.~ */
  IF ~~ THEN REPLY #65505 /* ~Уйти.~ */ EXIT
END
