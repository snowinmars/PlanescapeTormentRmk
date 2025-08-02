// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~Это окровавленная живая железная цепь, сматывающаяся и разматывающаяся сама по себе. Цепь изгибается и скручивается, словно хребет змеи. На маленькой табличке написано: «Живая цепь китона из Звенящего Хайтера».~ */
  IF ~~ THEN REPLY #42657 /* ~Прикоснуться к цепи.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~На ощупь цепь немного теплая, будто живая. Ты замечаешь, что к цепи по всей длине приварены различные шипы, крючочки, иглы и другие маленькие острые предметы.~ */
  IF ~~ THEN REPLY #42659 /* ~Уйти.~ */ EXIT
END
