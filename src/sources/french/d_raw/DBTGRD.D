// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~Le garde s'interrompt juste assez pour se tourner vers toi : "Toi, tu n'as rien vu, si tu ne veux pas avoir d'ennuis." Puis il reporte son attention sur sa victime.~ */
  IF ~~ THEN REPLY #67913 /* ~"Au revoir."~ */ EXIT
END
