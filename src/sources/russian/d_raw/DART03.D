// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~На этом пьедестале установлена сверкающая рубиновая статуэтка, вырезанная в виде крылатого человекообразного существа. Фигурка по своей сути то ли демоническая, то ли ангельская... но какая именно, сказать трудно — она странным образом преломляет освещение галереи. И нет таблички, указывающей, чем именно является статуэтка.~ */
  IF ~~ THEN REPLY #42704 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
