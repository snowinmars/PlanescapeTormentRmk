// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~Cette vieille femme au visage ridé harangue la foule. À ton approche, elle sourit et brandit sous ton nez une poignée de… de rats et d'oiseau morts, à ce qu'il te semble. " Tu as faim, m'sieur ? "~ */
  IF ~~ THEN REPLY #9369 /* ~"Pas aujourd'hui, merci."~ */ EXIT
END
