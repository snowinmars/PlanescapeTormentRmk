// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDHTR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDHTR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3182 /* ~Ah ! J'ai été capturé par des esclavagistes ! Au secours !~ */
  IF ~~ THEN REPLY #3183 /* ~Attends que je me pointe !~ */ EXIT
END
