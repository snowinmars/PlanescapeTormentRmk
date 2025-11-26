// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~"Alors, comme ça, c'est toi dont on parle tant ? En effet… tu as l'air menaçant. Allez, du balai."~ */
  IF ~~ THEN REPLY #5910 /* ~Tue le vieil homme.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~"J'aimerais vraiment t'aider, mon garçon, mais ça me causerait des ennuis. Allez, reviens quand les gardes ne seront plus après toi."~ */
  IF ~~ THEN REPLY #5913 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~Tu aperçois un vieillard ratatiné aux mains tremblantes et à l'air railleur. Il t'observe avec attention, puis parle : "Hum… Je ne t'ai pas déjà vu ? Ta tête me dit quelque chose."~ */
  IF ~~ THEN REPLY #5915 /* ~"Je suppose que c'est possible."~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~"Impossible, vieil homme."~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~"D'où ? Tu te souviens où ?"~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~"Je suis venu récupérer un objet."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~"J'ai besoin de chiffons et de matériel de forgeron."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~"Je cherche un déguisement."~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~"Qui es-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~"Je voudrais du matériel pour la forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~"C'est intéressant. Adieu, vieil homme."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~"Tu voulais autre chose ?"~ */
  IF ~~ THEN REPLY #5925 /* ~"Tu as dit que tu m'avais déjà rencontré. Tu te souviens où ?"~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~"Non, je voulais juste voir ton bon visage."~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~"Je suis venu récupérer un objet."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~"J'ai besoin de chiffons et de matériel de forgeron."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~"Je cherche un déguisement."~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~"Qui es-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~"Je voudrais du matériel pour la forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~"C'est intéressant. Adieu, vieil homme."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~"Je n'oublie jamais un visage… ça va me revenir… oh, et puis va donc à Baator !"~ */
  IF ~~ THEN REPLY #5934 /* ~"Tu te souviens où ? C'est important pour moi."~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~"Je suis venu récupérer un objet."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~"J'ai besoin de chiffons et de matériel de forgeron."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~"Je cherche un déguisement."~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~"Qui es-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~"Je voudrais du matériel pour la forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~"Je pourrais jurer avoir déjà vu ta tête quelque part. Tu n'aurais pas déjà commis des actes criminels ?" Le vieillard marmonne quelque chose. "Ah, laisse tomber. Ça me reviendra."~ */
  IF ~~ THEN REPLY #5942 /* ~"Bien. Alors, réponds à quelques questions pour moi."~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~"J'espère que non. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~"Pas si vite. Il faut du temps pour que l'esprit s'adapte à une tâche comme celle-là. J'ai pas mal roulé ma bosse, le temps de voir pas mal de visages. Pour sûr, la mémoire est un outil aléatoire."

