// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCWASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCWASTE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3075 /* ~Being in the Gray Waste is a cause for despair. Of course, after a while, you even lose that. Just wait until I get in the game for real Bleaker philosophy.~ */
  IF ~~ THEN REPLY #3373 /* ~You know, just listening to you makes me come in my pants.~ */ EXIT
END
