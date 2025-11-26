// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEADGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEADGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52774 /* ~You see one of Curst's finest, lying in a pool of his own blood. His armor has been thoroughly savaged, the flesh underneath it looking as though it has baked in the heat of a thousand suns. He gasps up at you from the ruins of his face, "The deva... is strong. Do not enter... until you can... defeat him." He expires quietly.~ */
  IF ~~ THEN EXIT
END
