// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~Эта картина, абстрактная работа в зеленых и пурпурных тонах, скручивается и рябит перед глазами. Если присмотреться повнимательнее, оказывается, что меняется скорее не само полотно, а рисунок на нем. Табличка гласит: «Минутный взгляд со стен Моччмы».~ */
  IF ~~ THEN REPLY #42720 /* ~Прикоснуться к картине.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~Ты кладешь руку на холст... как ты и подозревал, он физически неподвижен: меняется само изображение на нем.~ */
  IF ~~ THEN REPLY #42722 /* ~Уйти.~ */ EXIT
END
