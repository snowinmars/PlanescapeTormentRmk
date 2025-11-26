// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~Cette femme a l'air fascinée par la femme sur l'estrade. Elle ne te regarde même pas quand tu lui adresses la parole.~ */
  IF ~~ THEN REPLY #9361 /* ~"Peu importe, alors."~ */ EXIT
END
