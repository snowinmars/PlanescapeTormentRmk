// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~This man whirls as you approach and bows. "Sirrah... you no doubt seek to buy some of the finest wares in all of Sigil. You have come to the right place."~ */
  IF ~~ THEN REPLY #9371 /* ~"Uh... I'll wait until you actually have a store inventory."~ */ EXIT
END
