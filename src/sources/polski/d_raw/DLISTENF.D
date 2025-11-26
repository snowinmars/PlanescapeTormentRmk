// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~Ta kobieta wygląda na zahipnotyzowaną przez tę drugą. Nie zdaje sobie nawet sprawy, że do niej mówisz.~ */
  IF ~~ THEN REPLY #9361 /* ~"No to, mniejsza z tym."~ */ EXIT
END
