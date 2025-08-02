// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~На большой гробнице вырезана короткая надпись.~ */
  IF ~~ THEN REPLY #48902 /* ~Прочитать надпись.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~«Здесь лежит любимая мать Ба Дзиня...» Конец надписи прочитать невозможно.~ */
  IF ~~ THEN REPLY #58917 /* ~Уйти.~ */ EXIT
END
