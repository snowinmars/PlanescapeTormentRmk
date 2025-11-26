// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~L'espace situé sous cette branche en surplomb brille légèrement… Apparemment, il y a une petite pièce couverte de ronces de l'autre côté. En y regardant de plus près, tu remarques soudain que le charme de Noirépine que Ravel t'a donné se contorsionne, comme un serpent mourant.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~Entoure le charme de Ravel autour de ton index gauche et franchis le portail.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~Examine le charme et attends de voir ce qui se passe.~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~Ignore la branche en surplomb.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~Les graines épineuses de l'étrange charme piquent légèrement la peau. À l'aide de ses épines, il grimpe jusqu'à ta main gauche et vient s'enrouler fermement autour de ton index. En réponse, la lumière apparue sous l'arche s'intensifie, comme pour t'inciter à la franchir.~ */
  IF ~~ THEN REPLY #51447 /* ~Franchis le portail.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~Ignore la branche en surplomb.~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~L'espace situé sous cette branche en surplomb dégage une légère lueur, qui te révèle ce qui semble être une petite pièce envahie de ronces. Tu remarques que le cheveu gris que Ravel s'est arraché s'entortille lentement, comme un tire-bouchon.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~Enroule le cheveu de Ravel autour de ton index gauche et franchis le portail.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~Attends de voir ce que fait le cheveu.~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~Ignore la branche en surplomb.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~Le cheveu s'enroule lentement autour de ton bras gauche, puis il entoure ton poignet et enserre fermement ton index gauche. En réponse, la lumière apparue sous l'arche s'intensifie, comme pour t'inciter à la franchir.~ */
  IF ~~ THEN REPLY #51452 /* ~Franchis le portail.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~Ignore la branche en surplomb.~ */ EXIT
END
