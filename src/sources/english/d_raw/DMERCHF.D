// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~This woman studies you as you walk up, then puts her hand on her hip and scoffs. "Not a handsome one, are ye? Maybe you have some coin and are looking to buy somethin' from a travelling tinker, are you?"~ */
  IF ~~ THEN REPLY #9373 /* ~"Not interested... gutter-slut."~ */ EXIT
END
