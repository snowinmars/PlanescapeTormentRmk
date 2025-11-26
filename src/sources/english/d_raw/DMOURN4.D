// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7084 /* ~"I am one of the mourners that chant outside the Dustman kiosk in AR0200 (Hive B). We 'mourn the living' and the player can ask us to mourn for those who have lost loved ones."~ */
  IF ~~ THEN REPLY #7085 /* ~"Thanks for the information."~ */ EXIT
END
