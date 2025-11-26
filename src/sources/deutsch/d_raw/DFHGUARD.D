// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~Du siehst einen Wachposten vom Harmonium. Sie beobachtet ihre Umgebung peinlich genau, während sie ihren Bereich patroulliert. Sie scheint nicht daran interessiert zu sein, sich mit dir zu unterhalten.~ */
  IF ~~ THEN REPLY #37757 /* ~Laß sie in Ruhe.~ */ EXIT
END
