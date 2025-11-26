// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3329 /* ~Ich bin ein "grüner" Abishai. Mir wird schon schlecht, wenn ich mich selbst anschaue.
~ */
  IF ~~ THEN REPLY #3330 /* ~Ich auch. Wenn ich mich ansehe, meine ich.~ */ EXIT
END
