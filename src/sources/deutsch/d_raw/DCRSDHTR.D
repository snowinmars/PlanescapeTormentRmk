// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDHTR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDHTR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3182 /* ~Kreisch! Die Sklavenhändler haben mich gefangen! Rettet mich!~ */
  IF ~~ THEN REPLY #3183 /* ~Wart nur, bis ich vorbeikomme!~ */ EXIT
END
