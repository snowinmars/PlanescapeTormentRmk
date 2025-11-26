// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~Tu aperçois une jeune femme vêtue de fins habits. Elle paraît se balader sans but, regardant uniquement les articles à vendre.~ */
  IF ~~ THEN REPLY #37171 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~Elle te regarde de haut en bas, puis fronce les sourcils. "Je ne côtoie pas les individus peu recommandables. D'après ce que je peux voir, tu corresponds à cette catégorie. Fiche le camp, bige."~ */
  IF ~~ THEN REPLY #37173 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~Elle se renfrogne encore plus et met les mains à sa taille. "Je m'en fiche, bige. Fiche-moi la paix ou j'appelle la garde !"~ */
  IF ~~ THEN REPLY #67883 /* ~"Amène-les moi…"~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~Elle te fait un geste impoli. "Qu'il en soit ainsi… Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #37178 /* ~Pars avant qu'ils arrivent.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~La femme se retourne pour te faire face et te reconnaît immédiatement. Elle hurle. "Que faut-il que je fasse pour me débarrasser de toi, bige ?"~ */
  IF ~~ THEN REPLY #37179 /* ~"Si tu pouvais répondre à quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~"Excuse-moi, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~Elle te fait un geste impoli. "Je ne veux pas répondre à tes questions d'azimuté. Trouve-toi un sage." Elle te fait signe de partir. "Maintenant, laisse-moi tranquille ou j'appelle la garde !"~ */
  IF ~~ THEN REPLY #37181 /* ~"Appelle-les…"~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~La femme se retourne pour te faire face et te reconnaît immédiatement. Elle hurle. "Que faut-il que je fasse pour me débarrasser de toi, bige ?" Elle soupire et lève les bras de dégoût. "J'ai appelé les gardes pour toi une fois déjà, je peux le refaire… pour ce que ça peut faire."~ */
  IF ~~ THEN REPLY #37183 /* ~"Appelle-les…"~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~"Très bien, au revoir."~ */ EXIT
END
