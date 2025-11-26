// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~This woman ignores you as you approach. She seems extremely interested in what the merchants have for sale.~ */
  IF ~~ THEN REPLY #9353 /* ~Let her go about her shopping.~ */ EXIT
END
