// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~Tato žena je plně zabrána do slov té mluvící ženy. Vůbec si nevšímá, co jí říkáš.~ */
  IF ~~ THEN REPLY #9361 /* ~"No, tak teda nic."~ */ EXIT
END
