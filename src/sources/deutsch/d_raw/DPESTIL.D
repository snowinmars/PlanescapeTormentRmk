// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTIL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2966 /* ~Ich bin ein böses Zauberbuch, das du mit dir herumtragen kannst.~ */
  IF ~~ THEN REPLY #2967 /* ~Übel, sagst du? Zaubersprüche, sagst du? Bin schon da! Und dann wieder fort.~ */ EXIT
END
