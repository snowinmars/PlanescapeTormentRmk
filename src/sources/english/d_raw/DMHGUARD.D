// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37736 /* ~You see a Harmonium guard. He is watching his surroundings carefully as he walks his patrol area. He seems uninterested in talking to you.~ */
  IF ~~ THEN REPLY #37755 /* ~Leave him be.~ */ EXIT
END
