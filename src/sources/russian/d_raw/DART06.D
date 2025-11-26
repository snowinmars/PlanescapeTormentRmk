// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~Поверхность этой картины... дикий коллаж ярких цветов... непрерывно рябит, словно поверхность пруда во время мелкого дождя. Табличка гласит «Эскиз движения волн #7».~ */
  IF ~~ THEN REPLY #42693 /* ~Прикоснуться к картине.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~Ты кладешь ладонь на холст... самой ряби ты не чувствуешь, однако при первом прикосновении через твою руку пробегает прохладное покалывающее ощущение.~ */
  IF ~~ THEN REPLY #42698 /* ~Уйти.~ */ EXIT
END
