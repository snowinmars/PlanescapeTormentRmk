// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Перед тобой юноша с угрюмым лицом. Он что-то бормочет себе под нос; похоже, он чем-то озабочен.~ */
  IF ~~ THEN REPLY #3173 /* ~«Приветствую».~ */ EXIT
END
