// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3400 /* ~I am a Lower Ward Customer, Female. Like the male of my species, I wander around from shop to shop, looking at the merchandise and deciding what I want to buy. I could be regarded as a piece of fluff.~ */
  IF ~~ THEN REPLY #3401 /* ~That's interesting... the fluff part, I mean. Thanks for your time, my sweet.~ */ EXIT
END
