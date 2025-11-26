// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Tu vois un homme débraillé et négligé. Il sent fort l'alcool. "Ouais. Qu'est-ce tu veux, hein ?" Il se penche vers toi et t'examine des pieds à la tête. "On dirait que t'as besoin d'un GUÉRISSEUR !" Il rit grassement de son pauvre humour. Une puanteur de liqueur et de nourriture mal mâchée t'enveloppe.~ */
  IF ~~ THEN REPLY #3372 /* ~"Qui es-tu ?"~ */ EXIT
END
