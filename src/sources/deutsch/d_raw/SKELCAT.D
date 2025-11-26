// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKELCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~SKELCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3345 /* ~Ich bin eines der Skelette im Gefolge Hargrimms. Wir ehren die Toten und die Opfer, die sie gebracht haben.~ */
  IF ~~ THEN REPLY #3346 /* ~Dann will ich euch nicht länger stören, ihr braven Skelette.~ */ EXIT
END
