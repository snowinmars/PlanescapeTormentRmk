// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~Cette arche est composée de branches d'arbre noueuses qui se sont élevées du sol avant de former un arc. Alors que tu t'approches de l'arche, l'espace situé en dessous se met à briller légèrement… Il semble mener à un étrange jardin de Noirépine.~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~Passe du côté gauche de l'arche, donne un coup d'ongle sur l'écorce, puis franchis le portail.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~Examine le porche.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~Ignore l'arche de ronces.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~Alors que tu examines l'arche naturelle, tu remarques que le côté gauche du tronc est incisé, comme si quelqu'un l'avait entaillé à plusieurs endroits au moyen d'un couteau. Pourtant, ces entailles ne semblent pas avoir été faites par un couteau… mais plutôt par des griffes.~ */
  IF ~~ THEN REPLY #51437 /* ~Égratigne le tronc de l'arbre avec tes ongles et vois ce qui se passe.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~Ignore l'arche de ronces.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~Tu plantes tes ongles dans l'écorce, et tu découvres avec surprise que le bois est mou, comme de la bouillie. Tu les enfonces sur le côté de l'arbre couvert de ronces, et en réponse, la lueur apparue sous l'arche s'intensifie, comme pour t'inciter à la franchir.~ */
  IF ~~ THEN REPLY #51440 /* ~Franchis l'arche.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~Ignore l'arche de ronces.~ */ EXIT
END
