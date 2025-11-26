// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9358 /* ~Ten mężczyzna wygląda na zahipnotyzowanego przez tę kobietę. Nie zdaje sobie nawet sprawy, że do niego mówisz.~ */
  IF ~~ THEN REPLY #9359 /* ~"No to, mniejsza z tym."~ */ EXIT
END
