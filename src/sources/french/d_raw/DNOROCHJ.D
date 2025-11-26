// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNOROCHJ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNOROCHJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46511 /* ~Tu vois un homme efflanqué, vêtu d'un habit noir et sale. Ses cheveux foncés, drus se dressent sur son crâne comme une couronne de clous. Sa peau, blanche comme la lèpre, est tendue sur son crâne. Il fronce les sourcils sur son verre et marmonne.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46526 /* ~"Bonjour."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46527 /* ~"Norochj ?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46528 /* ~Laisse-le tranquille.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46512 /* ~Tu aperçois un Homme-Poussière très mince dans une longue robe noire sale. Ses cheveux noirs et raides se hissent sur son crâne comme une couronne d'épines et sa peau blanche lépreuse est tendue sur sa tête. Il pique du nez dans son verre et se met à marmonner.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46529 /* ~"Bonjour."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46530 /* ~"Norochj ?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46531 /* ~Laisse-le tranquille.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Norochj","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #46513 /* ~Tu aperçois Norochj. Il tire une de ses mèches et l'utilise pour se gratter un bouton sur le visage. Tu ne peux t'empêcher de penser qu'il serait bien mieux avec des dreadlocks.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46532 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46533 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46534 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46535 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46536 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46537 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46538 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46539 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46540 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62892 /* ~"J'ai trouvé… celle qui n'était pas Homme-Poussière. Elle est si morte à présent qu'elle ne risque plus de détrousser quelqu'un."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62893 /* ~"Il y a quelque chose qui te préoccupe ?"~ */ GOTO 5
  IF ~  Global("Norochj_Ad","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62894 /* ~"Je viens pour l'affiche placardée dehors."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62895 /* ~"Emoric m'a dit de te parler, Norochj."~ */ GOTO 12
  IF ~~ THEN REPLY #62896 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 0.1 1.0 1.1
  SAY #46514 /* ~L'Homme-Poussière lève la tête, cligne des yeux et t'examine de haut en bas. Ce faisant, il prend une de ses mèches et la dirige vers lui. "Norochj. Initié. Homme-Poussière. Garde".~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",0)
~ THEN REPLY #46545 /* ~"Tu as l'air inquiet… Norochj."~ */ GOTO 5
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46546 /* ~"Je viens pour l'affiche placardée dehors."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46547 /* ~"Emoric m'a dit de te parler."~ */ GOTO 12
  IF ~~ THEN REPLY #46548 /* ~"Je peux te poser quelques questions ?"~ */ GOTO 4
  IF ~~ THEN REPLY #46549 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #46515 /* ~Norochj secoue la tête, et repique du nez dans son verre.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46550 /* ~"Quelque chose ne va pas ? Tu as l'air inquiet."~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46551 /* ~"Attends. Emoric m'a dit de te parler."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46609 /* ~"Je viens pour l'affiche placardée dehors."~ */ GOTO 6
  IF ~~ THEN REPLY #46610 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.10 3.0 4.0 9.10 10.10 11.10
  SAY #46516 /* ~Norochj touche son visage et trace du doigt la forme de ses sourcils froncés. "Ennuyé, oui".~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46553 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46554 /* ~"Emoric m'a dit de te parler."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46611 /* ~"Je viens pour l'affiche placardée dehors."~ */ GOTO 6
  IF ~~ THEN REPLY #46612 /* ~"Je ne pense pas pouvoir t'aider à résoudre tes problèmes. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.11 3.1 4.2 5.0 5.2
  SAY #46517 /* ~L'Homme-Poussière t'inspecte des pieds à la tête. "De nombreux ennuis ai-je. Peux-tu ton aide apporter ? Un mausolée éveillé, les morts qui marchent, les morts dérangés, les Hommes-Poussière troublés. Trouve ce qui dérange les morts-vivants, et des pièces de cuivre je paierai."~ */
  IF ~~ THEN REPLY #46556 /* ~"Très bien. Où est ce mausolée ?"~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",1)
~ JOURNAL #17134 /* ~Norochj, un Homme-Poussière que j'ai rencontré au bar de la Poussière accumulée, m'a parlé d'un mausolée où les morts marchent. Il m'a dit que l'entrée de ce lieu se situait au nord-ouest du Mémorial Homme-Poussière, en dehors de la Morgue. Selon lui, je dois m'approcher de l'arche et tracer un demi-cercle au-dessus de mon cœur à l'aide de mon index droit, après quoi l'entrée s'ouvrira. Si je parviens à résoudre le problème du mausolée, je reviendrai le dire à Norochj.~ */ GOTO 13
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46557 /* ~"Et bien, je ne vois pas ce que je peux faire pour toi. Emoric m'a dit de te parler d'autre chose."~ */ GOTO 12
  IF ~~ THEN REPLY #46558 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.0
  SAY #46518 /* ~Norochj acquiesce. "Le trouver, je peux pas. Très important pour les Hommes-Poussière."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46559 /* ~"Ne t'inquiète pas, je l'ai déjà trouvé. Pas de risque qu'il rejoue un tel tour à qui que ce soit…"~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Heureusement, je m'étais déjà occupé de Manteau-de-Cendre. Je n'ai donc plus eu qu'à aller chercher la récompense.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46560 /* ~"Ne t'inquiète pas, je l'ai déjà trouvé. Pas de risque qu'il rejoue un tel tour à qui que ce soit…"~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Heureusement, je m'étais déjà occupé de Manteau-de-Cendre. Je n'ai donc plus eu qu'à aller chercher la récompense.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46561 /* ~"Ne t'inquiète pas, je l'ai déjà trouvé. Pas de risque qu'il rejoue un tel tour à qui que ce soit…"~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Heureusement, je m'étais déjà occupé de Manteau-de-Cendre. Je n'ai donc plus eu qu'à aller chercher la récompense.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Dead("Ashman")
~ THEN REPLY #46562 /* ~"Ne t'inquiète pas, je l'ai déjà trouvé et je l'ai aidé à quitter cette vallée de larmes."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Heureusement, j'avais déjà tué le vieux Manteau de Cendre ; j'ai donc récupéré la récompense.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Dead("Ashman")
~ THEN REPLY #46563 /* ~"Ne t'inquiète pas, je l'ai déjà trouvé et je l'ai aidé à quitter cette vallée de larmes."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Heureusement, j'avais déjà tué le vieux Manteau de Cendre ; j'ai donc récupéré la récompense.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Dead("Ashman")
~ THEN REPLY #62897 /* ~"Ne t'inquiète pas, je l'ai déjà trouvé et je l'ai aidé à quitter cette vallée de larmes."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ GOTO 9
  IF ~  Dead("Mochai")
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62898 /* ~"Ne t'en fais pas, je l'ai trouvée et aidée à quitter cette vallée de larmes."~ */ GOTO 15
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62899 /* ~"Je peux peut-être le retrouver pour toi."~ */ GOTO 8
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62900 /* ~"Je peux peut-être le retrouver pour toi… À condition que tu me paies."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Norochj_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #62901 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7 7.8
  SAY #46519 /* ~Norochj acquiesce de nouveau. "Pour que mes ennuis deviennent tes ennuis, des pièces de cuivre je paierai. Trouve le non-Homme-Poussière, occupe-t'en et reviens. Norochj attendra."~ */
  IF ~~ THEN REPLY #46568 /* ~"Très bien. Je reviendrai quand j'aurai trouvé ce… 'non-Homme-Poussière'. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 2.5 2.8 7.2 7.5 9.2 9.5 9.8 10.2 10.5 10.8 11.2 11.5 11.8 15.2 15.5 16.2 16.5
  SAY #46520 /* ~Les traits soucieux de Norochj s'apaisent au fur et à mesure que tu parles. "Merci, je dis." Il fouille dans les plis de sa robe et en sort un petit sac, qu'il te tend. "Des pièces. Cent".~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46569 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46570 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46571 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46572 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46573 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46574 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46575 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46576 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46577 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62902 /* ~"J'ai trouvé… celle qui n'était pas Homme-Poussière. Elle est si morte à présent qu'elle ne risque plus de détrousser quelqu'un."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62903 /* ~"Il y a autre chose qui te préoccupe ?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #62904 /* ~"Au fait, Emoric m'a dit de te parler d'autre chose."~ */ GOTO 12
  IF ~~ THEN REPLY #62905 /* ~"Merci… Je suis content d'avoir pu t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.4 2.7 7.1 7.4 9.1 9.4 9.7 10.1 10.4 10.7 11.1 11.4 11.7 15.1 15.4 16.1 16.4
  SAY #46521 /* ~Les traits soucieux de Norochj s'apaisent au fur et à mesure que tu parles. "Merci, je dis". Il fouille dans les plis de sa robe et en sort un petit sac, qu'il te tend. "Des pièces. Deux fois cent".~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46581 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46582 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46583 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46584 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46585 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46586 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46587 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46588 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46589 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62906 /* ~"J'ai trouvé… celle qui n'était pas Homme-Poussière. Elle est si morte à présent qu'elle ne risque plus de détrousser quelqu'un."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62911 /* ~"Il y a autre chose qui te préoccupe ?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62912 /* ~"Au fait, Emoric m'a dit de te parler d'autre chose."~ */ EXIT
  IF ~~ THEN REPLY #62913 /* ~"Merci… Je suis content d'avoir pu t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.0 2.3 2.6 7.0 7.3 9.0 9.3 9.6 10.0 10.3 10.6 11.0 11.3 11.6 15.0 15.3 16.0 16.3
  SAY #46522 /* ~Les traits soucieux de Norochj s'apaisent au fur et à mesure que tu parles. "Merci, je dis." Il plonge la main dans sa poche et en sort un petit sac, qu'il te tend. "Des pièces. Trois fois cent. Et…" De nouveau, sa main disparaît dans les plis de sa robe, et il en tire un rouleau de bandages qu'il te jette. "Plus besoin que moi, je crois."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46593 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46594 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46595 /* ~"J'ai découvert ce qui se passait dans le mausolée. Les morts dorment de nouveau."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Je suis retourné voir Norochj et je lui ai dit que j'avais réglé le problème du mausolée.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46596 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46597 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46598 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~J'ai trouvé et réglé son compte à Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46599 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46600 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46601 /* ~"J'ai trouvé le… non-Homme-Poussière. Maintenant qu'il est mort, il ne volera plus personne."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~J'ai trouvé et abattu Manteau de Cendre ; Norochj m'a donc donné ma récompense.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #64430 /* ~"J'ai trouvé… celle qui n'était pas Homme-Poussière. Elle est si morte à présent qu'elle ne risque plus de détrousser quelqu'un."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46602 /* ~"Il y a autre chose qui te préoccupe ?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46603 /* ~"Au fait, Emoric m'a dit de te parler d'autre chose."~ */ GOTO 12
  IF ~~ THEN REPLY #46604 /* ~"Merci… Je suis content d'avoir pu t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 3.2 4.1 5.1 6.1 9.11 11.11
  SAY #46523 /* ~"Emoric envoyé toi à moi." Il t'observe un instant, puis soupire et se montre du doigt. "Norochj est Homme-Poussière. Garde. Sert et protège intérêts et réputation Hommes-Poussière." Nouveau soupir. "Beaucoup voleurs dans Ruche. Un voleur porte robe d'Homme-Poussière, mais Homme-Poussière pas."~ */
  IF ~~ THEN REPLY #46605 /* ~"Il y a un voleur déguisé en Homme-Poussière ?"~ */ DO ~SetGlobal("Dustman_Pickpocket","GLOBAL",1)
~ JOURNAL #17075 /* ~Obéissant à Emoric, j'ai parlé avec Norochj, l'Homme-Poussière. Il cherche actuellement, mais sans succès, à attraper un voleur qui se fait passer pour un Homme-Poussière.~ */ GOTO 7
  IF ~~ THEN REPLY #46606 /* ~"Je ne crois pas que je puisse t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #46524 /* ~Norochj acquiesce. "Mausolée près du mémorial homme-poussière. Va au nord-ouest du monument noir, va à l'arche et un demi-cercle sur ton cœur avec ce doigt trace". Il agite l'index de sa main droite. "Au mausolée, tu vas."~ */
  IF ~~ THEN REPLY #46607 /* ~"Alors, je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #46525 /* ~Norochj soupire et tire sur une de ses mèches. "Les Hommes-Poussière ont fait serment de jamais entrer dans mausolée. Le serment aux morts. Impossible. Que les non-Hommes-Poussière peuvent entrer."~ */
  IF ~~ THEN REPLY #46608 /* ~"Alors, je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.9 7.6 9.9 10.9 11.9
  SAY #61163 /* ~Norochj ferme les yeux un moment sans rien dire. "Tu as trouvé le non-Homme-Poussière. Tu *l'as* tué ?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61164 /* ~"Oh, lui ? Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61166 /* ~"Oh, lui ? Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61167 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61168 /* ~"Oh, euh, oui, je voulais dire *lui*. Il ne volera plus personne dans cette cité."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61170 /* ~"Oh, euh, oui, je voulais dire *lui*. Il ne volera plus personne dans cette cité."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61171 /* ~"Oh, euh, oui, je voulais dire *lui*. Il ne volera plus personne dans cette cité."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61173 /* ~"Euh, non, il y avait une *femme* au bar du Cadavre fumant qui ne faisant pas partie des Homme-Poussière, et je…"~ */ DO ~SetGlobal("Mochai_Norochj_Pickpocket","GLOBAL",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.6
  SAY #61174 /* ~"Le non-Homme-Poussière n'est pas une femme. Le non-Homme-Poussière est un homme."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61175 /* ~"Oh, lui ? Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61179 /* ~"Oh, lui ? Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61180 /* ~"J'ai trouvé le… non-Homme-Poussière. Il ne volera plus personne dans cette ville."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61181 /* ~"Oh, euh, oui, je voulais dire *lui*. Il ne volera plus personne dans cette cité."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61182 /* ~"Oh, euh, oui, je voulais dire *lui*. Il ne volera plus personne dans cette cité."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61183 /* ~"Oh, euh, oui, je voulais dire *lui*. Il ne volera plus personne dans cette cité."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61184 /* ~"Oh. Excuse cette pointe d'humour. Si je rencontre cet… *homme*… déguisé en Homme-Poussière, je t'avertirai. Au revoir."~ */ EXIT
END
