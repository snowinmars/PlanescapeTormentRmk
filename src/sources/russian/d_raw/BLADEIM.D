// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~BLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~Этот странный клинок — ужасного вида оружие, повторяющее своей формой один из символов на твоей левой руке. Черные прожилки расползаются по поверхности металла, а лезвие выглядит настолько тупым, словно не смогло бы разрезать даже теплое масло. На ощупь клинок чуть теплый.~ */
  IF ~~ THEN REPLY #55071 /* ~Оставить клинок в покое.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~Этот странный клинок — ужасного вида оружие, повторяющее своей формой один из символов на твоей левой руке. Когда ты взял его в первый раз, он был неактивен, но теперь черные прожилки прорезают поверхность металла крохотными потоками, а лезвие стало острым как бритва. Клинок тяжело пульсирует в твоей руке, подобно больному сердцу.~ */
  IF ~~ THEN REPLY #63969 /* ~Перерезать им себе горло.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~Спрятать оружие.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~Ты проводишь лезвием клинка по горлу, он впивается в твою шею...~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~Пасть во тьму...~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~Пасть во тьму...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
