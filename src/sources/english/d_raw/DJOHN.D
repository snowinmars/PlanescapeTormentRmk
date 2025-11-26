// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9709 /* ~This fellow ignores you; he is engaged in fierce negotiations with the harlot in front of him.~ */
  IF ~~ THEN EXIT
END
