// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~Tu vois un beau jeune homme très bien habillé. Il semble errer sans but en jetant un œil aux marchandises à vendre. Il remarque ta présence, mais n'y prête pas vraiment attention.~ */
  IF ~~ THEN REPLY #37713 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~Il te détaille des pieds à la tête avant de te lancer un regard dédaigneux. "Je ne m'associe pas aux personnages déplaisants. Et à en juger par ton allure, tu entres parfaitement dans cette catégorie. Hors de ma vue, bige."~ */
  IF ~~ THEN REPLY #37715 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~Il fronce les sourcils et te montre du doigt, comme s'il grondait un enfant. "Ça m'est égal, bige. Laisse-moi ou j'appelle les gardes !"~ */
  IF ~~ THEN REPLY #37717 /* ~"Appelle-les…"~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~Il te fait un geste impoli. "Comme tu voudras… Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #37719 /* ~Prépare-toi à te défendre…~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~Pars avant qu'ils arrivent.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~L'homme se retourne pour te faire face et te reconnaît immédiatement. Il fronce les sourcils. "Pourquoi est-ce que tu ne me laisses pas tranquille, bige ?"~ */
  IF ~~ THEN REPLY #37721 /* ~"Si tu pouvais répondre à quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~"Excuse-moi, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~Il te fait un geste impoli. "Je ne veux pas répondre à tes questions d'azimuté. Trouve-toi un sage." Il te fait un signe d'au revoir. "Maintenant, laisse-moi ou j'appelle les gardes !"~ */
  IF ~~ THEN REPLY #37723 /* ~"Appelle-les…"~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~L'homme se retourne pour te faire face et te reconnaît immédiatement. Il te regarde d'un air menaçant. "Pourquoi tu ne me laisses pas tranquille, bige ?" Il soupire et balance les bras en signe de dégoût. "J'ai déjà appelé les gardes une fois, et je peux recommencer… si c'est nécessaire."~ */
  IF ~~ THEN REPLY #37725 /* ~"Appelle-les…"~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~"Très bien, au revoir."~ */ EXIT
END
