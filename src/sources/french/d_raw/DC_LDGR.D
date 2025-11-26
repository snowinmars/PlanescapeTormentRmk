// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~"Que… je sais bien que j'ai fermé cette porte à clé derrière moi. Va-t'en, d'accord ?"~ */
  IF ~~ THEN REPLY #67948 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~"Peut-être que j'ai oublié de fermer la porte à clé, mais je préfère que tu t'en ailles. Va-t'en, s'il te plaît." Ce disant, elle t'indique la porte.~ */
  IF ~~ THEN REPLY #67950 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~L'individu te regarde méchamment et t'indique la porte sans desserrer les dents.~ */
  IF ~~ THEN REPLY #67952 /* ~Pars.~ */ EXIT
END
