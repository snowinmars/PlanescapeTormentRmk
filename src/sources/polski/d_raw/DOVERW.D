// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVERW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVERW~

IF ~~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Ten łuk prowadzi jedynie parę centymetrów w głąb małego budynku, po czym jest zablokowany przez litą ścianę odpadów. Śmiecie upchane są tak mocno, że równie dobrze mogłyby stanowić kamienie i zaprawę murarską.~ */
  IF ~~ THEN REPLY #42766 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42768 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42769 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #42772 /* ~~ */
  IF ~~ THEN EXIT
END
