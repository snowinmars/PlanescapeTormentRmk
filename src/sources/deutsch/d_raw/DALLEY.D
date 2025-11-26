// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALLEY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DALLEY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2877 /* ~ICH BIN DIE GASSE DER HALLENDEN SEUFZER. ICH REDE NUR IN GROSSBUCHSTABEN, WEIL ICH SOOOOO RIESIG BIN.~ */
  IF ~~ THEN REPLY #2878 /* ~Danke für's Abgeben. Ich komm wieder, wenn du fertig bist.~ */ EXIT
END