Avant de répondre, tu grommelles : "À qui le dis-tu !"~ */
  IF ~~ THEN REPLY #5945 /* ~"Alors, laisse tomber. Je suis venu récupérer un objet."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~"Bon, très bien. J'ai besoin de chiffons et de matériel de forgeron."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~"Bien. Je cherche un déguisement."~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~"Alors, peux-tu me dire qui tu es ?"~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~"Alors, je voudrais du matériel pour la forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~"Bien. Salut."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~"Est-ce que t'as un récépissé ? Sans récépissé, je ne peux rien te donner."~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~"J'en ai deux ici."~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~"Bien sûr. Voilà."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~"Bien sûr. Voilà."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~"Oui, j'en ai un."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~"Bien sûr. Voilà."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~"Non."~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~"Ah ouais ? Bon, d'accord. Ça fera… disons… soixante pièces de cuivre."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~"Voilà."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~"Je n'ai pas cette somme."~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~"Un déguisement, tiens donc ? Je devine déjà pourquoi, et je te le laisse pour la modique somme de soixante pièces de cuivre."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~"Voilà."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~"Je n'ai pas cette somme."~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~"Moi ? Je suis Nadilin, guerrier Homme-Dieu fantastique !" Il soupire. "Du moins, je l'étais. Je suis maintenant gratte-papier à la Grande Fonderie, où je respire un air malsain et me rapproche de la mort jour après jour."~ */
  IF ~~ THEN REPLY #5971 /* ~"C'est dommage. J'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~"Bien. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~"Ah, tu veux devenir orfèvre, maintenant, hein ? Fort bien. Il te faut un tablier - dix pièces de cuivre - des pinces - encore dix pièces, et un marteau - vingt pièces. En tout, ça fait, voyons, cinquante pièces de cuivre.~ */
  IF ~~ THEN REPLY #5974 /* ~"Ça nous fait quarante pièces de cuivre, vieil homme."~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~Paie cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~Paie cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~"Excuse-moi, mais il me semble que ça fait plutôt quarante pièces de cuivre."~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~"Je ne crois pas en avoir besoin pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~"Sois béni, mon garçon. Et maintenant, si tu veux bien m'excuser, j'ai du temps à faire passer en regardant par la fenêtre."~ */
  IF ~~ THEN REPLY #5981 /* ~"Euh. Bien."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~"Je te les apporte tout de suite." Plusieurs minutes passent. Il revient en courant avec deux objets : un petit morceau de métal presque vaporeux et une masse finement ouvragée. "Cet objet a plus de cent ans ! Tu attends ça depuis longtemps, mon ami. Comment as-tu fait pour l'avoir ?"~ */
  IF ~~ THEN REPLY #5983 /* ~"Je l'avais mis de côté, mais j'ai été trop occupé."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~"Ça m'a été donné par ma famille."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~"C'était un héritage."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~Le vieillard prend ton récépissé et le compare aux documents qu'il possède. Il s'absente pendant une minute ou deux et revient avec une belle masse. "Voilà pour toi, mon gars."~ */
  IF ~~ THEN REPLY #5987 /* ~"Merci. J'ai quelques questions."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~"Merci. Au revoir."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~Le vieillard prend ton récépissé et l'examine avec attention. "Cette chose a plus de cent ans ! Comment te l'es-tu procurée ?"~ */
  IF ~~ THEN REPLY #5990 /* ~"Je l'avais mis de côté, mais j'ai été trop occupé."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~"Ça m'a été donné par ma famille."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~"C'était un héritage."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~Il s'arrête un instant. "Si tu as un récépissé, donne-le-moi. Sinon, je ne peux rien te donner. Maintenant, va-t'en. J'ai bien assez à faire comme ça sans avoir besoin qu'un étranger vienne me déranger."~ */
  IF ~~ THEN REPLY #5993 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~"Et voilà. Emmène-la loin d'ici pour que l'on n'ait plus à supporter sa traîtrise."~ */
  IF ~~ THEN REPLY #5995 /* ~Mensonge : "Quoi ? Ce n'est pas pour ça que j'en ai besoin !"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~"Comment es-tu au courant de ça ?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~"Merci beaucoup, vieil homme. Au revoir."~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~"Dans ce cas, j'ai bien peur de ne pas pouvoir te le donner."~ */
  IF ~~ THEN REPLY #5999 /* ~"Bien. Alors, réponds à quelques questions pour moi."~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~"D'accord. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~Il examine le récépissé avec attention et te regarde. "Ce n'est pas l'objet que je t'ai donné ? J'peux pas te le donner deux fois, tu sais." Il met le récépissé dans sa poche. "Maintenant, fiche le camp !"~ */
  IF ~~ THEN REPLY #6002 /* ~Pars.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~"Où est-ce que j'ai la tête ? Bien sûr. Je te l'ai dit, la mémoire est une chose insidieuse."~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~"C'est sûr. Donne-moi le matériel."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~"C'est sûr. Donne-moi le matériel."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~"Eh bien, c'est encore trop à mon goût."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~"N'oublie pas de demander du minerai à Thildon si tu veux travailler la forge. C'est une canaille de première, mais il n'y a qu'auprès de lui qu'on peut s'en procurer."~ */
  IF ~~ THEN REPLY #6008 /* ~"Merci. J'ai d'autres questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~"Merci. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~"Si tu veux travailler la forge, tu dois te procurer du minerai. Va voir la remplaçante de Thildon. Son nom m'échappe, mais elle ne devrait pas faire trop de difficulté."~ */
  IF ~~ THEN REPLY #6011 /* ~"Merci, vieil homme. J'ai quelques questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~"Merci à toi, adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~"En v'là une bonne, mon gars. T'as dû être sacrément occupé !" Il rit entre ses dents. Il tend ce qu'il porte. "Voilà. Prends-en bien soin, compris ?"~ */
  IF ~~ THEN REPLY #6014 /* ~"Ne t'inquiète pas pour ça. Mais j'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~"J'en ai bien l'intention. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~"Cet objet a traversé les générations, hein ? Une chance qu'on ne s'en soit pas débarrassé. C'est ce qu'on fait, parfois, ou on vend, quand on est sûr que le client ne reviendra pas chercher sa marchandise. Tiens, prends-le. Mais prends-en bien soin, compris ?"~ */
  IF ~~ THEN REPLY #6017 /* ~"Oui. Tu veux bien répondre à d'autres questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~"Je vois. C'est un sacré objet que tu as récupéré. Voilà, mon gars. Prends bien soin de ce bout de métal, compris ?"~ */
  IF ~~ THEN REPLY #6020 /* ~"Ne t'inquiète pas pour ça. Tu veux bien répondre à une question pour moi ?"~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~"Certainement. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~Il te regarde d'un air dégoûté. "Tu f'rais mieux de me faire confiance. T'as ce que tu voulais ? Maintenant, dégage avant que je décide d'appeler les gardes."~ */
  IF ~~ THEN REPLY #6023 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~"Je ne suis peut-être plus tout jeune, mais ça ne m'empêche pas d'être lucide. Bedai-Lihn est malheureuse depuis quelque temps, et elle n'a jamais apprécié de travailler pour les fiélons. Maintenant, file, j'ai du pain sur la planche."~ */
  IF ~~ THEN REPLY #6025 /* ~Pars.~ */ EXIT
END
