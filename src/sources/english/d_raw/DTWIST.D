// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTWIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTWIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2794 /* ~Twisted-Lip can't speak yet. His name pretty much says why.~ */
  IF ~~ THEN REPLY #2795 /* ~Fine. Whatever.~ */ EXIT
END
