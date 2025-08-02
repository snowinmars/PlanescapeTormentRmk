// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~Перед тобой стражница Гармониума. Она внимательно смотрит по сторонам, совершая обход района. Похоже, она не заинтересована в разговоре с тобой.~ */
  IF ~~ THEN REPLY #37757 /* ~Оставить ее в покое.~ */ EXIT
END
