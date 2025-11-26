// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~Tu vois un homme à la longue robe noire et au teint blême. Il ressemble aux gens que tu as vus à la Morgue, excepté qu'il a l'air perplexe et ne cesse de darder des regards alentour. En t'apercevant, il lève la main pour attirer ton attention.~ */
  IF ~~ THEN REPLY #2180 /* ~"Bonjour."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~Ignore l'homme.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~Tu vois un Homme-Poussière à la longue robe noire et au teint blême. Il ressemble à ceux que tu as vus à la Morgue, excepté qu'il a l'air perplexe et ne cesse de darder des regards alentour. En t'apercevant, il lève la main pour attirer ton attention.~ */
  IF ~~ THEN REPLY #2182 /* ~"Bonjour."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~Il paraît soulagé que tu lui parles et il s'incline. "Merci de m'écouter, voyageur. Je suis Manteau-de-Cendre, de la secte des Hommes-Poussière. Je me demandais si tu pouvais m'aider… Je ne connais pas très bien le quartier, et je cherche un établissement, un bar, fréquenté par les membres de ma secte. Cela te dit-il quelque chose ?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~"Tu sais, on dit qu'il y a un voleur déguisé en Homme-Poussière dans le coin. Tu le connais peut-être ?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~"'Secte' ? Tu veux dire 'faction' ?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~"'Secte' ? Mais tu es un Homme-Poussière : tu veux dire 'faction' ?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~"Ah, le bar des Hommes-Poussière ? Il se trouve près de la Morgue. Dirige-toi vers la porte d'entrée de la Morgue, puis prends la direction du sud-ouest. Tu ne peux pas le manquer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~"J'en ai entendu parler. Je veux bien t'aider… si tu réponds à mes questions."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~"Non, excuse-moi, je ne sais pas où c'est."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~Mensonge : "Non, excuse-moi, je ne sais pas où c'est."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~"Je ne peux rien pour toi, au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~"Je ne peux rien pour toi, au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~Il hoche la tête. "Oui, *faction*, c'est ce que je voulais dire… secte, faction, il n'y a guère de différence, au fond… est-ce que tu connaîtrais ce bar que ma faction fréquente ?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~"Tu sais, on dit qu'il y a un voleur déguisé en Homme-Poussière dans le coin. Tu le connais peut-être ?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~"Le bar que tu cherches se trouve près de la Morgue. Dirige-toi vers la porte d'entrée de la Morgue, puis prends la direction du sud-ouest. Tu ne peux pas le manquer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~"Non, excuse-moi, je ne sais pas où c'est."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~Mensonge : "Non, excuse-moi, je ne sais pas où c'est."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~"Je ne peux rien pour toi, au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~"Je ne peux rien pour toi, au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~Il soupire et lève les mains. "Je regrette de devoir admettre que je n'ai pas de jonc."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~"Alors, laisse tomber. Le bar que tu cherches se trouve près de la Morgue. Dirige-toi vers la porte d'entrée de la Morgue, puis prends la direction du sud-ouest. Tu ne peux pas le manquer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~"Et si tu répondais à quelques questions pour moi ? On serait quittes."~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~"Alors, je ne peux rien pour toi. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~L'Homme-Poussière hoche la tête et s'incline. "Merci de m'avoir accordé de ton temps."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~"De rien. Au revoir."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~"De rien. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~"De rien. Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~"De rien… Au revoir."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~"De rien. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~Il sourit. "Merci bien, voyageur. J'apprécie ta gentillesse. Les gens de la Ruche sont souvent… peu désireux d'aider leur prochain."~ */
  IF ~~ THEN REPLY #2620 /* ~"Ne m'en parle pas. Dis-moi, je peux te poser quelques questions ?"~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~"Pas de problème. Au revoir, Manteau-de-Cendre."~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~Il acquiesce. "Ta requête est des plus raisonnables. Dis-moi où je peux trouver le Bar de la Poussière accumulée, et je me ferai un plaisir de répondre à tes questions."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~"Le bar que tu cherches se trouve près de la Morgue. Dirige-toi vers la porte d'entrée de la Morgue, puis prends la direction du sud-ouest. Tu ne peux pas le manquer."~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~Mensonge : "Ouais, sors de la Morgue, puis longe… trois blocs vers l'ouest, je crois… et ce sera la première ruelle sur la droite."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~"En fait, pour l'instant, je n'arrive pas à me souvenir où ça se trouve. Si ça me revient, je te le dirai. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~"Quelles questions ?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~"Je cherche un certain Pharod. Est-ce que tu le connais ?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~"Je cherche un journal. Tu sais où je pourrais en trouver un ?"~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~"Tu peux me parler un peu de la région ?"~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~"Tu peux me parler un peu des Hommes-Poussière ?"~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~"Peu importe. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~"Je regrette, mais ce nom m'est inconnu."~ */
  IF ~~ THEN REPLY #2656 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~"Pas de problème. Au revoir, Manteau-de-Cendre."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~"J'ignore où tu pourrais le trouver. Je pleure sa perte."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~"Vraiment ? Je croyais que les Hommes-Poussière n'accordaient pas d'importance aux choses matérielles."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~"Merci de compatir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~Il hausse les épaules. "Ta perte ne me laisse pas indifférent. Chacun a dans sa vie bien des choses auxquelles on est attaché."~ */
  IF ~~ THEN REPLY #2662 /* ~"Ta façon de voir les choses est plutôt… *inhabituelle* pour un Homme-Poussière."~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~"Ici… et bien, il y a un marché au nord-ouest, je crois. Et une sorte de service administratif au sud-ouest…" Il réfléchit un bref instant. "Le Bureau de Lutte contre la vermine, me semble-t-il."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~"Je croyais que tu connaissais mal la région."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~"Tu as l'air de bien connaître *cette* région."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~"Tu as l'air de bien connaître *cette* région."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~Il hausse les épaules. "La Ruche est vaste. Je ne prétends certes pas la connaître en entier."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~"Pour un Homme-Poussière, c'est bizarre que tu ne saches pas où est le Bar de la Poussière accumulée - Il se trouve tout près de la Morgue."~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~Il cille. "Ah… je ne suis pas un Homme-Poussière ordinaire."~ */
  IF ~~ THEN REPLY #2673 /* ~"C'est ce que je vois. Qui es-tu ?"~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~"Merci du tuyau. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~Il marque une pause… et hoche la tête. "Avec plaisir. Nous… les Hommes-Poussière… savons ce qu'est la vie : l'occasion de jouir de nos passions avant notre prochaine incarnation. Nous passons au crible la poussière de nos vies passées pour y trouver le sens de la suivante."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~"Euh… ta façon de voir les choses est plutôt *inhabituelle* pour un Homme-Poussière."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~"C'est la première fois que j'entends un Homme-Poussière parler comme ça. Qui es-tu ?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~Il acquiesce, l'air quelque peu gêné. "Eh bien, je suis Manteau-de-Cendre, du neuvième cercle."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~"Le Neuvième Cercle ? Ça n'existe pas."~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~"Bon, très bien. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~Soudain, il se raidit. "Je n'ai pas le temps de débattre avec toi des pratiques et de la hiérarchie de la secte des Hommes-Poussière. Si tu veux bien m'excuser…"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~Attrape-lui la main.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~Prends sa main.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~"Mais qui es-tu ?"~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~"Alors, tant pis. Excuse-moi, je ne voulais pas te vexer."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~Il te dévisage innocemment, mais tu le vois se raidir. "Pardon ?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~Attrape-lui la main.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~Attrape-lui la main.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~"Tu n'es pas un Homme-Poussière. Tu es un voleur."~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~"Pardon à toi. Tu vas mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~"Rien, tant pis. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~Il hoche la tête. "Entendu. On ne se reverra plus. Je trouverai une autre pelade… euh, tâche, ailleurs."~ */
  IF ~~ THEN REPLY #2698 /* ~"Très bien. Maintenant, va-t'en."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~Tu allais te détourner quand il te semble qu'il y a quelque chose qui cloche. Pris d'un soupçon, tu jettes un nouveau regard sur Manteau-de-Cendre, juste à temps pour le voir dissimuler un objet dans sa manche… un objet qui t'appartient, semble-t-il.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~Attrape-lui la main.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~Attrape-lui la main.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~Tente Manteau-de-Cendre pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~Tente Manteau-de-Cendre pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~Tente Manteau-de-Cendre pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~Tu n'y aurais pas pris garde si tes soupçons n'étaient éveillés, mais tu vois Manteau-de-Cendre tendre la main vers ta bourse pendant l'une de ses courbettes.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~Attrape-lui la main.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~Prends sa main.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~Laisse Manteau-de-Cendre voler ce qu'il y a dans ta poche et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~Laisse Manteau-de-Cendre voler ce qu'il y a dans ta poche et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~Laisse Manteau-de-Cendre voler ce qu'il y a dans ta poche et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~Tu n'y aurais pas pris garde si on ne t'avait parlé d'un coupe-gousset Homme-Poussière, mais tu vois Manteau-de-Cendre tendre la main vers ta bourse pendant l'une de ses courbettes.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~Attrape-lui la main.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~Prends sa main.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~Laisse Manteau-de-Cendre voler ce qu'il y a dans ta poche et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~Laisse Manteau-de-Cendre voler ce qu'il y a dans ta poche et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~Laisse Manteau-de-Cendre voler ce qu'il y a dans ta poche et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~C'est peut-être ton talent de vol à la tire qui a fait que tu étais sur tes gardes, mais en te détournant pour partir tu jettes un regard instinctif sur ta bourse… et tu vois Manteau-de-Cendre en retirer sa main. Il ne paraît pas avoir remarqué que tu l'as vu.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~Attrape-lui la main.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~Prends sa main.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~Tente Manteau-de-Cendre pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~Tente Manteau-de-Cendre pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~Tente Manteau-de-Cendre pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~Sous prétexte de lui indiquer comment rejoindre d'autres endroits de la Ruche, tu entames la conversation avec Manteau-de-Cendre et tu en profites pour étudier ses gestes. Il semble compter sur son apparence d'Homme-Poussière pour désarmer ses victimes, et ses courbettes lui servent à masquer ses tentatives de vol à la tire. Tu prends note de sa technique… alors qu'il essaie de nouveau d'alléger ta bourse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~Attrape-lui la main.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~Prends sa main.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~En un éclair, tu saisis son poignet presque en le broyant. Son visage d'Homme-Poussière se contracte, et il grimace tout en essayant de se dégager. "Lâche-moi, chien, ou j'appelle les gardes !"~ */
  IF ~~ THEN REPLY #2780 /* ~"*Une fois* que tu auras répondu à quelques questions, 'Homme-Poussière'."~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~"Donne-moi tout ce que tu as, voleur, et je te laisserai partir."~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~"Les gardes ? Vas-y, appelle-les. À mon avis, *c'est pas ce qui manque* dans le coin."~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~Laisse-le partir.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~Tu tends brusquement la main, mais Manteau-de-Cendre fait un pas de côté et tu manques son poignet. Tu vois son visage d'Homme-Poussière se contracter, et, apeuré, il prend la fuite !~ */
  IF ~~ THEN REPLY #12071 /* ~"Bon sang…"~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~Manteau-de-Cendre prend soudain la fuite !~ */
  IF ~~ THEN REPLY #12072 /* ~"Bon sang…"~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~"Peuh !" Il a surtout l'air irrité. "Comment est-ce que je me suis trahi ?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~"On m'avait prévenu que quelqu'un comme toi se déguisait en Homme-Poussière pour voler à la tire."~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~"Ta méconnaissance des principales philosophies des Hommes-Poussière. Tu devrais t'informer un peu avant d'essayer d'arnaquer plus malin que toi. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~"Ta technique de vol à la tire n'est pas très au point. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~"À toi de deviner. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~"Tu n'auras pas le temps de le découvrir. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~"Quelles questions, alors ?"~ */
  IF ~~ THEN REPLY #12078 /* ~"Pourquoi est-ce que tu te déguises en Homme-Poussière ?"~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~"Je cherche un certain 'Pharod'. Tu le connais ?"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~"Je cherche un journal."~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~Vérité : "Donne-moi tout ce que tu as ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~Bluff : "Donne-moi tout ce que tu as ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~Vérité : "Bon… Donne-moi *tout* ce que tu as ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~Bluff : "Bon… Donne-moi *tout* ce que tu as ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~"Voilà ma question : en combien de secondes est-ce que je vais te tuer… Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~Il hausse les épaules. "Nul ne se méfie d'un Homme-Poussière." Il glousse. "Je peux me faire un bon paquet de jonc avant qu'on repère la pelade."~ */
  IF ~~ THEN REPLY #12088 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~"C'est tout ce que je voulais savoir. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~"Je vois. Écoute, Manteau-de-Cendre, voilà ce qui va se passer : je ne veux plus jamais te revoir dans le coin ou je t'étripe. Maintenant, déguerpis."~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~"Ouais, c'est plutôt malin. Écoute, je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~Il plisse les paupières. "Je n'ai rien sur moi. Tu étais ma première cible, aujourd'hui."~ */
  IF ~~ THEN REPLY #12092 /* ~Bluff : "En fait, tu n'as pas seulement l'air idiot, tu *l'es* vraiment. Donne-moi ce que tu as ou les Récupérateurs auront un nouveau cadavre à ramasser dans la rue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~Vérité : "En fait, tu n'as pas seulement l'air idiot, tu *l'es* vraiment. Donne-moi ce que tu as ou les Récupérateurs auront un nouveau cadavre à ramasser dans la rue."~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~"Mauvaise réponse. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~"Ah ouais ? Eh bien, laisse-moi te fouiller pour voir si c'est vrai."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~Il grogne, te jauge pour estimer ses chances de te battre, change d'avis, puis effleure la doublure de sa robe. D'un geste vif, il en détache un pan et sort de cette cachette un petit peu de cuivre qu'il te tend. S'il ne te l'avait pas montré, tu ne l'aurais sans doute pas trouvé.~ */
  IF ~~ THEN REPLY #12096 /* ~"C'est tout ? Tu as intérêt à me donner autre chose, Manteau-de-Cendre, ou toi et la mort allez rapidement devenir bons copains."~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~"Bon, très bien. Maintenant, j'ai quelques questions à te poser…"~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~"C'est tout ce que je voulais. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~Il te montre les dents. "Je n'ai rien d'autre."~ */
  IF ~~ THEN REPLY #12101 /* ~"Bon, très bien. Maintenant, j'ai quelques questions à te poser…"~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~"Ah ouais ? Eh bien, laisse-moi te fouiller pour voir si c'est vrai."~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~"Mauvaise réponse. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~Tu t'apprêtes à le fouiller quand une dague tombe soudain de sa manche dans sa main. Avec un cri de rage, il se jette sur toi !~ */
  IF ~~ THEN REPLY #12106 /* ~"Alors très bien…"~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~Il fronce les sourcils. "Tu crois que j'aurais vu un truc pareil ? Je me limite au jonc, bige."~ */
  IF ~~ THEN REPLY #12107 /* ~"Bon, très bien, j'ai d'autres questions à te poser…"~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~"C'est tout ce que je voulais savoir. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~"Pourquoi ça ?"~ */
  IF ~~ THEN REPLY #12111 /* ~"Qui est-ce ?"~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~"Laisse tomber. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~"Tu me laisseras partir si je te réponds ?"~ */
  IF ~~ THEN REPLY #12116 /* ~"Non."~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~Serment : "Je te donne ma parole que je te laisserai partir… à condition que tu répondes à ma question."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~Vérité : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~Vérité : "Si tu me le dis, je te laisserai la vie *sauve*."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~Bluff : "Si tu me le dis, je te laisserai la vie *sauve*."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~Il crache par terre. "Dans ce cas, je n'ai pas grand-chose à dire."~ */
  IF ~~ THEN REPLY #12122 /* ~Serment : "Très bien. Je te donne ma parole que je te laisserai partir… à condition que tu répondes à ma question."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~Vérité : "OK, je te laisserai partir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~Mensonge : "OK, je te laisserai partir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~Vérité : "Si tu me le dis, je te laisserai la vie *sauve*."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~Bluff : "Si tu me le dis, je te laisserai la vie *sauve*."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~"Mauvaise réponse. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~"Pharod est un Récupérateur en chef. Il a pas mal d'affranchis à sa botte. D'après la chanson, c'est une affaire qui tourne. Je ne sais rien de plus là-dessus. Si j'étais toi, je ferais attention avec lui."~ */
  IF ~~ THEN REPLY #12128 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~"Il a sa guitoune sur le Square du Chiffonnier… ce grand dépotoir d'ordures et de chiffons vers le nord-ouest. Passe par la porte nord, puis continue tout droit, tu tomberas dessus. La chanson dit qu'il se cache dans ce tas d'ordures, ou bien en dessous. Qui sait ? Bon, tu vas me laisser partir ?"~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~"Non. J'ai d'autres questions à te poser…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~"Non. J'ai d'autres questions à te poser…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~"C'est tout ce que je voulais savoir. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~Il paraît furieux. "Tu as *dit* que tu me laisserais partir."~ */
  IF ~~ THEN REPLY #12134 /* ~"Et *toi*, tu as dit que tu étais un Homme-Poussière. Maintenant, passons à mes questions…"~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~"Oui, j'ai dit beaucoup de choses, mais maintenant j'en ai assez de parler avec toi. Prépare-toi à mourir."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~"Déguerpis. Si jamais je te revois dans le coin, je t'étripe."~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~"Maintenant, déguerpis. Je ne veux plus jamais *entendre* parler de ta petite arnaque à Sigil. Compris ?"~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~Tu vois Manteau-de-Cendre… l'air perdu, il marmonne en scrutant les bâtiments alentour.~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~"Bonjour."~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~"Bonjour."~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~Passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~"Je crains d'avoir oublié tes indications. Puis-je compter sur toi pour me les redonner ?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~"Tu sais, on dit qu'il y a un voleur déguisé en Homme-Poussière dans le coin. Tu le connais peut-être ?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~"Ah, le bar des Hommes-Poussière ? Il se trouve près de la Morgue. Dirige-toi vers la porte d'entrée de la Morgue, puis prends la direction du sud-ouest. Tu ne peux pas le manquer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~"Je ne peux rien pour toi, au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~"Je ne peux rien pour toi, au revoir."~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~"Je pars ! Laisse-moi en paix !"~ */
  IF ~~ THEN REPLY #12149 /* ~"Tu as intérêt de te dépêcher."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~"Je sais que tu n'as pas pu m'aider la dernière fois, mais tu as peut-être découvert où se trouve le bar de ma secte ?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~"Tu sais, on dit qu'il y a un voleur déguisé en Homme-Poussière dans le coin. Tu le connais peut-être ?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~"'Secte' ? Tu veux dire 'faction' ?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~"'Secte' ? Mais tu es un Homme-Poussière : tu veux dire 'faction' ?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~"Ah, le bar des Hommes-Poussière ? Il se trouve près de la Morgue. Dirige-toi vers la porte d'entrée de la Morgue, puis prends la direction du sud-ouest. Tu ne peux pas le manquer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~"J'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu me payes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~Mensonge : "Euh… ouais, j'en ai entendu parler. Je veux bien t'aider… à condition que tu répondes à quelques questions pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~"Je ne peux rien pour toi, au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~"Je ne peux rien pour toi, au revoir."~ */ GOTO 5
END
