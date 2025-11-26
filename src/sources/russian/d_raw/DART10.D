// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~Эта картина изображает морской пейзаж с огромным красно-оранжевым солнцем, садящимся за полуостров или большую пристань. Пейзаж, даже будучи неоригинальным, захватывает дыхание: игра угасающего дневного света на воде передана идеально. Однако, если смотреть на нарисованное солнце даже непродолжительное время, твои глаза начинают болеть. Табличка гласит «Поверхность Таласии».~ */
  IF ~~ THEN REPLY #42674 /* ~Прикоснуться к картине.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~Довольно странно, но поверхности картины ничем не примечательна.~ */
  IF ~~ THEN REPLY #42677 /* ~Уйти.~ */ EXIT
END
