// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~"Je suis désolé, mais je suis ici pour regarder les œuvres d'art, pas pour discuter avec les étrangers. Maintenant, aurais-tu la gentillesse de m'excuser… au revoir."~ */
  IF ~~ THEN REPLY #50865 /* ~Pars.~ */ EXIT
END
