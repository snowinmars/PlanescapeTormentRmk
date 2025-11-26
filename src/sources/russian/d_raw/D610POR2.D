// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~Эта арка сделана из сучковатых ветвей дерева, которое выросло из пола лабиринта, а затем упало и образовало арку. Когда ты подходишь к ней, пространство в ней начинает тускло светиться... Похоже, что ведет она в какой-то необычный черношипный сад.~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~Подойти к левой стороне арки, поцарапать кору ногтями, затем шагнуть в портал.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~Осмотреть арку.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~Оставить ежевичную арку в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~Осматривая эту естественную арку, ты замечаешь, что левая часть ствола помечена: как будто кто-то ножом сделал несколько засечек. И все же непохоже, что засечки делали лезвием ножа... их словно выцарапали когтями.~ */
  IF ~~ THEN REPLY #51437 /* ~Поцарапать ствол дерева ногтями, посмотреть, что будет.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~Оставить ежевичную арку в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~Ты погружаешь ногти в кору, и, к твоему удивлению, они протыкают дерево, как овсянку. Ты зарываешься ногтями в ежевичное дерево, и при этом сияние в арке становится ярче, призывая тебя войти.~ */
  IF ~~ THEN REPLY #51440 /* ~Шагнуть в арку.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~Оставить ежевичную арку в покое.~ */ EXIT
END
