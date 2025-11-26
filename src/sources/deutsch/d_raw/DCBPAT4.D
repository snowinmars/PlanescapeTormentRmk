// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3192 /* ~Gast Nr. 4. Klasse!~ */
  IF ~~ THEN REPLY #3193 /* ~Ja. Jaaa.~ */ EXIT
END
