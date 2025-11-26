// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9709 /* ~Ten facet ignoruje cię; wdał się w gwałtowne negocjacje ze stojącą przed nim ladacznicą.~ */
  IF ~~ THEN EXIT
END
