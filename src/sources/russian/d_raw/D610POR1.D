// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~Пространство под нависающей веткой тускло сияет... Похоже, за ней находится маленькая ежевичная комнатка. Осматривая ее, ты вдруг замечаешь, что подаренный Равель амулет начал извиваться как змея.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~Обвить амулет Равель вокруг указательного пальца левой руки и шагнуть в портал.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~Осмотреть амулет, дождаться, что произойдет.~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~Оставить в покое нависающую ветку.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~Странный амулет с помощью колючих семян легонько вцепляется в кожу и, цепляясь шипами, взбирается на твою левую руку и туго обвивает указательный палец. При этом свечение в арке становится ярче, призывая тебя войти.~ */
  IF ~~ THEN REPLY #51447 /* ~Пройти сквозь портал.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~Оставить в покое нависающую ветку.~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~Пространство под нависающей веткой тускло светится. Похоже, за ней находится маленькая ежевичная комнатка. Ты замечаешь, что седой локон Равель, вырванный из ее головы, медленно извивается, напоминая штопор.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~Обвить локон Равель вокруг указательного пальца левой руки и шагнуть в портал.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~Подождать, посмотреть, что сделает локон.~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~Оставить в покое нависающую ветку.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~Локон медленно ползет по твоей левой руке, обхватывает запястье, затем туго обвивает указательный палец. При этом свечение в арке становится ярче, призывая тебя войти.~ */
  IF ~~ THEN REPLY #51452 /* ~Пройти сквозь портал.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~Оставить в покое нависающую ветку.~ */ EXIT
END
