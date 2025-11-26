// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKELCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~SKELCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3345 /* ~I am one of Hargrimm's skeletal disciples. We pay tribute to the dead, and honor their sacrifice.~ */
  IF ~~ THEN REPLY #3346 /* ~I'll leave you to it then, good skeletons.~ */ EXIT
END
