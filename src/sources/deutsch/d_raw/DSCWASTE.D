// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCWASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCWASTE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3075 /* ~Der Aufenthalt in der Grauen Einöde ist ein Grund zur Verzweiflung. Natürlich legt sich auch dieses Gefühl nach einer Weile. Warte nur, bis ich ins Spiel komme. Mach dich gefaßt auf die echte Ödner-Philosophie.~ */
  IF ~~ THEN REPLY #3373 /* ~Weißt du, schon vom Zuhören werd ich ganz wild.~ */ EXIT
END
