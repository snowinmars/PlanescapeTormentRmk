// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~Jakmile jsi k němu přišel blíž, otočil se tento muž na tebe a spustil. "Pane... neváhej a kup to nefajnovější zboží v celým Sigilu. Přišel jsi na správný místo."~ */
  IF ~~ THEN REPLY #9371 /* ~"No... počkám, než budeš mít něco k prodeji."~ */ EXIT
END
