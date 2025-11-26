// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2897 /* ~«У меня есть несколько вопросов...» ~ */
  IF ~~ THEN REPLY #2898 /* ~«Что-то не так с моим внешним видом?»~ */ EXIT
END
