// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~Cette femme t'ignore à ton approche. Elle paraît fascinée par ce que les marchands ont à vendre.~ */
  IF ~~ THEN REPLY #9353 /* ~Laisse-la faire ses courses.~ */ EXIT
END
