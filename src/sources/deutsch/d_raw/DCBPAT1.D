// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3186 /* ~Ich bin ein Besucher der Bar 'Zum Verdammnis'. Die Bar wird aber noch umbenannt.~ */
  IF ~~ THEN REPLY #3187 /* ~Gut, gut.~ */ EXIT
END
