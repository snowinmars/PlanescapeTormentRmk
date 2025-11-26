// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9358 /* ~Cet homme a l'air fasciné par la femme sur l'estrade. Il ne te regarde même pas quand tu lui adresses la parole.~ */
  IF ~~ THEN REPLY #9359 /* ~"Peu importe, alors."~ */ EXIT
END
