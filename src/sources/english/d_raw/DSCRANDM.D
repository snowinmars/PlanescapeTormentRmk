// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCRANDM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCRANDM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~As you approach the woman to talk to her, Ignus' eyes flare up, and before you can stop him, he embraces her. She returns his embrace, losing herself in his flames. She does not cry out. Your last glimpse of her is burned into your memory: Her eyes are full of fiery passion and all-engulfing love. Nothing is left of her - not even ashes.~ */
  IF ~~ THEN EXIT
END
