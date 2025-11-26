// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~You see an older man standing at the edge of a small crowd. They are gathered about what looks like a guillotine. ~ */
  IF ~~ THEN REPLY #3167 /* ~"Greetings."~ */ EXIT
  IF ~~ THEN EXIT
END
