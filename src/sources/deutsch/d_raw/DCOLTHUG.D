// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2837 /* ~(Der generische Sammlerschläger ist noch nicht implementiert.)~ */
  IF ~~ THEN REPLY #2838 /* ~Abgemacht. Ich komme wieder, wenn du mir was zu sagen hast... oder es was zum Ausrauben gibt.
~ */ EXIT
END
