// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3188 /* ~Я тоже завсегдатай этого замечательного заведения.~ */
  IF ~~ THEN REPLY #3189 /* ~Должно быть, это действительно замечательное место.~ */ EXIT
END
