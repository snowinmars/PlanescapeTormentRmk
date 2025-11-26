// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~Une statuette en rubis se trouve sur ce piédestal. Elle représente un humanoïde ailé. Ange ou démon ?… Difficile à dire car elle réfracte étrangement la lumière de la galerie. Aucune pancarte n'indique ce qu'est exactement cette statuette.~ */
  IF ~~ THEN REPLY #42704 /* ~Pars.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
