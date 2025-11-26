// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~Tu vois un humanoïde émacié, à la peau jaune couverte de toutes sortes de tatouages. Il arbore des sourcils rehaussés d'un lourd trait de charbon de bois et des dents taillées en pointe. Quand il t'aperçoit, il te fait signe en agitant des dés dans sa main.~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~"Bonjour…"~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~"Bonjour…"~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~Il affiche un sourire sauvage aux dents de requin. Ses yeux sont comme des globes noirs et brillants. Sa voix est grave et âpre : "Gaoha te souhaite bien l'bonjour, à toi aussi… tu es venu jouer, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #34026 /* ~"Non, mais j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~"Oui, je vais jouer."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~"Non… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~Il s'apprête à parler lorsque ses yeux - noirs et brillants, comme des globes de jais - aperçoivent Dak'kon. Tous deux se regardent fixement pendant un instant avant que le regard du githzeraï tatoué ne revienne sur toi. Sa voix est grave et âpre : "Gaoha te souhaite la bienvenue. Tu es… venu jouer ? N'est-ce pas ?"~ */
  IF ~~ THEN REPLY #34030 /* ~"Non, mais j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~"Oui, je vais jouer."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~"Non… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~Le sourire de Gaoha s'évanouit en un instant ; il secoue la tête. "D'intérêt pour les questions je n'ai pas. Seul le jeu… le roulement du dé, le scintillement de la pièce, gagnée ou perdue, oui ?" Il secoue le dé en os dans sa paume. "Ça… ne t'intéresse pas ?"~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~"D'accord… Je vais jouer."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~"D'accord… Je vais jouer."~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~Gaoha porte la main à sa tunique et en sort une pièce. "Cette pièce ? Ta pièce." Il la place à tes pieds, et en sort une autre. "Cette pièce ? Celle de Gaoha." Il la place à ses propres pieds, puis place deux dés entre son pouce et son index. "Les dés… nous en jetons chacun un, oui ?"~ */
  IF ~~ THEN REPLY #34038 /* ~"Continue…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~"Tu jettes le plus grand, les deux pièces…" Il ramasse les pièces du sol et te les tend. "… pour toi. Gaoha jette le plus grand ?" Il remet rapidement les pièces dans sa tunique. "Pour moi. Aucun des deux n'est plus grand ? La pièce reste pour un autre tour. Alors : combien de pièces à tes pieds ?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~"Une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~"Un commun de cuivre."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~"Cinq communs de cuivre."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~"Cinq communs de cuivre."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~"Dix communs de cuivre."~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~"Dix communs de cuivre."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~"Vingt-cinq communs de cuivre."~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~"Vingt-cinq communs de cuivre."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~"Cinquante communs de cuivre."~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~"Cinquante communs de cuivre."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~"Cent communs de cuivre."~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~"Cent communs de cuivre."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~"Aucune. Je ne veux pas jouer pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~Vous faites tous les deux rouler les dés jusqu'à ce que Gaoha tire une meilleure combinaison ; il attrape tes pièces et les met dans sa tunique. Il semble hésiter un moment, puis parle. "Encore, oui ?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~"Attends - quelque chose ne va pas ?"~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~"Oui, encore."~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~Gaoha t'observe de plus près pendant un moment, puis hoche la tête. "Je ne me laisse jamais aller à la folie de Hashma - de même que je ne *triche* jamais, humain. Mais je vois la fortune, je la lis, *sache-le*, sur le visage d'un homme. Mais en toi… en toi, je ne *vois* rien. Tu… n'as pas de chance ? Pas de fortune, bonne ou mauvaise ? À moins que tu ne crées ta propre chance. Je ne sais pas." Il remet ses dés dans sa tunique. "Nous rejouerons peut-être plus tard, mais pas pour le moment."~ */
  IF ~~ THEN REPLY #60421 /* ~"Très bien… Au revoir."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~"Et combien de pièces seront à tes pieds ?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~"Un commun de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~"Un commun de cuivre."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~"Cinq communs de cuivre."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~"Cinq communs de cuivre."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~"Dix communs de cuivre."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~"Dix communs de cuivre."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~"Vingt-cinq communs de cuivre."~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~"Vingt-cinq communs de cuivre."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~"Cinquante communs de cuivre."~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~"Cinquante communs de cuivre."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~"Cent communs de cuivre."~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~"Cent communs de cuivre."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~"Aucune, en fait. Au revoir."~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~Les yeux de Gaoha lancent des éclairs et son sourire laisse apparaître ses dents pointues. Il mélange les dés entre ses mains. "Tu es revenu pour jouer, c'est ça ?"~ */
  IF ~~ THEN REPLY #60437 /* ~"Non, mais j'avais des questions…"~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~"Oui, je vais jouer."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~"Oui, je vais jouer."~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~"Non… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~Vous faites tous les deux rouler les dés jusqu'à ce que Gaoha tire une meilleure combinaison ; il ramasse tes pièces, fronce les sourcils un moment, avant de les cacher dans sa tunique. "Ça suffit pour le moment. Mais peut-être que nous rejouerons un peu plus tard."~ */
  IF ~~ THEN REPLY #60442 /* ~"Pourquoi ? Qu'est-ce qui ne va pas ?"~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~Vous faites tous les deux rouler les dés jusqu'à ce que tu tires une meilleure combinaison ; tu ramasses les pièces et les ranges. Gaoha hoche la tête en fronçant les sourcils. "Ça suffit pour le moment. Mais peut-être que nous rejouerons un peu plus tard."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~"Attends - quelque chose ne va pas ?"~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~Les yeux de Gaoha lancent des éclairs et son sourire laisse apparaître ses dents pointues. "Tu es impatient de jouer, hein ? Mais c'est trop tôt. Reviens plus tard et peut-être que nous rejouerons."~ */
  IF ~~ THEN REPLY #60448 /* ~"Alors, au revoir."~ */ EXIT
END
