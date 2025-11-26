// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWUNFRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWUNFRI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3034 /* ~I am an unfriendly Lower Ward dweller. Get out of my way.~ */
  IF ~~ THEN REPLY #3035 /* ~Yeah, screw you, too, pal.~ */ EXIT
END
