// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWUNFRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWUNFRI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3034 /* ~"Jestem nieprzyjaznym mieszkańcem Niższej Dzielnicy. Zejdź mi z drogi."~ */
  IF ~~ THEN REPLY #3035 /* ~"No, szpicuj się i ty, koleś."~ */ EXIT
END
