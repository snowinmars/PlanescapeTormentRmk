// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~Ce cadavre desséché (impressionnant dans son armure de parade ouvragée, malgré l'épaisse couche de poussière et les toiles d'araignées qui le recouvrent) est apparemment celui du puissant Roi Silencieux. Le seigneur et maître des Nations Mortes n'est plus à présent qu'une carcasse desséchée.~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~Prends le crâne.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~Prends son crâne.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~Prends le crâne.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~Pars.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~Tu tords et tires la tête du Roi Silencieux, mais en vain… elle ne bouge pas. Finalement, tu décides de caler ton pied contre un accoudoir du trône pour faire levier et tu arraches le crâne d'un coup sec.~ */
  IF ~~ THEN REPLY #51428 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~Si tu arraches la tête du Roi Silencieux, tu mettras certainement en colère les occupants de la salle du trône… tu dois d'abord t'occuper d'eux.~ */
  IF ~~ THEN REPLY #51430 /* ~Essaie quand même de prendre son crâne.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~Tu essaie de tirer sur le crâne du Roi Silencieux sans faire de bruit, mais il refuse de bouger. En fin de compte, tu prends appui du pied sur l'un des accoudoirs du trône et tu détaches le crâne dans un craquement… très audible. Tous se tournent pour te voir arracher le crâne de leur seigneur adoré et ils se ruent à l'attaque sans plus attendre…~ */
  IF ~~ THEN REPLY #51433 /* ~Défends-toi.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~Le seigneur et maître des Nations Mortes n'est plus à présent qu'une carcasse desséchée - et décapitée, puisque tu lui as arraché la tête.~ */
  IF ~~ THEN REPLY #51435 /* ~Pars.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~Le seigneur et maître des Nations Mortes n'est plus à présent qu'une carcasse desséchée. Sa tête est un peu de travers depuis que tu as échangé son crâne avec celui de quelqu'un d'autre.~ */
  IF ~~ THEN REPLY #65525 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~Arracher la tête du Roi Silencieux va certainement mettre en colère les occupants actuels de la salle du trône… Tu devras d'abord établir un marché avec eux. Mais si tu trouvais un crâne quelconque, tu pourrais être assez rapide pour l'échanger avec celui situé sous le casque du Roi Silencieux avant que quelqu'un ne te voie…~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~Échange le crâne avec celui que tu as.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~Essaie quand même de prendre son crâne.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~Après t'être assuré que personne ne t'observe, soulève le casque du Roi Silencieux, jette son crâne dans ton inventaire et remplace-le par l'autre crâne. Comme tu auras remis le casque, personne ne découvrira le pot aux roses…~ */
  IF ~~ THEN REPLY #65529 /* ~Pars.~ */ EXIT
END
