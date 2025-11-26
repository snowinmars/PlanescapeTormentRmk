// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34207 /* ~Cette pierre d'un violet-bleuâtre - retenue dans un filet de bandes d'argent gravées - bat en émettant une douce lumière couleur lavande. Sur la partie inférieure est inscrit le mot 'VIVIANE'.~ */
  IF ~~ THEN REPLY #54098 /* ~Pars.~ */ EXIT
END
