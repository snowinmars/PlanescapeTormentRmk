// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARKET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARKET~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3028 /* ~I am a merchant in the Lower Ward. I operate out of the open-air market right outside of the auction block.~ */
  IF ~~ THEN REPLY #3029 /* ~I hope I can actually BUY something from you guys at some point.~ */ EXIT
END
