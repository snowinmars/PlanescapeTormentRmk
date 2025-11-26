// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Du siehst einen älteren Mann, der am Rand einer kleinen Menschenmenge steht. Sie haben sich um etwas versammelt, das wie eine Guillotine aussieht.~ */
  IF ~~ THEN REPLY #3167 /* ~"Sei gegrüßt."~ */ EXIT
  IF ~~ THEN EXIT
END
