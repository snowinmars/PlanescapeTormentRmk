// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9358 /* ~Tento chasník je plně zabrán do slov té mluvící ženy. Vůbec si nevšímá, co mu říkáš.~ */
  IF ~~ THEN REPLY #9359 /* ~"No, tak teda nic."~ */ EXIT
END
