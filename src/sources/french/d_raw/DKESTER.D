// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~"Merci de ton aide. Je vais enseigner à mes amis ce qu'est l'organisation…" Il s'interrompt. "Encore que, quand je parle d'amis… vas-y, maintenant."~ */
  IF ~~ THEN REPLY #58986 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~Tu aperçois un homme mince à la peau très bronzée et aux yeux verts perçants. Il crie, comme si ton arrivée l'emplissait de joie. "Bienvenue dans la distillerie des Frères Malako ! Que puis-je faire pour toi aujourd'hui ?"~ */
  IF ~~ THEN REPLY #58988 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~"J'ai cru comprendre que tu avais quelques problèmes avec ton frère. J'aimerais t'aider."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~"As-tu entendu parler d'un deva dans cette ville ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~"C'est ton frère qui m'envoie. Il dit qu'il veut négocier à propos de l'héritage de votre père."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~"Je suis Kester Malako, gérant et copropriétaire de la Distillerie des Frères Malako. Tu veux acheter quelque chose ?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~"Copropriétaire ?"~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~"Qui est l'autre frère ?"~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~"Pas tout de suite, merci. J'ai cru comprendre que tu avais quelques problèmes avec ton frère."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~"As-tu entendu parler d'un deva dans cette ville ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~"Voyons ce que tu as."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~"C'est ton frère qui m'envoie. Il dit qu'il veut négocier à propos de l'héritage de votre père."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~Il te regarde de plus près. "C'est une distillerie. On vend toutes sortes de choses ici, des alcools et d'autres breuvages, comme les charmes et tout. Tu veux acheter quelque chose ?"~ */
  IF ~~ THEN REPLY #59008 /* ~"Oui."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~"Quoi, à Maudith ?" Il rit de bon cœur. "L'ami, si tu es à Maudith depuis assez longtemps, tu dois savoir qu'il n'y a pas de deva ici. Essaye à Fortitude ou dans l'une des villes situées de l'autre côté du Grand Anneau. Bon, tu veux m'acheter quelque chose ?"~ */
  IF ~~ THEN REPLY #59011 /* ~"Oui."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~"Oui, en effet. Mon frère a aussi des intérêts dans l'affaire, même si je devrais pas parler d'intérêts, vu le peu de temps qu'il y accorde. Bon, tu veux m'acheter quelque chose, oui ou non ?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~"Que peux-tu me dire à propos de ton frère ?"~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~"Oui. Qu'est-ce que tu as ?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~"C'est ton frère qui m'envoie. Il dit qu'il veut négocier à propos de l'héritage de votre père."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~Son visage s'assombrit. "Il s'appelle Poingfroissé. C'est le forgeron de la ville. Il fait tout pour que mes affaires s'écroulent, et… pourquoi est-ce que je te dis ça ? T'es qu'un étranger, après tout."~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~"J'aimerais t'aider."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~"Je ne sais pas. Qu'est-ce que tu as à vendre ?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~"Je ne sais pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~"Vraiment ? D'accord, regarde ça. C'est mon exemplaire du testament que notre père nous a laissé. Voilà : tu vois clairement que l'argent qu'on doit recevoir doit être utilisé pour faire des travaux dans la distillerie, et pas être simplement partagé entre nous deux. Pourtant, mon idiot de frère insiste pour prendre l'argent au lieu de bâtir pour l'avenir. Récupère son exemplaire du testament ou essaie de lui faire entendre raison, et je te récompenserai."~ */
  IF ~~ THEN REPLY #59022 /* ~"J'ai besoin d'examiner ta copie du testament."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~J'ai accepté d'aider Kester le distillateur, opposé à son frère Poingfroissé, le forgeron, pour une affaire d'héritage.~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~"Très bien. Je reviendrai. Au revoir."~ */ JOURNAL #59024 /* ~J'ai accepté d'aider Kester le distillateur, opposé à son frère Poingfroissé, le forgeron, pour une affaire d'héritage.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~Il te regarde d'un air méfiant puis se calme. "Si tu te débrouilles pour le faire mieux et plus vite, alors d'accord. Tiens." Il te le passe.~ */
  IF ~~ THEN REPLY #59026 /* ~"Génial. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~"Bienvenue chez les Frères Malako ! Que puis-je faire pour toi aujourd'hui ?"~ */
  IF ~~ THEN REPLY #59028 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~"J'ai cru comprendre que tu avais quelques problèmes avec ton frère. J'aimerais t'aider."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~"As-tu entendu parler d'un deva dans cette ville ?"~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~"C'est ton frère qui m'envoie. Il dit qu'il veut négocier à propos de l'héritage de votre père."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~"Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #59035 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~"J'ai convaincu ton frère d'accepter de négocier. Es-tu d'accord ?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~"J'ai convaincu ton frère d'accepter de négocier. Es-tu d'accord ?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~"Ton frère m'a offert de l'argent pour régler votre dispute de cette manière."~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~"Eh bien… malédiction ! D'accord. Voici mon exemplaire du testament. Jettes-y un coup d'œil et dis-nous ce que tu as décidé."~ */
  IF ~~ THEN REPLY #59042 /* ~"Je reviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~"Eh bien… malédiction ! D'accord. Jette un coup d'œil à nos testaments et dis-nous ce que tu as décidé."~ */
  IF ~~ THEN REPLY #59044 /* ~"Je reviendrai. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~"Est-ce que tu as pris une décision ?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~"J'ai pris une décision en ta faveur. Après avoir lu le testament, il est clair que tu devrais recevoir l'intégralité de l'héritage."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~"J'ai décidé que ton frère devait recevoir l'intégralité de l'argent. Il est clair qu'il a raison."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~J'ai mis un terme au différend opposant le distillateur au forgeron en faveur du second. Ça n'a pas fait plaisir au distillateur.~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~"Vous devriez partager équitablement l'argent. Il est clair que c'est ce que voulait votre père."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~"Aucun d'entre vous ne mérite cet argent. Je transmettrai votre legs à quelqu'un qui utilisera convenablement l'argent. Au revoir."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~J'ai mis un terme au différend opposant le distillateur au forgeron en les arnaquant tous les deux. Ça ne leur a vraiment pas fait plaisir.~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~"Pas encore. Mais j'aimerais jeter un œil à tes marchandises."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~"Ah, vraiment ? Eh bien, je ferai en sorte que ta récompense soit plus importante si tu penches en ma faveur… prends son exemplaire du testament et essaie de le convaincre de te laisser juger l'affaire. Tu obtiendras aussi une belle récompense. Qu'est-ce que tu en dis ?"~ */
  IF ~~ THEN REPLY #59022 /* ~"J'ai besoin d'examiner ta copie du testament."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~"Marché conclu. Je vais lui parler. Au revoir."~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~"Je crois que je vais prendre son parti. Il devrait hériter de la totalité."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~"HA ! Ha ha ha ha ! Je le savais !" Il place une sacoche pleine de pièces dans ta main. "Je te remercie l'ami, et reviens quand tu veux ! Si tu veux bien m'excuser, je vais me servir un verre !"~ */
  IF ~~ THEN REPLY #59057 /* ~"Bien sûr. Au revoir."~ */ JOURNAL #59004 /* ~J'ai mis un terme au différend opposant le distillateur au forgeron en faveur du premier. Il m'a offert un sac de pièces en guise de récompense.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~Son visage devient écarlate et il se met à hurler. "QUOI ? ESPÈCE DE FOUTU TRAÎTRE ! VOLEUR ! FICHE LE CAMP DE MA BOUTIQUE ! DEHORS !"~ */
  IF ~~ THEN REPLY #59059 /* ~"D'accord, d'accord, je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~Il bredouille, "Mais… mais… c'est juste… mais…" Il soupire. "D'accord. J'ai dit que j'accepterais ta décision, mais ne t'attends pas à ce que je te remercie. Fiche le camp de ma boutique." Il te passe une sacoche pleine de pièces. "Je t'ai promis cet argent alors le voilà. Prends-le."~ */
  IF ~~ THEN REPLY #59061 /* ~"Merci. Au revoir."~ */ JOURNAL #61386 /* ~J'ai réglé le problème de l'héritage en disant que les deux frères devaient tout se partager à parts égales.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~"Ah, tu es de retour ! Qu'est-ce que je peux faire pour toi ?" Il est d'une gaieté communicative.~ */
  IF ~~ THEN REPLY #59063 /* ~"J'aimerais juste jeter un œil à tes marchandises."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~"Fiche le camp de ma boutique avant que j'appelle les gardes ! Hors de ma vue !"~ */
  IF ~~ THEN REPLY #59067 /* ~"Très bien. Je m'en vais."~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~"À l'aide ! Arrête-les !"~ */
  IF ~~ THEN REPLY #67919 /* ~"Je vais voir ce que je peux faire…"~ */ EXIT
END
