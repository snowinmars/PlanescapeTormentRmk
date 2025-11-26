// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPREGAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPREGAL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Alley_Face_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52613 /* ~Impressionné, tu regardes le spectacle devant toi. Ce qui avait semblé être un mur de briques ordinaire, vibre et palpite à présent. Le mur s'étend avec une curieuse élasticité, poussant vers l'extérieur, comme si une force invisible essayait de passer de l'autre côté. La masse ondulante se calme doucement, ses courbes deviennent de plus en plus prononcées et tu te retrouves face à face avec une caricature pierreuse de visage humain.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52645 /* ~"Qu'est-ce que c'est que ça ?"~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ EXTERN ~DANNAH~ 256
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52646 /* ~Attends pour voir ce qui se passe.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52647 /* ~Ignore le visage. Pars.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #52614 /* ~Soudain, une forte brise se met à souffler autour de toi, et l'air s'emplit de sinistres soupirs. Le vent hurlant s'accentue et tu discernes d'autres bruits : le craquement du bois, le bruissement des feuilles et le frottement de la pierre contre la pierre. Après quelques instants, la clameur cesse d'être une cacophonie de sons individuels pour se transformer en un son articulé. Tu discernes une voix, une voix qui parle doucement, mais qui semble pourtant venir de partout autour de toi. "TOI ? ÇA NE PEUT PAS ÊTRE TOI."~ */
  IF ~~ THEN REPLY #52648 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #52649 /* ~"Quoi ?"~ */ GOTO 2
  IF ~~ THEN REPLY #52650 /* ~"Tu me connais ?"~ */ GOTO 2
  IF ~~ THEN REPLY #52651 /* ~"Tu dois me confondre avec quelqu'un d'autre. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3
  SAY #52615 /* ~Le vent s'est arrêté autour de toi, mais la voix est tout de même présente. "TU ES RÉTABLI ? JE T'AI VU DÉTRUIT."~ */
  IF ~~ THEN REPLY #52652 /* ~"Détruit ? Où ?"~ */ GOTO 6
  IF ~~ THEN REPLY #52653 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #52654 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 4
  IF ~~ THEN REPLY #52655 /* ~"Où suis-je ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.0 5.0
  SAY #52616 /* ~"JE SUIS MOI." La voix est sans expression, tout comme le visage de pierre devant toi.~ */
  IF ~~ THEN REPLY #52656 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 4
  IF ~~ THEN REPLY #52657 /* ~"Où suis-je ?"~ */ GOTO 5
  IF ~~ THEN REPLY #52658 /* ~"Tu dis que tu m'as vu détruit ? Où ?"~ */ GOTO 6
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 4 // from: 2.2 3.0 5.1
  SAY #52617 /* ~"JE SUIS MOI." La voix est sans expression, tout comme le visage de pierre devant toi.~ */
  IF ~~ THEN REPLY #52659 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #52660 /* ~"Où suis-je ?"~ */ GOTO 5
  IF ~~ THEN REPLY #52661 /* ~"Tu dis que tu m'as vu détruit ? Où ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3 3.1 4.1
  SAY #52618 /* ~"TU ES SUR MOI, EN MOI. LES PIERRES, LE MORTIER, L'AIR… MOI, MON INTÉGRALITÉ."~ */
  IF ~~ THEN REPLY #52662 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #52663 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 4
  IF ~~ THEN REPLY #52664 /* ~"Tu dis que tu m'as vu détruit ? Où ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.2 4.2 5.2
  SAY #52619 /* ~"JE T'AI VU DÉTRUIT ICI, DEVANT MOI. JE VOIS TOUT EN MOI."~ */
  IF ~~ THEN REPLY #52665 /* ~"Tu sais ce qui m'est arrivé ?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52620 /* ~"LES CHOSES QUI NE PROJETAIENT PAS D'OMBRE… ÉTAIENT D'OMBRE. ELLES SE SONT ÉLEVÉES AUTOUR DE TOI, T'ONT DÉCHIRÉ. TU NE T'EN SOUVIENS PAS ?" Tu te concentres sur l'étrange voix composée de sons, tout autour de toi. Quelque part, dans les recoins les plus profonds de ton esprit, un souvenir te revient. Tu as l'impression de reconnaître quelque chose dans ces sons.~ */
  IF ~~ THEN REPLY #52719 /* ~Ferme les yeux et essaie de te souvenir.~ */ DO ~StartCutSceneEx("0405cut8",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Alley_Face_SC","GLOBAL",1)
