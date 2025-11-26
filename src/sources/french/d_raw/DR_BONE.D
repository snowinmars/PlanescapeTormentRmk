// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DR_BONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DR_BONE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~Cet homme siffle un air joyeux et joue avec un dangereux couteau de combat. Alors que tu t'approches de lui, il arrête de siffler et te regarde d'un air étrange. "Hum ? Qu'est-ce tu veux ?"~ */
  IF ~~ THEN REPLY #49642 /* ~"J'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~Cet homme siffle toujours un air joyeux tout en manipulant son dangereux couteau. Alors que tu t'approches de lui, il arrête de siffler et te lance un regard ennuyé. "Qu'est-ce qu'il y a, hein ?"~ */
  IF ~~ THEN REPLY #49645 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~"Moi, c'est Ratos, matois. Je suis voleur à gages au service de Partagetombe, le chef des Récupérateurs que tu vois dans l'quartier. Il m'paie surtout pour apprendre à ses gars à rester tranquilles et à se battre s'ils ont des ennuis. Ce sont les seules questions auxquelles je répondrai, matois." Il renifle et hausse les épaules.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~"Un voleur sur gages ? Tu peux m'entraîner ?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~"Tu sais comment je pourrais franchir le porche rempli d'ordures, au nord-ouest d'ici ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Un dénommé Ratos m'a dit que, si je voulais franchir l'arche encombrée de déchets du Square du Chiffonnier, il fallait que j'aille voir un certain Crédo. Selon Ratos, ce dernier devrait se trouver dans la Ruche, à proximité du Bureau de Lutte contre la vermine et la maladie.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~"Je cherche un certain Pharod. Tu sais où il est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~"Où est ce Partagetombe ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~Il hoche la tête en direction de la grande maison délabrée à côté de lui. "Mais attention, matois. Il aime pas les visiteurs. Il soupçonne tout le monde. Partagetombe, c'est même pas son vrai nom… c'est comme ça qu'on l'appelle, moi et les autres."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~"Tu as dit que tu étais un voleur sur gages ? Tu peux m'entraîner ?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~"Tu sais comment je pourrais franchir le porche rempli d'ordures, au nord-ouest d'ici ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Un dénommé Ratos m'a dit que, si je voulais franchir l'arche encombrée de déchets du Square du Chiffonnier, il fallait que j'aille voir un certain Crédo. Selon Ratos, ce dernier devrait se trouver dans la Ruche, à proximité du Bureau de Lutte contre la vermine et la maladie.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~"Je cherche un certain Pharod. Tu sais où il est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~Ratos secoue la tête. "Non. Mais on m'a dit qu'il était dans l'coin. Certains de ses gars déboulent de temps en temps à la recherche de planques, mais qui sait où. Vers ces plates-formes surélevées, mais c'est pas mes oignons." Il hausse les épaules et crache par terre. "Faut que tout le monde vive, dit Ratos."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~"Tu as dit que tu étais un voleur sur gages ? Tu peux m'entraîner ?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~"Tu sais comment je pourrais franchir le porche rempli d'ordures, au nord-ouest d'ici ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Un dénommé Ratos m'a dit que, si je voulais franchir l'arche encombrée de déchets du Square du Chiffonnier, il fallait que j'aille voir un certain Crédo. Selon Ratos, ce dernier devrait se trouver dans la Ruche, à proximité du Bureau de Lutte contre la vermine et la maladie.~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~"Où est ton chef… Partagetombe ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~"Eh ? Non, je ne sais pas. Dis-moi… tu pourrais demander à Crédo, le Chasseur-de-Rats. Des fois, il va fouiner là-haut et il disparaît un bon bout de temps. Crédo s'trouve généralement dans la Ruche, juste à l'extérieur du Bureau de Lutte contre la vermine et la maladie."~ */
  IF ~~ THEN REPLY #49665 /* ~"Le Bureau de… ? Où est-ce qu'il se trouve ?"~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~"Tu as dit que tu étais un voleur sur gages ? Tu peux m'entraîner ?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~"Je cherche un certain Pharod. Tu sais où il est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~"Où est ton chef… Partagetombe ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~Ratos fronce les sourcils. "Dans la Ruche, matois. Trouve un rabatteur si tu en as besoin."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~"Tu as dit que tu étais un voleur sur gages ? Tu peux m'entraîner ?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~"Je cherche un certain Pharod. Tu sais où il est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~"Où est ton chef… Partagetombe ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~"Certainement, pour un peu de jonc. Tu t'es déjà entraîné avant ?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~"Oui."~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~"Non."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~"Très bien. Je vais t'envoyer une taloche et tu vas essayer de l'esquiver." Il te donne soudain un coup sur la tête.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~Esquive le coup.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~Esquive le coup.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~Malgré ton plongeon, Ratos te donne un violent coup derrière la tête. "Désolé, matois, mais t'as été trop lent."~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~"Tu sais comment je pourrais franchir le porche rempli d'ordures, au nord-ouest d'ici ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Un dénommé Ratos m'a dit que, si je voulais franchir l'arche encombrée de déchets du Square du Chiffonnier, il fallait que j'aille voir un certain Crédo. Selon Ratos, ce dernier devrait se trouver dans la Ruche, à proximité du Bureau de Lutte contre la vermine et la maladie.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~"Je cherche un certain Pharod. Tu sais où il est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~"Où est ton chef… Partagetombe ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~Tu esquives le coup de Ratos. "Pas mal, matois. Bon, maintenant, parlons jonc… cinquante communs et j'accepte de t'entraîner."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~"OK. Tiens…"~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~"Je n'en ai pas tant …"~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~"Non, merci."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~Ratos hausse les épaules sans énergie.~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~"Tu sais comment je pourrais franchir le porche rempli d'ordures, au nord-ouest d'ici ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Un dénommé Ratos m'a dit que, si je voulais franchir l'arche encombrée de déchets du Square du Chiffonnier, il fallait que j'aille voir un certain Crédo. Selon Ratos, ce dernier devrait se trouver dans la Ruche, à proximité du Bureau de Lutte contre la vermine et la maladie.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~"Je cherche un certain Pharod. Tu sais où il est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~"Où est ton chef… Partagetombe ?"~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~"Tu sais que tu dois arrêter de faire ce que tu fais pour le moment, hein ? Tu ne peux pas être guerrier, ou autre, *et* voleur. Ça te va, matois ?"~ */
  IF ~~ THEN REPLY #49696 /* ~"Oui."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~"Ça ne me convient pas. Je récupère mon argent… Au revoir, Ratos."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~"Bon, allons-y. J'vais t'apprendre à devenir un bon voleur selon six principes : te déplacer furtivement, te cacher, faire sauter les verrous, fouiller les poches, trouver et neutraliser les pièges, et ce que je préfère : donner des coups par derrière aux biges."~ */
  IF ~~ THEN REPLY #49699 /* ~"Continue…"~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~"Je crois que j'ai compris le principe, Ratos. Passons à l'entraînement."~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~"Se déplacer furtivement - se cacher dans les ombres et se déplacer sans faire de bruit, c'est vraiment important. Il vaut mieux être un con vivant, qu'un matois mort, hein ? Non seulement tu peux prendre quelqu'un par surprise sans danger et tu as la main libre… mais j't'en dirai plus après. Par contre, attention… tu ne peux pas te déplacer furtivement si tu as été repéré."~ */
  IF ~~ THEN REPLY #49702 /* ~"Continue…"~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~"Je crois que j'ai compris le principe, Ratos. Passons à l'entraînement."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~"Faire sauter les verrous et fouiller les poches, c'est aussi très utile… ça permet de se faire du jonc. Il faut juste que tu sois prêt à courir si tu te fais prendre à fouiller une poche, et attention aux pièges, si tu essaies de faire sauter un verrou suspect. Pour voir s'il y a des pièges, examine bien la zone en prenant ton temps… Il faut parfois un peu de temps pour les repérer."~ */
  IF ~~ THEN REPLY #49705 /* ~"Continue…"~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~"Je crois que j'ai compris le principe, Ratos. Passons à l'entraînement."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~"Si tu *trouves* un piège, débrouille-toi pour le neutraliser au mieux. C'est un peu comme trouver la clé d'une énigme."~ */
  IF ~~ THEN REPLY #49708 /* ~"Continue…"~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~"Je crois que j'ai compris le principe, Ratos. Passons à l'entraînement."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~"La dernière chose que je vais t'apprendre, c'est *l'attaque par derrière*." Ratos soupire d'aise. "Si tu réussis à échapper à l'attention d'un idiot et que tu veux le niquer, attaque-le par derrière. Tu as bien plus de chances de le coincer avec un gros avantage."~ */
  IF ~~ THEN REPLY #49711 /* ~"D'accord. Passons à l'entraînement."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~Ratos hoche la tête. "Très bien, matois… D'abord, détends-toi. Tu es trop tendu. Faut que tu laisses ton instinct prendre le dessus par moments, et fais confiance à ton intuition…"Ton entraînement de voleur commence."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~J'ai suivi une formation de voleur sous l'égide d'un certain Ratos, que j'ai rencontré au Square du Chiffonnier.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~J'ai suivi une formation de voleur sous l'égide d'un certain Ratos, que j'ai rencontré au Square du Chiffonnier.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~J'ai suivi une formation de voleur sous l'égide d'un certain Ratos, que j'ai rencontré au Square du Chiffonnier.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~Apprends tout ce que tu peux.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~J'ai suivi une formation de voleur sous l'égide d'un certain Ratos, que j'ai rencontré au Square du Chiffonnier.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~Après un long entraînement, Ratos hoche la tête d'un air satisfait. "J'dois bien l'avouer, matois - j'suis jamais tombé sur quelqu'un qui apprenait aussi vite. C'est comme si tu avais déjà fait ça avant !"~ */
  IF ~~ THEN REPLY #49719 /* ~"C'est peut-être le cas, Ratos, mais j'ai peut-être oublié, tout simplement. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~Après un long entraînement, Ratos hoche la tête d'un air satisfait. "J'dois bien l'avouer, matois - j'suis jamais tombé sur quelqu'un qui apprenait aussi vite. On dirait même que t'as déjà fait ça avant !" Alors que Ratos parle, tu te rends compte que tu as effectivement déjà *fait* ça avant… En fait, tu possédais toutes ces qualités et l'entraînement les a fait remonter à la surface.~ */
  IF ~~ THEN REPLY #49721 /* ~"C'est peut-être le cas, Ratos, mais j'ai peut-être oublié, tout simplement. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~Après un long entraînement, Ratos hoche la tête d'un air satisfait. "J'dois bien l'avouer, matois - j'suis jamais tombé sur quelqu'un qui apprenait aussi vite. On dirait même que t'as effectivement déjà fait ça avant !" Alors que Ratos parle, tu te rends compte que tu as déjà *fait* ça avant… En fait, tu possédais toutes ces qualités.~ */
  IF ~~ THEN REPLY #49723 /* ~"C'est peut-être le cas, Ratos, mais j'ai peut-être oublié, tout simplement. Merci et au revoir."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~Alors que de vagues souvenirs de couloirs sombres et de redoutables pièges te reviennent à l'esprit, tu parviens à te remémorer suffisamment de choses pour en 'savoir' plus que Ratos.~ */
  IF ~~ THEN REPLY #49725 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~"Étant donné que tu as déjà été entraîné, je ne vois pas ce que je peux t'apprendre d'autre, matois. Si tu n'as pas négligé tes talents de voleur pour suivre une autre voie - comme celle du combat, de la magie ou de je ne sais quoi - je peux t'aider à retrouver tes réflexes."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~"Je voudrais redevenir un voleur, Ratos."~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~"Je comprends. Au revoir, Ratos."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~Ratos hoche la tête. "Parlons jonc… cinquante communs et j'accepte de t'entraîner."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~"OK. Tiens…"~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~"Je n'en ai pas tant …"~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~"Non, merci."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~"Tu sais que tu vas devoir arrêter tes autres activités, d'accord ? Tu ne peux pas être à la fois guerrier et voleur. T'es d'accord avec ça, matois ?"~ */
  IF ~~ THEN REPLY #49734 /* ~"Oui."~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~"Ça ne me convient pas. Je récupère mon argent… Au revoir, Ratos."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~"T'apprends vite, matois, très vite." Il te regarde avec curiosité, puis hausse les épaules. "C'est tout, tu es prêt."~ */
  IF ~~ THEN REPLY #49737 /* ~"Merci, Ratos. Au revoir."~ */ EXIT
END
