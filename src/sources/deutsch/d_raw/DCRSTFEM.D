// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Du siehst einen jungen Mann, der mürrisch aus der Wäsche schaut. Er murmelt vor sich hin und wirkt besorgt.~ */
  IF ~~ THEN REPLY #3173 /* ~"Sei gegrüßt."~ */ EXIT
END
