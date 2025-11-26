// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Widzisz sędziwego mężczyznę stojącego na skraju grupki gapiów. Zgromadzili się oni wokół czegoś, co przypomina gilotynę.~ */
  IF ~~ THEN REPLY #3167 /* ~"Witaj."~ */ EXIT
  IF ~~ THEN EXIT
END
