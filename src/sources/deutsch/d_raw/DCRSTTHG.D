// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Du siehst einen jungen Mann in Kleidern, die ihm nicht recht passen. Er schaut dich gelangweilt an, als du näherkommst.~ */
  IF ~~ THEN REPLY #3165 /* ~"Sei gegrüßt."~ */ EXIT
END
