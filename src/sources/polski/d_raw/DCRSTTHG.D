// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Widzisz młodego mężczyznę odzianego w źle skrojone ubranie. Śledzi cię znużonym wzrokiem, gdy się do niego zbliżasz.~ */
  IF ~~ THEN REPLY #3165 /* ~"Witaj."~ */ EXIT
END
