// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Эта арка углубляется в небольшое здание лишь на пару дюймов, после чего преграждается плотной стеной отбросов. Мусор набит туда так туго, что он все равно что кирпичная кладка.~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~Уйти.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Я обнаружил на площади Старьевщиков непроходимую арку, забитую мусором. К ней ведут следы, которые не возвращаются обратно, так что тут должен быть проход... может, кто-нибудь на площади что да знает.~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~Уйти.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Я обнаружил на площади Старьевщиков непроходимую арку, забитую мусором. К ней ведут следы, которые не возвращаются обратно, так что тут должен быть проход... может, кто-нибудь на площади что да знает.~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~Уйти.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Я обнаружил на площади Старьевщиков непроходимую арку, забитую мусором. К ней ведут следы, которые не возвращаются обратно, так что тут должен быть проход... может, кто-нибудь на площади что да знает.~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~Уйти.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~Этот проход углубляется в небольшое здание лишь на пару дюймов, после чего преграждается плотной стеной отбросов. Мусор набит туда так туго, что он все равно что кирпичная кладка. Однако, когда ты подходишь ближе, контур арки начинает мерцать. Ты замечаешь, что кусок мусора у тебя в руках тоже начал мерцать.~ */
  IF ~~ THEN REPLY #48357 /* ~Затолкнуть мусор в арку.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~Отступить и уйти.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~Отступить и уйти.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~Это портал, связывающий площадь Старьевщиков со входом в Мусорные районы. К сожалению, в текущий момент при тебе нет мусора, который нужен для его активации.~ */
  IF ~~ THEN REPLY #48360 /* ~Уйти.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~Это портал, связывающий площадь Старьевщиков со входом в Мусорные районы. Он уже начал мерцать из-за близости мусора, который ты несешь с собой.~ */
  IF ~~ THEN REPLY #48362 /* ~Затолкнуть мусор в арку.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~Стена отбросов дрожит и колышется, казалось бы, вдавливается внутрь, раскрывая открытое пространство за собой... похоже, в арке образовался то ли проход, то ли портал.~ */
  IF ~~ THEN REPLY #48365 /* ~Готово.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~Разворачиваясь, чтобы уйти, ты замечаешь множество грязных следов, ведущих в арку... и не поворачивающих обратно. Похоже, что тут проходит немало народу, как для арки, которая, по всей видимости, никуда не ведет...~ */
  IF ~~ THEN REPLY #64989 /* ~«Хм-м. Может, кто-нибудь в округе знает, как через нее пройти...»~ */ EXIT
END
