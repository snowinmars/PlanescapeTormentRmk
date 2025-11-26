// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~Perchée sur une estrade, cette femme à l'air revêche t'accorde à peine un coup d'œil avant de reprendre ses vociférations. Elle a une voix puissante qui, malgré le bruit des marchands et des passants, porte sur toute la place du marché.~ */
  IF ~~ THEN REPLY #9355 /* ~Laisse-la tranquille.~ */ EXIT
END
