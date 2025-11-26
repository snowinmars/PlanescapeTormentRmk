// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~You see a young man wearing ill-fitting clothes. He watches you approach with a bored look. ~ */
  IF ~~ THEN REPLY #3165 /* ~"Greetings."~ */ EXIT
END
