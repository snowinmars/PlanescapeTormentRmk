// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43023 /* ~Cette personne s'entraîne à différentes prises de combat sur un mannequin en bois. Elle semble bien trop occupée pour te parler.~ */
  IF ~~ THEN REPLY #43024 /* ~Pars.~ */ EXIT
END
