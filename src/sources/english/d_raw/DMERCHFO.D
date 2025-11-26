// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~This prune-faced old woman is shouting out to the crowds around her. As you approach, she smiles and holds up handfuls of what appear to be dead rats and birds. "Are you hungry, sirrah?"~ */
  IF ~~ THEN REPLY #9369 /* ~"Not today, thanks."~ */ EXIT
END
