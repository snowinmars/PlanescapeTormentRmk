// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~"Encore toi ? Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #5827 /* ~Bats-toi.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~Pars.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~"Encore toi ? Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #5830 /* ~Bats-toi.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~"D'accord, bige… sors et il n'y aura pas de blessé."~ */
  IF ~~ THEN REPLY #5833 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~"Bon retour à la Grande Fonderie."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~"Merci. J'ai un objet à récupérer."~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~"Merci."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~"Bon retour à la Grande Fonderie."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~"Merci. J'ai un objet à récupérer."~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~"Merci."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~Tu aperçois un garde costaud à l'air blasé. "Explique-moi ce que tu fais ici."~ */
  IF ~~ THEN REPLY #5841 /* ~"Je fais juste un tour."~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~"Je suis là pour prendre une commande."~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~"Je suis là pour passer une commande."~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~"Qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~"J'aide Xander sur le faiseur de rêve."~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~"Je suis là pour utiliser le faiseur de rêve."~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~"J'ai un message pour Keldor de la part de Giltspur, le commissaire-priseur."~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~"Rien, désolé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~"Dans ce cas, je suppose que tu ne verras aucun inconvénient à passer ton chemin."~ */
  IF ~~ THEN REPLY #5849 /* ~"Est-ce que je peux entrer ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~"Pas du tout."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~"D'accord. Peut-on voir ton récépissé ?"~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~"Oui."~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~"Oui." (mensonge)~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~"Non."~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~"Je l'avais sur moi, j'en suis sûr…"~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~"Je suis désolé, mais nous n'acceptons pas de nouvelles commandes actuellement, en raison d'un grand projet en cours. Reviens dans un an. Merci d'être venu."~ */
  IF ~~ THEN REPLY #5857 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~"Je suis un garde des Adorateurs de la Source."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~"Les Adorateurs de la Source ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~"Oh. Je vois. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~"Je garde la porte."~ */
  IF ~~ THEN REPLY #5864 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~"Merci de m'avoir accordé un peu de ton temps."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~"Tu es devant la Grande Fonderie, demeure des Adorateurs de la Source."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~"Des quoi ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~"Qu'est-ce que c'est, la Grande Fonderie ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~"Oh. Merci. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~"Oh." (pars)~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~"Je te prie d'exposer la nature de ta requête."~ */
  IF ~~ THEN REPLY #5872 /* ~"Je fais juste un tour."~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~"Je suis là pour prendre une commande."~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~"Je suis là pour passer une commande."~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~"Qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~"Où sommes-nous ?"~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~"Rien du tout. Excuse-moi."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~"Pas tant que tu n'auras pas prouvé que tu es ici pour une affaire précise."~ */
  IF ~~ THEN REPLY #5880 /* ~"Je vois. Alors, j'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~"Je vois. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~"Merci. Le gratte-papier que tu cherches a ses quartiers dans la partie sud de la Grande Fonderie. Merci de ta fidélité à l'entreprise." Il t'ouvre la porte.~ */
  IF ~~ THEN REPLY #5883 /* ~Pars.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~"Tu ne sembles pas avoir de récépissé."~ */
  IF ~~ THEN REPLY #5885 /* ~"Je l'avais sur moi, j'en suis sûr…"~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~"Hum. Non. Mais j'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~"Dans ce cas, j'ai bien peur que tu sois obligé de partir."~ */
  IF ~~ THEN REPLY #5889 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~"Oui, je n'en doute pas. Mais, tant que tu n'auras pas prouvé que tu es ici pour une affaire précise, j'ai bien peur de ne pas pouvoir te laisser entrer."~ */
  IF ~~ THEN REPLY #5891 /* ~"Alors, j'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~"Oui. On nous appelle les Hommes-Dieux."~ */
  IF ~~ THEN REPLY #5894 /* ~"Pourquoi ?"~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~"Grand bien t'en fasse. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~"En plus d'être la demeure des Adorateurs de la Source, c'est aussi l'une des plus grandes fonderies que l'on connaisse. Il y a beaucoup de circulation ici ; nous recevons des commandes de tous les plans. En ce moment, nous n'acceptons plus de commandes, car la plupart de nos artisans travaillent sur un nouveau projet ou sont occupés pour plusieurs mois par de petites commandes. En d'autres termes, tu ne peux pas entrer, à moins que tu aies un récépissé indiquant que tu viens chercher quelque chose ou qu'une affaire urgente t'amène ici."~ */
  IF ~~ THEN REPLY #5897 /* ~"J'ai une affaire urgente à régler !"~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~"J'ai un récépissé !"~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~"Nous sommes l'une des quinze factions reconnues de Sigil. Nous pensons que chaque être renferme en lui une étincelle de divinité, ni bonne ni mauvaise, mais potentiellement divine. Nous pensons qu'il y a quelque chose de plus grand au-delà de la divinité. Nous pensons que chaque vie a un but, et notre rôle est d'identifier ces buts. Chaque étape de notre vie nous pousse vers la grandeur."~ */
  IF ~~ THEN REPLY #5901 /* ~"Ça a l'air important."~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~"Je suis content pour toi. Tu comptes me laisser entrer ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~"Nous le croyons. Est-ce que je peux faire quelque chose pour toi ?"~ */
  IF ~~ THEN REPLY #5904 /* ~"Oui. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~"Non."~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~"Non merci."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~"Oui. Entre."~ */
  IF ~~ THEN REPLY #5908 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~"Oui. On nous a parlé de toi. Entre."~ */
  IF ~~ THEN REPLY #6481 /* ~Merci.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~Le garde t'observe un moment avec une expression indéchiffrable. "Bonne chance. Entre."~ */
  IF ~~ THEN REPLY #6483 /* ~Merci.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~"Déjà de retour ? Tu as encore à faire à l'intérieur, j'imagine… laisse bien la cour propre derrière toi."~ */
  IF ~~ THEN REPLY #66286 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~"Merci, monsieur. Tu le trouveras dans le grand hall des Hommes-Dieux." Il t'ouvre la porte.~ */
  IF ~~ THEN REPLY #67932 /* ~"Merci."~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