Global("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #52621 /* ~"OUI… TU TE SOUVIENS." La voie de l'Allée sonne à tes oreilles. Elle éparpille les images dans ton esprit et te fait revenir au présent. "DÉTRUIT. COMME JE LE SERAI BIENTÔT. JE NE PEUX PAS RETARDER LA DIVISION PLUS LONGTEMPS. LA PRESSION S'ACCUMULE. BIENTÔT LES PIERRES S'ÉCROULERONT ET CEUX QUI FLOTTENT ME RÉPARERONT JUSQU'À LA DESTRUCTION."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #52667 /* ~"Je ne comprends pas."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #52668 /* ~"Tu es en train de mourir ?"~ */ GOTO 9
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52669 /* ~"Ceux qui flottent ?"~ */ EXTERN ~DANNAH~ 257
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #52622 /* ~"LA PRESSION EST TROP GRANDE. TROP D'ENDROITS REPLIÉS À L'INTÉRIEUR. PAS ASSEZ D'ESPACE. DOIS EFFECTUER LA DIVISION."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52670 /* ~"La division ?"~ */ EXTERN ~DANNAH~ 258
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52671 /* ~"La division ?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #52623 /* ~La voix continue. "AIDE-MOI À ME DIVISER. DÉVELOPPER. M'ÉTENDRE. DE NOUVEAUX ORIFICES S'OUVRIRONT. TU PEUX LES UTILISER POUR VOYAGER VERS LE BAS QUARTIER."~ */
  IF ~  Global("Dabus_Trap","GLOBAL",0)
!Dead("ADabus")
~ THEN REPLY #52672 /* ~"Qu'est-ce que tu dois diviser ?"~ */ GOTO 11
  IF ~  Global("Dabus_Trap","GLOBAL",2)
!Dead("ADabus")
~ THEN REPLY #52673 /* ~"Qu'est-ce que tu dois diviser ?"~ */ GOTO 13
  IF ~  Dead("ADabus")
~ THEN REPLY #52674 /* ~"Qu'est-ce que tu dois diviser ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52624 /* ~"CELUI QUI FLOTTE EST SUR MOI. IL RÉPARE. IL M'EMPÊCHE DE DIVISER. J'ANNULE SES RÉPARATIONS, MAIS IL REVIENT ENCORE ET ENCORE. RÉPARE À NOUVEAU. DOIS SUPPRIMER CELUI QUI FLOTTE."~ */
  IF ~~ THEN REPLY #52675 /* ~"Tu veux que je *tue* le dabus dans l'Allée ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52625 /* ~"LE SUPPRIMER. APRÈS POSSIBLE DIVISER."~ */
  IF ~~ THEN REPLY #52676 /* ~"Très bien, je *supprimerai* le dabus pour toi."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",1)
~ JOURNAL #52683 /* ~J'ai découvert que l'Allée des Longs Soupirs n'est pas hantée, mais vivante. Elle m'a parlé et, d'après ce que j'ai compris, elle est 'enceinte' et a besoin de mon aide pour mettre sa progéniture au monde. Apparemment, un dabus y effectue en permanence des réparations qui empêchent l'allée de se scinder en deux. J'ai accepté de la débarrasser de cette créature. En échange, elle m'a promis de m'ouvrir un passage vers le Bas Quartier.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #52626 /* ~"CELUI QUI FLOTTE N'EST PLUS SUR MOI. IL NE RÉPARE PLUS. NE GÊNE PLUS."~ */
  IF ~~ THEN REPLY #52687 /* ~"Le dabus qui se trouve dans l'Allée ? Oui, je lui ai parlé du dabus mort et il est parti à sa recherche."~ */ DO ~AddexperienceParty(15000)
~ JOURNAL #52682 /* ~Finalement, j'ai découvert que l'Allée des Longs Soupirs n'était pas hantée, mais vivante. Elle m'a parlé et, d'après ce que j'ai compris, elle est "enceinte" et a besoin de mon aide pour mettre sa progéniture au monde. Apparemment, le dabus à qui j'ai parlé de son compatriote mort effectuait des réparations qui empêchaient l'allée de se diviser. Quand il s'est rendu sur place, l'allée l'a emprisonné dans un bâtiment.~ */ GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #52627 /* ~"CELUI QUI FLOTTE EST DÉTRUIT. IL NE RÉPARE PLUS. NE GÊNE PLUS."~ */
  IF ~~ THEN REPLY #52692 /* ~"Le dabus qui se trouve dans l'Allée ? Oui, il n'est plus là… je l'ai tué."~ */ DO ~AddexperienceParty(1500)
~ JOURNAL #52681 /* ~Finalement, j'ai découvert que l'Allée des Longs Soupirs n'était pas hantée, mais vivante. Elle m'a parlé et, d'après ce que j'ai compris, elle est "enceinte" et a besoin de mon aide pour mettre sa progéniture au monde. Apparemment, le dabus que j'ai tué effectuait des réparations qui empêchaient l'allée de se diviser.~ */ GOTO 18
END

IF WEIGHT #3 ~  Global("Alley_Face_SC","GLOBAL",1)
GlobalGT("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #52628 /* ~Alors que tu t'approches du visage de pierre, les divers sons de l'Allée prennent d'assaut tes oreilles, et la voix parle au travers d'eux. "TU ES REVENU."~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
GlobalLT("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52693 /* ~"Le dabus est toujours là… Je n'arrive pas à m'en débarrasser."~ */ GOTO 16
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
Dead("ADabus")
~ THEN REPLY #52694 /* ~"J'ai tué le dabus. Il ne dérangera plus."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
Global("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52695 /* ~"J'ai discuté avec le dabus. Je lui ai parlé de son congénère mort et il est parti enquêter."~ */ DO ~AddexperienceParty(11500)
~ JOURNAL #52680 /* ~J'ai appris que l'Allée des Longs Soupirs était vivante et tout à fait capable de se défendre. Apparemment, le dabus avec lequel je me suis entretenu s'est intéressé au bâtiment dans lequel j'avais trouvé son compatriote mort. Alors qu'il se trouvait là, l'allée l'a enfermé en faisant disparaître la porte de sortie.~ */ GOTO 21
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52696 /* ~"Je dois encore annuler les réparations du dabus. Répète-moi ce que je dois faire."~ */ GOTO 22
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52697 /* ~"J'ai annulé les réparations à un endroit. Répète-moi où se trouve l'autre endroit."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52698 /* ~"J'ai annulé les réparations à un endroit. Répète-moi où se trouve l'autre endroit."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52699 /* ~"J'ai annulé les réparations, comme tu me l'as demandé."~ */ GOTO 24
  IF ~~ THEN REPLY #52700 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #52629 /* ~"IL DOIT ÊTRE ENLEVÉ. IL DOIT Y AVOIR UN MOYEN. FAIS-LE PARTIR. LE TEMPS PRESSE. DOIS DIVISER OU SERAI BIENTÔT DÉTRUIT."~ */
  IF ~~ THEN REPLY #52701 /* ~"Ne t'en fais pas, je trouverai une solution. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52630 /* ~"CELUI QUI FLOTTE EST DÉTRUIT. IL NE RÉPARE PLUS. NE GÊNE PLUS."~ */
  IF ~~ THEN REPLY #52702 /* ~"Oui, il ne dérangera plus… Tu peux maintenant procéder à la division."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.0 15.1 17.0
  SAY #52631 /* ~L'Allée reste silencieuse pendant un long moment, comme si elle méditait sur tes paroles. "CELUI QUI FLOTTE N'AURAIT PAS DÛ ÊTRE DÉTRUIT. TU AS ATTIRÉ L'ATTENTION DE LA TRANCHEUSE. ELLE APPORTE LA DOULEUR."~ */
  IF ~~ THEN REPLY #52703 /* ~"J'ai dû le tuer… C'était le seul moyen de l'empêcher de réparer."~ */ GOTO 19
  IF ~~ THEN REPLY #52704 /* ~"Ce qui est fait est fait. Mais le dabus *est* parti, et tu peux maintenant procéder à la division."~ */ GOTO 19
  IF ~~ THEN REPLY #52705 /* ~"Écoute, tu m'as demandé de le supprimer… alors je l'ai zigouillé. Tu peux effectuer la division maintenant, non ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Alley_1","GLOBALGood",-1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1 18.2 21.0
  SAY #52632 /* ~"TOUJOURS IMPOSSIBLE DE DIVISER. TROP FAIBLE. IMPOSSIBLE D'ANNULER LES RÉPARATIONS DE CELUI QUI FLOTTE. SES CHANGEMENTS DOIVENT ÊTRE DÉFAITS AVANT DE POUVOIR DIVISER. TU DOIS ANNULER LES RÉPARATIONS DE CELUI QUI FLOTTE POUR MOI."~ */
  IF ~~ THEN REPLY #52706 /* ~"Tu veux que j'annule les réparations du dabus ? Comment ?"~ */ GOTO 20
  IF ~~ THEN REPLY #52707 /* ~"Comment je fais pour annuler les réparations ? Je ne suis pas charpentier."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #52633 /* ~"CHERCHE LES PARTIES DE MOI QUE CELUI QUI FLOTTE A MODIFIÉES. ANNULE LES RÉPARATIONS. DOIT ÊTRE EXACT. PRÉCIS. ALORS SEULEMENT DIVISION SERA POSSIBLE."~ */
  IF ~~ THEN REPLY #52708 /* ~"Très bien. Je trouverai et annulerai les réparations pour toi."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",2)
~ JOURNAL #52679 /* ~J'ai réussi à me débarrasser du dabus, mais les réparations qu'il a effectuées empêchent toujours l'allée de se scinder en deux. J'ai accepté de retrouver ces réparations et de les inverser. Apparemment, l'allée est tout prêt de mettre bas. Affaiblie comme elle est, elle ne peut inverser elle-même ces changements. Des outils me seraient utiles… un marteau et un pied-de-biche devraient faire l'affaire.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0 15.2
  SAY #52634 /* ~"OUI. CELUI QUI FLOTTE NE RÉPARE PLUS. IL EST MAINTENANT AVEC L'AUTRE. JE ME SUIS REFERMÉE SUR LUI. IL DEMEURE À L'INTÉRIEUR DE MOI POUR TOUJOURS."~ */
  IF ~~ THEN REPLY #52709 /* ~"Je vois. Maintenant qu'il est pris au piège, tu peux procéder à la division sans dérangement, non ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 15.3
  SAY #52635 /* ~"À DEUX ENDROITS AU-DESSUS DE MOI. IL FAUT ANNULER CE QUE CELUI QUI FLOTTE A MODIFIÉ. JE NE PEUX PAS FAIRE LES MODIFICATIONS MOI-MÊME. DOIS CONSERVER ÉNERGIE POUR LA DIVISION. TU DOIS FAIRE LES MODIFICATIONS COMME CEUX DE TON ESPÈCE."~ */
  IF ~~ THEN REPLY #52710 /* ~"Très bien. Je trouverai et annulerai les réparations pour toi."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.4 15.5
  SAY #52636 /* ~"LES DEUX ENDROITS SONT AU-DESSUS DE MOI. L'UN EST À L'EST DE L'AUTRE. L'UN EST À L'OUEST DE L'AUTRE."~ */
  IF ~~ THEN REPLY #52711 /* ~"Bonne description. Merci de ton aide."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.6
  SAY #52637 /* ~"OUI. TOUT EST EN ORDRE. JE TE REMERCIE." Le vent recommence à souffler autour de toi, cette fois-ci plus violemment. Les sons omniprésents de l'Allée deviennent plus forts, jusqu'à ce que le doux murmure de la voix soit presque entièrement couvert par le brouhaha. "TU DOIS MAINTENANT PARTIR. LA DIVISION COMMENCE. LA VOIE T'EST MAINTENANT OUVERTE."~ */
  IF ~~ THEN REPLY #52712 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",3)
AddexperienceParty(16250)
AddJournalEntry(106724,QUEST_DONE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52638 /* ~Le visage de pierre recommence à se transformer devant toi, et sa masse se déplace. Le mur tout entier semble fondre devant tes yeux, découvrant un étroit passage. Le sol sous tes pieds commence à remuer violemment et le doux souffle du vent s'intensifie en une plainte presque humaine. Tu entends le bruit des éboulements de pierres et des branches qui craquent autour de toi tandis que tu te rues dans le passage.~ */
  IF ~~ THEN REPLY #52723 /* ~Pars.~ */ DO ~StartMovie("Alybirth")
~ JOURNAL #52678 /* ~J'ai aidé l'allée 'enceinte' à mettre sa progéniture au monde. Comme promis, la naissance de la nouvelle allée a créé un passage permettant de se rendre de la Ruche au Bas Quartier.~ */ EXIT
END
