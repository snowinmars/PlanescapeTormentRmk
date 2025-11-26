// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3329 /* ~Я «зеленый» абишай. Мне тошно даже смотреть на себя.~ */
  IF ~~ THEN REPLY #3330 /* ~Мне тоже. В смысле, на себя.~ */ EXIT
END
