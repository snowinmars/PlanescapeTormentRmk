// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALLEY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DALLEY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2877 /* ~I AM THE ALLEY OF LINGERING SIGHS. I TALK IN ALL CAPS SINCE I AM SOOOOO BIG. ~ */
  IF ~~ THEN REPLY #2878 /* ~Díky for sharing. I'll be back when you're finished.~ */ EXIT
END
