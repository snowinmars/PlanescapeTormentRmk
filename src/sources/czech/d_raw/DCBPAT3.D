// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3190 /* ~Like the previous 2, I patronize this place. Though maybe I should be female and matronize it. Ha ha!~ */
  IF ~~ THEN REPLY #3191 /* ~You are a laff ry-ott.~ */ EXIT
END
