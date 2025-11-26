// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37736 /* ~Du siehst einen Wachposten vom Harmonium. Er beobachtet seine Umgebung peinlich genau, während er seinen Bereich patroulliert. Er scheint nicht daran interessiert zu sein, mit dir zu reden.~ */
  IF ~~ THEN REPLY #37755 /* ~Laß ihn in Ruhe.~ */ EXIT
END
