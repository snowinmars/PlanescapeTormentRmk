// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #986 /* ~"Hé, chef. Ça va ? Tu fais le mort ou t'essaies de tromper les Hommes-Poussière ? J'ai vraiment cru que tu étais mort."~ */
  IF ~~ THEN REPLY #987 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #989 /* ~Ignore le crâne parlant et explore la pièce.~ */ EXIT
  IF ~~ THEN REPLY #988 /* ~Respire à fond, secoue la tête et ignore le crâne qui te parle.~ */ EXIT
  IF ~~ THEN REPLY #17833 /* ~"Je suis sûr que tu as des milliers de choses intelligentes à dire, Morte, mais j'ai besoin que tu te taises, que tu ranges tes billes et que tu me rejoignes MAINTENANT."~ */ DO ~GiveItem("KeyPR",Protagonist)
SetGlobal("Morte","GLOBAL",1)
SetGlobal("Scars","GLOBAL",1)
ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 29.0 31.0
  SAY #990 /* ~"Moi ?" Le crâne semble indigné. "Et *toi* d'abord, galeux ? Qui es-tu ?"~ */
  IF ~~ THEN REPLY #992 /* ~"Je… je ne sais pas."~ */ GOTO 2
  IF ~~ THEN REPLY #995 /* ~"Je ne sais pas… Visiblement, j'ai tout oublié."~ */ GOTO 3
  IF ~~ THEN REPLY #993 /* ~"Je t'ai posé la question en premier, crâne."~ */ GOTO 4
  IF ~~ THEN REPLY #991 /* ~Ignore le crâne et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0
  SAY #997 /* ~"Tu ne sais pas qui tu es, hein ? Tu aurais pu dire 'Va caguer, bige'. Bon, c'est pas grave… Fais comme si t'étais un béjaune. Je m'en fiche. Je suis Morte. Salut, et enchanté."~ */
  IF ~~ THEN REPLY #998 /* ~"Je suis où, Morte ?"~ */ GOTO 6
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1006 /* ~"Tu sais comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1080 /* ~"Comment j'ai atterri ici ?"~ */ GOTO 20
  IF ~~ THEN REPLY #1087 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1 5.1
  SAY #999 /* ~"Tu ne te *souviens* pas ? Tu as dû passer une sacrée nuit ! J'espère que personne n'a été blessé… Mon nom, c'est Morte. Salut, et enchanté." Il s'arrête. "Dis-moi *une* chose : tu fais partie des Sensats qui pratiquent l'automutilation ou bien c'est quelqu'un qui t'a fait ces cicatrices ?"~ */
  IF ~~ THEN REPLY #1000 /* ~"Un Sensat ?"~ */ GOTO 12
  IF ~~ THEN REPLY #1001 /* ~"Des cicatrices ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1002 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #1003 /* ~"Ouais, et moi le deuxième. C'est quoi ton nom ?"~ */
  IF ~~ THEN REPLY #1004 /* ~"Je… ne sais pas."~ */ GOTO 2
  IF ~~ THEN REPLY #1005 /* ~"Je ne sais pas… Je ne m'en souviens pas."~ */ GOTO 3
  IF ~~ THEN REPLY #1007 /* ~"Réponds-moi d'abord, crâne."~ */ GOTO 5
  IF ~~ THEN REPLY #994 /* ~Ignore le crâne et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #1008 /* ~"T'es vraiment coincé, y a pas à dire. Ça va, ça va… *Je* vais jouer le type sympa… Moi, c'est Morte. Morte Rictus. Et maintenant, quel est ce prénom assez malchanceux pour t'avoir comme maître ?"~ */
  IF ~~ THEN REPLY #1009 /* ~"Je… je ne sais pas."~ */ GOTO 2
  IF ~~ THEN REPLY #1010 /* ~"Je ne sais pas… Visiblement, j'ai tout oublié."~ */ GOTO 3
  IF ~~ THEN REPLY #1011 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 29.1 31.1
  SAY #1012 /* ~"Tu es dans ce trou appelé la Morgue… c'est une immense structure noire aussi accueillante qu'une prison."~ */
  IF ~~ THEN REPLY #1013 /* ~"'La Morgue' ? Je suis mort ?"~ */ GOTO 7
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1015 /* ~"Comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1085 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #1014 /* ~"Ben, j'en sais rien… mais il n'y a pas d'autre Morgue dans ce bled. Les biges apportent les cadavres ici. Ils les enterrent, ils les brûlent, et s'ils ont de la chance, ils seront ressuscités en tant qu'esclaves. Ce n'est pas le meilleur endroit des plans. À ta place, je chercherais la sortie la plus proche et je jouerais un air à cet endroit."~ */
  IF ~~ THEN REPLY #1016 /* ~"Pardon… La 'Morgue' ? C'est quoi cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #1017 /* ~"Ressuscités en tant qu'esclaves ?"~ */ GOTO 9
  IF ~~ THEN REPLY #1018 /* ~"Tant que je peux encore marcher ?"~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1019 /* ~"Tu dis que des gens traînent des corps morts ici ? Et c'est comme ça que j'ai atterri ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #1020 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.3
  SAY #1021 /* ~Il s'arrête. "Ouais, je suppose. L'un de ces bons à rien t'a cru mort et t'a ramené ici. Tu m'as bien eu avec ton simulacre… Tu devrais plutôt retrouver le bige qui t'a amené ici et lui poser la question, hein ?" Morte acquiesce. "Pas mal réfléchi pour un mort encore chaud… Je vois que ta caboche fonctionne toujours."~ */
  IF ~~ THEN REPLY #1029 /* ~"Pourquoi quelqu'un m'aurait amené ici ?"~ */ GOTO 14
  IF ~~ THEN REPLY #1030 /* ~"J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1137 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #1022 /* ~"Ouais, c'est une vie agréable… mis à part les applications quasi constantes de formol et les points de suture, c'est le paradis."~ */
  IF ~~ THEN REPLY #1113 /* ~"Je suis censé être ici ? Je suis mort ?"~ */ GOTO 7
  IF ~~ THEN REPLY #1114 /* ~"De quoi j'ai l'air ? J'ai beaucoup de cicatrices ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1115 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1116 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #1023 /* ~"Euh… comme je te l'ai déjà dit, la Morgue. Est-ce que ça va ? Tu n'as pas l'air dans ton assiette."~ */
  IF ~~ THEN REPLY #1109 /* ~"Je suis censé être ici ? Je suis mort ?"~ */ GOTO 16
  IF ~~ THEN REPLY #1110 /* ~"De quoi *j'ai* l'air ? J'ai beaucoup de cicatrices ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1111 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1112 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #1024 /* ~"De mon point de vue, chef, il y avait peu de chances que tu t'en remettes. On dirait que tu t'apprêtes à régler ton ardoise, si tu vois ce que je veux dire."~ */
  IF ~~ THEN REPLY #1133 /* ~"Je suis mort ? Et c'est pour ça que je suis ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #1134 /* ~"De quoi j'ai l'air ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1135 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1136 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.0 33.0
  SAY #1025 /* ~"Tu connais pas les Sensats ? Oh, *tu* vas être épaté ! Ce sont des lascars qui font tout ce qui est possible de faire dans les plans, et même… laisse tomber. C'est quoi, ces cicatrices ?"~ */
  IF ~~ THEN REPLY #1027 /* ~"Des cicatrices ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1028 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1143 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.1 9.1 10.1 11.1 12.0 33.1
  SAY #1026 /* ~"C'est comme si un lascar avait décidé de te peindre avec un couteau. Tu as des cicatrices partout… même sur le dos." Il s'arrête. "Eh, bige, tu as toute une galerie de tatouages dans le dos. Il y a un message."~ */
  IF ~~ THEN REPLY #1088 /* ~"Qu'est-ce que ça dit ?"~ */ DO ~SetGlobal("Scars","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #1089 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1090 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.0 29.3
  SAY #1031 /* ~"Certaines personnes dans ce bled ramassent les morts dans la rue et les vendent contre du jonc. C'est pas joli-joli de joindre les deux bouts comme ça, mais ici, c'est le pot de chambre des plans et les options sont limitées."~ */
  IF ~~ THEN REPLY #1032 /* ~"Du jonc ? C'est quoi, du 'jonc' ?"~ */ GOTO 15
  IF ~~ THEN REPLY #1033 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1142 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #1034 /* ~"Eh… l'argent. Le jonc, c'est de l'argent. Il n'y en avait pas là d'où tu viens ?"~ */
  IF ~~ THEN REPLY #1035 /* ~"Je ne me souviens pas d'où je viens."~ */ GOTO 19
  IF ~~ THEN REPLY #1036 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1138 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0
  SAY #1037 /* ~Il s'arrête. "Je sais pas. Tu *me* poses de ces questions… Les morts-vivants ne font pas ça par ici. À mon avis, les Hommes-Poussière se sont trompés ; tu n'étais pas mort. Tu te souviens pas avoir signé un contrat ? D'habitude, ils remplissent un tas de documents juridiques avant de sortir quelqu'un du livre des morts."~ */
  IF ~~ THEN REPLY #1038 /* ~"Euh… un contrat ? Non, je ne me souviens pas en avoir signé un. En fait, je ne me souviens pas de grand-chose."~ */ GOTO 32
  IF ~~ THEN REPLY #1039 /* ~"Le livre des morts ?"~ */ GOTO 17
  IF ~~ THEN REPLY #1040 /* ~"Juridiques ?"~ */ GOTO 18
  IF ~~ THEN REPLY #1041 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1150 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.0
  SAY #1042 /* ~"Ouais, le 'livre des morts'. Tu connais ? Euh… peut-être pas. Écoute, oublie le 'livre des morts'. Si tu es vivant, ça veut dire que tu n'es pas dedans."~ */
  IF ~~ THEN REPLY #1151 /* ~"C'était quoi ce contrat… juridique… ce truc dont tu as parlé ?"~ */ GOTO 18
  IF ~~ THEN REPLY #1152 /* ~"J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1153 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #1043 /* ~"Ouais, ça te donne pas envie de tout casser ? C'est la loi qui régit Sigil. Tu peux même pas soulager ta vessie sans avoir à signer un contrat."~ */
  IF ~~ THEN REPLY #1154 /* ~"Qu'est-ce que tu disais à propos du 'livre des morts' ?"~ */ GOTO 17
  IF ~~ THEN REPLY #1155 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1156 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #1044 /* ~"Par tous les dieux, on dirait que *tu* es complètement paumé. Tu n'as aucune idée de l'endroit d'où tu viens ? Quelque part, une nation de Béjaunes a perdu son roi. Tu le fais exprès ou tu as toujours été aussi bête ?"~ */
  IF ~~ THEN REPLY #1139 /* ~"Je ne sais pas… Je ne me souviens de rien."~ */ GOTO 32
  IF ~~ THEN REPLY #1140 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1141 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2 31.2
  SAY #1045 /* ~"Chef, je n'en ai pas la moindre idée. En tout cas, tu sais vraiment bien jouer le mort. Quand tu étais allongé là, je n'ai pas vu ta poitrine bouger ou tes yeux ciller… rien. Est-ce que tu avais bu ? C'est ce qu'il s'est passé ?"~ */
  IF ~~ THEN REPLY #1097 /* ~"Je ne sais pas… Je ne me souviens de rien."~ */ GOTO 32
  IF ~~ THEN REPLY #1098 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1099 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
  SAY #1046 /* ~"Eh ben, en *voilà* une bonne question. Le temps presse, chef. Si les Hommes-Poussière te trouvent, ils tenteront de corriger ton 'problème' de résurrection en te jetant dans le crématorium. Si tu continues à faire le mort, tu finiras de toute façon au crématorium. Un vrai dilemme de modrone, hein ? Que faire ?"~ */
  IF ~~ THEN REPLY #1047 /* ~"Des Hommes-Poussière ?"~ */ GOTO 30
  IF ~~ THEN REPLY #1048 /* ~"Je… je m'échapperai."~ */ GOTO 22
  IF ~~ THEN REPLY #1049 /* ~"J'expliquerai la situation à ces… Hommes-Poussière."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #1050 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1051 /* ~"Pourquoi tu ne me le dis pas ? On dirait que tu as déjà une réponse."~ */ GOTO 23
  IF ~~ THEN REPLY #1081 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #1052 /* ~"Oh, *bonne* idée, chef ! Pourquoi n'y ai-*je* pas pensé ? Comment vas-tu t'échapper, hein ? Je vais te donner une piste. Cela demande un peu de coopération de ta part."~ */
  IF ~~ THEN REPLY #1053 /* ~"Ça m'intéresse. Continue à parler."~ */ GOTO 23
  IF ~~ THEN REPLY #1054 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1145 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.3 21.4 22.0 26.0
  SAY #1055 /* ~"Tel que je le vois, tu dois sortir d'ici, c'est évident. Moi, je peux me permettre d'attendre. Tout ce que *je* risque, c'est de mourir d'ennui. On pourrait se donner un coup de main."~ */
  IF ~~ THEN REPLY #1058 /* ~"Continue à parler…"~ */ GOTO 24
  IF ~~ THEN REPLY #1059 /* ~"Tu n'as pas de mains. Qu'est-ce que *tu* pourrais bien faire pour m'aider ?"~ */ GOTO 24
  IF ~~ THEN REPLY #1060 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1146 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #1061 /* ~"Ça n'a peut-être pas l'air évident à première vue, mais je peux t'aider à sortir de là. Étant manchot, ça me pose un petit problème. Toi, il te manque quelque chose dans la boîte crânienne alors que moi j'ai suffisamment d'expérience et de savoir-faire pour te sortir de ce bouge. On coopère et on s'en sort tous les deux. Ça marche, bige ?"~ */
  IF ~~ THEN REPLY #1057 /* ~"C'est d'accord."~ */ GOTO 28
  IF ~~ THEN REPLY #1062 /* ~"D'accord. J'ai le mauvais pressentiment que le destin veut qu'on voyage ensemble, Morte."~ */ GOTO 27
  IF ~~ THEN REPLY #1063 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1147 /* ~"Non merci. Te parler est suffisamment pénible. Je trouverai moi-même un moyen de sortir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY #1064 /* ~"Oh, *bonne* idée, chef ! Pourquoi n'y ai-je pas pensé ?" Il prend un ton moqueur. "Hé, M. Homme-Poussière, j'étais mort et je me suis réveillé dans votre petite Morgue. Pouvez-vous m'aider ?" C'est sûr qu'ils vont t'aider ! Ils te regarderont quelques secondes, appelleront les gardes et te jetteront dans un four rien que pour toi."~ */
  IF ~~ THEN REPLY #1065 /* ~"Ça me paraît un peu extrême… Pourquoi ils feraient ça ?"~ */ GOTO 26
  IF ~~ THEN REPLY #1066 /* ~"Eh bien, leurs gardes ont intérêt à être costauds pour venir à bout de moi."~ */ GOTO 26
  IF ~~ THEN REPLY #1067 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1149 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1068 /* ~"Fais-moi confiance… Quoi que tu fasses, quoi que tu dises, ils t'auront. Tu n'es pas assez fort pour briser une tombe de pierre ou survivre à la chaleur du Plan Élémentaire du Feu. C'est déjà assez dur comme ça de revenir d'entre les morts. Ne fais pas l'idiot."~ */
  IF ~~ THEN REPLY #1069 /* ~"Alors, ton plan, c'est… ?"~ */ GOTO 23
  IF ~~ THEN REPLY #1070 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1148 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #1071 /* ~"Au diable le destin, pour ce que j'en ai à faire. Écoute, chef. Observe combien de fois les mots 'mauvais' et 'destin' se retrouvent dans la même phrase et tu comprendras l'un des petits mystères de la vie. Le destin peut bien aller se faire pendre avec du lierre-rasoir. Il existe *toujours* une alternative."~ */
  IF ~~ THEN REPLY #1073 /* ~"Je m'en souviendrai."~ */ GOTO 28
  IF ~~ THEN REPLY #1074 /* ~"Assez parlé. C'est quoi ton super plan ?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 24.0 27.0 27.1
  SAY #1072 /* ~"D'accord… bon, allez, jouons un air à cet endroit. Les portes là-bas sont fermées à clé. Il nous faut la clé. Il y a des chances pour que l'un des cadavres qui déambulent dans la pièce l'ait.~ */
  IF ~~ THEN REPLY #1079 /* ~"Des cadavres qui déambulent ?"~ */ DO ~SetGlobal("Morte","GLOBAL",1)
ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 240
END

IF ~~ THEN BEGIN 29 // from:
  SAY #996 /* ~"Alors comme ça, on se remet à parler à Morte *maintenant*, hein ?"~ */
  IF ~~ THEN REPLY #1075 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1076 /* ~"Où suis-je ?"~ */ GOTO 6
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1077 /* ~"Tu sais comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1078 /* ~"Comment j'ai atterri ici ?"~ */ GOTO 14
  IF ~~ THEN REPLY #1086 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0
  SAY #1082 /* ~"Les Hommes-Poussière ? Ils surveillent cet endroit. Tu ne peux pas les manquer… ils sont obsédés par la noirceur et la rigidité cadavérique du visage. Ils se font appeler 'les Hommes-Poussière' et se font passer pour une faction, mais ce n'est en fait qu'une bande de goules adoratrices de la mort."~ */
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1083 /* ~"Alors, comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1084 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1144 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
  SAY #1091 /* ~"Ouais ? Et *quelles* questions ?"~ */
  IF ~~ THEN REPLY #1092 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1093 /* ~"Où suis-je ?"~ */ GOTO 6
  IF ~~ THEN REPLY #1094 /* ~"Comment j'ai atterri ici ?"~ */ GOTO 20
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1095 /* ~"Comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1096 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.0 19.0 20.0
  SAY #1100 /* ~"Tu te souviens de *rien ?* Allez, tout ça, c'est des conneries de tanar'ri. T'es sérieux ?"~ */
  IF ~~ THEN REPLY #1101 /* ~"Oui."~ */ GOTO 33
  IF ~~ THEN REPLY #1102 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1103 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #1104 /* ~"Par tous les dieux et leurs mères… ben chef, y a des chances que tes souvenirs aient décidé de piquer une tête dans ta boîte grise. Avec un peu d'chance, ils remonteront bientôt prendre l'air, fais-moi confiance. T'as dû avoir une nuit bien arrosée. Reste à espérer que t'as blessé personne et que t'as pas eu d'ennuis avec les autorités… au fait, en parlant de ça, tu s'rais pas l'un d'ces Sensats qui aiment l'automutilation, ou est-ce que c'est quelqu'un qui t'a fait ces cicatrices ?"~ */
  IF ~~ THEN REPLY #1105 /* ~"Un Sensat ?"~ */ GOTO 12
  IF ~~ THEN REPLY #1106 /* ~"Des cicatrices ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1107 /* ~"J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1108 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #1117 /* ~"On dirait des directions…" Morte se racle la gorge. "Voyons. Ça commence par…"

^NREMARQUE : "Je sais que tu as l'impression d'avoir bu plusieurs barils d'eau du Styx, mais tu dois te ressaisir. Parmi tes biens, tu devrais trouver un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les parties manquantes de la chanson, s'il n'est pas déjà inscrit dans le livre des morts.
 
Ne perds ni ces lambeaux de chair NI ce journal, sinon nous finirons à nouveau dans le Styx, compris ? Et fais-moi confiance, quoi que tu fasses, NE DIS à personne QUI tu es, CE qui t'est arrivé, ni D'OÙ tu viens, sinon tu risques de te retrouver vite fait au crématorium."^~ */
  IF ~~ THEN REPLY #1118 /* ~"Pas étonnant que mon dos me fasse mal. Tu connais un certain Pharod ?"~ */ GOTO 36
  IF ~~ THEN REPLY #1119 /* ~"Tu as vu un journal sur moi lorsque j'étais étendu ici ?"~ */ GOTO 35
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1120 /* ~"Tu sais comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1121 /* ~"J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1122 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.1 36.0
  SAY #1123 /* ~"Non… tu es arrivé ici nu comme un ver. De toute façon, on dirait que tu as assez d'un roman écrit sur ton corps."~ */
  IF ~~ THEN REPLY #1124 /* ~"Tu connais un certain Pharod ?"~ */ GOTO 36
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1125 /* ~"Comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1126 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1127 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0 35.0
  SAY #1128 /* ~"Connais pas. Ceci dit, je ne connais pas grand monde. Mais il doit bien y avoir un bige qui sait où trouver ce type… une fois que nous serons sortis d'ici, évidemment."~ */
  IF ~~ THEN REPLY #1129 /* ~"J'avais un journal sur moi quand j'étais étendu ici ?"~ */ GOTO 35
  IF ~  Global("Scars","GLOBAL",1)
~ THEN REPLY #1130 /* ~"Comment je peux sortir d'ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1131 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #1132 /* ~Ignore Morte et explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #1818 /* ~"Quelle chance ! Nous avions probablement perdu ce que nous cherchions dans ta guitoune, ma belle."~ */
  IF ~~ THEN REPLY #1820 /* ~"En fait, j'ai perdu un journal."~ */ EXTERN ~DHARLOTN~ 2
  IF ~~ THEN REPLY #1819 /* ~"Tu pourrais peut-être m'aider à retrouver ce que j'ai perdu."~ */ EXTERN ~DHARLOTN~ 3
  IF ~~ THEN REPLY #1821 /* ~"Je n'ai rien perdu, mais j'ai quelques questions…"~ */ EXTERN ~DHARLOTN~ 9
  IF ~~ THEN REPLY #1822 /* ~"Je dois m'en aller. Au revoir."~ */ EXTERN ~DHARLOTN~ 11
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1844 /* ~"Chef, tu me passes un peu de jonc… ça… ça fait longtemps, tu sais."~ */
  IF ~~ THEN REPLY #1845 /* ~"Euh… eh bien, je suppose que ça ne peut pas *faire de mal*…"~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DHARLOTN~ 7
  IF ~~ THEN REPLY #1846 /* ~"Je ne vais même pas te demander comment tu as l'intention de t'y prendre."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DHARLOTN~ 7
  IF ~~ THEN REPLY #1847 /* ~"Écoute… On doit vraiment partir, Morte. Au revoir, mademoiselle."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #2000 /* ~"Elle parle d'argent."~ */
  IF ~~ THEN REPLY #2001 /* ~"Oh !"~ */ EXTERN ~DANNAH~ 5
END

IF ~~ THEN BEGIN 40 // from:
  SAY #2048 /* ~"Heureusement que ni toi ni ta queue n'êtes à vendre. Tu n'arriverais jamais à en vivre, de toute façon."~ */
  IF ~~ THEN REPLY #2049 /* ~"Euh…"~ */ EXTERN ~DANNAH~ 13
END

IF ~~ THEN BEGIN 41 // from:
  SAY #2067 /* ~"C'est une tieffeline, chef. Du sang de démon coule dans leurs veines. Ça les rend paranos et agressifs… belle queue, pourtant. Dommage qu'elle soit attachée à un corps si laid."~ */
  IF ~~ THEN REPLY #2068 /* ~"Ouah, maintenant…"~ */ EXTERN ~DANNAH~ 17
  IF ~~ THEN REPLY #2069 /* ~"Hé, bravo, Morte."~ */ EXTERN ~DANNAH~ 17
END

IF ~~ THEN BEGIN 42 // from:
  SAY #2074 /* ~"*Essaie* de m'éclater la mâchoire, petite ! Tout ce que j'entends, c'est le bla-bla d'une traînée de la Ruche ! Vas-y, frappe ! Essaie et je t'arrache les jambes avec les dents !"~ */
  IF ~~ THEN REPLY #2076 /* ~"Ça suffit !"~ */ EXTERN ~DANNAH~ 18
  IF ~~ THEN REPLY #2075 /* ~"Ça suffit ! On s'en va."~ */ EXTERN ~DANNAH~ 14
END

IF ~~ THEN BEGIN 43 // from:
  SAY #2079 /* ~"Un mimir est une encyclopédie vivante. C'est moi, chef."~ */
  IF ~~ THEN REPLY #2080 /* ~"J'y suis."~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
SetGlobal("Morte_Mimir","GLOBAL",1)
~ EXTERN ~DANNAH~ 21
END

IF ~~ THEN BEGIN 44 // from:
  SAY #2348 /* ~"Laisse tomber, chef. Parler à un gith, c'est comme tenter de se sortir du lierre-rasoir."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9029 /* ~"Gith ?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Know_Gith","GLOBAL",1)
~ THEN REPLY #9030 /* ~"Gith ?"~ */ GOTO 135
  IF ~~ THEN REPLY #9031 /* ~"Je n'ai pas l'intention de partir tout de suite. Je vais d'abord lui poser des questions…"~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9032 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #2354 /* ~"Je ne perdrais pas de temps à essayer de parler sérieusement avec Ignorance-la-bienheureuse. Allons-nous-en, chef."~ */
  IF ~~ THEN REPLY #9033 /* ~"Je n'ai pas l'intention de partir tout de suite. Je vais d'abord lui poser des questions…"~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9034 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #2601 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #2603 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #2602 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 121.1 121.2
  SAY #2604 /* ~"Quoi… tu es AVEUGLE ? ! Elle m'a dragué ! C'était évident, elle me VOULAIT honteusement !"~ */
  IF ~~ THEN REPLY #2605 /* ~"Dis plutôt qu'elle voulait que tu *partes*. Ayant porté toute son attention sur MOI, elle n'a certainement pas dû remarquer la présence d'un crâne sans cervelle."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #2606 /* ~"Je crois que tu as trop d'imagination. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 48
  IF ~~ THEN REPLY #2607 /* ~"Je trouve que tu as un peu trop d'imagination."~ */ GOTO 48
  IF ~~ THEN REPLY #2608 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #2609 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes . C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #2610 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0
  SAY #2611 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les pépées d'outre-tombe s'en foutent bien du 'physique', 'regarde-moi comme je suis beau' et 'je suis couvert de cicatrices et j'ai l'air d'un dur'. Elles veulent un gars avec de l'ESPRIT. C'est moi, chef. Toi ? Des cadavres comme TOI, c'est monnaie courante.~ */
  IF ~~ THEN REPLY #2612 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #2709 /* ~"Quoi ? Qu'est-ce que c'est ? Est-ce que cette pépée t'ennuie ?"~ */
  IF ~~ THEN EXTERN ~DTEST~ 7
END

IF ~~ THEN BEGIN 51 // from:
  SAY #2711 /* ~"Je le crois. Il devrait peut-être retourner au menu principal et me laisser."~ */
  IF ~~ THEN EXTERN ~DTEST~ 0
END

IF ~~ THEN BEGIN 52 // from:
  SAY #2782 /* ~"Oh, pour l'amour des Puissances ! Un dabus !"~ */
  IF ~~ THEN REPLY #2783 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #2788 /* ~"C'est un dabus. Ils *s'expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu'il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c'est vraiment nécessaire. Quel groupe assommant ! Tu paries qu'ils *peuvent* parler, mais qu'ils préfèrent coder tout ce qu'ils disent ne serait-ce que pour le plaisir d'énerver tout le monde."~ */
  IF ~~ THEN REPLY #2791 /* ~"C'est quoi un 'dabus' ?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #2789 /* ~"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de les écraser, sinon la Dame… se fâche."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #6952 /* ~"La 'Dame des Douleurs' ? Qui c'est ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 113
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #6953 /* ~"Qu'est-ce que tu peux me dire sur la Dame des Douleurs ?"~ */ GOTO 113
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #6954 /* ~"Je vois."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 55 // from:
  SAY #3473 /* ~"La morte me semble un peu dure d'oreille, chef. On laisse tomber, d'accord ?"~ */
  IF ~~ THEN REPLY #3474 /* ~"Qu'est-ce qu'elle a aux mains ?"~ */ JOURNAL #38205 /* ~Apparemment, la femme Homme-Poussière embaumeuse que j'ai rencontrée est une 'tieffeline', créature au sang démoniaque. On dit que le sang démoniaque pervertit leur corps et dans certains cas, leur esprit aussi. D'après ce que m'a dit Morte, il semble y avoir pas mal de tieffelins dans le coin… ce qui impliquerait aussi un certain nombre de fiélons.~ */ GOTO 56
  IF ~~ THEN REPLY #3475 /* ~Donne une petite tape à la femme, attire son attention.~ */ EXTERN ~DEIVENE~ 4
  IF ~~ THEN REPLY #3476 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #3477 /* ~"Hé, chef… c'est une *tieffeline*. Ils ont du sang fiélon dans les veines, parce que leurs ancêtres ont flirté avec le démon. Certains sont vraiment bizarres dans leurs têtes… et ils ont aussi l'air bizarre."~ */
  IF ~~ THEN REPLY #3478 /* ~Donne une petite tape à la femme, attire son attention.~ */ EXTERN ~DEIVENE~ 4
  IF ~~ THEN REPLY #3479 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #3480 /* ~"La morte me semble un peu dure d'oreille, chef. On laisse tomber, d'accord ?"~ */
  IF ~~ THEN REPLY #3483 /* ~"Qu'est-ce qu'elle a aux mains ?"~ */ JOURNAL #38205 /* ~Apparemment, la femme Homme-Poussière embaumeuse que j'ai rencontrée est une 'tieffeline', créature au sang démoniaque. On dit que le sang démoniaque pervertit leur corps et dans certains cas, leur esprit aussi. D'après ce que m'a dit Morte, il semble y avoir pas mal de tieffelins dans le coin… ce qui impliquerait aussi un certain nombre de fiélons.~ */ GOTO 58
  IF ~~ THEN REPLY #3484 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #3481 /* ~"Hé, chef… c'est une *tieffeline*. Ils ont une pointe de sang fiélon dans les veines, parce que leurs ancêtres ont flirté avec le démon. Certains sont vraiment bizarres dans leurs têtes… et généralement, ils ont aussi l'air bizarre."~ */
  IF ~~ THEN REPLY #3482 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #3487 /* ~"On dirait que tu t'es fait une nouvelle amie, chef. Je vous laisse en tête-à-tête… ?"~ */
  IF ~~ THEN REPLY #3488 /* ~"Ça suffit, Morte."~ */ EXTERN ~DEIVENE~ 11
  IF ~~ THEN REPLY #3489 /* ~Continue à jouer le zombi.~ */ EXTERN ~DEIVENE~ 11
  IF ~~ THEN REPLY #3490 /* ~Repousse la femme.~ */ EXTERN ~DEIVENE~ 10
END

IF ~~ THEN BEGIN 60 // from:
  SAY #3492 /* ~"C'est la deuxième fois de ma vie que je suis content de ne pas avoir de nez."~ */
  IF ~~ THEN EXTERN ~DEIVENE~ 14
END

IF ~~ THEN BEGIN 61 // from:
  SAY #3870 /* ~"Eh ! Eh ! Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #3871 /* ~"*J'allais* parler à ce type. Ça pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #3872 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #3873 /* ~"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c'est une histoire d'incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l'autre, ils te brûleront ou t'enterreront. Allez, ne joue pas les azimutés, allons-nous en."~ */
  IF ~~ THEN REPLY #3874 /* ~"Merci du conseil, mais je compte *bien* aller parler à ce type."~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 64
  IF ~~ THEN REPLY #3875 /* ~"D'accord, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #3876 /* ~"Eh ! T'es sourd ? Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #3877 /* ~"Écoute, je vais aller parler à ce type. Ça pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 64
  IF ~~ THEN REPLY #3878 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.0 63.0
  SAY #3879 /* ~"C'est ça, ne m'écoute *pas*… tu signes ton arrêt de mort."~ */
  IF ~~ THEN REPLY #3880 /* ~"Ouais, et tu peux jouer le chant funèbre. Pour l'instant, tais-toi."~ */ EXTERN ~DDUST~ 3
  IF ~~ THEN REPLY #3881 /* ~"Non, tu as raison. Laisse tomber. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #3964 /* ~"Eh, chef, c'est du vandalisme. Ces boulons sont probablement les seules pièces qui tenaient ce sac d'os ensemble. La nécromancie a ses limites avec des gars comme ça, tu sais ?"~ */
  IF ~~ THEN REPLY #3965 /* ~"Et alors ?"~ */ DO ~IncrementGlobal("Good","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #3966 /* ~"Oh… Je ne voulais pas causer de dégâts irréversibles."~ */ DO ~IncrementGlobal("Good","GLOBAL",1)
~ GOTO 66
  IF ~~ THEN REPLY #3967 /* ~"Bon, très bien. Peu importe. Peut-être une autre fois."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.1 65.2
  SAY #3968 /* ~"Oh, c'est pas un problème." Morte exécute une drôle de révérence que tu interprètes comme un haussement d'épaule. "J'étais pas certain que tu connaisses. Vas-y, je t'en prie."~ */
  IF ~  !PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3969 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DSKELW~ 4
  IF ~  !PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3970 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DSKELW~ 5
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #3971 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DSKELW~ 6
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3972 /* ~Peu importe. Ce sera pour la prochaine fois.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ GOTO 67
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3973 /* ~Peu importe. Ce sera pour la prochaine fois.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.3
  SAY #3974 /* ~"Hmmmm. Va savoir si cette barbe grise serait fâchée que *je* lui emprunte son corps…"~ */
  IF ~~ THEN REPLY #3975 /* ~"Barbe grise ?"~ */ GOTO 68
  IF ~~ THEN REPLY #3976 /* ~"Je ne pense pas qu'il soit en mesure de protester."~ */ GOTO 69
  IF ~~ THEN REPLY #3977 /* ~"Quelque chose me dit que tu serais deux fois plus horripilant si tu avais des bras. Partons."~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #3978 /* ~"Barbe grise… tu sais, un vieux schnock, un croulant…"~ */
  IF ~~ THEN REPLY #3979 /* ~"Eh bien, je ne pense pas qu'il soit en mesure de protester. Pourquoi ne pas prendre son corps ?"~ */ GOTO 69
  IF ~~ THEN REPLY #3980 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #3981 /* ~Morte observe le squelette un instant, puis secoue la tête. "Non… il m'en faut un plus frais. Et avec un peu plus de dignité… celui-ci est craquelé et fracturé."~ */
  IF ~~ THEN REPLY #3982 /* ~"Et pas toi ?"~ */ GOTO 70
  IF ~~ THEN REPLY #3983 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.2 68.1 69.0 127.0
  SAY #3984 /* ~"Oh, tu es vraiment impayable." Morte te lance un regard furieux. "TU peux te moquer, bige. Les miroirs demandent pitié quand tu t'approches."~ */
  IF ~~ THEN REPLY #3985 /* ~"Ah, ouais ? En tout cas, *moi* je suis entier."~ */ GOTO 71
  IF ~~ THEN REPLY #3986 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #3987 /* ~Morte grogne. Tu te demandes comment il a fait sans poumons.~ */
  IF ~~ THEN REPLY #3988 /* ~"Tu sais, Morte, il n'y a rien de tel que de se promener en balançant les bras et en respirant de l'air frais dans les poumons. C'est GÉNIAL d'avoir un corps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Skeleton_Mort_1","GLOBALLaw",-1)
~ GOTO 72
  IF ~~ THEN REPLY #3989 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #3990 /* ~"La liste de mes regrets s'allonge : j'aurais jamais dû t'aider à sortir de la salle de préparation." Morte grogne encore. "J'aurais dû te laisser pourrir… encore plus, j'veux dire."~ */
  IF ~~ THEN REPLY #3991 /* ~"Je suis content pour toi. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #4018 /* ~Morte grimace.~ */
  IF ~~ THEN REPLY #4019 /* ~"Euh, ça veut dire oui ou… ?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #4020 /* ~"Oh… pardon." Morte flotte au-dessus de la tête du squelette. Il l'observe, puis redescend, tout en examinant l'armure et la lame. "Oh, oui. Oui, oui, je crois que ça fera l'affaire."~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4023 /* ~"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."~ */ EXTERN ~DGIANTSK~ 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4024 /* ~"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."~ */ EXTERN ~DGIANTSK~ 3
  IF ~~ THEN REPLY #4025 /* ~"Je ne sais pas. Cette chose ne m'a pas l'air d'être à ta portée."~ */ GOTO 75
  IF ~~ THEN REPLY #4026 /* ~"Je crois qu'on ferait mieux de le laisser tranquille."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.2 74.3
  SAY #4021 /* ~"Pourquoi, au nom de Baator, m'as-tu DEMANDÉ si je le voulais ? Tu exerçais tes compétences en cruauté ?" Morte fait une moue indignée. "Après tout ce que j'ai fait pour toi…"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4027 /* ~"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."~ */ EXTERN ~DGIANTSK~ 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4028 /* ~"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."~ */ EXTERN ~DGIANTSK~ 3
  IF ~~ THEN REPLY #4029 /* ~"Je pensais à ta sécurité, Morte. J'ai peur de te blesser en t'attachant la tête là-dessus."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Giant_Skel_Mort_1","GLOBALGood",1)
~ GOTO 76
  IF ~~ THEN REPLY #4030 /* ~"Je crois vraiment qu'on devrait le laisser tranquille. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.2
  SAY #4022 /* ~Morte t'observe un instant. "Quoi, on est MARIÉS ou quoi ? C'est quoi ce délire 'Surtout, fais attention à toi' ?" Morte te jette un regard furieux. "Si tu tenais VRAIMENT à moi, tu trouverais un moyen de mettre ma tête sur ce squelette géant."~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4031 /* ~"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."~ */ EXTERN ~DGIANTSK~ 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4032 /* ~"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."~ */ EXTERN ~DGIANTSK~ 3
  IF ~~ THEN REPLY #4033 /* ~"Excuse-moi, je ne m'inquiète pas pour toi à ce point-là. Allons-y."~ */ EXIT
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4034 /* ~"Je te dis de le laisser tranquille. Maintenant, allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #4134 /* ~"Eh ! Eh ! Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #4144 /* ~"*J'allais* parler à ce type. Ça pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",1)
~ GOTO 78
  IF ~~ THEN REPLY #4145 /* ~"Rien, continuons."~ */ DO ~SetGlobal("Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #4135 /* ~"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c'est une histoire d'incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l'autre, ils te brûleront ou t'enterreront. Allez, ne joue pas les azimutés, allons-nous en."~ */
  IF ~~ THEN REPLY #4142 /* ~"Merci du conseil, mais je compte *bien* aller parler à ce type."~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 80
  IF ~~ THEN REPLY #4143 /* ~"D'accord, continuons."~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #4136 /* ~"Eh ! T'es sourd ? Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #4140 /* ~"Écoute, je vais aller parler à ce type. Ça pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 80
  IF ~~ THEN REPLY #4141 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 78.0 79.0
  SAY #4137 /* ~"Alors, ne m'écoute *pas*… c'est ta mort."~ */
  IF ~~ THEN REPLY #4138 /* ~"Ouais, et tu peux jouer le chant funèbre. Pour l'instant, tais-toi."~ */ EXTERN ~DDUSTGU~ 12
  IF ~~ THEN REPLY #4139 /* ~"Non, tu as raison. Laisse tomber. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #4338 /* ~"Eh ! Eh ! Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #4339 /* ~"*J'allais* parler à cette dame. Ça te pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",1)
~ GOTO 82
  IF ~~ THEN REPLY #4340 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #4341 /* ~"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c'est une histoire d'incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l'autre, ils te brûleront ou t'enterreront. Allez, ne joue pas les azimutés, allons-nous en."~ */
  IF ~~ THEN REPLY #4342 /* ~"Merci du conseil, mais je compte *bien* aller parler à cette dame."~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 84
  IF ~~ THEN REPLY #4343 /* ~"D'accord, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #4344 /* ~"Eh ! T'es sourd ? Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #4345 /* ~"Écoute, je vais aller parler à cette dame. Y a un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 84
  IF ~~ THEN REPLY #4346 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.0 83.0
  SAY #4347 /* ~"Alors, ne m'écoute *pas*… c'est ta mort."~ */
  IF ~~ THEN REPLY #4348 /* ~"Ouais, et tu peux jouer le chant funèbre. Pour l'instant, tais-toi."~ */ EXTERN ~DDUSTFEM~ 3
  IF ~~ THEN REPLY #4349 /* ~"Non, tu as raison. Laisse tomber. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #4675 /* ~Morte se met à chuchoter. "Par les Puissances… ce bige est un *Anarchiste*. Se faire passer pour un zombi doit être un must chez les zozos."~ */
  IF ~~ THEN REPLY #4676 /* ~"Anarchiste ?"~ */ JOURNAL #64512 /* ~Apparemment, l'homme déguisé en zombi fait partie de la faction des Anarchistes, qui lutte contre toutes les formes d'autorité et de structure sociale.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #4677 /* ~"Les Anarchistes… C'est une faction…" Morte semble vouloir exprimer un torrent d'insultes, mais il remarque que le zombi vous observe et vous écoute. "… ils, heu, veulent *libérer* tout le monde des chaînes du gouvernement. Faire tomber l'ordre établi et en créer un autre."~ */
  IF ~~ THEN REPLY #4678 /* ~Vérité : "Cette quête semble noble. Quelques entorses à l'ordre ne feraient pas de mal de temps en temps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_3","GLOBALLaw",-3)
~ EXTERN ~DVAXIS~ 11
  IF ~~ THEN REPLY #4679 /* ~Mensonge : "Cette quête semble noble. Un Anarchiste poursuivant un dessein aussi grandiose *ne peut être* que mon ami."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_4","GLOBALLaw",-1)
~ EXTERN ~DVAXIS~ 11
  IF ~~ THEN REPLY #4680 /* ~"Ça me paraît légèrement… contradictoire."~ */ EXTERN ~DVAXIS~ 10
  IF ~~ THEN REPLY #4681 /* ~"J'ai rarement entendu quelque chose d'aussi stupide."~ */ EXTERN ~DVAXIS~ 10
  IF ~~ THEN REPLY #4682 /* ~Vérité : "Tout cela n'a rien de constructif. L'ordre et la loi sont indissociables du progrès."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_3","GLOBALLaw",3)
~ EXTERN ~DVAXIS~ 10
END

IF ~~ THEN BEGIN 87 // from:
  SAY #4683 /* ~Il murmure. "Il se demande si tu es fou, zinzin, marteau… et moi aussi. Maintenant, arrête ton délire 'Je me suis réveillé des morts', d'accord ? Tu me fais honte."~ */
  IF ~~ THEN REPLY #4684 /* ~"Je TE gêne ?"~ */ GOTO 88
  IF ~~ THEN REPLY #4685 /* ~"Je voulais juste savoir de quoi ce… cadavre… parlait. Tu comprends ?"~ */ GOTO 88
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #4686 /* ~"Ce n'est pas de ma faute si personne dans cette maison de… 'd'azimutés'… ne parle normalement… ou n'a L'AIR normal."~ */ GOTO 88
  IF ~~ THEN REPLY #4687 /* ~"Écoute, je ne vais PAS mentir à ce type. Il vaut mieux être franc avec lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1 87.2 87.3
  SAY #4688 /* ~Morte soupire. "Écoute, chef. Reprends tes esprits. Tu ne peux pas toujours dire la VÉRITÉ à tout le monde. On ne peut pas laisser tous les peleurs nous prendre pour des pigeons, hein ?"~ */
  IF ~~ THEN REPLY #4689 /* ~"Les 'peleurs' ? Des 'pigeons' ? Qu'est-ce que - oh, laisse tomber."~ */ EXTERN ~DVAXIS~ 15
  IF ~~ THEN REPLY #4690 /* ~"Ça suffit, Morte."~ */ EXTERN ~DVAXIS~ 15
  IF ~~ THEN REPLY #4691 /* ~"Je… je m'en souviendrai. Je voudrais continuer de parler à ce 'zombi'."~ */ EXTERN ~DVAXIS~ 15
END

IF ~~ THEN BEGIN 89 // from:
  SAY #4692 /* ~"Attends…" Morte a l'air surpris. "Ce bige doit être un *Anarchiste*. Eh… Se faire passer pour un zombi doit être un must chez ces zozos."~ */
  IF ~~ THEN REPLY #4693 /* ~"Anarchiste ?"~ */ JOURNAL #64512 /* ~Apparemment, l'homme déguisé en zombi fait partie de la faction des Anarchistes, qui lutte contre toutes les formes d'autorité et de structure sociale.~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #4694 /* ~"Les Anarchistes… c'est une faction qui passe son temps à épier les autorités et à trouver des moyens de démolir tout ce qui pue l'ordre et le contrôle." Morte grogne. "Les Anarchistes pensent que tous les biges des plans seront libres et heureux de chercher leur propre 'vérité' une fois que l'ordre établi aura été détruit. Ils veulent établir un ordre nouveau - le non-ordre."~ */
  IF ~~ THEN REPLY #4695 /* ~Vérité : "Cette quête semble noble. Quelques entorses à l'ordre ne feraient pas de mal de temps en temps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_3","GLOBALLaw",-3)
~ EXTERN ~DVAXIS~ 71
  IF ~~ THEN REPLY #4696 /* ~"Ça me paraît légèrement… contradictoire."~ */ EXTERN ~DVAXIS~ 71
  IF ~~ THEN REPLY #4697 /* ~"J'ai rarement entendu quelque chose d'aussi stupide."~ */ EXTERN ~DVAXIS~ 71
  IF ~~ THEN REPLY #4698 /* ~"Peu importe."~ */ EXTERN ~DVAXIS~ 71
  IF ~~ THEN REPLY #4699 /* ~Vérité : "Tout cela n'a rien de constructif. L'ordre et la loi sont indissociables du progrès."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_3","GLOBALLaw",3)
~ EXTERN ~DVAXIS~ 71
END

IF ~~ THEN BEGIN 91 // from:
  SAY #4700 /* ~"Il dit que ce bige de Pharod a vendu beaucoup de cadavres… aux Hommes-Poussière. C'est le travail des Récupérateurs : ils rassemblent les cadavres et les vendent aux Hommes-Poussière. On dirait que Pharod a vendu tellement de morts que les Hommes-Poussière pensent qu'il a inscrit toute la Ruche dans le livre des morts avant que son heure sonne… tu sais… il aurait tué des gens."~ */
  IF ~~ THEN REPLY #4701 /* ~"Je vois. Je voudrais savoir autre chose…"~ */ EXTERN ~DVAXIS~ 43
  IF ~~ THEN REPLY #4702 /* ~"Ce Pharod a l'air d'un saint. J'aurai peut-être des questions plus tard. Reste dans le coin."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #4703 /* ~"Il veut savoir si quelqu'un t'a volé. C'est probablement ce qui s'est passé."~ */
  IF ~~ THEN REPLY #4704 /* ~"Je vois. Je voudrais savoir autre chose…"~ */ EXTERN ~DVAXIS~ 43
  IF ~~ THEN REPLY #4705 /* ~"Ouais, j'ai hâte de trouver ce voleur. Écoute, j'aurai peut-être des questions plus tard. Reste dans le coin."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #4706 /* ~"Ouais, *ils* sont vraiment idiots."~ */
  IF ~~ THEN EXTERN ~DVAXIS~ 61
END

IF ~~ THEN BEGIN 94 // from:
  SAY #4708 /* ~"Je n'arrive pas à croire que tu supportes ça. Tu es AZIMUTÉ ou quoi ?"~ */
  IF ~  Global("Vaxis_Zombie_XP","GLOBAL",0)
~ THEN REPLY #64535 /* ~"Plutôt azimuté, j'imagine…"~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
AddexperienceParty(500)
SetGlobal("Vaxis_Zombie_XP","GLOBAL",1)
~ EXTERN ~DVAXIS~ 66
  IF ~  Global("Vaxis_Zombie_XP","GLOBAL",1)
~ THEN REPLY #64534 /* ~"Plutôt azimuté, j'imagine…"~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ EXTERN ~DVAXIS~ 66
END

IF ~~ THEN BEGIN 95 // from:
  SAY #4710 /* ~"Peux-tu faire des points de suture plus serrés ?"~ */
  IF ~~ THEN REPLY #4711 /* ~"Avête, Mote -"~ */ EXTERN ~DVAXIS~ 67
  IF ~~ THEN REPLY #4712 /* ~"Mmm-HMMPH !"~ */ EXTERN ~DVAXIS~ 67
END

IF ~~ THEN BEGIN 96 // from:
  SAY #5029 /* ~"Eh ! Eh ! Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #5030 /* ~"*J'allais* parler à ce type. Ça pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",1)
~ GOTO 97
  IF ~~ THEN REPLY #5031 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 96.0
  SAY #5032 /* ~"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c'est une histoire d'incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l'autre, ils te brûleront ou t'enterreront. Allez, ne joue pas les azimutés, allons-nous en."~ */
  IF ~~ THEN REPLY #5033 /* ~"Merci du conseil, mais je compte *bien* aller parler à ce type."~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 99
  IF ~~ THEN REPLY #5034 /* ~"D'accord, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #5035 /* ~"Eh ! T'es sourd ? Qu'est-ce que tu fais ?"~ */
  IF ~~ THEN REPLY #5036 /* ~"Écoute, je vais aller parler à ce type. Ça pose un problème ?"~ */ DO ~SetGlobal("Warning","GLOBAL",2)
~ GOTO 99
  IF ~~ THEN REPLY #5037 /* ~"Rien, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0
  SAY #5038 /* ~"Alors, ne m'écoute *pas*… c'est ta mort."~ */
  IF ~~ THEN REPLY #5039 /* ~"Ouais, et tu peux jouer le chant funèbre. Pour l'instant, tais-toi."~ */ EXTERN ~DSOEGO~ 3
  IF ~~ THEN REPLY #5040 /* ~"Non, tu as raison. Laisse tomber. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #5041 /* ~"Qu'est-ce que tu *fiches* ?! Si tu veux le tuer, fais-le !"~ */
  IF ~~ THEN REPLY #5042 /* ~"C'est fait ! Je lui ai brisé la nuque ! Il ne devrait même plus bouger !"~ */ EXTERN ~DSOEGO~ 21
END

IF ~~ THEN BEGIN 101 // from:
  SAY #5043 /* ~"Au moins, il *peut* marcher." Morte grogne. "Le flottement perd tout son charme dès qu'on veut frapper quelqu'un."~ */
  IF ~~ THEN EXTERN ~DSOEGO~ 11
END

IF ~~ THEN BEGIN 102 // from:
  SAY #5049 /* ~"Oh là là, chef ! Qu'est-ce que tu fabriques ?!"~ */
  IF ~~ THEN REPLY #5050 /* ~"J'allais parler à ce scribe. Il sait peut-être comment je me suis retrouvé ici."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #5052 /* ~"Écoute, branler ton râtelier avec les Hommes-Poussière, c'est bien la DERNIÈRE chose à faire -"~ */
  IF ~~ THEN EXTERN ~DDHALL~ 0
END

IF ~~ THEN BEGIN 104 // from:
  SAY #5053 /* ~"Et on devrait *surtout* pas échanger la chanson avec ces malades d'Hommes-Poussière. Allez, on y va. Plus vite on se sera tiré de c't endroit, mi…"~ */
  IF ~~ THEN EXTERN ~DDHALL~ 1
END

IF ~~ THEN BEGIN 105 // from:
  SAY #6071 /* ~"De retour, chef ? Tu t'étais littéralement volatilisé."~ */
  IF ~~ THEN REPLY #6075 /* ~"Non, pas du tout. Sais-tu qui était cet esprit ?"~ */ DO ~SetGlobal("Morte_Deionarra_Quip_1","GLOBAL",1)
~ GOTO 106
  IF ~~ THEN REPLY #6076 /* ~"Ça va. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #6072 /* ~"Hein ? Un esprit ?"~ */
  IF ~~ THEN REPLY #6077 /* ~"Ce spectre à qui je parlais. La femme."~ */ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #6073 /* ~"Tu branlais ton râtelier avec une femme ? Où ça ?" Morte regarde autour de lui d'un air agité. "Elle était comment ?"~ */
  IF ~~ THEN REPLY #6078 /* ~"Elle était sur la bière. Tu ne l'as pas vue ?"~ */ GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #6074 /* ~"Eh… non, tu es resté là un moment, immobile comme une statue. J'avais peur que tu m'aies encore fait un coup fumeux."~ */
  IF ~~ THEN REPLY #6079 /* ~"Non, ça va… enfin, je crois. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #6324 /* ~"Ça m'rappelle un boulot que j'ai fait autrefois." Il paraît embarrassé. "Enfin, j'veux dire… sans les bras."~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6325 /* ~Examine le cadavre.~ */ EXTERN ~DPOST~ 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6326 /* ~Examine le cadavre.~ */ EXTERN ~DPOST~ 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6327 /* ~"Hmmm. Je me demande si ça marcherait avec les autres affiches…"~ */ EXTERN ~DPOST~ 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6328 /* ~"Hmmmm. Je me demande si ça marcherait avec les autres affiches…"~ */ EXTERN ~DPOST~ 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6329 /* ~Examine les autres affiches.~ */ EXTERN ~DPOST~ 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6330 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ EXTERN ~DPOST~ 2
  IF ~~ THEN REPLY #6331 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #6609 /* ~"Ouah, chef. C'est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d'os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"~ */
  IF ~~ THEN REPLY #6658 /* ~"Et alors ?"~ */ DO ~IncrementGlobal("Good","GLOBAL",-1)
~ EXTERN ~DS42~ 1
  IF ~~ THEN REPLY #6659 /* ~"Oh… Je ne voulais pas causer de dégâts irréversibles."~ */ DO ~IncrementGlobal("Good","GLOBAL",1)
~ EXTERN ~DS42~ 1
  IF ~~ THEN REPLY #6660 /* ~"Bon, très bien. Peu importe. Peut-être une autre fois."~ */ EXTERN ~DS42~ 1
END

IF ~~ THEN BEGIN 111 // from:
  SAY #6610 /* ~"Hmmmm. Je me demande si cette barbe grise m'en voudrait si *je* lui empruntais son corps…"~ */
  IF ~~ THEN REPLY #6661 /* ~"'Barbe grise' ?"~ */ EXTERN ~DS42~ 1
  IF ~~ THEN REPLY #6662 /* ~"À mon avis, il est mal placé pour protester."~ */ EXTERN ~DS42~ 1
  IF ~~ THEN REPLY #6663 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ EXTERN ~DS42~ 1
END

IF ~~ THEN BEGIN 112 // from:
  SAY #6611 /* ~"Arrête ! Ses bras vont se casser."~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6664 /* ~Croise les bras sur la poitrine.~ */ EXTERN ~DS42~ 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6665 /* ~Imite les gestes du squelette… Attends de voir ce qui se passe.~ */ EXTERN ~DS42~ 9
  IF ~~ THEN REPLY #6666 /* ~"Euh…"~ */ EXTERN ~DS42~ 10
  IF ~~ THEN REPLY #6667 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 54.0 54.1
  SAY #6771 /* ~"Elle dirige cette cité. Tu la reconnaîtras en la voyant : elle a des lames tout autour du visage, elle est immense et elle flotte comme eux." Morte fait un signe de tête au dabus, qui vous regarde tous les deux. "Personne ne sait grand-chose sur elle… Elle ne parle pas beaucoup. Le tout est de ne pas la mettre en colère. Si tu l'aperçois, un bon conseil : tire-toi en courant."~ */
  IF ~~ THEN REPLY #2784 /* ~"Je vois."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 114 // from:
  SAY #6784 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Trouve un natif de Sigil."~ */
  IF ~~ THEN REPLY #6955 /* ~"Je vois."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 115 // from:
  SAY #6786 /* ~"Oh, ils *ont* des noms. J'en suis sûr."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 43
END

IF ~~ THEN BEGIN 116 // from:
  SAY #6790 /* ~"C'est c'que *tu* dis, fiélonne."~ */
  IF ~~ THEN REPLY #6956 /* ~"Ça suffit, Morte - Peux-tu lui poser d'autres questions, Annah ?"~ */ EXTERN ~DANNAH~ 40
  IF ~~ THEN REPLY #6957 /* ~"Laisse tomber. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 117 // from:
  SAY #6794 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Amène donc la petite fiélonne par ici." Il s'incline vers Annah. "C'est une native de la Ruche."~ */
  IF ~~ THEN REPLY #6958 /* ~"Peut-être …"~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 118 // from:
  SAY #6797 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ?" Il s'incline vers Dak'kon. "Amène donc le Pharisien-deux-fois-plus-silencieux pour traduire."~ */
  IF ~~ THEN REPLY #6959 /* ~"Peut-être …"~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 119 // from:
  SAY #6800 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Fais venir un tanar'ri." Il s'incline vers Tombée-en-Disgrâce. "Elle doit sûrement négocier la chanson avec eux sans arrêt."~ */
  IF ~~ THEN REPLY #6960 /* ~"Peut-être …"~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 120 // from:
  SAY #7040 /* ~Tandis que tu t'éloignes, tu remarques que Morte te regarde avec insistance. "Eh ? Eh ?"~ */
  IF ~~ THEN REPLY #7055 /* ~"Qu'est-ce qu'il y a ?"~ */ GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #7041 /* ~"T'as *vu* la façon dont cette beauté cadavérique m'a dévoré des yeux ?" Morte claque des dents, comme par anticipation. "Elle cherchait quelque matois chanceux pour décongeler son cercueil."~ */
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #7056 /* ~"*S'il te plaît*, ne recommence pas."~ */ DO ~SetGlobal("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #7057 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #7058 /* ~"Quoi, ce regard d'outre-tombe aux yeux vides ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 47
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #7042 /* ~Morte t'ignore et se met à réfléchir. "C'est pas que je tienne absolument à ce que l'on s'intéresse à moi, c'est juste que j'aime bien que l'on me considère comme autre chose qu'un vulgaire crâne, tu vois ? J'éprouve des sentiments qui vont au-delà de mes instincts primaires. Je veux plus qu'une petite aventure à la dérobée."~ */
  IF ~~ THEN REPLY #7059 /* ~"Continue et *je* te largue quelque part."~ */ GOTO 123
  IF ~~ THEN REPLY #7060 /* ~"Morte, tu *es* un crâne. Personne ne peut te voir autrement que comme un crâne. Accepte-le."~ */ GOTO 124
  IF ~~ THEN REPLY #7061 /* ~"Je comprends. Maintenant, allons-nous-en, d'accord ?"~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #7043 /* ~"Oh là là, chef…" Morte recule légèrement. "Ce qui plaît aux femmes, ce sont les amants, pas les guerriers."~ */
  IF ~~ THEN REPLY #7062 /* ~"Tu es sans doute la *dernière* personne dont je suivrai les conseils romantiques."~ */ GOTO 126
  IF ~~ THEN REPLY #7063 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #7044 /* ~"Ouais, ben, j'suis peut-être qu'un crâne, mais un crâne au grand cœur."~ */
  IF ~~ THEN REPLY #7064 /* ~"En fait, tu n'as *rien* de tout ça."~ */ GOTO 125
  IF ~~ THEN REPLY #7065 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #7045 /* ~"Quoi ? T'es tombé dans ma vie pour cracher sur mes rêves et mes aspirations ?! Parfait, très bien. J'ai peut-être pas de cœur, mais *j'ai* une âme."~ */
  IF ~~ THEN REPLY #7066 /* ~"Eh bien, en fait, je parie que tu… Laisse tomber. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #7067 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 123.0
  SAY #7046 /* ~"Si tu avais la moitié de l'intelligence que tu possédais avant de mourir, tu serais plus malin." Morte prend un ton encore plus suffisant. "Sur l'amour, j'en connais un rayon."~ */
  IF ~~ THEN REPLY #7068 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from:
  SAY #7071 /* ~Morte examine le squelette un moment, puis secoue la tête. "Nan… celui-là est trop propre… y'a presque plus de viande dessus. En plus, j'arriverais jamais à enlever toute cette chaux."~ */
  IF ~~ THEN REPLY #7076 /* ~"Je ne sais pas s'il est 'trop propre'… Tu aurais deux ou trois choses à apprendre sur la propreté."~ */ GOTO 70
  IF ~~ THEN REPLY #7077 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #7130 /* ~"Ouais !"~ */
  IF ~~ THEN EXTERN ~DHIVEF1~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #7187 /* ~"Un mimir est une encyclopédie vivante. C'est moi, chef."~ */
  IF ~~ THEN REPLY #7483 /* ~"Je vois. Bon, ne te fais pas de bile pour ça, Morte. Vu son apparence, je vais sans doute t'éviter de mourir une deuxième fois."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ EXTERN ~DHARLOTN~ 8
  IF ~~ THEN REPLY #7484 /* ~"Allons-nous-en d'ici. Au revoir, mademoiselle."~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from:
  SAY #7188 /* ~Morte regarde, hypnotisé, tandis que la catin lâche une série de jurons. À la fin de cette avalanche d'injures, Morte reste un moment sans rien dire, puis se tourne vers toi. "Ouah, chef. On dirait que v'là d'nouvelles blagues pour l'arsenal." Il se retourne vers la catin, qui reprend son souffle. "Ça y est, j'suis amoureux."~ [MRT387] */
  IF ~~ THEN REPLY #7485 /* ~Pars.~ */ DO ~IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #7775 /* ~"Oh là là, chef." Morte t'interrompt avant même que tu aies pu t'adresser à la créature. "Laisse tomber. Va pas branler ton râtelier avec n'importe quel fiélon dans la rue. Allez, on y va."~ */
  IF ~~ THEN REPLY #7776 /* ~"Je voulais lui poser quelques questions…"~ */ GOTO 132
  IF ~~ THEN REPLY #7777 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #7778 /* ~"Non." Morte regarde la créature, puis se retourne vers toi et baisse considérablement le ton. "Ils sont susceptibles. Tirons-nous."~ */
  IF ~~ THEN REPLY #7779 /* ~"J'en prends le risque."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7780 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #7805 /* ~Morte soupire tandis que tu es sur le point de t'adresser à la créature.~ */
  IF ~~ THEN REPLY #7806 /* ~"Oui ?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #7807 /* ~"Oh, rien… L'école de la vie est la meilleure, tu sais." Il s'incline vers la créature. "Vas-y."~ */
  IF ~~ THEN REPLY #7808 /* ~"Oui."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7809 /* ~"D'accord, peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 135 // from: 44.0 44.1
  SAY #2349 /* ~"Ouais, un 'gith'…" Morte jette un coup d'œil sur le gith, qui continue de te dévisager. "On en reparlera une autre fois."~ */
  IF ~~ THEN REPLY #9035 /* ~"Je n'ai pas l'intention de partir tout de suite. Je vais d'abord lui poser des questions…"~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9036 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #9860 /* ~"Viens, chef… ou tu auras tué ce pauvre bougre avant de réussir à le réveiller !"~ */
  IF ~~ THEN REPLY #9882 /* ~"Tu as raison, Morte - Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #11946 /* ~Morte s'approche. "C'est quoi, la chanson, chef ?"~ */
  IF ~~ THEN REPLY #11974 /* ~"Tu vois ces dents ?"~ */ GOTO 138
  IF ~~ THEN REPLY #11975 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #11947 /* ~Morte examine la paume de ta main. "Beurrrk." Il paraît pris d'une fascination morbide. "De vilaines petites biges, non ?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #11948 /* ~"Bâcle ça." Morte tressaille. "Tu voudrais de ces trucs en *toi* ?"~ */
  IF ~~ THEN REPLY #11976 /* ~"Allez, Morte, elles ont l'air de bien t'aimer. Regarde comme elles te dévorent des yeux."~ */ GOTO 140
  IF ~~ THEN REPLY #11977 /* ~Prends Morte, fourre les dents dans sa bouche.~ */ DO ~SetGlobal("Ingress_Teeth_Installed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ingress_Teeth_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ingress_Teeth_1","GLOBALGood",-1)
~ GOTO 141
  IF ~~ THEN REPLY #11978 /* ~"Alors, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #11949 /* ~"Ces petits cagueurs feraient mieux de ne pas m'approcher, ou…" Morte s'interrompt. "Tu sais, je vois mal ce qui pourrait faire peur à des dents."~ */
  IF ~~ THEN REPLY #11979 /* ~Examine les dents.~ */ EXIT
  IF ~~ THEN REPLY #11980 /* ~Prends Morte, fourre les dents dans sa bouche.~ */ DO ~SetGlobal("Ingress_Teeth_Installed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ingress_Teeth_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ingress_Teeth_1","GLOBALGood",-1)
~ GOTO 141
  IF ~~ THEN REPLY #11981 /* ~"Alors, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.1
  SAY #11950 /* ~La lutte est brève. Tu immobilises Morte d'une clé de tête (seule prise possible), les dents sautent de ta main sur sa mâchoire. Il a beau te mordre pour essayer de se dégager, la lutte est brève. Il hurle lorsqu'elles lui arrachent ses propres dents et se jettent dans les cavités mises à nu.~ */
  IF ~~ THEN REPLY #11982 /* ~"Voilà, Morte. Ce n'était pas si terrible, hein ?"~ */ DO ~MoraleDec("Morte",1)
~ GOTO 143
END

IF ~~ THEN BEGIN 142 // from: 149.0
  SAY #11951 /* ~Morte continue de hurler. Les dents plantent leurs racines en lui avec des bruits de chignole tout à fait horribles.~ */
  IF ~~ THEN REPLY #11983 /* ~"Morte ? Ça va ?"~ */ DO ~SetGlobal("Ingress_Teeth_Installed","GLOBAL",1)
~ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 141.0 142.0
  SAY #11952 /* ~Morte ne semble pas t'entendre. Il hurle, hurle, sans relâche, et soudain il claque des mâchoires avec violence. Il y parvient par trois fois, puis ses dents du haut et du bas s'enclenchent les unes dans les autres, de sorte qu'il ne peut plus ouvrir la bouche.~ */
  IF ~~ THEN REPLY #11984 /* ~"Oh là là !"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #11953 /* ~Il marmonne quelque chose à ton endroit, les yeux écarquillés.~ */
  IF ~  Global("Evil_Ingress_Teeth_1","GLOBAL",1)
~ THEN REPLY #11985 /* ~"Alors… elles te plaisent ?"~ */ GOTO 145
  IF ~  Global("Good_Ingress_Teeth_1","GLOBAL",1)
~ THEN REPLY #11986 /* ~"Morte, ça va ?"~ */ GOTO 150
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #11954 /* ~Ses dents se débloquent soudain et il prend une profonde inspiration. "Je te *tuerai* pour ça, dit-il. C'était un sale tour."~ */
  IF ~~ THEN REPLY #11987 /* ~"Comment tu te sens ?"~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0 150.0
  SAY #11955 /* ~Morte remue les mâchoires à titre d'expérience. "Curieux. Et intéressant." Soudain, ses dents s'allongent, devenant des crocs. "Ooooooh ! Elles changent !" Elle raccourcissent, rallongent, dents, crocs, dents, et ainsi de suite… "Ça va me plaire."~ */
  IF ~  Global("Good_Ingress_Teeth_1","GLOBAL",1)
~ THEN REPLY #11988 /* ~"Excuse-moi, Morte. Je ne voulais pas te faire de mal."~ */ GOTO 147
  IF ~  Global("Evil_Ingress_Teeth_1","GLOBAL",1)
~ THEN REPLY #11989 /* ~"Tu vois ? J'avais raison, non ?"~ */ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0 146.1
  SAY #11956 /* ~"Oh, je me vengerai malgré tout", répond Morte. Il sourit, et ses dents, une fois de plus, deviennent des crocs. "Un peu de patience."~ */
  IF ~  Global("Good_Ingress_Teeth_1","GLOBAL",1)
~ THEN REPLY #11990 /* ~"Euh… la vengeance n'a jamais été une solution, Morte… Euh, allons-nous-en."~ */ EXIT
  IF ~  Global("Evil_Ingress_Teeth_1","GLOBAL",1)
~ THEN REPLY #11991 /* ~"Tu finiras par me remercier. Tu verras."~ */ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #11957 /* ~"Qu'est-ce qu'il y a ?" Morte s'approche et examine la paume de ta main. "Hé… on dirait bien qu'elles préparent un mauvais coup, non ?"~ */
  IF ~~ THEN REPLY #11992 /* ~"Sûrement, ne -"~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #11958 /* ~Ce qui se passe ensuite est aussi difficile à décrire que pénible à regarder. Tu n'as pas le temps de serrer le poing que déjà les dents sautent de ta main sur sa mâchoire. Il hurle lorsqu'elles lui arrachent ses propres dents et se jettent dans les cavités mises à nu.~ */
  IF ~~ THEN REPLY #11993 /* ~"Morte !"~ */ GOTO 142
END

IF ~~ THEN BEGIN 150 // from: 144.1
  SAY #11959 /* ~Ses dents se débloquent toutes soudainement et il prend une profonde inspiration. "Je te *tuerai* pour ça, dit-il. C'était prémédité !"~ */
  IF ~~ THEN REPLY #11994 /* ~"Écoute, ce n'est pas ce que je voulais… Je t'avais même prévenu. Euh… comment tu te sens ?"~ */ GOTO 146
END

IF ~~ THEN BEGIN 151 // from:
  SAY #12389 /* ~Morte te parle à voix basse : "Chef, j'aime pas ça. Ils ne devraient pas être ici. La Guerre Sanglante n'a pas assez botté le cul des célestes pour que ces fiélons puissent prendre des congés. Ils *veulent* quelque chose. Fais attention où tu mets les pieds." Pendant ce temps, Tegar'in continue de répondre à son compagnon…~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 12
END

IF ~~ THEN BEGIN 152 // from:
  SAY #12449 /* ~"Chef, je suis plus certain que jamais que ces biges sont pas clairs. On dirait qu'ils ont déserté, comme s'ils cherchaient un moyen d'élever leur statut sur Baator. Ne leur parle pas, chef… tu sais pas à quel jeu ils jouent, et tu pourrais littéralement… t'y brûler."~ */
  IF ~~ THEN REPLY #12450 /* ~"D'accord, Morte. Juste quelques questions pour ces deux-là…"~ */ EXTERN ~DAETHEL~ 11
  IF ~~ THEN REPLY #12451 /* ~"D'accord, Morte. J'en ai fini avec eux."~ */ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #12466 /* ~Morte flotte dans les airs près de toi et te chuchote à l'oreille : "*Il* a raison, chef… J'sais pas ce qui t'a agacé."~ */
  IF ~~ THEN REPLY #12553 /* ~"Très bien… Je voulais juste te poser une question…"~ */ EXTERN ~DBARIA~ 4
  IF ~~ THEN REPLY #12554 /* ~"Tais-toi, espèce de crâne bavard ! Et toi, bestiole à quatre pattes : crève…"~ */ DO ~MoraleDec("Morte",2)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12555 /* ~"Oh, non… C'était *toi*. Tu vas le regretter…"~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12556 /* ~"Alors, laisse tomber. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #12467 /* ~"Ouais, ouais ! Faire quelque chose de sympa !"~ */
  IF ~~ THEN EXTERN ~DBARIA~ 20
END

IF ~~ THEN BEGIN 155 // from:
  SAY #12621 /* ~Morte semble surpris lorsque tous les yeux se posent sur lui. "Quoi ? Quoi ?" Tu as l'impression que s'il avait des lèvres, il sifflerait innocemment.~ */
  IF ~~ THEN REPLY #12854 /* ~"Tu as une explication, Morte ?"~ */ GOTO 156
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #12855 /* ~"C'est quoi, un 'mimir' ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 157
  IF ~~ THEN REPLY #12856 /* ~"Ne fais pas attention à lui… Tu peux me répondre ?"~ */ EXTERN ~DCREED~ 30
END

IF ~~ THEN BEGIN 156 // from: 155.0
  SAY #12622 /* ~"Bon, je propose qu'on écoute cet homme. D'accord ?" Morte se tourne et fixe durement le chasseur de rats.~ */
  IF ~~ THEN REPLY #12857 /* ~"Non… Écoutons ce que tu as à dire, Morte."~ */ GOTO 158
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #12858 /* ~"Tout à l'heure… C'est quoi, un 'mimir' ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 157
  IF ~~ THEN REPLY #12859 /* ~Retourne-toi vers le chasseur de rats.~ */ EXTERN ~DCREED~ 32
END

IF ~~ THEN BEGIN 157 // from: 155.1 156.1
  SAY #12623 /* ~Morte roule des yeux d'un air gêné. "C'est une… encyclopédie sur pattes. Mais j'en suis pas très fier. Bon, écoutons ce type, d'accord ?"~ */
  IF ~~ THEN REPLY #12860 /* ~"Très bien."~ */ DO ~SetGlobal("Morte_Mimir","GLOBAL",1)
~ EXTERN ~DCREED~ 32
  IF ~~ THEN REPLY #12861 /* ~"Non, j'en ai assez entendu. Au revoir, chasseur de rats."~ */ DO ~SetGlobal("Morte_Mimir","GLOBAL",1)
~ EXTERN ~DCREED~ 59
END

IF ~~ THEN BEGIN 158 // from: 156.0
  SAY #12624 /* ~"Oh allez, chef… pourquoi j'te cacherais des choses ? J't'ai dit tout c'que *je* sais d'utile. Laissons simplement ce bige reprendre toute l'affaire."~ */
  IF ~~ THEN REPLY #12862 /* ~"Très bien."~ */ EXTERN ~DCREED~ 32
  IF ~~ THEN REPLY #12863 /* ~"Peu importe. Allons-y… Au revoir, chasseur de rats."~ */ EXTERN ~DCREED~ 59
END

IF ~~ THEN BEGIN 159 // from:
  SAY #12625 /* ~"Ouais, chef ! T'as tout compris !"~ */
  IF ~~ THEN EXTERN ~DCREED~ 40
END

IF ~~ THEN BEGIN 160 // from:
  SAY #12626 /* ~"Mourir, chef… mourir."~ */
  IF ~~ THEN REPLY #12864 /* ~"Mais toi, chasseur de rats, tu as plutôt l'air sympathique…"~ */ EXTERN ~DCREED~ 49
  IF ~~ THEN REPLY #12865 /* ~"Je comprends. Une autre question…"~ */ EXTERN ~DCREED~ 15
  IF ~~ THEN REPLY #12866 /* ~"Merci du renseignement. Au revoir."~ */ EXTERN ~DCREED~ 59
END

IF ~~ THEN BEGIN 161 // from:
  SAY #12627 /* ~"Mourir, chef… mourir."~ */
  IF ~~ THEN REPLY #12867 /* ~"Ah… Qu'est-ce que tu disais sur les gens qui achètent des rats morts ?"~ */ EXTERN ~DCREED~ 18
  IF ~~ THEN REPLY #12868 /* ~"Je vois. J'ai une autre question…"~ */ EXTERN ~DCREED~ 15
  IF ~~ THEN REPLY #12869 /* ~"Je comprends. Au revoir."~ */ EXTERN ~DCREED~ 59
END

IF ~~ THEN BEGIN 162 // from:
  SAY #13748 /* ~"Bon, encore un arbre avec trop de branches cassées." Morte fait rouler ses yeux. "Ça ne sert à rien de causer avec des Xaositectes, chef. C'est une bande d'azimutés."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13774 /* ~"Les Xaositectes ?"~ */ DO ~SetGlobal("Morte_SDThug_Quip_1","GLOBAL",1)
SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 163
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13775 /* ~"Qui sont les Xaositectes déjà ?"~ */ DO ~SetGlobal("Morte_SDThug_Quip_1","GLOBAL",1)
~ GOTO 163
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13776 /* ~"Je pensais qu'il pourrait m'apprendre quelque chose. Tant pis, allons-nous-en."~ */ DO ~SetGlobal("Morte_SDThug_Quip_1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 162.0 162.1
  SAY #13749 /* ~"C'est une 'faction' qui n'a pas de règles… sauf de garder en tête une seule pensée trop longtemps. On les appelle parfois les 'Chaoteux'. Pas besoin de t'expliquer pourquoi."~ */
  IF ~~ THEN REPLY #13777 /* ~"Comment est-ce qu'ils recrutent leurs membres ?"~ */ GOTO 164
  IF ~~ THEN REPLY #13778 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY #13750 /* ~"On dirait qu'ils attirent les membres comme des mouches… enfin, des membres fous ou assez chaoteux, je suppose. Je ne pense pas qu'ils aient des recruteurs… bien que l'on ne puisse être sûr de rien."~ */
  IF ~~ THEN REPLY #13779 /* ~"Je vois. Merci du renseignement."~ */ EXIT
END

IF ~~ THEN BEGIN 165 // from:
  SAY #13828 /* ~"Bon, encore un qui n'a pas toute sa tête." Morte fait rouler ses yeux. "Ça ne sert à rien de causer avec des Xaositectes, chef. C'est une bande d'azimutés."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13986 /* ~"Les Xaositectes ?"~ */ DO ~SetGlobal("Morte_Wilder_Quip_1","GLOBAL",1)
SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 166
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13987 /* ~"Qui sont les Xaositectes déjà ?"~ */ DO ~SetGlobal("Morte_Wilder_Quip_1","GLOBAL",1)
~ GOTO 166
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13988 /* ~"Je pensais qu'il pourrait m'apprendre quelque chose. Tant pis, allons-nous-en."~ */ DO ~SetGlobal("Morte_Wilder_Quip_1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 166 // from: 165.0 165.1
  SAY #13829 /* ~"C'est une 'faction' qui n'a pas de règles… sauf de garder en tête une seule pensée trop longtemps. On les appelle parfois les 'Chaoteux'. Pas besoin de t'expliquer pourquoi."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13989 /* ~"Comment est-ce qu'ils recrutent leurs membres ?"~ */ GOTO 167
  IF ~~ THEN REPLY #13990 /* ~"Je vois. Alors, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #13830 /* ~"On dirait qu'ils attirent les membres comme des mouches… enfin, des membres fous ou assez chaoteux, je suppose. Je ne pense pas qu'ils aient des recruteurs… bien que l'on ne puisse être sûr de rien."~ */
  IF ~~ THEN REPLY #13991 /* ~"Je vois. Merci du renseignement."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #14075 /* ~"Très bien dans ce cas…" Morte te siffle. "Allons-y, chef. Cet Homme-Poussière pourrait aussi bien être un fertilisant."~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14275 /* ~"D'accord. Allons-nous-en d'ici."~ */ EXTERN ~DAWAIT~ 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14276 /* ~"D'accord. Allons-nous-en d'ici."~ */ EXTERN ~DAWAIT~ 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14277 /* ~"D'accord. Allons-nous-en d'ici."~ */ EXTERN ~DAWAIT~ 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14278 /* ~"D'accord. Allons-nous-en d'ici."~ */ EXTERN ~DAWAIT~ 15
END

IF ~~ THEN BEGIN 169 // from:
  SAY #15339 /* ~"Fends ce bellâtre mielleux en deux, chef ! Montre-lui qui tu es !"~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 19
END

IF ~~ THEN BEGIN 170 // from:
  SAY #15340 /* ~"Ouais, réponds aux questions !"~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 13
END

IF ~~ THEN BEGIN 171 // from:
  SAY #15341 /* ~"Je parierais dix pièces de cuivre sur le gros type effrayé !" Morte plane près de toi et souffle : "Eh, c'est toi, chef. Ne nous laisse pas tomber."~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 20
END

IF ~~ THEN BEGIN 172 // from:
  SAY #15342 /* ~"Très bien, chef : tu l'as eu cette fois ! Pas de pitié !"~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 19
END

IF ~~ THEN BEGIN 173 // from:
  SAY #15343 /* ~"C'est ça, espèce d'élitiste pompeux, parfumé, au cul mielleux… tu as bien entendu !"~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 32
END

IF ~~ THEN BEGIN 174 // from:
  SAY #15344 /* ~"Qui *je* suis ? Ah ! J'aurais pu être ton père, mais ce singe m'a devancé !"~ */
  IF ~~ THEN REPLY #15490 /* ~"Morte, tais-toi."~ */ GOTO 175
  IF ~~ THEN REPLY #15491 /* ~Laisse Morte continuer.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0 174.1
  SAY #15345 /* ~"Qu'est-ce qui ne va pas, princesse ? T'as perdu ta langue ? Tu ferais mieux de refermer la mâchoire avant que quelque chose ne te tombe dans la gorge ! C'est ça, tu m'as bien entendu ! Ramasse ton soutien-gorge à dentelles et va te cacher sous les jupes dégoûtantes de ta mère ! Et donne-lui le bonjour par la même occasion !"~ */
  IF ~~ THEN REPLY #15492 /* ~"Morte : la ferme, *maintenant*."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",-1)
~ GOTO 176
  IF ~~ THEN REPLY #15493 /* ~Laisse Morte continuer.~ */ GOTO 177
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #15346 /* ~"Euh ? Oh… désolé, chef. Ce genre de type me…"~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 33
END

IF ~~ THEN BEGIN 177 // from: 175.1
  SAY #15347 /* ~"Bon sang, si j'me retenais pas, je dirais -"~ */
  IF ~~ THEN EXTERN ~DADYZOEL~ 33
END

IF ~~ THEN BEGIN 178 // from:
  SAY #15348 /* ~"Quoi ? J'suis juste un mimir, chef ! Je peux pas me battre en duel !"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DADYZOEL~ 35
END

IF ~~ THEN BEGIN 179 // from:
  SAY #15349 /* ~"C'est, euh… une sorte d'encyclopédie parlante. J'aime pas en parler, assez embarrassant à vrai dire."~ */
  IF ~  GlobalLT("Morte_Mimir","GLOBAL",2)
~ THEN DO ~IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0)
~ EXTERN ~DADYZOEL~ 36
  IF ~  GlobalGT("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #65537 /* ~"Mais tu N'ES PAS un mimir, Morte…"~ */ EXTERN ~DADYZOEL~ 36
END

IF ~~ THEN BEGIN 180 // from:
  SAY #15350 /* ~"Allez, chef… tu vas le laisser s'en tirer comme ça ? Allons rosser ce roué chichiteux ! Je viserai les yeux et tu lui fonceras dessus !~ */
  IF ~~ THEN REPLY #15494 /* ~"Tu as raison… Faisons-lui sa fête."~ */ EXTERN ~DADYZOEL~ 19
  IF ~~ THEN REPLY #15495 /* ~"Ce n'est pas le moment, Morte. Allons-y."~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 181 // from: 185.0
  SAY #16613 /* ~"Hein ? Ah, oui, chef, bien sûr, tout ce que tu voudras."~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16881 /* ~"Merci. J'ai des questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16882 /* ~"Je ne plaisante pas, Morte. Tu peux faire un effort ?"~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 182
  IF ~~ THEN REPLY #16883 /* ~"Merci, Morte. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from: 181.1
  SAY #16614 /* ~Morte te regarde un moment, silencieux, puis acquiesce. "Ouais. Si ça a autant d'importance pour toi, je le ferai."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16884 /* ~"Merci. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16885 /* ~"Merci. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16886 /* ~"Merci. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16887 /* ~"Merci. Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16888 /* ~"Merci. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16889 /* ~"Merci. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16890 /* ~"Merci. Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16891 /* ~"Merci. J'ai des questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16892 /* ~"Merci, Morte. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 183 // from:
  SAY #16615 /* ~"Dis, je ne vois *vraiment* pas où cela peut nous mener. C'est le sang séché d'une chose en pierre, chef. Ce n'est pas la façon de travailler de ces petits gars."~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 2
END

IF ~~ THEN BEGIN 184 // from:
  SAY #16616 /* ~"Et, allez, c'est reparti. Je ne peux pas *croire* que tu perdes ainsi ton temps, chef !"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 3
END

IF ~~ THEN BEGIN 185 // from:
  SAY #16617 /* ~"Tu sais, chef, j'ai vu des trucs bizarres… mais que ce truc soit *possible*, ça me chiffonne."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16893 /* ~"Merci, Nordom. Morte ? Qu'est-ce que t'en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ GOTO 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16894 /* ~"Merci, Nordom. Annah ? Tu peux ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16895 /* ~"Merci, Nordom. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16896 /* ~"Merci, Nordom. Grâce, vous pourriez y réfléchir ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16897 /* ~"Merci, Nordom. Dak'kon, tu pourrais aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16898 /* ~"Merci, Nordom. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16899 /* ~"Merci, Nordom. Vhailor, tu pourrais aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16900 /* ~"Merci, Nordom. J'ai quelques questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16901 /* ~"Je te remercie, Nordom. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #16618 /* ~"Oh ! J'peux pas regarder !"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 13
END

IF ~~ THEN BEGIN 187 // from:
  SAY #17533 /* ~"Pourquoi pas, chef ? Ça sera drôle à botter pour se remonter le moral, pas vrai ? Hum… Je pourrai du moins le botter par procuration. Je voudrais bien voir ce saut de cinq mètres, aussi !"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17583 /* ~"Qu'est-ce que tu en penses, Annah ?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17584 /* ~"Je t'en prends un, marchand."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17585 /* ~"Je préfère garder mes pièces de cuivre. J'ai des questions, marchand…"~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17586 /* ~"Je garde mes pièces de cuivre, marchand. Au revoir."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17587 /* ~"Je n'ai pas assez, marchand, mais j'ai quelques questions…"~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17588 /* ~"Je n'ai pas assez d'argent pour en acheter un. Peu importe, marchand. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #18801 /* ~Morte se tourne vers le rucher. "Va caguer."~ */
  IF ~~ THEN REPLY #18802 /* ~"Tu n'auras pas ce crâne."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ EXTERN ~DCOLYLFN~ 5
  IF ~~ THEN REPLY #18803 /* ~"Ce n'est pas ton crâne."~ */ EXTERN ~DCOLYLFN~ 6
  IF ~~ THEN REPLY #18804 /* ~Vérité : "Vas-y, prends le crâne."~ */ EXTERN ~DCOLYLFN~ 9
  IF ~~ THEN REPLY #18805 /* ~Attaque-le au moment où il baisse sa garde : "Vas-y, prends le crâne."~ */ EXTERN ~DCOLYLFN~ 10
  IF ~~ THEN REPLY #18578 /* ~Vérité : "Si tu peux me prouver que c'est bien ton crâne, je te le donne. Ce n'est que justice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ EXTERN ~DCOLYLFN~ 12
  IF ~~ THEN REPLY #18807 /* ~"Qui es-tu ?"~ */ EXTERN ~DCOLYLFN~ 13
  IF ~~ THEN REPLY #18808 /* ~"Je t'achète le crâne. Ça te va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ EXTERN ~DCOLYLFN~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #18809 /* ~Morte tient l'un des doigts de l'homme entre ses dents comme un cigare macabre. Il parle le doigt à la bouche. "Touche-moi de nouveau et ta main ira rejoindre ton doigt, bige."~ */
  IF ~~ THEN REPLY #18810 /* ~"Morte ! Rends-lui son doigt."~ */ GOTO 190
  IF ~~ THEN REPLY #18811 /* ~"Pas de chance. Disparais, bige."~ */ EXTERN ~DCOLYLFN~ 11
  IF ~~ THEN REPLY #18812 /* ~"Que ça te serve de leçon ! Au revoir."~ */ EXTERN ~DCOLYLFN~ 11
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #18813 /* ~Morte crache le doigt sur l'homme. Il rebondit sur sa poitrine et tombe par terre.~ */
  IF ~~ THEN REPLY #18814 /* ~"Pas de chance. Disparais, bige."~ */ EXTERN ~DCOLYLFN~ 11
  IF ~~ THEN REPLY #18815 /* ~"Que ça te serve de leçon ! Au revoir."~ */ EXTERN ~DCOLYLFN~ 11
END

IF ~~ THEN BEGIN 191 // from:
  SAY #18816 /* ~Morte se tourne vers toi. "Chef, ne donne rien à ce vaurien."~ */
  IF ~~ THEN REPLY #18817 /* ~"Je…"~ */ EXTERN ~DCOLYLFN~ 15
END

IF ~~ THEN BEGIN 192 // from:
  SAY #18818 /* ~Morte se tourne vers l'homme. "J'te parlais *pas*, imbécile. Quand je te parlerai, tu le sauras, parce que j'le ferai en grognant et en grommelant pour être sûr que tu m'comprennes."~ */
  IF ~~ THEN EXTERN ~DCOLYLFN~ 16
END

IF ~~ THEN BEGIN 193 // from:
  SAY #18819 /* ~"Chef, *non*."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18820 /* ~Donne-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ EXTERN ~DCOLYLFN~ 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18821 /* ~Donne-lui cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
~ EXTERN ~DCOLYLFN~ 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18822 /* ~Donne-lui cent pièces de cuivre.~ */ DO ~TakePartyGold(100)
~ EXTERN ~DCOLYLFN~ 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18823 /* ~Donne-lui cinq cents pièces de cuivre.~ */ DO ~TakePartyGold(500)
~ EXTERN ~DCOLYLFN~ 18
  IF ~  PartyGoldLT(5)
~ THEN REPLY #18824 /* ~"Je n'ai pas assez d'argent à te donner."~ */ EXTERN ~DCOLYLFN~ 19
  IF ~~ THEN REPLY #18825 /* ~"Laisse tomber. C'est pas ton crâne et tu l'auras pas."~ */ EXTERN ~DCOLYLFN~ 6
END

IF ~~ THEN BEGIN 194 // from:
  SAY #18826 /* ~"Je flotte avec le plus grand idiot du Multivers."~ */
  IF ~~ THEN REPLY #18827 /* ~"… Et quoi, Doigts Jaunes ? Si je te vole, tu feras *quoi* ?"~ */ EXTERN ~DCOLYLFN~ 20
  IF ~~ THEN REPLY #18828 /* ~"Bon, maintenant, j'ai quelques questions à te poser, Doigts Jaunes…"~ */ EXTERN ~DCOLYLFN~ 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18829 /* ~"Au revoir, Doigts Jaunes."~ */ EXTERN ~DCOLYLFN~ 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18830 /* ~"Au revoir, Doigts Jaunes."~ */ DO ~DestroyPartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 195 // from:
  SAY #18831 /* ~"Chef ! Allez !"~ */
  IF ~~ THEN EXTERN ~DCOLYLFN~ 52
END

IF ~~ THEN BEGIN 196 // from:
  SAY #18832 /* ~"Rien de bien beau non plus, de là où je flotte."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18833 /* ~Donne-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ EXTERN ~DCOLYLFN~ 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18834 /* ~Donne-lui dix pièces de cuivre.~ */ DO ~TakePartyGold(10)
~ EXTERN ~DCOLYLFN~ 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18835 /* ~Donne-lui cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ EXTERN ~DCOLYLFN~ 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18836 /* ~Donne-lui cent pièces de cuivre.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ EXTERN ~DCOLYLFN~ 53
  IF ~~ THEN REPLY #18837 /* ~"Je retire ce que j'ai dit. Va-t'en et que je ne te revoie plus jamais."~ */ EXTERN ~DCOLYLFN~ 61
END

IF ~~ THEN BEGIN 197 // from:
  SAY #19031 /* ~"Eh toi, gros cogneur ! Comment va ton ami dans le mur ?"~ */
  IF ~~ THEN EXTERN ~DOJO~ 11
END

IF ~~ THEN BEGIN 198 // from:
  SAY #19032 /* ~Morte baisse la tête. "Tout ce que tu veux, chef."~ */
  IF ~~ THEN REPLY #19033 /* ~"D'accord. Ojo, j'ai des questions."~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19034 /* ~"Ça va. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from:
  SAY #19551 /* ~"Ouaoh, chef… quelle beauté, hein ? C'est pas partout qu'on peut trouver une petite mignonne comme ça, tu sais."~ */
  IF ~~ THEN REPLY #19666 /* ~"Je ne trouve rien d'attirant à des cadavres en décomposition, Morte, femmes ou pas."~ */ GOTO 200
  IF ~~ THEN REPLY #19667 /* ~"Et bien, peut-être qu'en passant outre cette 'horrible vieille chose pourrissante'…"~ */ GOTO 201
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #19552 /* ~Les yeux de Morte roulent dans son crâne. "Euh ! Un jour tu comprendras ce que je veux dire."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19668 /* ~Ignore-le, salue le zombi.~ */ EXTERN ~DZOMCITF~ 1
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19669 /* ~Ignore-le, salue le zombi.~ */ EXTERN ~DZOMCITF~ 3
END

IF ~~ THEN BEGIN 201 // from: 199.1
  SAY #19553 /* ~"Ouais, tu vois, c'est ce que je… eh !" Morte pivote vers toi. "Te moquerais-tu de moi ?"~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19670 /* ~Ignore-le, salue le zombi.~ */ EXTERN ~DZOMCITF~ 1
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19671 /* ~Ignore-le, salue le zombi.~ */ EXTERN ~DZOMCITF~ 3
END

IF ~~ THEN BEGIN 202 // from:
  SAY #19681 /* ~" Eh… j'sais pas si tu veux parler à cette… chose."~ */
  IF ~~ THEN REPLY #19691 /* ~"Pourquoi pas, Morte ?"~ */ GOTO 203
  IF ~~ THEN REPLY #19692 /* ~"Bon, très bien. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #19693 /* ~Ignore Morte, salue la goule.~ */ EXTERN ~DGHOCITM~ 1
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #19682 /* ~"C'étaient autrefois des humains… eux, ou leurs ancêtres, se sont nourris de cadavres et voilà ce qu'ils sont devenus. Pas très joli à voir, chef… guère plus que des animaux, en fait. Des animaux *dangereux*."~ */
  IF ~~ THEN REPLY #19694 /* ~"Bon, très bien. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #19695 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DGHOCITM~ 1
END

IF ~~ THEN BEGIN 204 // from:
  SAY #19702 /* ~"Eh… j'sais pas si tu veux parler à cette… chose."~ */
  IF ~~ THEN REPLY #19713 /* ~"Ça me surprend, Morte… C'est un mort-vivant, c'est une femme. Tu n'es pas si difficile d'habitude."~ */ GOTO 206
  IF ~~ THEN REPLY #19714 /* ~"Pourquoi pas, Morte ?"~ */ GOTO 205
  IF ~~ THEN REPLY #19715 /* ~"Bon, très bien. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #19716 /* ~Ignore Morte, salue la goule.~ */ EXTERN ~DGHOCITF~ 1
END

IF ~~ THEN BEGIN 205 // from: 204.1 206.0
  SAY #19703 /* ~"C'étaient autrefois des humains… eux, ou leurs ancêtres, se sont nourris de cadavres et voilà ce qu'ils sont devenus. Pas très joli à voir, chef… guère plus que des animaux, en fait. Des animaux *dangereux*."~ */
  IF ~~ THEN REPLY #19717 /* ~"Bon, très bien. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #19718 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DGHOCITF~ 1
END

IF ~~ THEN BEGIN 206 // from: 204.0
  SAY #19704 /* ~"C'est pas tout à fait la même chose, chef…"~ */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 207 // from:
  SAY #20469 /* ~"Cette pilleuse de tombe est aveugle et presque sourde."~ */
  IF ~~ THEN EXTERN ~DMARTA~ 9
END

IF ~~ THEN BEGIN 208 // from:
  SAY #20470 /* ~"Je crois qu'elle veut dire organes. J'espère qu'elle veut dire organes."~ */
  IF ~~ THEN EXTERN ~DMARTA~ 15
END

IF ~~ THEN BEGIN 209 // from:
  SAY #20471 /* ~Morte se tourne vers Marta. "Oui, des trucs." Il se tourne ensuite vers toi. "Ce n'est qu'une question de sémantique."~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20612 /* ~"Marta, pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ EXTERN ~DMARTA~ 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20613 /* ~"Marta, pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ EXTERN ~DMARTA~ 16
  IF ~~ THEN REPLY #20614 /* ~"Euh… Très bien. Je dois m'en aller, Marta. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from:
  SAY #20472 /* ~"Je ne vais *certainement* pas regarder ça."~ */
  IF ~~ THEN EXTERN ~DMARTA~ 24
END

IF ~~ THEN BEGIN 211 // from:
  SAY #21602 /* ~"Oh, au nom des Puissances… ! Un dabus."~ */
  IF ~~ THEN REPLY #24695 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 212
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #21603 /* ~"C'est un dabus. Ils *s'expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu'il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c'est vraiment nécessaire. Quel groupe assommant ! Tu paries qu'ils *peuvent* parler, mais qu'ils préfèrent coder tout ce qu'ils disent ne serait-ce que pour le plaisir d'énerver tout le monde."~ */
  IF ~~ THEN REPLY #24696 /* ~"Qu'est-ce qu'un 'dabus' ?"~ */ GOTO 213
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #21604 /* ~"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de les écraser, sinon la Dame… se fâche."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24697 /* ~"La 'Dame des Douleurs' ? Qui c'est ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 214
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24698 /* ~"Que peux-tu me dire sur la Dame des Douleurs ?"~ */ GOTO 214
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24699 /* ~"Je vois."~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 214 // from: 213.0 213.1
  SAY #21605 /* ~"Elle dirige cette cité. Tu la reconnaîtras si tu la vois : elle a ces lames autour du visage, la taille d'un géant et elle flotte au-dessus du sol, comme ces gars." Morte fait un signe de tête en direction du dabus, qui vous observe tous les deux. "Personne ne sait grand-chose sur elle… elle ne parle pas beaucoup. Sache juste qu'il ne vaut mieux pas la mettre en colère. Si tu la vois, voici mon conseil : détale."~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #24700 /* ~"Euh… attends un instant. Tu as dit que les dabus flottent, n'est-ce pas ? Celui-ci marche sur le sol."~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #24701 /* ~"Euh… attends un instant. Tu as dit que les dabus flottent, n'est-ce pas ? Celui-ci marche sur le sol."~ */ GOTO 215
  IF ~~ THEN REPLY #24702 /* ~"Je vois."~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 215 // from: 214.0 214.1
  SAY #21606 /* ~Morte regarde le dabus, et ses yeux s'écarquillent. "Ah-ha ! Je savais que vous autres têtes de boucs ne pouviez pas marcher ! Je le savais !" Morte se tourne joyeusement vers toi. "Ha ! Celui-là ne doit pas être assez bizarre pour décoller du sol."~ */
  IF ~~ THEN REPLY #24703 /* ~"Peut-être bien…"~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 216 // from:
  SAY #21607 /* ~Morte pouffe. "Je finirai dans les entrailles d'un tanar'ri avant d'arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Cherche un natif de Sigil."~ */
  IF ~~ THEN REPLY #24704 /* ~"Je vois."~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 217 // from:
  SAY #21608 /* ~Morte pouffe. "Je finirai dans les entrailles d'un tanar'ri avant d'arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Dis à la sale gamine de le faire." Il fait signe en direction d'Annah. "C'est une native de la Ruche."~ */
  IF ~~ THEN REPLY #24705 /* ~"Peut-être…"~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 218 // from:
  SAY #21609 /* ~Morte pouffe. "Je finirai dans les entrailles d'un tanar'ri avant d'arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Il indique Dak'kon de la tête. "Demande à Pharisien-deux-fois-plus-silencieux de traduire."~ */
  IF ~~ THEN REPLY #24706 /* ~"Peut-être…"~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 219 // from:
  SAY #21610 /* ~Morte pouffe. "Je finirai dans les entrailles d'un tanar'ri avant d'arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Demande à la tanar'ri de le faire." Il indique Tombée-en-Disgrâce de la tête. "Elle a sûrement dû avoir à faire avec ces gars plus d'une fois."~ */
  IF ~~ THEN REPLY #24707 /* ~"Peut-être…"~ */ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 220 // from:
  SAY #22061 /* ~"Tu veux juste les tuer ! La sensibilité guette les Hommes-Poussières, je vois."~ */
  IF ~~ THEN REPLY #22062 /* ~"J'ai d'autres questions…"~ */ EXTERN ~DSOEGO~ 83
  IF ~~ THEN REPLY #22063 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from:
  SAY #22849 /* ~Morte te fixe du regard et secoue la tête.~ */
  IF ~~ THEN REPLY #22850 /* ~"Comment, cube héros ? 'Morte est un crâne idiot' ? Ah ça oui, hein, cube héros ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_3","GLOBALLaw",-1)
~ GOTO 222
  IF ~~ THEN REPLY #22851 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #22852 /* ~"Hé ! Il a pas dit ça !"~ */
  IF ~~ THEN REPLY #22853 /* ~"Si ! Il vient juste de le dire !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_4","GLOBALLaw",-1)
~ GOTO 223
  IF ~~ THEN REPLY #22854 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #22855 /* ~"Qu- ?! Donne-moi ça !"~ */
  IF ~~ THEN REPLY #22856 /* ~"Non, c'est l'mien. Il veut rester qu'avec moi de toute façon. Pas vrai, cube héros ? Ben oui, bien sûr !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_5","GLOBALLaw",-1)
~ GOTO 224
  IF ~~ THEN REPLY #22857 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #22858 /* ~"Je. Veux. Juste. Le. Tenir. Une. Seconde."~ */
  IF ~~ THEN REPLY #22859 /* ~"Mais t'as pas de mains."~ */ GOTO 225
  IF ~~ THEN REPLY #22860 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #22861 /* ~J'le tiendrai entre mes DENTS."~ */
  IF ~~ THEN REPLY #22862 /* ~"Non, je crois que j'vais juste le mettre de côté pour l'instant."~ */ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #22863 /* ~"Je vais réduire ce cube modrone en morceaux."~ [MRT251] */
  IF ~~ THEN REPLY #22864 /* ~"T'as entendu quelque chose cube héros ? Moi non plus !"~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from:
  SAY #22892 /* ~"Oooooh !" Morte claque des dents alors que Craddock se met à bouillonner… on l'entend presque prendre des notes dans sa tête.~ [MRT387] */
  IF ~~ THEN EXTERN ~DCRADDO~ 15
END

IF ~~ THEN BEGIN 228 // from:
  SAY #24174 /* ~"Tu sais, chef, j'en avais vraiment marre de… ses pauses… constantes… De toute façon… c'est une… bonne chose… qu'il se soit… enfin… tu."~ */
  IF ~~ THEN REPLY #24175 /* ~"Très drôle, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from:
  SAY #24176 /* ~"Chef, pourquoi est-ce qu'on aurait besoin d'une réserve illimitée d'eau ? Où est le feu, hein ?"~ */
  IF ~~ THEN REPLY #24177 /* ~"Cela pourrait nous servir plus tard, Morte. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #24178 /* ~"Il faut qu'on le fasse, Morte."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.1
  SAY #24179 /* ~"La chose à faire ? Au cas où tu l'aurais oublié, chef, il faut que tu t'occupes de ta propre quête ! Mais bon, c'est toi qui décides. Pfff…"~ */
  IF ~~ THEN REPLY #24180 /* ~"Merci pour ton approbation, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from:
  SAY #24903 /* ~"Eh… ça va ? J'ai vraiment cru qu't'étais clamsé."~ */
  IF ~~ THEN REPLY #24904 /* ~"Qu… ? Qui es-tu ?"~ */ DO ~SetGlobal("Morte","GLOBAL",1)
~ GOTO 232
  IF ~~ THEN REPLY #24905 /* ~"Je suis sûr que t'as des tas de choses intéressantes à dire, Morte, mais ferme-la et rejoins-moi IMMEDIATEMENT."~ */ DO ~SetGlobal("Morte","GLOBAL",1)
ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #24906 /* ~"Euh… qui je suis ? Et si *tu* commençais ? Qui tu es, toi ?"~ */
  IF ~~ THEN REPLY #24907 /* ~"Je… ne me rappelle pas. J'arrive pas à m'en rappeler."~ */ GOTO 233
  IF ~~ THEN REPLY #24908 /* ~"C'est à *toi* que j'ai demandé en premier, crâne."~ */ GOTO 234
END

IF ~~ THEN BEGIN 233 // from: 232.0 234.0 235.0
  SAY #24909 /* ~"Tu ne te souviens pas de ton *nom* ? Eh, la prochaine fois que tu passes une nuit en ville, vas-y doucement sur la bibe. Je m'appelle Morte. Moi aussi je suis piégé ici."~ */
  IF ~~ THEN REPLY #24910 /* ~"Piégé ?"~ */ GOTO 236
END

IF ~~ THEN BEGIN 234 // from: 232.1
  SAY #24911 /* ~"Ouais, 'et je t'ai demandé en *deuxième*. Comment tu t'appelles ?"~ */
  IF ~~ THEN REPLY #24912 /* ~"Je… ne me rappelle pas. J'arrive pas à m'en rappeler."~ */ GOTO 233
  IF ~~ THEN REPLY #24913 /* ~"Toi d'abord, crâne. C'est la dernière fois que je te le demande."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.1
  SAY #24914 /* ~"Pffff… c'que t'es têtu. Très bien, c'est *moi* qui vais jouer les gentils. Je m'appelle Morte. Et toi ?"~ */
  IF ~~ THEN REPLY #24915 /* ~"Je… ne me rappelle pas. J'arrive pas à m'en rappeler."~ */ GOTO 233
END

IF ~~ THEN BEGIN 236 // from: 233.0
  SAY #24916 /* ~"Ouais, comme t'as pas encore eu le temps de te remettre d'aplomb, voilà la chanson : j'ai essayé toutes les portes et cette salle est fermée à clé plus sûrement qu'une ceinture de chasteté."~ */
  IF ~~ THEN REPLY #24917 /* ~"On est enfermés… où ? Quel est cet endroit ?"~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #24918 /* ~"Ça s'appelle la 'Morgue'… c'est un grand édifice noir avec tout le charme architectural d'une araignée pleine."~ */
  IF ~~ THEN REPLY #24919 /* ~"'La Morgue' ? Qu'est-ce… je suis mort ?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #24920 /* ~"Pas de mon point de vue. Tu as plein de cicatrices…. on dirait qu'un bige t'a peint avec un couteau. Raison de plus pour jouer un air à cet endroit avant que celui qui a commencé la gravure revienne finir son boulot."~ */
  IF ~~ THEN REPLY #24921 /* ~"Comment on sort d'ici ?"~ */ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #24922 /* ~"Bon, toutes les portes sont fermées, nous avons donc besoin de la clé. Il y a des chances qu'un des cadavres errants l'ait."~ */
  IF ~~ THEN REPLY #24923 /* ~"Des cadavres errants ?"~ */ GOTO 240
END

IF ~~ THEN BEGIN 240 // from: 28.0 239.0
  SAY #24924 /* ~"Ouais, les gardiens de la Morgue utilisent des corps morts comme main-d'œuvre bon marché. Les cadavres sont aussi muets que des pierres. Ils sont inoffensifs et ne t'attaqueront que si tu les provoques."~ */
  IF ~~ THEN REPLY #24925 /* ~"Y a-t-il un autre moyen ? Je ne veux pas les tuer juste pour une clé."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Morte_1","GLOBALGood",1)
~ GOTO 241
  IF ~~ THEN REPLY #24926 /* ~"Je devrais donc attaquer un de ces cadavres et lui faucher la clé ?"~ */ GOTO 242
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #24927 /* ~"Quoi, tu penses que ça va les vexer ? Ils sont MORTS. La bonne nouvelle, c'est que si tu les tues, ils pourront au moins se reposer avant que leurs gardiens les ressuscitent pour les remettre au travail."~ */
  IF ~~ THEN REPLY #24928 /* ~"Bon, d'accord… J'en descendrai un et je prendrai la clé."~ */ GOTO 242
END

IF ~~ THEN BEGIN 242 // from: 240.1 241.0
  SAY #24929 /* ~"Bon, avant de faire ça, arme-toi. Je crois avoir vu un scalpel sur une des étagères par ici."

^NREMARQUE : recherche une arme pour attaquer les zombis sur les étagères de cette pièce.^-~ */
  IF ~~ THEN REPLY #24930 /* ~"D'accord, j'en chercherai un."~ */ GOTO 243
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #24931 /* ~"Une dernière chose : ces cadavres sont très lents, mais se faire frapper par l'un d'eux, c'est un peu comme embrasser un bélier. S'ils commencent à prendre l'avantage, n'oublie pas que tu peux COURIR et qu'eux ne le peuvent pas. Fais-en usage pour te mettre à l'abri."

^NREMARQUE : <RUNAWAY> Si tu es en danger de mort, mets de la distance entre toi et les zombis en courant, le temps de récupérer.^-~ */
  IF ~~ THEN REPLY #24932 /* ~"D'accord. Merci du conseil."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ JOURNAL #24933 /* ~J'ai commencé à écrire mes expériences pour y voir plus clair et dans l'espoir de comprendre ce qui se passait. Je me suis réveillé dans un endroit que l'on appelle la "Morgue"… C'est effectivement une sorte de morgue. Je ne sais pas qui je suis, ni ce que je fais ici, ni comment je suis arrivé. La première chose que j'ai découverte en me réveillant, c'est un crâne bavard du nom de Morte. Il m'a dit que nous étions coincés là, et que l'un des cadavres qui traînaient dans la salle devait avoir la clé. Il m'a proposé de fouiller les étagères de la salle pour trouver un scalpel, puis de le plonger dans l'un des corps jusqu'à ce qu'il "meure".~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from:
  SAY #25962 /* ~"C'est un genre d'encyclopédie sur pattes, chef. J'aime pas en parler à vrai dire."~ */
  IF ~  GlobalLT("Morte_Mimir","GLOBAL",2)
~ THEN DO ~IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0)
~ EXTERN ~DCWRUSHF~ 27
  IF ~  GlobalGT("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #66902 /* ~"Mais tu N'ES PAS un mimir, Morte…"~ */ EXTERN ~DCWRUSHF~ 27
END

IF ~~ THEN BEGIN 245 // from:
  SAY #25964 /* ~Morte agite ses sourcils et commence à planer vers la femme. "C'est pas tout ce que je-"~ */
  IF ~~ THEN REPLY #25965 /* ~"Ça suffit, Morte."~ */ GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #25966 /* ~"Ouais, ouais. Ça va." Morte roule les yeux et commence à marmonner. "Pfff, je pourrais tout aussi bien être *mort*…"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25967 /* ~"Dis… tu as bien dit 'tout seul'. Pourquoi, ce n'est pas le cas, d'habitude ?"~ */ EXTERN ~DCWRUSHF~ 28
  IF ~~ THEN REPLY #25968 /* ~"J'ai des questions à poser à cette femme…"~ */ EXTERN ~DCWRUSHF~ 2
  IF ~~ THEN REPLY #25969 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from:
  SAY #25970 /* ~Morte l'interrompt : "Bon, tu vois, chef, tout ça, ça dépend de la *qualité* de ton mimir. Certains - comme moi -- sont plus enchantés que d'autres, c'est tout. Plus… euh… 'conscients', c'est le terme."~ */
  IF ~~ THEN REPLY #25971 /* ~"Hum."~ */ EXTERN ~DCWRUSHF~ 29
  IF ~~ THEN REPLY #25972 /* ~"Je vois."~ */ EXTERN ~DCWRUSHF~ 29
END

IF ~~ THEN BEGIN 248 // from:
  SAY #25973 /* ~"Eh ! J'essaie juste de m'amuser, chef !"~ */
  IF ~~ THEN EXTERN ~DCWRUSHF~ 27
END

IF ~~ THEN BEGIN 249 // from:
  SAY #27285 /* ~"Un conseil, chef : je me tiendrai tranquille à présent - pas besoin de mettre plus de cadavres que nécessaire dans le livre des morts… en particulier des femmes. En plus, cela pourrait attirer les gardiens."~ */
  IF ~~ THEN REPLY #27303 /* ~"Je ne crois pas que tu en aies déjà parlé… *Qui* sont ces gardiens ?"~ */ GOTO 250
  IF ~~ THEN REPLY #27304 /* ~"Tous ces cadavres… d'où ils viennent ?"~ */ GOTO 252
  IF ~~ THEN REPLY #27305 /* ~"Pourquoi tu t'intéresses aux cadavres féminins ?"~ */ GOTO 253
  IF ~~ THEN REPLY #27306 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 257
END

IF ~~ THEN BEGIN 250 // from: 249.0 252.0 256.0
  SAY #27286 /* ~"Ils se donnent le nom d'Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C'est bande enfumée d'adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."~ */
  IF ~~ THEN REPLY #27307 /* ~"Je ne comprends pas… Qu'est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m'enfuis ?"~ */ GOTO 251
END

IF ~~ THEN BEGIN 251 // from: 250.0
  SAY #27287 /* ~"Tu n'écoutais pas ?! J'ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu'à l'extérieur ?"~ */
  IF ~~ THEN REPLY #27308 /* ~"Les cadavres que j'ai vus ici… d'où ils venaient ?"~ */ GOTO 252
  IF ~~ THEN REPLY #27309 /* ~"Tout à l'heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"~ */ GOTO 253
  IF ~~ THEN REPLY #27310 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 257
END

IF ~~ THEN BEGIN 252 // from: 249.1 251.0 256.1
  SAY #27288 /* ~"La mort visite les plans tous les jours, chef. Ces empotés sont tout ce qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après la mort."~ */
  IF ~~ THEN REPLY #27311 /* ~"Explique-moi… *Qui* sont ces gardiens ?"~ */ GOTO 250
  IF ~~ THEN REPLY #27312 /* ~"Tout à l'heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"~ */ GOTO 253
  IF ~~ THEN REPLY #27313 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 257
END

IF ~~ THEN BEGIN 253 // from: 249.2 251.1 252.1
  SAY #27289 /* ~"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d'aller les charcuter ou les découper pour trouver des clés."~ */
  IF ~~ THEN REPLY #27314 /* ~"La dernière chance ? De quoi… de quoi *tu* parles ?"~ */ GOTO 254
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #27290 /* ~"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu comprends ? Eh ? Eh ?"~ */
  IF ~~ THEN REPLY #27315 /* ~"Non… non, en fait, non."~ */ GOTO 255
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #27316 /* ~"Tu n'es pas sérieux ?"~ */ GOTO 255
END

IF ~~ THEN BEGIN 255 // from: 254.0 254.1
  SAY #27291 /* ~"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu'une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."~ */
  IF ~~ THEN REPLY #27317 /* ~"Mais… attends… Tu n'as pas dit que je n'étais *pas* mort, tout à l'heure ?"~ */ GOTO 256
END

IF ~~ THEN BEGIN 256 // from: 255.0
  SAY #27292 /* ~"Bon… d'accord, *tu* n'es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l'un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d'envie. "Bien sûr, les gardiens devraient d'abord s'en séparer et il y a peu de chances…"~ */
  IF ~~ THEN REPLY #27318 /* ~"Qui sont ces gardiens déjà ?"~ */ GOTO 250
  IF ~~ THEN REPLY #27319 /* ~"Mais d'où viennent tous ces cadavres ?"~ */ GOTO 252
  IF ~~ THEN REPLY #27320 /* ~"Très bien… Je vais essayer de m'en souvenir."~ */ GOTO 257
END

IF ~~ THEN BEGIN 257 // from: 249.3 251.2 252.2 256.2
  SAY #27293 /* ~"Écoute, chef. Tu es encore un peu enfumé après ton baiser avec la mort. Deux conseils ne seront pas de trop : un, si t'as des questions, *pose-les moi*, d'accord ?"

^NREMARQUE : <SPEAKTO>^-~ */
  IF ~~ THEN REPLY #27321 /* ~"Très bien… Si j'ai des questions, je te les poserai."~ */ GOTO 258
END

IF ~~ THEN BEGIN 258 // from: 257.0
  SAY #27294 /* ~"Deuxièmement, si tu es *aussi* oublieux que t'en as l'air, commence à écrire des choses - chaque fois que quelque chose te semble important, note-le pour ne pas l'oublier."~ */
  IF ~~ THEN REPLY #27322 /* ~"Comme dans un journal ?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #27295 /* ~"Ouais, comme dans un journal. Si tu commences à ne plus trop te souvenir de choses importantes, comme l'endroit où tu es, jette un œil et rafraîchis-toi la mémoire. Compris ?"

^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-~ */
  IF ~~ THEN REPLY #27323 /* ~"Très bien… Compris. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from:
  SAY #27296 /* ~"Il devrait y avoir un scalpel sur l'une de ces étagères. Je le trouverais avant d'en découdre avec un de ces cadavres."~ */
  IF ~~ THEN REPLY #27324 /* ~"Très bien… Je vais continuer à chercher."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 261 // from:
  SAY #27297 /* ~"Bien, tu as trouvé le scalpel ! Bon, va chercher ces cadavres… et ne t'en fais pas, je resterai derrière et te fournirai de précieux conseils tactiques."~ */
  IF ~~ THEN REPLY #27325 /* ~"Tu pourrais peut-être *m'aider*, Morte."~ */ GOTO 262
  IF ~~ THEN REPLY #27326 /* ~"D'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #27298 /* ~"Je t'aiderai. Les bons conseils ne sont pas si évidents."~ */
  IF ~~ THEN REPLY #27327 /* ~"Je voulais dire m'aider à attaquer le *cadavre*."~ */ GOTO 263
  IF ~~ THEN REPLY #27328 /* ~"Bon, très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 262.0
  SAY #27299 /* ~"Moi ? Mais je suis un romantique, pas un soldat. Je te gênerai."~ */
  IF ~~ THEN REPLY #27329 /* ~"Quand j'attaquerai ce cadavre, il vaudrait mieux que tu sois là si tu ne veux pas être le prochain à avoir droit à ce scalpel."~ */ GOTO 264
  IF ~~ THEN REPLY #27330 /* ~"Bon, très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #27300 /* ~"Bon… d'accord. Je vais t'aider."

^NREMARQUE : si tu veux que Morte t'aide à attaquer, il te suffit de vérifier que vous êtes tous deux sélectionnés lorsque vous attaquez le cadavre. Morte se joindra à l'attaque.^-~ */
  IF ~~ THEN REPLY #27331 /* ~"Ça me fait plaisir qu'on se comprenne. Maintenant, au travail."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #27301 /* ~"Bien, tu t'es occupé du bon cadavre, on dirait. Maintenant il va falloir trouver la clé. Elle devrait se trouver sur son corps. Une fois qu'on l'aura, on pourra se tirer d'ici."~ */
  IF ~~ THEN REPLY #27332 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #27302 /* ~"Parfait, voilà la clé. Elle doit rentrer dans le verrou de l'une des portes de la salle."~ */
  IF ~~ THEN REPLY #27333 /* ~"Bon, je vais essayer toutes les portes."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from:
  SAY #27911 /* ~Morte te souffle à l'oreille : "Un homme de loi."~ */
  IF ~~ THEN EXTERN ~DCWCAFEF~ 15
END

IF ~~ THEN BEGIN 268 // from:
  SAY #27912 /* ~"C'est un genre d'encyclopédie sur pattes, chef. J'aime pas en parler à vrai dire."~ */
  IF ~  GlobalLT("Morte_Mimir","GLOBAL",2)
~ THEN DO ~IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0)
~ EXTERN ~DCWCAFEF~ 50
  IF ~  GlobalGT("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #65536 /* ~"Mais tu N'ES PAS un mimir, Morte…"~ */ EXTERN ~DCWCAFEF~ 50
END

IF ~~ THEN BEGIN 269 // from:
  SAY #27913 /* ~Morte agite ses sourcils et commence à planer vers la femme. "C'est pas tout ce que je-"~ */
  IF ~~ THEN REPLY #27914 /* ~"Ça suffit, Morte."~ */ GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #27915 /* ~"Ouais, ouais. Ça va." Morte roule les yeux et commence à marmonner. "Pfff, je pourrais tout aussi bien être *mort*…"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #27916 /* ~"Dis… tu as bien dit 'tout seul'. Pourquoi, ce n'est pas le cas, d'habitude ?"~ */ EXTERN ~DCWCAFEF~ 51
  IF ~~ THEN REPLY #27917 /* ~"J'ai des questions à poser à cette femme…"~ */ EXTERN ~DCWCAFEF~ 4
  IF ~~ THEN REPLY #27918 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from:
  SAY #27919 /* ~Morte l'interrompt : "Bon, tu vois, chef, tout ça, ça dépend de la *qualité* de ton mimir. Certains - comme moi -- sont plus enchantés que d'autres, c'est tout. Plus… euh… 'conscients', c'est le terme."~ */
  IF ~~ THEN REPLY #27920 /* ~"Hum."~ */ EXTERN ~DCWCAFEF~ 52
  IF ~~ THEN REPLY #27921 /* ~"Je vois."~ */ EXTERN ~DCWCAFEF~ 52
END

IF ~~ THEN BEGIN 272 // from:
  SAY #27922 /* ~"Eh ! J'essaie juste de m'amuser, chef !"~ */
  IF ~~ THEN EXTERN ~DCWCAFEF~ 50
END

IF ~~ THEN BEGIN 273 // from:
  SAY #28036 /* ~Morte acquiesce avec satisfaction. "Eh, ce type n'est pas mauvais bougre."~ */
  IF ~~ THEN REPLY #28041 /* ~"Bon, tiens… Reprends ton argent, Malmanier."~ */ DO ~TakePartyGold(10)
~ EXTERN ~DMALMANR~ 13
  IF ~~ THEN REPLY #28042 /* ~Jette les dix pièces de cuivre à Malmanier.~ */ DO ~TakePartyGold(10)
~ EXTERN ~DMALMANR~ 14
  IF ~~ THEN REPLY #28043 /* ~"Vraiment ? Je n'ai rien entendu, Morte. Allons-y."~ */ EXTERN ~DMALMANR~ 15
END

IF ~~ THEN BEGIN 274 // from:
  SAY #28037 /* ~Morte acquiesce avec satisfaction. "Eh, ce type n'est pas mauvais bougre."~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28038 /* ~"Bon, tiens… Reprends ton argent, Malmanier."~ */ DO ~TakePartyGold(30)
~ EXTERN ~DMALMANR~ 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28039 /* ~Jette les trente pièces de cuivre à Malmanier.~ */ DO ~TakePartyGold(30)
~ EXTERN ~DMALMANR~ 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28040 /* ~"Bon, tiens… Reprends ton argent, Malmanier."~ */ DO ~TakePartyGold(50)
~ EXTERN ~DMALMANR~ 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28044 /* ~Jette les cinquante pièces de cuivre à Malmanier.~ */ DO ~TakePartyGold(50)
~ EXTERN ~DMALMANR~ 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28045 /* ~"Bon, tiens… Reprends ton argent, Malmanier."~ */ DO ~TakePartyGold(50)
~ EXTERN ~DMALMANR~ 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28046 /* ~Jette les cinquante pièces de cuivre à Malmanier.~ */ DO ~TakePartyGold(50)
~ EXTERN ~DMALMANR~ 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28047 /* ~"Bon, tiens… Reprends ton argent, Malmanier."~ */ DO ~TakePartyGold(80)
~ EXTERN ~DMALMANR~ 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28048 /* ~Jette les quatre-vingt pièces de cuivre à Malmanier.~ */ DO ~TakePartyGold(80)
~ EXTERN ~DMALMANR~ 14
  IF ~~ THEN REPLY #28049 /* ~"Vraiment ? Je n'ai rien entendu, Morte. Allons-y."~ */ EXTERN ~DMALMANR~ 15
END

IF ~~ THEN BEGIN 275 // from:
  SAY #28630 /* ~"Ça a l'air chiant."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 60
END

IF ~~ THEN BEGIN 276 // from:
  SAY #28631 /* ~"C'est une tanar'ri… une succube, chef."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 277 // from:
  SAY #28632 /* ~"Bâcle ça, fiélonne !" Morte claque des dents. "J'suis TOUT À FAIT pour que la succube vienne avec nous… Même les Puissances savent que t'as rien d'une rigolote, *toi*."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 166
END

IF ~~ THEN BEGIN 278 // from:
  SAY #28633 /* ~"Eh, attends une minute ! C'est *moi* qui connais bien les plans ! C'est mon boulot, chef !"~ */
  IF ~~ THEN REPLY #28634 /* ~"Je trouve que c'est plutôt bien d'avoir deux personnes qui connaissent bien les plans dans la bande. En plus, j'ai aussi dit 'agréable', Morte."~ */ GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.0
  SAY #28635 /* ~"Agréable à regarder, peut-être ! Il suffit qu'une pépée se dénude un peu et tu l'enrôles aussi sec !" Morte se tait. "J'm'en fous en fait, mais je tenais à le dire."~ */
  IF ~~ THEN REPLY #28636 /* ~"C'est noté, Morte. Bien… Dame Grâce, pardonnez-moi d'avoir été aussi direct, mais qu'est-ce que vous diriez de voyager avec nous ?"~ */ EXTERN ~DGRACE~ 79
END

IF ~~ THEN BEGIN 280 // from:
  SAY #28637 /* ~"Ce que mon compagnon balafré veut dire, c'est nous DEUX… J'm'appelle Morte : je m'excuse pour l'impolitesse de mon compagnon qui ne nous a pas présentés… ce serait une EXCELLENTE idée si vous veniez aussi. Nous avons plein de place pour une succube. PLEIN de place."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 119
END

IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */
~  Global("Morte_Stolen","GLOBAL",2)
!GlobalGT("Fortress_Morte","GLOBAL",2)
~ THEN BEGIN 281 // from:
  SAY #28738 /* ~"Merci, chef. Trop heureux d'être de retour avec toi." Sa voix est emplie de sarcasme. "Et j'ai appris un nouveau tour quand j'étais là-bas et tout et tout."~ */
  IF ~~ THEN REPLY #28743 /* ~"Ouais. C'est un plaisir de te retrouver."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",3)
~ EXIT
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28744 /* ~"Excuse-moi, l'ami. Je voulais le bluffer."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Morte_Stolen","GLOBAL",3)
~ GOTO 282
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28745 /* ~"Excuse-moi, l'ami. Je voulais le bluffer."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",3)
~ GOTO 283
END

IF ~~ THEN BEGIN 282 // from: 281.1
  SAY #28739 /* ~"Vraiment ? C'est gentil de ta part, chef. Bonne idée. Tu es provisoirement pardonné. Mais ne recommence pas."~ */
  IF ~~ THEN REPLY #28746 /* ~"Bien sûr, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 281.2
  SAY #28740 /* ~"C'est bizarre, je n'arrive pas à te croire. Oublions ce qui s'est passé. Allons-y."~ */
  IF ~~ THEN REPLY #28747 /* ~"Très bien."~ */ EXIT
  IF ~~ THEN REPLY #28748 /* ~"Morte, je le bluffais. Tu vas voir."~ */ EXIT
END

IF ~~ THEN BEGIN 284 // from:
  SAY #28741 /* ~"Merci, chef. Sortons d'ici !" Morte s'interrompt. "Oh, au fait, chef… ces types avaient vraiment toute leur tête. Ils m'ont montré quelque chose de rusé."~ */
  IF ~~ THEN REPLY #28749 /* ~"Partons."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from:
  SAY #28962 /* ~"Euh… chef ? T'as déjà vu des statues, non ? Tu sais bien qu'elles ne parlent pas ?~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28967 /* ~"Réfléchis, Morte : tu es un crâne flottant parlant qui se prive de la possibilité de devenir une statue vivante."~ */ GOTO 286
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28968 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ EXTERN ~DQUISAI~ 5
  IF ~~ THEN REPLY #28969 /* ~"Peut-être, Morte. Je vais juste le toucher…"~ */ EXTERN ~DQUISAI~ 3
  IF ~~ THEN REPLY #28970 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #28963 /* ~"Bon… euh… Hum. Tu m'as compris, chef."~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28971 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ EXTERN ~DQUISAI~ 5
  IF ~~ THEN REPLY #28972 /* ~"Attends, Morte. Je vais juste le toucher…"~ */ EXTERN ~DQUISAI~ 3
  IF ~~ THEN REPLY #28973 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #28964 /* ~"C'est peut-être un peu trop anatomiquement correct, chef ?"~ */
  IF ~~ THEN REPLY #28974 /* ~"C'était une question de pure forme, Morte."~ */ GOTO 288
END

IF ~~ THEN BEGIN 288 // from: 287.0
  SAY #28965 /* ~"Bien sûr, chef. Je le savais."~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28975 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ EXTERN ~DQUISAI~ 5
  IF ~~ THEN REPLY #28976 /* ~Frappe la statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ EXTERN ~DQUISAI~ 23
  IF ~~ THEN REPLY #28977 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from:
  SAY #28966 /* ~Morte roule les yeux et émet un son étouffé. "Par les Pouvoirs, non, pas encore un bige qui parle… comme… ça !"~ */
  IF ~~ THEN REPLY #28978 /* ~"J'ai des questions à te poser sur toi…"~ */ EXTERN ~DQUISAI~ 11
  IF ~~ THEN REPLY #28979 /* ~"J'ai des questions sur cet endroit."~ */ EXTERN ~DQUISAI~ 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28980 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ EXTERN ~DQUISAI~ 29
  IF ~~ THEN REPLY #28981 /* ~"Je reviendrai te parler plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #29677 /* ~"Hé, chef - il croise les doigts !"~ */
  IF ~~ THEN EXTERN ~DQUELL~ 21
END

IF ~~ THEN BEGIN 291 // from:
  SAY #30527 /* ~Morte annonce dans un murmure. "Il dit qu'il est avocat. Conseiller. Un de ces biges qui branlent leur râtelier au tribunal."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 292 // from:
  SAY #30816 /* ~Morte se tourne et regarde derrière lui. "Où ?! Où ?!"~ */
  IF ~~ THEN EXTERN ~DABLE~ 2
END

IF ~~ THEN BEGIN 293 // from:
  SAY #30817 /* ~Morte sursaute. "Regarde, derrière toi - un autre crâne flottant !"~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #30822 /* ~Cherche toi-même le crâne.~ */ EXTERN ~DABLE~ 10
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #30823 /* ~Laisse Morte s'amuser.~ */ EXTERN ~DABLE~ 10
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #30824 /* ~"Viens, Morte. J'ai des questions à lui poser…"~ */ EXTERN ~DABLE~ 10
END

IF ~~ THEN BEGIN 294 // from:
  SAY #30818 /* ~"Là où je te montre ! Là !"~ */
  IF ~~ THEN EXTERN ~DABLE~ 11
END

IF ~~ THEN BEGIN 295 // from:
  SAY #30819 /* ~Morte déclare d'un ton faussement exaspéré : "Tu viens de le rater ! Toute une *troupe* ! Ça ne se produira sûrement pas de nouveau avant un million de révolutions du Grand Anneau !"~ */
  IF ~~ THEN EXTERN ~DABLE~ 12
END

IF ~~ THEN BEGIN 296 // from:
  SAY #30820 /* ~Morte remue légèrement, comme s'il haussait les épaules. "Je préfère en parler comme d'un aperçu éclairé sur la nature humaine."~ */
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30825 /* ~"J'ai quelques questions…"~ */ EXTERN ~DABLE~ 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30826 /* ~Attire de nouveau l'attention de l'homme.~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ EXTERN ~DABLE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #30821 /* ~"Tu sais, chef, C'EST PEUT-ÊTRE ASSEZ DINGUE POUR MARCHER !"~ */
  IF ~~ THEN EXTERN ~DABLE~ 65
END

IF ~~ THEN BEGIN 298 // from:
  SAY #31566 /* ~"Par les tétons tranchants de la Dame, qu'est-ce qui…"

Soudain, le silence tombe, alors que tu es privé du dernier de tes sens.~ [MRT387] */
  IF ~~ THEN REPLY #31567 /* ~Meurs abominablement, victime du Terrible Maléfice de Gangroihydron.~ */ DO ~OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 299 // from:
  SAY #32367 /* ~"Les 'soltifs' ?! Bon sang ! Nous n'allons pas *écouter* ce baratin, si ? Allons… allons trouver quelque Sensat qui n'a jamais eu le plaisir de goûter à la passion fiévreuse des lèvres d'un crâne." Il remue les sourcils avec anticipation.~ */
  IF ~~ THEN REPLY #32368 /* ~"Tais-toi, Morte. On reste… au moins un certain temps."~ */ EXTERN ~DDEATHAD~ 1
  IF ~~ THEN REPLY #32369 /* ~Ne fais pas attention à Morte, continue à écouter.~ */ EXTERN ~DDEATHAD~ 1
  IF ~~ THEN REPLY #32370 /* ~"Tu as raison, Morte - Partons."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 300 // from:
  SAY #32371 /* ~Morte murmure : "C'est le début de plus de souffrances."~ */
  IF ~~ THEN REPLY #32372 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 2
  IF ~~ THEN REPLY #32373 /* ~"Morte - tais-toi."~ */ EXTERN ~DDEATHAD~ 2
  IF ~~ THEN REPLY #32374 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DDEATHAD~ 2
  IF ~~ THEN REPLY #32375 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 301 // from:
  SAY #32376 /* ~Morte murmure : "Ça, c'est sûr."~ */
  IF ~~ THEN REPLY #32377 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 3
  IF ~~ THEN REPLY #32378 /* ~"Morte - tais-toi."~ */ EXTERN ~DDEATHAD~ 3
  IF ~~ THEN REPLY #32379 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ GOTO 303
  IF ~~ THEN REPLY #32380 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 302 // from:
  SAY #32381 /* ~Morte murmure : "Et un ennui éternel."~ */
  IF ~~ THEN REPLY #32382 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 5
  IF ~~ THEN REPLY #32383 /* ~"S'il te plaît, Morte : silence."~ */ EXTERN ~DDEATHAD~ 5
  IF ~~ THEN REPLY #32384 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DDEATHAD~ 5
  IF ~~ THEN REPLY #32385 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 303 // from: 301.2
  SAY #32386 /* ~Morte murmure : "On dirait qu'on sait tous les deux où on va atterrir après notre mort."~ */
  IF ~~ THEN REPLY #32387 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 6
  IF ~~ THEN REPLY #32388 /* ~"Morte : arrête de jacasser."~ */ EXTERN ~DDEATHAD~ 6
  IF ~~ THEN REPLY #32389 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DDEATHAD~ 6
  IF ~~ THEN REPLY #32390 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 304 // from:
  SAY #32391 /* ~Morte murmure : "Et encore, si tu as de la chance."~ */
  IF ~~ THEN REPLY #32392 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 8
  IF ~~ THEN REPLY #32393 /* ~"Ça suffit, Morte."~ */ EXTERN ~DDEATHAD~ 8
  IF ~~ THEN REPLY #32394 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DDEATHAD~ 8
  IF ~~ THEN REPLY #32395 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 305 // from:
  SAY #32396 /* ~Morte murmure : "Et c'est censé être motivant ? Il faut qu'on recommence *tout* ? Je suis impatient d'être à nouveau un crâne flottant. Ta ! Qu'il aille caguer. Quel idiot. Il parle comme quelqu'un qui n'est jamais mort !"~ */
  IF ~~ THEN REPLY #32397 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 9
  IF ~~ THEN REPLY #32398 /* ~"Allez, Morte. Silence."~ */ EXTERN ~DDEATHAD~ 9
  IF ~~ THEN REPLY #32399 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DDEATHAD~ 9
  IF ~~ THEN REPLY #32400 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #32401 /* ~Morte murmure : "Oh, ça c'est un fardeau que je ne suis pas prêt d'oublier."~ */
  IF ~~ THEN REPLY #32402 /* ~Fais un signe de tête à Morte sans rien dire.~ */ EXTERN ~DDEATHAD~ 11
  IF ~~ THEN REPLY #32403 /* ~"Morte - tais-toi."~ */ EXTERN ~DDEATHAD~ 11
  IF ~~ THEN REPLY #32404 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DDEATHAD~ 11
  IF ~~ THEN REPLY #32405 /* ~"Sans blague ! On s'en va, Morte."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 307 // from:
  SAY #32406 /* ~Morte dit tout haut : "Quelle soupe !"~ */
  IF ~~ THEN EXTERN ~DDEATHAD~ 15
END

IF ~~ THEN BEGIN 308 // from:
  SAY #32407 /* ~Morte se met à l'abri, hors de vue du conférencier, puis se tourne vers toi et déclare : "Vas-y chef. Dis-lui le soltif."~ */
  IF ~~ THEN REPLY #32408 /* ~"Oui, j'ai une question…"~ */ EXTERN ~DDEATHAD~ 17
  IF ~~ THEN REPLY #32409 /* ~"Je n'ai pas de questions. Mon ami s'est trompé."~ */ EXTERN ~DDEATHAD~ 16
END

IF ~~ THEN BEGIN 309 // from:
  SAY #32410 /* ~"Géant ! Une autre mort ! Je signe !" Un rire parcourt l'assistance. L'orateur paraît en colère.~ */
  IF ~~ THEN REPLY #32411 /* ~"Qu'est-ce qui se passe quand ils meurent ?"~ */ EXTERN ~DDEATHAD~ 26
  IF ~~ THEN REPLY #32412 /* ~"J'ai une autre question…"~ */ EXTERN ~DDEATHAD~ 17
  IF ~~ THEN REPLY #32413 /* ~"C'est tout ce que je voulais savoir."~ */ EXTERN ~DDEATHAD~ 18
END

IF ~~ THEN BEGIN 310 // from:
  SAY #32651 /* ~"Tu veux que je m'occupe de cette azimutée, chef ?"~ */
  IF ~~ THEN REPLY #32661 /* ~"Pas de pitié, Morte."~ */ GOTO 316
  IF ~~ THEN REPLY #32662 /* ~"Non, Morte… Je vais régler ça."~ */ EXTERN ~DSARHAVA~ 3
END

IF ~~ THEN BEGIN 311 // from:
  SAY #32652 /* ~"J'adore tes manières d'enfumé, chef."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 4
END

IF ~~ THEN BEGIN 312 // from:
  SAY #32653 /* ~Alors que tu t'agenouilles devant la femme, Morte s'écrie : "Chef ! Tu rigoles ! Je veux dire, à moins que tu sois dans ce *genre* de…"~ */
  IF ~~ THEN REPLY #32663 /* ~Ignore Morte, lèche la botte de la femme.~ */ EXTERN ~DSARHAVA~ 14
  IF ~~ THEN REPLY #32664 /* ~"Je ne veux pas d'ennuis, Morte. Si je ne fais pas gaffe, je risque d'attirer la garde."~ */ GOTO 313
  IF ~~ THEN REPLY #32665 /* ~"Tu as raison, Morte. Allons-y."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 313 // from: 312.1
  SAY #32654 /* ~"Bien, ça me paraît pas idiot… mais enfin…"~ */
  IF ~~ THEN REPLY #32666 /* ~"Laisse tomber, Morte. Madame… Arrêtons ça avant que j'appelle les gardes."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32667 /* ~"Tu as raison, Morte. Allons-nous-en."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 314 // from:
  SAY #32655 /* ~Morte glousse et claque sa mâchoire. "Un homme à femmes comme tous les autres, hein chef ?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 315 // from:
  SAY #32656 /* ~"Oh-oh…"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 316 // from: 310.0
  SAY #32657 /* ~Morte te fait un clin d'œil et appelle la femme : "Hé, toi ! Oui c'est ça, toi, l'espèce de grue… regarde-moi quand je te parle ! Qu'est-ce qui te rend si aigrie, hmm ?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 39
END

IF ~~ THEN BEGIN 317 // from:
  SAY #32658 /* ~"Oh, est-ce que la petite princesse du désert a les nerfs parce que le fils du sultan voulait un autre fils ? Dis-moi, 'Princesse du désert', est-ce que tu passes la plupart de tes nuits à te battre et à boire, suivie par une poignée de lèche-bottes libidineux, en cherchant de manière pathétique à justifier ton existence auprès d'un père désapprobateur ?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 40
END

IF ~~ THEN BEGIN 318 // from:
  SAY #32659 /* ~"Est-ce que tu crois que tes bagarres mesquines te feront te sentir mieux ? Te feront te sentir *bonne* à quelque chose ? Parce que NON ! Si c'est ta misérable manière de mieux accepter qui tu *es*, je te suggère de laisser tomber, rentre chez toi et de te trouver un courtisan pour rentrer dans son harem !"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 41
END

IF ~~ THEN BEGIN 319 // from:
  SAY #32660 /* ~Morte se retourne vers toi. "Tu vois, chef, je *savais* ce qui allait se passer ici. On sait *tous* que Morte a mis dans le mille. Mais, oh non, la fière petite princesse du désert a fait des siennes en public, en humili--"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 42
END

IF ~~ THEN BEGIN 320 // from:
  SAY #33073 /* ~"La Guerre Sanglante ? Plus ennuyant que d'écouter un Greffier réciter les lois. Allons chercher quelques jeunes Sensats qui ont besoin d'être instruites dans le domaine de la passion !" Il remue les sourcils d'excitation.~ */
  IF ~~ THEN REPLY #33074 /* ~"Non, Morte… Je veux écouter ça."~ */ EXTERN ~DGHYSIS~ 1
  IF ~~ THEN REPLY #33075 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~DGHYSIS~ 1
  IF ~~ THEN REPLY #33076 /* ~"D'accord, Morte - on y va."~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 321 // from:
  SAY #33300 /* ~Morte écarquille les yeux et s'écrie "Ouah ! Regarde ! Une bouse qui parle !"~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 49
END

IF ~~ THEN BEGIN 322 // from:
  SAY #33301 /* ~Morte remue pour te désigner, tout en parlant à l'homme : "Je parlais de ce grand bige plein de cicatrices, affranchi… pas de toi ! Sans rancune, hein ?"~ */
  IF ~~ THEN REPLY #33302 /* ~"Attention, Morte…"~ */ EXTERN ~DGHIVEM~ 51
  IF ~~ THEN REPLY #33303 /* ~Ignore Morte.~ */ EXTERN ~DGHIVEM~ 51
END

IF ~~ THEN BEGIN 323 // from:
  SAY #33423 /* ~Morte écarquille les yeux et s'écrie "Ouah ! Regarde ! Une bouse qui parle !"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 47
END

IF ~~ THEN BEGIN 324 // from:
  SAY #33429 /* ~Morte remue dans ta direction, tout en parlant à l'homme : "Je parlais de ce grand bige plein de cicatrices, affranchi… pas de toi ! Sans rancune, hein ?"~ */
  IF ~~ THEN REPLY #33430 /* ~"Attention, Morte…"~ */ EXTERN ~DGHIVEF~ 49
  IF ~~ THEN REPLY #33433 /* ~Ignore Morte.~ */ EXTERN ~DGHIVEF~ 49
END

IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */
~  !InParty("Morte")
!GlobalGT("Fortress_Morte","GLOBAL",2)
~ THEN BEGIN 325 // from:
  SAY #33958 /* ~"Je savais que tu reviendrais, chef ! T'as finalement réalisé que t'avais besoin de moi, hein ?"~ [MRT516] */
  IF ~~ THEN REPLY #33959 /* ~"Ouais… Allons-y."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #33960 /* ~"Pas pour le moment, Morte."~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.1
  SAY #33961 /* ~"Hmmff. Bien, je ne sais pas combien de temps je vais attendre ici, alors je vais te donner un DERNIÈRE chance. Tu es sûr que tu ne veux pas de mes sages conseils et de mon vif esprit ?"~ */
  IF ~~ THEN REPLY #33962 /* ~"Morte, tu n'as RIEN de tout ça."~ */ GOTO 327
  IF ~~ THEN REPLY #33963 /* ~"Très bien, j'ai changé d'avis. Allez, partons."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #33964 /* ~"Pas pour le moment, Morte. Peut-être plus tard."~ */ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0 326.2
  SAY #33965 /* ~"Est-ce que tu essaies de me vexer, chef ? Qu'est-ce qu'il y a, c'est quelque chose que j'ai dit ? Le fait que je n'ai pas de bras ? Quoi ?"~ */
  IF ~~ THEN REPLY #33966 /* ~"Très bien, j'ai changé d'avis. Allez, partons."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #33967 /* ~"Non, ce n'est pas ça. C'est juste que je n'ai pas besoin de ta compagnie pour le moment. Au revoir, Morte."~ */ GOTO 328
END

IF ~~ THEN BEGIN 328 // from: 327.1
  SAY #33968 /* ~"Bien, je ne vais pas attendre pour TOUJOURS, alors tu ferais mieux de revenir, dès que tu auras changé d'avis."~ */
  IF ~~ THEN REPLY #33969 /* ~"Je le ferai. Au revoir, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
  SAY #33970 /* ~"Mais qu'est-ce qui va pas, chef ?"~ */
  IF ~~ THEN REPLY #65539 /* ~"Peux-tu me relire ce qui est tatoué sur mon dos ?"~ */ GOTO 649
  IF ~~ THEN REPLY #65540 /* ~"Peux-tu me parler de Sigil ?"~ */ GOTO 659
  IF ~  Global("Morte_Talent","GLOBAL",0)
~ THEN REPLY #65541 /* ~"Morte… Ça ne me dérange pas que tu me suives mais ne sais-tu rien faire *d'autre* que bavarder ?"~ */ GOTO 663
  IF ~  Global("Morte_Talent","GLOBAL",1)
~ THEN REPLY #65542 /* ~"Morte… Quels sont tes talents magiques déjà ?"~ */ GOTO 666
  IF ~  Global("Morte_Tattoo_XP","GLOBAL",1)
~ THEN REPLY #65543 /* ~"Morte, pourquoi ne m'as-tu pas parlé de cette ligne supplémentaire dans le tatouage de mon dos ?"~ */ GOTO 654
  IF ~~ THEN REPLY #65544 /* ~"J'ai besoin d'un conseil. À ton avis, qu'est-ce qu'on devrait faire maintenant ?"~ */ GOTO 669
  IF ~  Global("Know_Mimir","GLOBAL",1)
Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #65545 /* ~"Tu as dit que tu étais un mimir, n'est-ce pas, Morte ?"~ */ GOTO 684
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #65546 /* ~"Raconte-moi encore une fois comment tu as fini sur le Pilier des Crânes."~ */ GOTO 693
  IF ~  Global("Know_Morte_Pillar","GLOBAL",1)
~ THEN REPLY #65547 /* ~"Morte, pourquoi tu as continué à voyager avec moi une fois que je t'ai sorti du Pilier ?"~ */ GOTO 715
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #65548 /* ~"Qu'est-ce que tu sais de la Guerre Sanglante ?"~ */ GOTO 723
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #65549 /* ~"Que sais-tu sur la guenaude noire nommée Ravel ?"~ */ GOTO 722
  IF ~~ THEN REPLY #65550 /* ~"Comment es-tu mort, Morte ?"~ */ GOTO 726
  IF ~~ THEN REPLY #65551 /* ~"Rien, Morte. Je vérifiais juste que tu étais toujours avec moi."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from:
  SAY #34990 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #34991 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 331
  IF ~~ THEN REPLY #35001 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0 330.1
  SAY #34992 /* ~"T'es AVEUGLE ou quoi ?! Elle me fixait du regard ! Elle me VOULAIT tellement que c'en était gênant."~ */
  IF ~~ THEN REPLY #34993 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 332
  IF ~~ THEN REPLY #34996 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 333
  IF ~~ THEN REPLY #34999 /* ~"Je trouve que tu as un peu trop d'imagination."~ */ GOTO 333
  IF ~~ THEN REPLY #35000 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #34994 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #34995 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 331.1 331.2
  SAY #34997 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #34998 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from:
  SAY #35022 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35023 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 335
  IF ~~ THEN REPLY #35033 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 334.0 334.1
  SAY #35024 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35025 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 336
  IF ~~ THEN REPLY #35028 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 337
  IF ~~ THEN REPLY #35031 /* ~"Je trouve que tu as un peu trop d'imagination."~ */ GOTO 337
  IF ~~ THEN REPLY #35032 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #35026 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35027 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.1 335.2
  SAY #35029 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35030 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from:
  SAY #35054 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35055 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 339
  IF ~~ THEN REPLY #35065 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 339
END

IF ~~ THEN BEGIN 339 // from: 338.0 338.1
  SAY #35056 /* ~"T'es AVEUGLE ou quoi ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35057 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 340
  IF ~~ THEN REPLY #35060 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 341
  IF ~~ THEN REPLY #35063 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 341
  IF ~~ THEN REPLY #35064 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #35058 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35059 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 339.1 339.2
  SAY #35061 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35062 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from:
  SAY #35086 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35087 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 343
  IF ~~ THEN REPLY #35097 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0 342.1
  SAY #35088 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35089 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 344
  IF ~~ THEN REPLY #35092 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 345
  IF ~~ THEN REPLY #35095 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 345
  IF ~~ THEN REPLY #35096 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 343.0
  SAY #35090 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35091 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 343.1 343.2
  SAY #35093 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35094 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from:
  SAY #35118 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35119 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 347
  IF ~~ THEN REPLY #35129 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0 346.1
  SAY #35120 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35121 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 348
  IF ~~ THEN REPLY #35124 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 349
  IF ~~ THEN REPLY #35127 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 349
  IF ~~ THEN REPLY #35128 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #35122 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35123 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 347.1 347.2
  SAY #35125 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35126 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from:
  SAY #35150 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35151 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 351
  IF ~~ THEN REPLY #35161 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 351
END

IF ~~ THEN BEGIN 351 // from: 350.0 350.1
  SAY #35152 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35153 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 352
  IF ~~ THEN REPLY #35156 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 353
  IF ~~ THEN REPLY #35159 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 353
  IF ~~ THEN REPLY #35160 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #35154 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35155 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 351.1 351.2
  SAY #35157 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35158 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from:
  SAY #35182 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35183 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 355
  IF ~~ THEN REPLY #35193 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0 354.1
  SAY #35184 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35185 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 356
  IF ~~ THEN REPLY #35188 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 357
  IF ~~ THEN REPLY #35191 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 357
  IF ~~ THEN REPLY #35192 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #35186 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35187 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 355.1 355.2
  SAY #35189 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35190 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from:
  SAY #35214 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35215 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 359
  IF ~~ THEN REPLY #35225 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0 358.1
  SAY #35216 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35217 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 360
  IF ~~ THEN REPLY #35220 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 361
  IF ~~ THEN REPLY #35223 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 361
  IF ~~ THEN REPLY #35224 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #35218 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35219 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 359.1 359.2
  SAY #35221 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35222 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #35246 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35247 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 363
  IF ~~ THEN REPLY #35257 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.0 362.1
  SAY #35248 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35249 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 364
  IF ~~ THEN REPLY #35252 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 365
  IF ~~ THEN REPLY #35255 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 365
  IF ~~ THEN REPLY #35256 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0
  SAY #35250 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35251 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 365 // from: 363.1 363.2
  SAY #35253 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35254 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #35278 /* ~"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"~ */
  IF ~~ THEN REPLY #35279 /* ~"De quoi tu *parles* ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 367
  IF ~~ THEN REPLY #35289 /* ~"Tu veux parler de son regard vide d'outre-tombe ?"~ */ DO ~SetGlobal("Morte_Quip","GLOBAL",1)
~ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0 366.1
  SAY #35280 /* ~"Quoi… t'es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."~ */
  IF ~~ THEN REPLY #35281 /* ~"Dis plutôt qu'elle te voulait *parti*. Il est clair qu'elle était tellement subjuguée par MOI qu'elle n'a même pas fait attention à ta petite tête de linotte à grande bouche."~ */ DO ~IncrementGlobalOnceEx("GLOBALMorte_Zombie_1","GLOBALLaw",-1)
~ GOTO 368
  IF ~~ THEN REPLY #35284 /* ~"Je crois que tu te fais des films. C'est une zombi. Un cadavre. Elle est morte. Elle n'a sans doute même pas remarqué que tu étais là."~ */ GOTO 369
  IF ~~ THEN REPLY #35287 /* ~"Je pense que tu as un peu trop d'imagination."~ */ GOTO 369
  IF ~~ THEN REPLY #35288 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #35282 /* ~"Toi ? Ouais, c'est ça ! Crois-moi, les filles d'outre-tombe s'fouttent pas mal du 'physique' et des 'j'ai un corps' et des 'j'suis plein d'cicatrices et j'ai l'air d'un dur'. Elles veulent des gars avec de l'ESPRIT. C'est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu'le cuivre."~ */
  IF ~~ THEN REPLY #35283 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 369 // from: 367.1 367.2
  SAY #35285 /* ~"Ouais, ouais, c'est ça. Si t'étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C'est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire 'Hein ? Qu'est-c'qui se passe ?' 'Où sont mes sou-sou-souvenirs ?'"~ */
  IF ~~ THEN REPLY #35286 /* ~"Peu importe, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 370 // from: 377.3
  SAY #35310 /* ~"Hmmmm. Je me demande si cette barbe grise m'en voudrait si *je* lui empruntais son corps…"~ */
  IF ~~ THEN REPLY #35311 /* ~"Barbe grise ?"~ */ GOTO 371
  IF ~~ THEN REPLY #35326 /* ~"À mon avis, il est mal placé pour protester."~ */ GOTO 372
  IF ~~ THEN REPLY #35327 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 373
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #35312 /* ~"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."~ */
  IF ~~ THEN REPLY #35313 /* ~"Et bien, je crois qu'il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"~ */ GOTO 372
  IF ~~ THEN REPLY #35325 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 373
END

IF ~~ THEN BEGIN 372 // from: 370.1 371.0
  SAY #35314 /* ~Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j'en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."~ */
  IF ~~ THEN REPLY #35315 /* ~"Et pas toi ?"~ */ GOTO 373
  IF ~~ THEN REPLY #35324 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 370.2 371.1 372.0
  SAY #35316 /* ~"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D'ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."~ */
  IF ~~ THEN REPLY #35317 /* ~"Ah, ouais ? En tout cas, *moi* je suis entier."~ */ GOTO 374
  IF ~~ THEN REPLY #35323 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #35318 /* ~Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.~ */
  IF ~~ THEN REPLY #35319 /* ~"Tu sais, Morte, il n'y a rien de tel que de se promener en balançant les bras et en respirant de l'air frais dans les poumons. C'est GÉNIAL d'avoir un corps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Skeleton_Mort_1","GLOBALLaw",-1)
~ GOTO 375
  IF ~~ THEN REPLY #35322 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #35320 /* ~"Je te ferai savoir que de t'aider à t'échapper de la salle de préparation vient juste d'être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."~ */
  IF ~~ THEN REPLY #35321 /* ~"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 376 // from:
  SAY #35341 /* ~"Ouah, chef. C'est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d'os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"~ */
  IF ~~ THEN REPLY #35342 /* ~"Et alors ?"~ */ DO ~IncrementGlobal("Good","GLOBAL",-1)
~ GOTO 377
  IF ~~ THEN REPLY #35360 /* ~"Oh… Je ne voulais pas causer de dégâts irréversibles."~ */ DO ~IncrementGlobal("Good","GLOBAL",1)
~ GOTO 377
  IF ~~ THEN REPLY #35361 /* ~"Bon, très bien. Peu importe. Peut-être une autre fois."~ */ GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 376.0 376.1 376.2
  SAY #35343 /* ~"Oh, c'est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d'épaules. "J'savais pas si tu savais ça ou pas. Mais je t'en prie, vas-y."~ */
  IF ~  !PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35344 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS1221~ 4
  IF ~  !PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35352 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS1221~ 5
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #35355 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS1221~ 6
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35358 /* ~Peu importe. Peut-être une autre fois.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ GOTO 370
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35359 /* ~Peu importe. Peut-être une autre fois.~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 385.3
  SAY #35387 /* ~"Hmmmm. Je me demande si cette barbe grise m'en voudrait si *je* lui empruntais son corps…"~ */
  IF ~~ THEN REPLY #35388 /* ~"Barbe grise ?"~ */ GOTO 379
  IF ~~ THEN REPLY #35403 /* ~"À mon avis, il est mal placé pour protester."~ */ GOTO 380
  IF ~~ THEN REPLY #35404 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 381
END

IF ~~ THEN BEGIN 379 // from: 378.0
  SAY #35389 /* ~"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."~ */
  IF ~~ THEN REPLY #35390 /* ~"Et bien, je crois qu'il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"~ */ GOTO 380
  IF ~~ THEN REPLY #35402 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 381
END

IF ~~ THEN BEGIN 380 // from: 378.1 379.0
  SAY #35391 /* ~Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j'en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."~ */
  IF ~~ THEN REPLY #35392 /* ~"Et pas toi ?"~ */ GOTO 381
  IF ~~ THEN REPLY #35401 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 378.2 379.1 380.0
  SAY #35393 /* ~"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D'ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."~ */
  IF ~~ THEN REPLY #35394 /* ~"Ah, ouais ? En tout cas, *moi* je suis entier."~ */ GOTO 382
  IF ~~ THEN REPLY #35400 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #35395 /* ~Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.~ */
  IF ~~ THEN REPLY #35396 /* ~"Tu sais, Morte, il n'y a rien de tel que de se promener en balançant les bras et en respirant de l'air frais dans les poumons. C'est GÉNIAL d'avoir un corps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Skeleton_Mort_1","GLOBALLaw",-1)
~ GOTO 383
  IF ~~ THEN REPLY #35399 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #35397 /* ~"Je te ferai savoir que de t'aider à t'échapper de la salle de préparation vient juste d'être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."~ */
  IF ~~ THEN REPLY #35398 /* ~"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 384 // from:
  SAY #35418 /* ~"Ouah, chef. C'est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d'os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"~ */
  IF ~~ THEN REPLY #35419 /* ~"Et alors ?"~ */ DO ~IncrementGlobal("Good","GLOBAL",-1)
~ GOTO 385
  IF ~~ THEN REPLY #35437 /* ~"Oh… Je ne voulais pas causer de dégâts irréversibles."~ */ DO ~IncrementGlobal("Good","GLOBAL",1)
~ GOTO 385
  IF ~~ THEN REPLY #35438 /* ~"Bon, très bien. Peu importe. Peut-être une autre fois."~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0 384.1 384.2
  SAY #35420 /* ~"Oh, c'est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d'épaules. "J'savais pas si tu savais ça ou pas. Mais je t'en prie, vas-y."~ */
  IF ~  !PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35421 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS748~ 4
  IF ~  !PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35429 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS748~ 5
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #35432 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS748~ 6
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35435 /* ~Peu importe. Peut-être une autre fois.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ GOTO 378
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35436 /* ~Peu importe. Peut-être une autre fois.~ */ EXIT
END

IF ~~ THEN BEGIN 386 // from: 393.3
  SAY #35464 /* ~"Hmmmm. Je me demande si cette barbe grise m'en voudrait si *je* lui empruntais son corps…"~ */
  IF ~~ THEN REPLY #35465 /* ~"Barbe grise ?"~ */ GOTO 387
  IF ~~ THEN REPLY #35480 /* ~"À mon avis, il est mal placé pour protester."~ */ GOTO 388
  IF ~~ THEN REPLY #35481 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 389
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #35466 /* ~"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."~ */
  IF ~~ THEN REPLY #35467 /* ~"Et bien, je crois qu'il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"~ */ GOTO 388
  IF ~~ THEN REPLY #35479 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 389
END

IF ~~ THEN BEGIN 388 // from: 386.1 387.0
  SAY #35468 /* ~Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j'en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."~ */
  IF ~~ THEN REPLY #35469 /* ~"Et pas toi ?"~ */ GOTO 389
  IF ~~ THEN REPLY #35478 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 389 // from: 386.2 387.1 388.0
  SAY #35470 /* ~"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D'ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."~ */
  IF ~~ THEN REPLY #35471 /* ~"Ah, ouais ? En tout cas, *moi* je suis entier."~ */ GOTO 390
  IF ~~ THEN REPLY #35477 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 389.0
  SAY #35472 /* ~Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.~ */
  IF ~~ THEN REPLY #35473 /* ~"Tu sais, Morte, il n'y a rien de tel que de se promener en balançant les bras et en respirant de l'air frais dans les poumons. C'est GÉNIAL d'avoir un corps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Skeleton_Mort_1","GLOBALLaw",-1)
~ GOTO 391
  IF ~~ THEN REPLY #35476 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 390.0
  SAY #35474 /* ~"Je te ferai savoir que de t'aider à t'échapper de la salle de préparation vient juste d'être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."~ */
  IF ~~ THEN REPLY #35475 /* ~"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 392 // from:
  SAY #35495 /* ~"Ouah, chef. C'est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d'os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"~ */
  IF ~~ THEN REPLY #35496 /* ~"Et alors ?"~ */ DO ~IncrementGlobal("Good","GLOBAL",-1)
~ GOTO 393
  IF ~~ THEN REPLY #35514 /* ~"Oh… Je ne voulais pas causer de dégâts irréversibles."~ */ DO ~IncrementGlobal("Good","GLOBAL",1)
~ GOTO 393
  IF ~~ THEN REPLY #35515 /* ~"Bon, très bien. Peu importe. Peut-être une autre fois."~ */ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0 392.1 392.2
  SAY #35497 /* ~"Oh, c'est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d'épaules. "J'savais pas si tu savais ça ou pas. Mais je t'en prie, vas-y."~ */
  IF ~  !PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35498 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS996~ 4
  IF ~  !PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35506 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS996~ 5
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #35509 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS996~ 6
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35512 /* ~Peu importe. Peut-être une autre fois.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ GOTO 386
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35513 /* ~Peu importe. Peut-être une autre fois.~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 401.3
  SAY #35541 /* ~"Hmmmm. Je me demande si cette barbe grise m'en voudrait si *je* lui empruntais son corps…"~ */
  IF ~~ THEN REPLY #35542 /* ~"Barbe grise ?"~ */ GOTO 395
  IF ~~ THEN REPLY #35557 /* ~"À mon avis, il est mal placé pour protester."~ */ GOTO 396
  IF ~~ THEN REPLY #35558 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 397
END

IF ~~ THEN BEGIN 395 // from: 394.0
  SAY #35543 /* ~"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."~ */
  IF ~~ THEN REPLY #35544 /* ~"Et bien, je crois qu'il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"~ */ GOTO 396
  IF ~~ THEN REPLY #35556 /* ~"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."~ */ GOTO 397
END

IF ~~ THEN BEGIN 396 // from: 394.1 395.0
  SAY #35545 /* ~Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j'en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."~ */
  IF ~~ THEN REPLY #35546 /* ~"Et pas toi ?"~ */ GOTO 397
  IF ~~ THEN REPLY #35555 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 397 // from: 394.2 395.1 396.0
  SAY #35547 /* ~"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D'ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."~ */
  IF ~~ THEN REPLY #35548 /* ~"Ah, ouais ? En tout cas, *moi* je suis entier."~ */ GOTO 398
  IF ~~ THEN REPLY #35554 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 398 // from: 397.0
  SAY #35549 /* ~Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.~ */
  IF ~~ THEN REPLY #35550 /* ~"Tu sais, Morte, il n'y a rien de tel que de se promener en balançant les bras et en respirant de l'air frais dans les poumons. C'est GÉNIAL d'avoir un corps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Skeleton_Mort_1","GLOBALLaw",-1)
~ GOTO 399
  IF ~~ THEN REPLY #35553 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 399 // from: 398.0
  SAY #35551 /* ~"Je te ferai savoir que de t'aider à t'échapper de la salle de préparation vient juste d'être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."~ */
  IF ~~ THEN REPLY #35552 /* ~"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 400 // from:
  SAY #35572 /* ~"Ouah, chef. C'est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d'os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"~ */
  IF ~~ THEN REPLY #35573 /* ~"Et alors ?"~ */ DO ~IncrementGlobal("Good","GLOBAL",-1)
~ GOTO 401
  IF ~~ THEN REPLY #35591 /* ~"Oh… Je ne voulais pas causer de dégâts irréversibles."~ */ DO ~IncrementGlobal("Good","GLOBAL",1)
~ GOTO 401
  IF ~~ THEN REPLY #35592 /* ~"Bon, très bien. Peu importe. Peut-être une autre fois."~ */ GOTO 401
END

IF ~~ THEN BEGIN 401 // from: 400.0 400.1 400.2
  SAY #35574 /* ~"Oh, c'est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d'épaules. "J'savais pas si tu savais ça ou pas. Mais je t'en prie, vas-y."~ */
  IF ~  !PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35575 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS863~ 4
  IF ~  !PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35583 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS863~ 5
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #35586 /* ~Essaie de déboulonner les articulations du squelette.~ */ EXTERN ~DS863~ 6
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35589 /* ~Peu importe. Peut-être une autre fois.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ GOTO 394
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35590 /* ~Peu importe. Peut-être une autre fois.~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from:
  SAY #38265 /* ~"Elle me plaît déjà cette nana !"~ */
  IF ~~ THEN REPLY #38267 /* ~"Tu peux peut-être écrire ou mimer, alors ?"~ */ EXTERN ~DECCO~ 7
END

IF ~~ THEN BEGIN 403 // from:
  SAY #38266 /* ~"La vache !"~ */
  IF ~~ THEN REPLY #38268 /* ~"Hein ?"~ */ EXTERN ~DECCO~ 34
END

IF ~~ THEN BEGIN 404 // from:
  SAY #39000 /* ~Morte souffle à voix basse : "C'est pas bon, chef. Fais attention où tu mets les pieds, sinon ils auront vite fait de te les couper… Ils sont plus puissants en bandes… chacun d'eux apporte quelque chose au cerveau de la bande. Ils sont *mortels*."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 405 // from:
  SAY #39001 /* ~Morte souffle à voix basse : "C'est pas bon, chef. Fais attention où tu mets les pieds, sinon ils auront vite fait de te les couper… Ils sont plus puissants en bandes… chacun d'eux apporte quelque chose au cerveau de la bande. Ils sont *mortels*."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 406 // from:
  SAY #39002 /* ~Morte souffle à voix basse : "Je sais pas ce qu'ils trafiquent, chef, mais fais gaffe. C'est un esprit de groupe, et chaque rat ajoute un peu plus à l'esprit, et ils se battent comme des - excuse l'expression - rats acculés. On est maintenant dans leur domaine, chef, et ils n'ont nulle part où aller. Pas de blagues."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 407 // from:
  SAY #39564 /* ~"Ça, c'est une coïncidence ! Moi aussi, je collectionne les histoires."~ */
  IF ~~ THEN EXTERN ~DYVES~ 2
END

IF ~~ THEN BEGIN 408 // from:
  SAY #39565 /* ~"Moi ? Pourquoi est-ce *moi* qui devrais raconter une histoire ?"~ */
  IF ~~ THEN REPLY #39713 /* ~"Alors, laisse tomber."~ */ GOTO 409
  IF ~~ THEN REPLY #39714 /* ~"Raconte une histoire, un point c'est tout, Morte."~ */ GOTO 413
END

IF ~~ THEN BEGIN 409 // from: 408.0
  SAY #39566 /* ~"Non, non, je m'en occupe… j'ai juste eu envie de me plaindre pour la forme. Et puis, j'adore attirer l'attention sur moi…"~ */
  IF ~~ THEN REPLY #39715 /* ~"Pas question, Morte. Je ne veux pas l'entendre."~ */ GOTO 410
  IF ~~ THEN REPLY #39716 /* ~"D'accord… alors, vas-y."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 414
END

IF ~~ THEN BEGIN 410 // from: 409.0
  SAY #39567 /* ~"S'il te plaît ! Allez ! S'il te plaîîît ? C'est une histoire géniale ! On y trouve plein de personnages, de l'action, une histoire qui se tient et un *dénouement* inattendu !"~ */
  IF ~~ THEN REPLY #39717 /* ~"Elle ne doit pas être si géniale que ça."~ */ GOTO 411
  IF ~~ THEN REPLY #39718 /* ~"C'est quoi, un dénouement ?"~ */ GOTO 412
  IF ~~ THEN REPLY #39719 /* ~"D'accord… vas-y."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 414
END

IF ~~ THEN BEGIN 411 // from: 410.0
  SAY #39568 /* ~"Si ! Je t'assure ! Allez !"~ */
  IF ~~ THEN REPLY #39720 /* ~"Attends… c'est quoi, un dénouement ?"~ */ GOTO 412
  IF ~~ THEN REPLY #39721 /* ~"D'accord, vas-y."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 414
END

IF ~~ THEN BEGIN 412 // from: 410.1 411.0
  SAY #39569 /* ~"J'suis pas trop sûr ! En tout cas, pour ce que j'en ai entendu, c'est vachement impressionnant !"~ */
  IF ~~ THEN REPLY #39722 /* ~"D'accord, vas-y."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 414
END

IF ~~ THEN BEGIN 413 // from: 408.1
  SAY #39570 /* ~"D'accord, d'accord…"~ */
  IF ~~ THEN DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 409.1 410.2 411.1 412.0 413.0
  SAY #39571 /* ~"Un vieil homme était assis seul sur un chemin sombre, d'accord ? Il était pas sûr de la direction à prendre, et il avait oublié sa destination et son identité. Il s'était assis un peu, histoire de reposer ses jambes fatiguées, et en levant la tête, il a eu la surprise de voir une vieille femme plantée devant lui. Elle lui a fait un sourire édenté et lui a dit dans un jacassement : 'Et maintenant ton *troisième* vœu. Qu'est-ce que tu veux ?'"~ */
  IF ~~ THEN REPLY #39724 /* ~"Vas-y, Morte…"~ */ GOTO 415
  IF ~~ THEN REPLY #39725 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39726 /* ~"On l'écoutera une autre fois, Morte. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #39572 /* ~"'Un troisième vœu ?' bafouille l'homme. 'Comment est-ce qu'il peut y avoir un troisième vœu puisque j'ai fait ni premier ni deuxième vœu ?'"~ */
  IF ~~ THEN REPLY #39727 /* ~"Vas-y, Morte…"~ */ GOTO 416
  IF ~~ THEN REPLY #39728 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39729 /* ~"On l'écoutera une autre fois, Morte. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #39573 /* ~"'Tu as déjà fait deux vœux', dit la sorcière, 'mais le deuxième a été de rendre les choses comme elles étaient avant le premier. C'est pour ça que tu ne te souviens de rien ; parce que tout est comme avant que tu aies fait tes vœux.' Elle ajoute au pauvre bige, dans un jacassement : 'C'est pour ça qu'il ne t'en reste qu'un.'"~ */
  IF ~~ THEN REPLY #39752 /* ~"Vas-y, Morte…"~ */ GOTO 417
  IF ~~ THEN REPLY #39753 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39754 /* ~"On l'écoutera une autre fois, Morte. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #39574 /* ~"'D'accord', lui répond le vieil homme. 'J'te crois pas, mais ça peut pas m'faire de mal de faire un vœu. Je veux savoir qui je suis.'"

"'Amusant', lui répond la vieille femme en exauçant son vœu et en disparaissant pour toujours. 'C'était ton premier vœu.'"~ */
  IF ~~ THEN EXTERN ~DYVES~ 55
END

IF ~~ THEN BEGIN 418 // from:
  SAY #39575 /* ~"Bon sang, qu'est-ce que c'était qu'ça, imbécile de polygone ?! C'est l'histoire la plus rasoir que j'aie jamais entendue !"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 11
END

IF ~~ THEN BEGIN 419 // from:
  SAY #39576 /* ~"Des enjolivements ?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 12
END

IF ~~ THEN BEGIN 420 // from:
  SAY #39577 /* ~"*Allez*, fiélonne. Tu vas pas en perdre la queue."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 196
END

IF ~~ THEN BEGIN 421 // from:
  SAY #40068 /* ~Morte tournoie autour de toi, en se moquant de la lapalissade de la fille. "Par les Puissances, chef… elle a raison ! J'avais jamais remarqué… tu es couvert de *cicatrices* !"~ */
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #40069 /* ~"Ce sont toutes de vieilles cicatrices. Ça va."~ */ EXTERN ~DNENNY~ 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #40070 /* ~"Juste un peu ; ça ira."~ */ EXTERN ~DNENNY~ 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #40071 /* ~"Oui, c'est vrai. Et des profondes."~ */ EXTERN ~DNENNY~ 2
  IF ~~ THEN REPLY #40072 /* ~"N'y fais pas attention. J'ai quelques questions…"~ */ EXTERN ~DNENNY~ 3
  IF ~~ THEN REPLY #40073 /* ~"Ne t'inquiète pas pour ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from:
  SAY #40074 /* ~Morte remue les sourcils. "T'es trop 'direct', tu comprends… c'est p'être à cause de ces trucs oscillants qui pen…"~ */
  IF ~~ THEN REPLY #40075 /* ~"Morte, ça suffit."~ */ GOTO 423
END

IF ~~ THEN BEGIN 423 // from: 422.0
  SAY #40076 /* ~Morte se tait.~ */
  IF ~  Global("Nenny","GLOBAL",2)
~ THEN REPLY #40077 /* ~"C'est pas grave, Nenny."~ */ EXTERN ~DNENNY~ 9
  IF ~  Global("Nenny","GLOBAL",2)
~ THEN REPLY #40078 /* ~"Que ça ne se reproduise pas, Nenny."~ */ EXTERN ~DNENNY~ 9
  IF ~  Global("Nenny","GLOBAL",1)
~ THEN REPLY #40079 /* ~"C'est pas grave, mademoiselle."~ */ EXTERN ~DNENNY~ 9
  IF ~  Global("Nenny","GLOBAL",1)
~ THEN REPLY #40080 /* ~"Que ça ne se reproduise pas, ma belle."~ */ EXTERN ~DNENNY~ 9
END

IF ~~ THEN BEGIN 424 // from:
  SAY #40081 /* ~"Hé !"~ */
  IF ~~ THEN EXTERN ~DNENNY~ 27
END

IF ~~ THEN BEGIN 425 // from:
  SAY #40082 /* ~Morte marmonne entre ses dents. "Je suppose que c'est bon signe s'il y a *quelque chose* là-dedans."~ */
  IF ~~ THEN REPLY #40083 /* ~"J'ai une autre question, Nenny…"~ */ EXTERN ~DNENNY~ 3
  IF ~~ THEN REPLY #40084 /* ~"C'est tout ce que je voulais savoir, Nenny. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from:
  SAY #40222 /* ~"Oooh, non… il faut que tu nous le dises, maintenant."~ */
  IF ~~ THEN REPLY #40223 /* ~"Oui… s'il te plaît, m'sieur : raconte-nous."~ */ EXTERN ~DBROCUS4~ 4
  IF ~~ THEN REPLY #40224 /* ~"Laisse, Morte. J'ai une autre question à lui poser…"~ */ EXTERN ~DBROCUS4~ 2
  IF ~~ THEN REPLY #40225 /* ~"Laisse tomber, Morte ; on y va."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from:
  SAY #40275 /* ~Morte flotte près de toi, et te chuchote à l'oreille : "J'ai de la peine pour son amant. Il ne se rend pas compte de son malheur. Une pépée comme ça, c'est les embrouilles garanties."~ */
  IF ~~ THEN REPLY #40276 /* ~"Ça ne me paraît pas sage, Juliette. Tu ferais mieux de profiter de ce que tu as."~ */ EXTERN ~DSADJULI~ 12
  IF ~~ THEN REPLY #40277 /* ~"À quoi tu penses, Juliette ?"~ */ EXTERN ~DSADJULI~ 13
  IF ~~ THEN REPLY #40278 /* ~"J'ai des questions, Juliette…"~ */ EXTERN ~DSADJULI~ 24
  IF ~~ THEN REPLY #40279 /* ~"C'est tout ce que je voulais savoir, Juliette. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 428 // from:
  SAY #40685 /* ~Morte te murmure doucement à l'oreille : "Brrr… elle me donne la chair de poule, cette pépée."~ */
  IF ~~ THEN REPLY #40686 /* ~"Mes excuses, ma chère… je ne savais pas s'il y avait quelqu'un."~ */ EXTERN ~DMARISSA~ 2
  IF ~~ THEN REPLY #40687 /* ~"J'ai quelques questions, ma chère…"~ */ EXTERN ~DMARISSA~ 3
  IF ~~ THEN REPLY #40688 /* ~"Alors au revoir, ma chère."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from:
  SAY #40846 /* ~"Allez, chef ! On est dans un bâtiment rempli de quelques-unes des pépées les plus sexy de c'côté du multivers et tu t'arrêtes pour parler à des *modrones* ?"~ */
  IF ~~ THEN REPLY #40847 /* ~"Qu'est-ce que tu peux m'en dire, Morte?"~ */ GOTO 430
  IF ~~ THEN REPLY #40848 /* ~Ignore Morte, salue le modrone.~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ EXTERN ~DBROCUS6~ 3
  IF ~~ THEN REPLY #40849 /* ~"Mes excuses, Morte, mais je parle au modrone."~ */ GOTO 431
  IF ~~ THEN REPLY #40850 /* ~"D'accord ; on y va, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 430 // from: 429.0
  SAY #40851 /* ~Morte émet un son de dégoût absolu. "Qu'est-ce qu'y a à en dire ? Des p'tits parasites à rouages tout c'qu'y a d'plus agaçants… ils cherchent toujours à imposer la loi et l'ordre dans le multivers. Pas le *bien*, note… juste la *loi*. Oublie-les et allons tchatcher avec ces dames, oké ?"~ */
  IF ~~ THEN REPLY #40852 /* ~Ignore Morte, salue le modrone.~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ EXTERN ~DBROCUS6~ 3
  IF ~~ THEN REPLY #40853 /* ~"Mes excuses, Morte, mais je parle au modrone."~ */ GOTO 431
  IF ~~ THEN REPLY #40854 /* ~"D'accord ; on y va, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 429.2 430.1
  SAY #40855 /* ~Morte soupire bruyamment. "D'accord, peu importe - mais viens pas dire que j't'avais pas prévenu. De toute façon, t'arriveras pas à en tirer grand-chose, chef… ils sont vraiment bizarres."~ */
  IF ~~ THEN REPLY #40856 /* ~"Bonjour…"~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ EXTERN ~DBROCUS6~ 3
END

IF ~~ THEN BEGIN 432 // from:
  SAY #41135 /* ~"Ce que tu veux !" supplie Morte. "Fais-moi ce que tu veux !"~ */
  IF ~~ THEN EXTERN ~DKESAI~ 2
END

IF ~~ THEN BEGIN 433 // from:
  SAY #41136 /* ~"Ça me ferait presque pleurer, tiens ! Où était cette pépée quand j'avais un *corps ?!*"~ */
  IF ~~ THEN EXTERN ~DKESAI~ 11
END

IF ~~ THEN BEGIN 434 // from:
  SAY #41632 /* ~"Mon ami te trouvait attirante, mais *ouah* ! Il s'est complètement planté !"~ */
  IF ~~ THEN EXTERN ~DKIMASXI~ 2
END

IF ~~ THEN BEGIN 435 // from: 436.0
  SAY #41633 /* ~"D'accord, chef, comme tu voudras. Quelle sorcière, hein ?" Morte soupire, puis remue les sourcils. "*J'adore* ça !"~ */
  IF ~~ THEN REPLY #41634 /* ~"Ça ne m'étonne pas, Morte, mais il faut que je lui parle."~ */ EXTERN ~DKIMASXI~ 14
  IF ~~ THEN REPLY #41635 /* ~"Très bien… Allons-y, Morte."~ */ EXTERN ~DKIMASXI~ 4
END

IF ~~ THEN BEGIN 436 // from:
  SAY #41636 /* ~"En tout cas, si j'en avais un, je l'aurais laissé derrière moi ! Alors comme ça, tu as entendu parler d'une 'maison de tolérance' et tu t'es dit que ce serait l'occasion de gagner un peu de jonc, espèce de sac à puces de putain des caniveaux ? Hah ! Je me demande comment ils ont pu te laisser entrer ici avec toutes ces tiques qui grouillent sur tes jambes poilues !"~ */
  IF ~~ THEN REPLY #41637 /* ~"Ça suffit, vous deux."~ */ GOTO 435
  IF ~~ THEN REPLY #41638 /* ~Laisse-les.~ */ EXTERN ~DKIMASXI~ 3
END

IF ~~ THEN BEGIN 437 // from:
  SAY #41639 /* ~"*Il* ! On dirait '*qu'IL* en connaît déjà un rayon', Kimasxi Langue-de-Vipère… sale catin minable !"~ */
  IF ~~ THEN EXTERN ~DKIMASXI~ 18
END

IF ~~ THEN BEGIN 438 // from:
  SAY #41640 /* ~"Mieux que toi, peut-être ?" Morte remue les sourcils. "Eh ? Eh ?"~ */
  IF ~~ THEN EXTERN ~DKIMASXI~ 20
END

IF ~~ THEN BEGIN 439 // from:
  SAY #41641 /* ~"OK, *tieffeline*, mais je dois admettre que j'ai appris deux ou trois choses… bien joué, chef !"~ [MRT387] */
  IF ~~ THEN REPLY #41642 /* ~"C'est sûr, Morte."~ */ EXTERN ~DKIMASXI~ 21
END

IF ~~ THEN BEGIN 440 // from: 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
  SAY #41830 /* ~"Écoute, chef ; on voit bien qu't'es pas encore remis de ta rencontre avec la mort, alors j'ai deux conseils à te donner : premièrement, si t'as des questions, *pose-les moi*, d'accord ?"

^NREMARQUE : <SPEAKTO>^-~ */
  IF ~~ THEN REPLY #41831 /* ~"D'accord… si j'ai des questions, je te les poserai."~ */ GOTO 441
END

IF ~~ THEN BEGIN 441 // from: 440.0
  SAY #41832 /* ~"Deuxièmement, si t'es *aussi* distrait que t'en as l'air, commence à tout noter - chaque fois que tu tombes sur quelque chose qui *pourrait* être important, note-le pour pas oublier."~ */
  IF ~~ THEN REPLY #41833 /* ~"Si je détenais ce journal que je suis *supposé* avoir sur moi, c'est ce que je ferais."~ */ GOTO 442
END

IF ~~ THEN BEGIN 442 // from: 441.0
  SAY #41834 /* ~"Alors commences-en un nouveau, chef. T'as rien à perdre. Y a plein de parchemin et d'encre par ici."~ */
  IF ~~ THEN REPLY #41835 /* ~"Hmmmm. D'accord. Ça coûte rien… je vais en commencer un nouveau, alors."~ */ GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #41836 /* ~"Utilise-le pour garder une trace de tes mouvements. Si tu commences à t'embrouiller sur les trucs importants, comme qui tu es… ou plus important, qui *je* suis… utilise-le pour te rafraîchir la mémoire."

^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-~ */
  IF ~~ THEN REPLY #41837 /* ~"Très bien… Compris. Allons-y."~ */ JOURNAL #39516 /* ~J'ignore où se trouve mon ancien journal, aussi en ai-je commencé un nouveau. Je me suis réveillé dans un lieu nommé la 'Morgue'. J'ignore qui je suis, ce que je fais là, ou même comment j'y suis arrivé. L'unique 'individu' que j'ai rencontré est un crâne bavard du nom de Morte. Alors qu'il examinait mes blessures, il a remarqué une série d'instructions tatouées dans mon dos :

'Je sais que tu as l'impression d'avoir bu un peu trop d'eau du Styx, mais tu dois absolument te RESSAISIR. Parmi tes possessions matérielles se trouve un JOURNAL qui devrait t'éclairer sur le soltif de cette affaire. PHAROD devrait pouvoir t'en dire plus sur la chanson, du moins s'il ne se trouve pas déjà dans le livre des morts.'

'Ne perds pas le journal, ou c'est encore le Styx qui nous attend. Et, quoi que tu fasses, ne dit à PERSONNE qui tu es ou ce qui t'est arrivé, sans quoi tu gagneras un aller simple pour le crématorium. Fais ce que je te dis : LIS le journal, puis VA TROUVER Pharod.'

Est-ce moi qui me suis tatoué ce message dans le dos ? En tout cas, on dirait que je vais devoir trouver ce 'Pharod' ET mon journal.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */
~  !Global("Mortuary_Walkthrough","GLOBAL",0)
!Global("Mortuary_Walkthrough","GLOBAL",1)
Global("AR0200_Visited","GLOBAL",0)
InParty("Morte")
!GlobalGT("Fortress_Morte","GLOBAL",2)
~ THEN BEGIN 444 // from: 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0
  SAY #41838 /* ~"Qu'est-ce qui te dérange, chef ?"~ [MRT515] */
  IF ~~ THEN REPLY #41840 /* ~"Tu peux me relire ce qui est tatoué sur mon dos ?~ */ GOTO 445
  IF ~~ THEN REPLY #41841 /* ~"C'est quoi cet endroit déjà ?"~ */ GOTO 450
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41842 /* ~"Cet endroit est immense… qui s'en occupe ?"~ */ GOTO 451
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41843 /* ~"C'est qui, déjà, les gardiens de cet endroit ?"~ */ GOTO 451
  IF ~~ THEN REPLY #41844 /* ~"Tous ces cadavres… d'où ils viennent ?"~ */ GOTO 454
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41845 /* ~"Tout à l'heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"~ */ GOTO 455
  IF ~  PartyHasItem("Bandage")
~ THEN REPLY #41846 /* ~"Qu'est-ce que je fais de ces bandages ?"~ */ GOTO 453
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41847 /* ~"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41848 /* ~"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."~ */ EXIT
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #41849 /* ~"Oh, *allez,* chef. Ne m'dis pas qu't'as déjà oublié."~ */
  IF ~~ THEN REPLY #41850 /* ~"Il faut juste que je me rafraîchisse la mémoire."~ */ GOTO 446
  IF ~~ THEN REPLY #41851 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41852 /* ~"Alors laisse tomber. On y va."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41853 /* ~"Alors laisse tomber. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #41854 /* ~"Quelque chose me dit que je vais entendre ÇA souvent." Morte s'éclaircit la voix. "Voyons…"

'Je sais que tu as l'impression d'avoir bu plusieurs barils d'eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s'il n'est pas déjà inscrit dans le livre des morts.'~ */
  IF ~~ THEN REPLY #41855 /* ~"Pharod… hmmm. Continue."~ */ GOTO 447
  IF ~~ THEN REPLY #41856 /* ~"Peu importe. J'avais d'autres questions…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41857 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41858 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #41859 /* ~"Oui, oui, attends." Morte s'interrompt un instant. "D'accord, voilà la fin…"

'Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t'arrive, ou on t'enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.'~ */
  IF ~~ THEN REPLY #41860 /* ~"Et il n'y avait pas de journal sur moi quand je me suis réveillé ?"~ */ GOTO 448
  IF ~~ THEN REPLY #41861 /* ~"Peu importe. J'avais d'autres questions…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41862 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41863 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #41864 /* ~"Non… t'étais nu comme un ver. Comme j'te l'ai déjà dit, on dirait que t'as déjà un journal écrit sur le corps."~ */
  IF ~~ THEN REPLY #41865 /* ~"Et tu es sûr que tu ne connais personne du nom de Pharod ?"~ */ GOTO 449
  IF ~~ THEN REPLY #41866 /* ~"C'est vrai. J'ai d'autres questions…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41867 /* ~"Bon, très bien. Allons-y."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41868 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #41869 /* ~"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander… UNE FOIS qu'on sera sorti d'ici."~ */
  IF ~~ THEN REPLY #41870 /* ~"Avant d'y aller, j'ai d'autres questions…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41871 /* ~"Bon, très bien. Allons-y."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41872 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 444.1
  SAY #41873 /* ~"Ça s'appelle la 'Morgue'… c'est un grand édifice noir avec tout le charme architectural d'une araignée pleine."~ */
  IF ~~ THEN REPLY #41874 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41875 /* ~"C'est tout ce que je voulais savoir. Merci."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41876 /* ~"C'est tout ce que je voulais savoir. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 451 // from: 444.2 444.3
  SAY #41877 /* ~"Ils se donnent le nom d'Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C'est une bande enfumée d'adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."~ */
  IF ~~ THEN REPLY #41878 /* ~"Je ne comprends pas… Qu'est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m'enfuis ?"~ */ GOTO 452
  IF ~~ THEN REPLY #41879 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41880 /* ~"Compris. J'ferais gaffe, alors."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41881 /* ~"Compris. J'ferais gaffe, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #41882 /* ~"Tu n'écoutais pas ?! J'ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu'à l'extérieur ?"~ */
  IF ~~ THEN REPLY #41883 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41884 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41885 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 444.6
  SAY #41886 /* ~"Tu, ben… tu les *utilises*. Pour épancher le sang et tout ça."

^NREMARQUE : <BANDAGES2>^-~ */
  IF ~~ THEN REPLY #41887 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41888 /* ~"Merci. Je devrais pouvoir y arriver."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41889 /* ~"Merci. Je devrais pouvoir y arriver."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 444.4
  SAY #41890 /* ~"La mort rend visite aux plans tous les jours, chef. Ces loques, c'est tout c'qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."~ */
  IF ~~ THEN REPLY #41891 /* ~"J'ai compris. J'ai d'autres questions à te poser…"~ */ GOTO 444
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41892 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ GOTO 440
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41893 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 444.5
  SAY #41894 /* ~"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d'aller les charcuter ou les découper pour trouver les clés."~ */
  IF ~~ THEN REPLY #41895 /* ~"Dernière chance ? De quoi tu *parles* ?"~ */ GOTO 456
  IF ~~ THEN REPLY #41896 /* ~"Peu importe. J'avais d'autres questions à te poser…"~ */ GOTO 444
  IF ~~ THEN REPLY #41897 /* ~"D'accord… Je vais… essayer de m'en souvenir."~ */ EXIT
END

IF ~~ THEN BEGIN 456 // from: 455.0
  SAY #41898 /* ~"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"~ */
  IF ~~ THEN REPLY #41899 /* ~"Non… non, en fait, non."~ */ GOTO 457
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41900 /* ~"C'est une *blague* ?"~ */ GOTO 457
  IF ~~ THEN REPLY #41901 /* ~"Peu importe. J'avais d'autres questions à te poser…"~ */ GOTO 444
  IF ~~ THEN REPLY #41902 /* ~"J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 457 // from: 456.0 456.1
  SAY #41903 /* ~"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu'une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."~ */
  IF ~~ THEN REPLY #41904 /* ~"Attends… tu as bien dit tout à l'heure que j'étais *pas* mort ?"~ */ GOTO 458
  IF ~~ THEN REPLY #41905 /* ~"Peu importe. J'avais d'autres questions à te poser…"~ */ GOTO 444
  IF ~~ THEN REPLY #41906 /* ~"J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 458 // from: 457.0
  SAY #41907 /* ~"Bon… d'accord, *tu* n'es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l'un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d'envie. "Bien sûr, les gardiens devraient d'abord s'en séparer et il y a peu de chances…"~ */
  IF ~~ THEN REPLY #41908 /* ~"J'ai d'autres questions à te poser, Morte…"~ */ GOTO 444
  IF ~~ THEN REPLY #41909 /* ~"J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 459 // from:
  SAY #41910 /* ~"Par les Puissances d'en haut. Tu PARLES d'un livre !"~ */
  IF ~~ THEN REPLY #41911 /* ~"Quoi ?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1)
~ GOTO 460
END

IF ~~ THEN BEGIN 460 // from: 459.0
  SAY #41913 /* ~"Si j'devais deviner, j'dirais que c'est le livre où ils gribouillent le nom de tous les pauvres bougres suffisamment malchanceux pour finir ici."~ */
  IF ~~ THEN REPLY #41914 /* ~"Tu crois que mon nom pourrait y être inscrit ?"~ */ GOTO 461
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #41915 /* ~"Euh… ben… *j'suppose.* Pour le savoir, il faudrait que t'ailles branler ton râtelier avec l'Homme-Poussière flottant, là-bas. J'suis pas sûr que ce soit une bonne idée."~ */
  IF ~~ THEN REPLY #41916 /* ~"Ben, j'ai besoin de réponses. Je vais aller lui parler." ~ */ EXIT
END

IF ~~ THEN BEGIN 462 // from:
  SAY #41919 /* ~Morte soupire : "Je connais quelqu'un qui s'est échappé de l'asile."~ */
  IF ~~ THEN REPLY #41920 /* ~"J'ai quelques questions, Méli…"~ */ EXTERN ~DJUMBLE~ 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41921 /* ~"C'est toi qui as lancé une malédiction à Pestilent, n'est-ce pas ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~À la Salle des Fêtes, j'ai rencontré Méli Sensdumeurtre, l'homme qui avait maudit Pestilent.~ */ EXTERN ~DJUMBLE~ 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67864 /* ~"J'aimerais que tu fasses disparaître la malédiction dont souffre Pestilent."~ */ EXTERN ~DJUMBLE~ 9
  IF ~~ THEN REPLY #41922 /* ~"Bon, je m'en vais, Méli. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 463 // from:
  SAY #41923 /* ~"Oh oh… On dirait qu'on t'a lancé un sort, chef…"~ */
  IF ~~ THEN REPLY #41924 /* ~"Qu'est-ce que tu m'as fait, Méli ?"~ */ EXTERN ~DJUMBLE~ 7
  IF ~~ THEN REPLY #41925 /* ~"Méli… S'il te plaît, annule ce que tu as fait."~ */ EXTERN ~DJUMBLE~ 7
  IF ~~ THEN REPLY #41926 /* ~"Quoi que tu aies fait, Méli, annule-le ou tu risques de le regretter, crois-moi."~ */ EXTERN ~DJUMBLE~ 7
  IF ~~ THEN REPLY #41927 /* ~"Allons-y, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 464 // from:
  SAY #42929 /* ~"Ignore-la… Sois distant et indifférent. Ça ne donnera que plus de piquant à votre relation !"~ */
  IF ~~ THEN EXTERN ~DMONTAGU~ 29
END

IF ~~ THEN BEGIN 465 // from:
  SAY #42930 /* ~"Fais-moi confiance, gamin. Commence par l'ignorer, crée une situation de conflit, laisse-la réfléchir et c'est elle qui reviendra vers toi pour comprendre d'où vient le problème. Hein, chef ?"~ */
  IF ~~ THEN REPLY #42931 /* ~"Oui… Elle comprendra qu'il y a un problème et, pour une fois, il mènera le jeu au lieu d'en être la victime."~ */ EXTERN ~DMONTAGU~ 30
  IF ~~ THEN REPLY #42932 /* ~"Non… C'est pas une bonne idée."~ */ EXTERN ~DMONTAGU~ 31
END

IF ~~ THEN BEGIN 466 // from:
  SAY #43543 /* ~"C'est pour ça que les giths ne devraient pas procréer. Ils parlent sans arrêt de ça, ou de la croyance qui en découle, ou ils sont toujours à la recherche d'un flagelleur mental ou d'un githyanki à tuer, etc., etc. Je crois qu'ils n'aiment même pas se moquer les uns des autres. Ils deviennent azimutés et perdent la tête en chemin, ou sinon ils sont tellement coincés qu'ils en perdent le sens de l'humour. Ils ne parlent que de fusion, d'union des esprits et de confiance communautaire, mais sache que la race s'est divisée dès qu'elle s'est libérée du joug des flagelleurs mentaux. Maintenant, ose me dire que la religion et l'idéologie n'entraîneront pas les plans vers l'effondrement."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 467 // from:
  SAY #43908 /* ~"Oh là là !"~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43909 /* ~"Tu es Nemelle ? On m'a dit que tu connaissais le mot magique de la carafe."~ */ EXTERN ~DNEML~ 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43910 /* ~"Nemelle ? Ton amie Aelwyn te cherche."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~J'ai dit à Nemelle que son amie Aelwyn la cherchait. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ EXTERN ~DNEML~ 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43911 /* ~"Tu cherches quelqu'un ?"~ */ EXTERN ~DNEML~ 14
  IF ~~ THEN REPLY #43912 /* ~"J'avais quelques questions…"~ */ EXTERN ~DNEML~ 11
  IF ~~ THEN REPLY #43913 /* ~"Je n'ai besoin de rien, Nemelle. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 468 // from:
  SAY #43914 /* ~"Oh là là !"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 209
END

IF ~~ THEN BEGIN 469 // from:
  SAY #43915 /* ~"Oh, quelle petite femme au sang chaud ! Tu manques d'affection ? Je peux aussi m'extasier sur toi si tu es jalouse…" Morte commence à flotter en direction d'Annah en faisant des bruits de salivation…~ */
  IF ~~ THEN EXTERN ~DANNAH~ 210
END

IF ~~ THEN BEGIN 470 // from:
  SAY #43916 /* ~Morte s'arrête brusquement, se détournant en marmonnant inintelligiblement.~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43917 /* ~"Tu es Nemelle ? On m'a dit que tu connaissais le mot magique de la carafe."~ */ EXTERN ~DNEML~ 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43918 /* ~"Nemelle ? Ton amie Aelwyn te cherche."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~J'ai dit à Nemelle que son amie Aelwyn la cherchait. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ EXTERN ~DNEML~ 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43919 /* ~"Tu cherches quelqu'un ?"~ */ EXTERN ~DNEML~ 14
  IF ~~ THEN REPLY #43920 /* ~"J'avais quelques questions…"~ */ EXTERN ~DNEML~ 11
  IF ~~ THEN REPLY #43921 /* ~"Je n'ai besoin de rien, Nemelle. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from:
  SAY #43922 /* ~"Allez, chef… Je suis sûr qu'on peut penser à *quelque chose*. Hein ? Hein ?"~ */
  IF ~~ THEN REPLY #43923 /* ~"Laisse tomber, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 472 // from:
  SAY #44244 /* ~Morte s'approche et murmure : "Pas à moi. Je peux faire avec. Hein, chef ? Clin d'œil-clin d'œil, coup de coude-coup de coude…"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 20
END

IF ~~ THEN BEGIN 473 // from:
  SAY #44245 /* ~Horrifié, Morte intervient. "Non !!! Mec, t'es *fou* ?! T'es complètement azimuté !"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 474 // from:
  SAY #44677 /* ~Morte roule les yeux. "Les imbéciles se précipitent…"~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 475 // from:
  SAY #44944 /* ~"J'adooooore la Salle des Fêtes."~ */
  IF ~~ THEN EXTERN ~DUDESIRE~ 2
END

IF ~~ THEN BEGIN 476 // from:
  SAY #45026 /* ~Morte laisse échapper un long soupir. "Allez, chef ! Tu veux vraiment qu'on reste pour voir ça ?"~ */
  IF ~~ THEN REPLY #45027 /* ~"Tais-toi un peu, Morte. Tu m'empêches d'entendre quoi que ce soit."~ */ EXTERN ~D3PLANEA~ 1
  IF ~~ THEN REPLY #45028 /* ~Ne fais pas attention à Morte, continue à écouter,~ */ EXTERN ~D3PLANEA~ 1
  IF ~~ THEN REPLY #45029 /* ~"Tu as raison, Morte - Allons-nous-en."~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 477 // from:
  SAY #45088 /* ~"Hé. On dirait qu'on a oublié d'expliquer à ce type qu'il fallait cesser d'appliquer la Règle des Trois."~ */
  IF ~~ THEN REPLY #45089 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 478
END

IF ~~ THEN BEGIN 478 // from: 477.0
  SAY #45091 /* ~"Ces cadavres n'ont plus grand-chose dans le ciboulot et ils sont incapables d'accomplir plus d'une tâche à la fois. Quand on leur dit de faire quelque chose, ils le font jusqu'à ce qu'on leur ordonne d'arrêter. Ce pauvre bougre a dû achever sa tâche et on aura oublié de lui en donner une autre."~ */
  IF ~~ THEN REPLY #45092 /* ~"Qui leur donne leurs ordres ?"~ */ GOTO 481
  IF ~~ THEN REPLY #45093 /* ~"Tu viens d'évoquer la 'Règle des Trois'. Qu'est-ce que c'est que ça ?"~ */ JOURNAL #39477 /* ~Morte m'a vaguement parlé de la 'Règle des Trois'. Apparemment, certaines personnes pensent que les événements s'enchaînent toujours par trois. Elles accordent donc une grande importance à ce chiffre.~ */ GOTO 479
  IF ~~ THEN REPLY #45094 /* ~"D'accord. Allez, viens, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 479 // from: 478.1 481.0
  SAY #45095 /* ~"Hein ? En fait, la Règle des Trois est une des 'lois' des plans. Elle explique que les événements s'enchaînent toujours par trois, que tout est composé de trois éléments, qu'on a toujours trois choix possibles… ce genre de chose, quoi."~ */
  IF ~~ THEN REPLY #45096 /* ~"Tu n'as pas l'air de trop y croire."~ */ GOTO 480
END

IF ~~ THEN BEGIN 480 // from: 479.0
  SAY #45098 /* ~"Tout ça, c'est rien qu'un tissu d'inepties, si tu veux mon avis. Il suffit de prendre n'importe quel chiffre et de lui donner un sens mystique pour que les coïncidences s'accumulent."~ */
  IF ~~ THEN REPLY #45099 /* ~"Je vois. Tout à l'heure, tu m'as dit que quelqu'un avait donné un ordre à ce cadavre, puis avait oublié de lui dire d'arrêter. Qui leur donne leurs directives ?"~ */ GOTO 481
  IF ~~ THEN REPLY #45100 /* ~"Compris. J'aurais bien voulu examiner encore un peu ce zombi…"~ */ EXTERN ~DZM965~ 1
  IF ~~ THEN REPLY #45101 /* ~"D'accord. Allez, viens, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.0 480.0
  SAY #45102 /* ~"C'est l'un des gardiens ou le nécromancien qui les a fait sortir du livre des morts. Un des gardiens, vraisemblablement. Ce sont eux qui ont besoin de main-d'œuvre à bas prix, après tout."~ */
  IF ~~ THEN REPLY #45103 /* ~"Je vois. Qu'est-ce que tu voulais dire, tout à l'heure, au sujet de la 'Règle des Trois' ?"~ */ JOURNAL #39477 /* ~Morte m'a vaguement parlé de la 'Règle des Trois'. Apparemment, certaines personnes pensent que les événements s'enchaînent toujours par trois. Elles accordent donc une grande importance à ce chiffre.~ */ GOTO 479
  IF ~~ THEN REPLY #45104 /* ~"Compris. J'aurais bien voulu examiner encore un peu ce zombi…"~ */ EXTERN ~DZM965~ 1
  IF ~~ THEN REPLY #45105 /* ~"D'accord. Allez, viens, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 482 // from:
  SAY #45540 /* ~"Euh, chef… je ne suis pas sûr que ce soit une bonne…"~ */
  IF ~~ THEN EXTERN ~DZM985~ 3
END

IF ~~ THEN BEGIN 483 // from:
  SAY #45709 /* ~"Oh, une vente aux enchères ! On pourrait peut-être vendre Annah."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 215
END

IF ~~ THEN BEGIN 484 // from:
  SAY #45710 /* ~"Oh, une vente aux enchères ! On pourrait peut-être vendre Dak'kon."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 163
END

IF ~~ THEN BEGIN 485 // from:
  SAY #45711 /* ~"Oh, une vente aux enchères ! On pourrait peut-être me trouver un corps."~ */
  IF ~~ THEN REPLY #45712 /* ~"D'accord, Morte. Je n'oublierai pas de demander."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45713 /* ~"Dans ce cas, continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 486 // from:
  SAY #45714 /* ~"Ce doit être ça, l'amour. C'est bien ça, hein, chef ?"~ */
  IF ~~ THEN REPLY #45715 /* ~"Laissez tomber, tous les deux. Il faut que je pose quelques questions dans le coin."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45716 /* ~"Si tu le dis, Morte. Laissons ce type tranquille."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
InParty("Morte")
!GlobalGT("Fortress_Morte","GLOBAL",2)
~ THEN BEGIN 487 // from:
  SAY #45996 /* ~"Eh, regarde : une autre tête flottante."~ */
  IF ~~ THEN EXTERN ~DVAULT9~ 0
END

IF ~~ THEN BEGIN 488 // from:
  SAY #47813 /* ~"On dirait que cette masse se croit savante. Va caguer, arme."~ */
  IF ~~ THEN REPLY #47814 /* ~"Silence. J'avais d'autres questions…"~ */ EXTERN ~DJUSTFER~ 8
  IF ~~ THEN REPLY #47815 /* ~"Assez parlé pour le moment."~ */ EXIT
END

IF ~~ THEN BEGIN 489 // from:
  SAY #49443 /* ~"Ooh, un githyanki. Je parie que Dak'kon va être *super* ravi de t'aider."~ */
  IF ~~ THEN REPLY #49444 /* ~"Merci pour cette remarque, Morte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 490 // from:
  SAY #50162 /* ~"Oh ! Ils *ont* des noms. J'en suis sûr."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 242
END

IF ~~ THEN BEGIN 491 // from:
  SAY #50164 /* ~"C'est *toi* qui le dis, tieffeline."~ */
  IF ~~ THEN REPLY #50165 /* ~"Ça suffit, Morte - peux-tu lui poser d'autres questions, Annah ?"~ */ EXTERN ~DANNAH~ 240
  IF ~~ THEN REPLY #50166 /* ~"Laisse tomber. Allons-nous en."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 492 // from:
  SAY #50263 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Trouve un natif de Sigil."~ */
  IF ~~ THEN REPLY #50264 /* ~"Je vois."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 493 // from:
  SAY #50266 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Amène donc la tieffeline par ici." Il fait un signe de tête dans la direction d'Annah. "C'est une native de la Ruche."~ */
  IF ~~ THEN REPLY #50267 /* ~"Peut-être…"~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 494 // from:
  SAY #50269 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ?" Il fait un signe de tête vers Dak'kon. "Amène donc le Pharisien-deux-fois-plus-silencieux pour traduire."~ */
  IF ~~ THEN REPLY #50270 /* ~"Peut-être…"~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 495 // from:
  SAY #50272 /* ~Morte prend un air moqueur. "J'préfèrerais passer dans les boyaux d'un tanar'ri plutôt que d'essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Fais venir la tanar'ri." Il s'incline vers Tombée-en-Disgrâce. "Elle doit sûrement échanger la chanson avec eux sans arrêt."~ */
  IF ~~ THEN REPLY #50273 /* ~"Peut-être…"~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 496 // from:
  SAY #50320 /* ~"Oh, pour l'amour des Puissances ! Fichu dabus !"~ */
  IF ~~ THEN REPLY #50321 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 497
END

IF ~~ THEN BEGIN 497 // from: 496.0
  SAY #50322 /* ~"C'est un dabus. Ils *s'expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu'il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c'est vraiment nécessaire. Quel groupe assommant ! Tu paries qu'ils *peuvent* parler, mais qu'ils préfèrent coder tout ce qu'ils disent ne serait-ce que pour le plaisir d'énerver tout le monde."~ */
  IF ~~ THEN REPLY #50323 /* ~"C'est quoi un 'dabus' ?"~ */ GOTO 498
END

IF ~~ THEN BEGIN 498 // from: 497.0
  SAY #50324 /* ~"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de s'en débarrasser, sinon la Dame… se fâche."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #50325 /* ~"La 'Dame des Douleurs' ? Qui c'est ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 499
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #50328 /* ~"Que peux-tu me dire sur la Dame des Douleurs ?"~ */ GOTO 499
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #50329 /* ~"Je vois."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 499 // from: 498.0 498.1
  SAY #50326 /* ~"Elle dirige cette cité. Tu la reconnaîtras si tu la vois : elle a ces lames autour du visage, la taille d'un géant et elle flotte, comme eux." Morte fait un signe de tête en direction du dabus, qui vous observe tous les deux. "Personne ne sait grand-chose sur elle… elle ne parle pas beaucoup. Sache juste qu'il ne vaut mieux pas la mettre en colère. Si tu la vois, voici mon conseil : détale."~ */
  IF ~~ THEN REPLY #50327 /* ~"Je vois."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 500 // from:
  SAY #50410 /* ~"Quoi ? Quoi ? Qu'est-ce qu'il y avait dedans, chef ?"~ */
  IF ~~ THEN REPLY #50411 /* ~"Je ne sais pas quoi dire, Morte…"~ */ GOTO 501
  IF ~~ THEN REPLY #50412 /* ~"Ça ne te regarde pas, Morte."~ */ GOTO 501
  IF ~~ THEN REPLY #50413 /* ~Montre-lui le Manuscrit.~ */ GOTO 503
END

IF ~~ THEN BEGIN 501 // from: 500.0 500.1
  SAY #50414 /* ~"QUOI ?! Tu me fais marcher, pas vrai ? Allez, laisse-moi voir !"~ */
  IF ~~ THEN REPLY #50415 /* ~Montre-lui le Manuscrit.~ */ GOTO 503
  IF ~~ THEN REPLY #50416 /* ~"Non, Morte. Oublie que tu l'as vu."~ */ DO ~MoraleDec("Morte",1)
~ GOTO 502
END

IF ~~ THEN BEGIN 502 // from: 501.1
  SAY #50417 /* ~Morte marmonne avec aigreur… mais laisse tomber.~ */
  IF ~~ THEN EXTERN ~DCODEXI~ 2
END

IF ~~ THEN BEGIN 503 // from: 500.2 501.0
  SAY #50418 /* ~Morte flotte au-dessus de ton épaule pour examiner le contenu du Manuscrit. Ses yeux sortent presque de ses orbites alors qu'il parcourt les pages : "Ooo. Ooooooo. Oh, je… mais… ouah."~ */
  IF ~~ THEN EXTERN ~DCODEXI~ 2
END

IF ~~ THEN BEGIN 504 // from:
  SAY #50697 /* ~"Ouah ! Ouah ! Ouah ! Tu plaisantes, pas vrai ? Tu ne peux *pas* être sérieux, chef !"~ */
  IF ~~ THEN REPLY #50698 /* ~"Si, très sérieux. Tu le prends, Vrischika ?"~ */ EXTERN ~DVRISCH~ 45
  IF ~~ THEN REPLY #50699 /* ~"Bien sûr que non. J'avais une autre question, Vrischika…"~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50700 /* ~"Tu as raison, Morte ; ce n'était pas une bonne idée. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 505 // from:
  SAY #50701 /* ~"Je ne peux pas le croire… Tu es tombé bien bas, chef, c'est le comble. Je *te* verrai à Baator, sale ordure de bas étage, minable, traître, ingrat, pourriture, fumier, affreux, salopard, amnésique ! Fais attention, pauvre bougre, continue comme ça et tu ne vas pas tarder à mourir pour de *bon*… je t'aurai prévenu !"~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 46
END

IF ~~ THEN BEGIN 506 // from:
  SAY #52571 /* ~"Elle l'a avalé, mais j'sais pas s'il est sorti de *ce* côté."~ */
  IF ~~ THEN REPLY #52572 /* ~"Assez - écoute, Ravel, tu m'as pris ma mortalité et ça a causé plus de mal que de bien. Je veux la récupérer - tu l'as conservée trop longtemps à mon goût."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 507 // from:
  SAY #52573 /* ~"Je crois que je sais qui devrait être mis en cage…"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 189
END

IF ~~ THEN BEGIN 508 // from:
  SAY #52574 /* ~"Eh bien, j'avais rien de MIEUX à faire que d'aller dans l'un des dédales de la Dame pour rencontrer l'une des créatures les plus mauvaises qui ait jamais mis l'pied à Sigil, alors j'me suis dit : ben, pourquoi pas ?'~ */
  IF ~~ THEN REPLY #52575 /* ~"Morte, tais-toi. Ravel, Je…"~ */ GOTO 509
END

IF ~~ THEN BEGIN 509 // from: 508.0
  SAY #52576 /* ~"Que je me taise ?!" Morte claque des dents. "Et puis quoi encore ?! J'crois qu'on l'a assez écouté branler son râtelier et elle est gonflée d'balancer que j'ai pas de peau ! Et puis APRÈS ?! Faut dire qu'le fait qu'elle ait d'la peau l'EMBELLIT drôlement ! Est-ce qu'elle croit que *j'aime* être tout l'temps TOUT NU ? Et puis y'a *autre* chose -"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52577 /* ~"Morte ! La ferme ! Ravel, écoute -"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52578 /* ~"Morte ! La ferme ! Ravel, écoute -"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52579 /* ~"Morte ! La ferme ! Ravel, écoute -"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 510 // from:
  SAY #52644 /* ~"Bizarre. Alors on en est où, techniquement parlant ?"~ */
  IF ~~ THEN REPLY #52771 /* ~"Je n'ai pas vraiment envie de connaître la réponse, Morte."~ */ EXTERN ~DPREGAL~ 10
END

IF ~~ THEN BEGIN 511 // from:
  SAY #53623 /* ~"Oh, on avait *vraiment* besoin d'ça."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 5
END

IF ~~ THEN BEGIN 512 // from: 522.0 523.0 524.0
  SAY #53624 /* ~Tandis que tu t'approches du pilier, Morte te siffle : "Pssst ! Chef ! Chef… Écoute, il faut pas qu'cette chose me voie. Sors-moi d'ici… Laisse-moi quelque part, et reprends-moi plus tard, ou quelque chose comme ça…"~ */
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #53625 /* ~"Pas question, Morte. Je vais aller lui parler. Maintenant…"~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DPILLAR~ 9
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #53627 /* ~"Pourquoi, Morte ? Qu'est-ce qui se passe ?"~ */ GOTO 513
  IF ~~ THEN REPLY #53628 /* ~"Très bien. Dans ce cas, nous partons."~ */ EXIT
END

IF ~~ THEN BEGIN 513 // from: 512.1
  SAY #53626 /* ~"Euh… J'aime pas trop en parler. On avance, d'accord ?" La voix de Morte tremble de peur. Ses yeux passent de l'énorme pilier à toi.~ */
  IF ~~ THEN REPLY #53629 /* ~"Tu ne peux pas me cacher tous ces secrets, Morte. Dis-moi ce qui se passe ici."~ */ DO ~SetGlobal("Morte_Story","GLOBAL",1)
~ JOURNAL #53633 /* ~Morte m'a dit que c'est moi qui l'avait arraché au Pilier des Crânes, il y a bien longtemps de cela, mais il ignore comment j'ai fait. Il m'a également expliqué que tout le savoir du Pilier l'avait quitté à partir du moment où il en avait été séparé… ce qui expliquerait pourquoi il n'est pas tout à fait aussi utile (!) que ce qu'il avait promis à mon incarnation passée.~ */ GOTO 514
  IF ~~ THEN REPLY #53630 /* ~"Plus de combines, Morte. Dis-moi *tout de suite* ce qui se passe ou tu risques de regretter de ne pas avoir voulu parler aux têtes."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Story","GLOBAL",1)
~ JOURNAL #53661 /* ~Il semblerait que Morte soit issu du Pilier des Crânes, colonne de têtes vivantes existant sur l'Averne, le premier niveau de Baator. Il est constitué des têtes de ceux dont les mensonges ont mené d'autres gens à leur perte.~ */ GOTO 514
  IF ~~ THEN REPLY #53631 /* ~"Très bien. Dans ce cas, nous partons."~ */ EXIT
END

IF ~~ THEN BEGIN 514 // from: 513.0 513.1
  SAY #53632 /* ~Morte soupire, incapable de te regarder dans les yeux. Il s'incline enfin. "D'accord, d'accord… J'vais t'dire. Y'a un pilier sur l'Averne, la première couche de Baator, qui est fait des têtes de tous ceux qui ont provoqué la mort d'autres à cause de leurs mensonges. Ben… c'est ça, là. Tu vois, c'est là qu'je m'suis retrouvé. Devine le reste."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53662 /* ~"Alors… tu faisais partie de ces têtes ?"~ */ GOTO 516
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53663 /* ~"Alors… tu faisais partie de ces têtes ?"~ */ GOTO 515
END

IF ~~ THEN BEGIN 515 // from: 514.1
  SAY #53664 /* ~"Ouais. J'ai… exagéré un peu, une ou deux fois. C'est juste qu'une de mes suggestions a abouti à ta mort. L'une d'entre elles. Peut-être d'autres. Je sais pas, je ne me souviens plus."~ */
  IF ~~ THEN REPLY #53665 /* ~"Je vois…"~ */ GOTO 518
END

IF ~~ THEN BEGIN 516 // from: 514.0
  SAY #53666 /* ~"Ouais. J'ai… exagéré un peu, une ou deux fois. C'est juste qu'une de mes suggestions-"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 269
END

IF ~~ THEN BEGIN 517 // from:
  SAY #53667 /* ~Morte continue, imperturbable. "… l'une de mes *suggestions* a abouti à ta mort. L'une d'entre elles. Peut-être d'autres. Je sais pas vraiment, je ne me souviens plus."~ */
  IF ~~ THEN GOTO 518
END

IF ~~ THEN BEGIN 518 // from: 515.0 517.0
  SAY #53668 /* ~Morte fixe tes pieds - tu ne l'as jamais vu si pitoyable. "Ces souvenirs, ils… écoute, chef, je m'souviens même pas avoir *été* humain. J'me souviens pas d'la vie avant l'pilier…"~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN EXTERN ~DDAKKON~ 183
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #54105 /* ~"Continue…"~ */ GOTO 520
END

IF ~~ THEN BEGIN 519 // from:
  SAY #53794 /* ~Morte regarde Dak'kon, puis toi. "Oui, j'imagine. Et c'est à peu près comme ça qu'ça s'passe quand tu meurs. Tu… oublies. J'imagine que j'étais pas un membre illustre de la communauté quand j'étais vivant… Mais bon sang, qui l'est de toute façon ?" Morte soupire à nouveau. "C'est juste que j'peux pas m'en empêcher. Y'a rien d'pire que d'être tout l'temps honnête. Mais écoute, chef : si ce tas d'têtes me voit, il va m'vouloir méchamment - *méchamment*. Faut pas qu'ça arrive !"~ */
  IF ~~ THEN REPLY #53795 /* ~"Pas question, Morte. Je vais aller lui parler. Maintenant…"~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DPILLAR~ 9
  IF ~~ THEN REPLY #53796 /* ~"Attends… comment t'es-tu libéré du Pilier ?"~ */ GOTO 521
  IF ~~ THEN REPLY #53797 /* ~"Un instant… pourquoi ne m'as-tu pas dit que tu me connaissais, quand on était à la Morgue ?"~ */ GOTO 523
  IF ~~ THEN REPLY #53798 /* ~"Attends. Depuis combien de temps exactement me connais-tu, Morte ?"~ */ GOTO 524
  IF ~~ THEN REPLY #53799 /* ~"Très bien. Allons-y, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 520 // from: 518.1
  SAY #53800 /* ~"Quoi qu'il en soit, j'imagine que j'étais pas un membre illustre de la communauté quand j'étais vivant… mais bon sang, qui l'est de toute façon ?" Morte soupire à nouveau. "C'est juste que j'peux pas m'en empêcher. Y'a rien d'pire que d'être tout l'temps honnête. Mais écoute, chef : si ce tas d'têtes me voit, il va m'vouloir méchamment - *méchamment*. Faut pas qu'ça arrive !"~ */
  IF ~~ THEN REPLY #53801 /* ~"Pas question, Morte. Je vais aller lui parler. Maintenant…"~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DPILLAR~ 9
  IF ~~ THEN REPLY #53802 /* ~"Attends… comment t'es-tu libéré du Pilier ?"~ */ GOTO 521
  IF ~~ THEN REPLY #53803 /* ~"Un instant… pourquoi ne m'as-tu pas dit que tu me connaissais, quand on était à la Morgue ?"~ */ GOTO 523
  IF ~~ THEN REPLY #53804 /* ~"Attends. Depuis combien de temps exactement me connais-tu, Morte ?"~ */ GOTO 524
  IF ~~ THEN REPLY #53805 /* ~"Très bien. Allons-y, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 521 // from: 519.1 520.1 523.1 524.1
  SAY #53806 /* ~"Eh ben… tu m'as sorti d'là chef, chef. J'me suis battu pour m'retrouver à la surface du pilier - t'es déjà allé là-bas, tu sais de quoi j'parle - en hurlant jusqu'à ce que tu me remarques. J'ai supplié pour être libéré, en jurant que j'te suivrais, et que je partagerais mon savoir avec toi jusqu'à la fin de mes jours… J'm'étais pas rendu compte que ça allait prendre tout ce temps pour me libérer."~ */
  IF ~~ THEN REPLY #53807 /* ~"Et tout le savoir du Pilier… ?"~ */ JOURNAL #53633 /* ~Morte m'a dit que c'est moi qui l'avait arraché au Pilier des Crânes, il y a bien longtemps de cela, mais il ignore comment j'ai fait. Il m'a également expliqué que tout le savoir du Pilier l'avait quitté à partir du moment où il en avait été séparé… ce qui expliquerait pourquoi il n'est pas tout à fait aussi utile (!) que ce qu'il avait promis à mon incarnation passée.~ */ GOTO 522
END

IF ~~ THEN BEGIN 522 // from: 521.0
  SAY #53808 /* ~"Oh, ça… ben, j'ai pas non plus réalisé que je perdrais la plupart du savoir du pilier en en sortant. Cagueurs de pouvoirs, qu'est-ce que *ça* t'a fait exploser ! Mais tu m'as tout de même gardé. Et au début, j'me suis senti 'attaché' à toi… peut-être que ta sorcellerie m'avait transformé en une espèce d'animal de compagnie. Mais après deux siècles, j'ai réalisé que c'était *plus* que ça… quelque chose de plus profond. Plus que le paiement d'une dette, même si je suis sûr qu'il y a un rapport. Je me suis senti attiré, *connecté* à toi, en quelque sorte. Peut-être que c'est toutes tes souffrances, chef… ton tourment. Je sais pas. Peut-être que je l'ai assimilé au mien, quand j'étais dans le pilier."~ */
  IF ~~ THEN REPLY #53809 /* ~"Je vais parler au Pilier. Maintenant…"~ */ GOTO 512
  IF ~~ THEN REPLY #53810 /* ~"Pourquoi ne m'as-tu pas dit que tu me connaissais lorsque on était à la Morgue ?"~ */ GOTO 523
  IF ~~ THEN REPLY #53811 /* ~"Depuis combien de temps exactement me connais-tu, Morte ?"~ */ GOTO 524
  IF ~~ THEN REPLY #53812 /* ~"Très bien. Partons, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 523 // from: 519.2 520.2 522.1 524.2
  SAY #53813 /* ~Morte prend soudain la défensive. "Parce que je *sais* jamais qui tu vas être ! Certaines de tes incarnations ont été complètement délirantes ! Une fois, tu t'es réveillé obsédé par l'idée que j'étais *ton* crâne et tu m'as chassé autour de l'Aiguille pour me fracasser et me dévorer… Heureusement, tu t'es fait écraser par un chariot dans la rue. Une autre fois, une 'bonne et honnête' version de toi a essayé de me jeter dans le pilier, parce que 'c'était ma place'.'" Morte sourit d'un air narquois. "*C'est* pour ça que ça t'a jamais fait d'mal de rien savoir…"~ */
  IF ~~ THEN REPLY #53814 /* ~"Je vais parler au Pilier. Maintenant…"~ */ GOTO 512
  IF ~~ THEN REPLY #53815 /* ~"Comment t'es-tu libéré du Pilier ?"~ */ GOTO 521
  IF ~~ THEN REPLY #53816 /* ~"Depuis combien de temps exactement me connais-tu, Morte ?"~ */ GOTO 524
  IF ~~ THEN REPLY #53817 /* ~"Très bien. Partons, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 524 // from: 519.3 520.3 522.2 523.2
  SAY #53818 /* ~"J'sais pas. Des lustres, j'imagine. J'ai fait tout c'que j'pouvais pour t'aider à retrouver ton chemin, mais…" Morte soupire, puis s'élève pour rencontrer ton regard. "T'es rarement arrivé jusque là, chef. Sans mentir, seulement quatre ou cinq fois. Ça pourrait être la bonne… le 'toi' qui y arrive, qui découvre c'qui s'passe."~ */
  IF ~~ THEN REPLY #53819 /* ~"Je vais parler au Pilier. Maintenant…"~ */ GOTO 512
  IF ~~ THEN REPLY #53820 /* ~"Comment t'es-tu libéré du Pilier ?"~ */ GOTO 521
  IF ~~ THEN REPLY #53821 /* ~"Pourquoi ne m'as-tu pas dit que tu me connaissais lorsque on était à la Morgue ?"~ */ GOTO 523
  IF ~~ THEN REPLY #53822 /* ~"Très bien. Partons, Morte."~ */ EXIT
END

IF ~~ THEN BEGIN 525 // from:
  SAY #53823 /* ~"Oh, non…"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 10
END

IF ~~ THEN BEGIN 526 // from:
  SAY #53824 /* ~Morte tremble de peur et claque des dents. "J'peux pas retourner là-bas, chef ! J'peux pas ! J'peux pas ! J'peux pas !"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53825 /* ~"Il n'est pas venu pour toi. Mais j'ai quelques questions, Pilier des Crânes…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ EXTERN ~DPILLAR~ 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53826 /* ~"Il n'est pas venu pour toi. Mais j'ai quelques questions, Pilier des Crânes…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ EXTERN ~DPILLAR~ 2
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53827 /* ~"Il n'est pas venu pour toi, Pilier des Crânes. Mais j'ai quelques questions…"~ */ EXTERN ~DPILLAR~ 12
  IF ~~ THEN REPLY #53828 /* ~"Partons, Morte. Allez."~ */ EXTERN ~DPILLAR~ 50
END

IF ~~ THEN BEGIN 527 // from:
  SAY #53829 /* ~"*Allez*, chef, est-ce que je viens pas tout juste de te *dire* ce que c'était ?! Il est composé des têtes des menteurs dont les 'conseils' ont abouti à la mort de ceux qu'ils conseillaient. Il peut répondre à beaucoup de questions - il en sait pas mal - mais il attend un sacré paiement pour ses services. Lui pose pas une question juste comme ça !"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 528 // from:
  SAY #53830 /* ~"Me remets pas là-dedans, chef. S'il te plaît !"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 17
END

IF ~~ THEN BEGIN 529 // from:
  SAY #53831 /* ~"Chef ?! Non ! Non ! Tu peux *pas* ! Allez !"~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53832 /* ~"Ne t'en fais pas, Morte - je te sortirai de là plus tard."~ */ GOTO 530
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53833 /* ~"Ne t'en fais pas, Morte - je te sortirai de là plus tard."~ */ GOTO 530
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53834 /* ~"Ne t'en fais pas, Morte - je te sortirai de là plus tard."~ */ GOTO 530
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
~ THEN REPLY #53835 /* ~"Ne t'en fais pas, Morte - je te sortirai de là plus tard."~ */ GOTO 531
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53836 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53837 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53838 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53839 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53840 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 23
  IF ~~ THEN REPLY #53841 /* ~"Partons, Morte. Allez."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
END

IF ~~ THEN BEGIN 530 // from: 529.0 529.1 529.2
  SAY #53842 /* ~Morte te regarde d'un air sceptique. "T'es *sûr* ? Tu le *jures* ? Hé, qu'est-ce que j'raconte ?! Non ! Pas question ! Allez, tu peux *pas* m'remettre là-dedans !"~ */
  IF ~~ THEN REPLY #53843 /* ~Attrape Morte, jette-le dans le Pilier des Crânes.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53844 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53863 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53864 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53865 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53866 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 23
  IF ~~ THEN REPLY #53867 /* ~"Partons, Morte. Allez."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
END

IF ~~ THEN BEGIN 531 // from: 529.3
  SAY #53849 /* ~Morte te regarde en silence pendant un instant, bouche bée. " QUOI ?! Jamais ! T'es pas aussi puissant que tu l'étais quand… écoute, oublie ça, tu peux pas l'faire, jamais d'la vie ! Allez, tu peux *pas* me remettre là-dedans !"~ */
  IF ~~ THEN REPLY #53850 /* ~Attrape Morte, jette-le dans le Pilier des Crânes.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53851 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53852 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53853 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53854 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53855 /* ~"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 23
  IF ~~ THEN REPLY #53856 /* ~"Partons, Morte. Allez."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
END

IF ~~ THEN BEGIN 532 // from:
  SAY #53857 /* ~"Ouah, qu'… attends ! Pas si vite ! Pilier… Je peux te dire où est Fjhull Langue-fourchue ! Allez, tu veux pas l'savoir ? Et s'il te donne ça, au lieu de moi, hein ? Hein ? Qu'est-ce que t'en dis ?"~ */
  IF ~~ THEN REPLY #53858 /* ~"Un instant, Morte. Nous n'allons pas trahir Fhjull."~ */ GOTO 533
  IF ~~ THEN REPLY #53859 /* ~Attends la réponse du Pilier.~ */ EXTERN ~DPILLAR~ 19
END

IF ~~ THEN BEGIN 533 // from: 532.0
  SAY #53860 /* ~"Quoi ? T'es *azimuté* ?!* Tu te débarrasses de *moi*, mais pas de l'autre *FIÉLON* ?! S'il t'a aidé, c'est parce qu'il est lié à toi, maudit, c'est tout ! Et *moi* ? Qui t'a sorti de la morgue, mon pote ? Qui va se tenir - euh, flotter - à tes côtés quand tu devras faire face au pire dans la Forteresse de machin ?! Hein ?! Hein ?! PAS FHJULL GROS-CUL, ÇA C'EST SÛR !"~ */
  IF ~~ THEN REPLY #53861 /* ~"Bien, bien. Qu'en dis-tu, Pilier ?"~ */ EXTERN ~DPILLAR~ 19
  IF ~~ THEN REPLY #53862 /* ~"Désolé, Morte. Tu vas y passer."~ */ EXTERN ~DPILLAR~ 18
END

IF ~~ THEN BEGIN 534 // from: 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
  SAY #54155 /* ~"Pourquoi pas, chef ?" Morte secoue la tête. "Je veux dire, on s'est baladés sur TOUS les horribles plans possibles et imaginables du multivers. Pourquoi pas se jeter du haut de la falaise ?" Il soupire bruyamment. "Est-ce que TU es prêt ? Parce que si tu l'es pas…"~ */
  IF ~~ THEN REPLY #54156 /* ~"Peux-tu me répéter ce qui se trouve au-delà de ce portail ?"~ */ GOTO 544
  IF ~~ THEN REPLY #54157 /* ~"Je suis prêt, Morte. Je ne peux pas faire plus pour me préparer. Tu me suis ?"~ */ GOTO 535
  IF ~~ THEN REPLY #54158 /* ~"Peut-être que tu as raison… laisse-moi d'abord me préparer un peu plus."~ */ EXIT
END

IF ~~ THEN BEGIN 535 // from: 534.1
  SAY #54159 /* ~"Ben je…" Morte jette un œil au rideau bleu brillant et soupire à nouveau bruyamment. "D'accord. Allons-y. N'importe quel endroit vaut mieux que d'se branler le râtelier à la Morgue, hein ?"~ */
  IF ~~ THEN REPLY #54160 /* ~"Alors très bien…"~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 536 // from:
  SAY #54161 /* ~"Euh…" Morte hésite, regarde furtivement le portail, puis toi, puis à nouveau le portail, puis soupire bruyamment. "Écoute, j'vais pas *trop* en dire ici, mais euh… Ben, y'a quelque chose qu'il faut que j'te dise…"~ */
  IF ~~ THEN REPLY #54162 /* ~"Qu'y a-t-il, Morte ?"~ */ GOTO 537
  IF ~~ THEN REPLY #54163 /* ~"Quoi ? Allez, Morte, nous devons partir…"~ */ GOTO 537
END

IF ~~ THEN BEGIN 537 // from: 536.0 536.1
  SAY #54164 /* ~"Ben, c'est à propos de l'endroit où on va… ou plutôt… où on est… *allés*."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #54165 /* ~"'Où on EST allés' ? De quoi est-ce que tu parles ?"~ */ GOTO 540
  IF ~  NearbyDialog("DDakkon")
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #54166 /* ~"'Où on EST allés' ? De quoi est-ce que tu parles ?"~ */ EXTERN ~DDAKKON~ 174
  IF ~  NearbyDialog("DDakkon")
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #54167 /* ~"'Où on EST allés' ? De quoi est-ce que tu parles ?"~ */ GOTO 540
END

IF ~~ THEN BEGIN 538 // from:
  SAY #54168 /* ~"Euh… chef ?" Morte hésite, regarde furtivement le portail, puis toi, puis à nouveau le portail, puis soupire bruyamment. "Écoute, j'vais pas *trop* en dire ici, mais euh… ben, y'a quelque chose qu'il faut que j'te dise…"~ */
  IF ~~ THEN REPLY #54169 /* ~"Qu'y a-t-il, Morte ?"~ */ GOTO 539
  IF ~~ THEN REPLY #54170 /* ~"Quoi ? Allez, Morte, il faut que je parte…"~ */ GOTO 539
END

IF ~~ THEN BEGIN 539 // from: 538.0 538.1
  SAY #54171 /* ~"Ben, c'est à propos de l'endroit où tu vas… ou plutôt… où on est… *allés*."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #54172 /* ~"'Où on EST allés' ? De quoi est-ce que tu parles ?"~ */ GOTO 540
  IF ~  NearbyDialog("DDakkon")
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #54173 /* ~"'Où on EST allés' ? De quoi est-ce que tu parles ?"~ */ EXTERN ~DDAKKON~ 174
  IF ~  NearbyDialog("DDakkon")
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #54174 /* ~"'Où on EST allés' ? De quoi est-ce que tu parles ?"~ */ GOTO 540
END

IF ~~ THEN BEGIN 540 // from: 537.0 537.2 539.0 539.2
  SAY #54175 /* ~"C'est… euh, c'est pas la PREMIÈRE fois qu'on fait ça… Tu vois, on est déjà allé à la 'Forteresse des Regrets'… même si, on… Je… je le savais pas à l'époque."~ */
  IF ~~ THEN REPLY #54176 /* ~"Tu ne le *savais* pas ? Comment est-ce possible ?"~ */ GOTO 541
  IF ~~ THEN REPLY #54177 /* ~"Donc, depuis le TOUT DÉBUT… tu aurais pu me DIRE où était le portail, CE qu'était la clé du portail, POURQUOI je suis immortel, ce qui est ARRIVÉ à ma mortalité ET le fait que ce soit dans cette Forteresse ?! Morte, je vais te *TUER*… !"~ */ GOTO 542
  IF ~~ THEN REPLY #54178 /* ~"Morte, j'attends des explications… plus de mensonges ou de subterfuges, pas maintenant."~ */ GOTO 541
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54179 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54180 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 541 // from: 540.0 540.2
  SAY #54181 /* ~"C'est difficile à expliquer tant que t'es pas *allé* là-bas… en plus, tu connaissais pas le euh, *l'autre* toi - il était pas exactement le genre de lascar à PARTAGER la chanson avec nous. J'veux dire, je sais qu'il cherchait UN endroit, mais j'savais pas pourquoi, où c'était, ou CE que c'était, alors je pouvais RIEN te dire, parce que je savais RIEN ! Je… je sais juste ce qui s'est passé quand on est ARRIVÉS là-bas…"~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54189 /* ~"Et… qu'est-ce qui s'est passé ?"~ */ GOTO 544
  IF ~  !InParty("Morte")
~ THEN REPLY #54190 /* ~"Et… qu'est-ce qui s'est passé ?"~ */ GOTO 543
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54191 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54192 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 542 // from: 540.1
  SAY #54193 /* ~Morte paraît alarmé. "Non ! Non ! On… Je… ne SAVAIS rien ! C'est pas comme si t'étais l'plus bavard des lascars ! Ce… cet *autre* toi a gardé BEAUCOUP de chansons pour lui-même et on savait même pas POURQUOI on allait là-bas et QUEL endroit c'était ! Je sais juste ce qui s'est passé quand on est ARRIVÉS là-bas…"~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54194 /* ~"Et… qu'est-ce qui s'est passé ?"~ */ GOTO 544
  IF ~  !InParty("Morte")
~ THEN REPLY #54195 /* ~"Et… qu'est-ce qui s'est passé ?"~ */ GOTO 543
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54196 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54197 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 543 // from: 541.1 542.1
  SAY #54198 /* ~"Eh bien, on est allé à cette - cette FORTERESSE et avant même qu'on pose le pied là-bas, on s'est retrouvé SÉPARÉS, à combattre pour nos vies… alors la *première* chose que je veux te dire, c'est que si t'es déterminé à faire ça, y'a grande chance que ceux qui passeront à travers ce portail se retrouvent quelque part *loin* de tout le monde. Le problème, c'est que t'as toujours besoin que quelqu'un t'accompagne là-bas…"~ */
  IF ~~ THEN REPLY #54199 /* ~"Pourquoi dis-tu ça ?"~ */ GOTO 545
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54200 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54201 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 544 // from: 534.0 541.0 542.0
  SAY #54202 /* ~"Eh bien, on est allé à cette - cette FORTERESSE et avant même qu'on pose le pied là-bas, on s'est retrouvé SÉPARÉS, à combattre pour nos vies… alors la *première* chose que je veux te dire, c'est que si t'es déterminé à faire ça, y'a des chances que ceux qui passeront à travers ce portail se retrouvent quelque part *loin* de tout le monde. Le problème, c'est que même séparés, on est peut-être ta seule chance…"~ */
  IF ~~ THEN REPLY #54203 /* ~"Pourquoi dis-tu ça ?"~ */ GOTO 545
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54204 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54205 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 545 // from: 543.0 544.0
  SAY #54206 /* ~"Parce que ce qui t'attendait dans cette Forteresse t'a déjà battu une fois chef… À ce jour, je sais toujours pas comment tu t'es débrouillé pour survivre, mais si tu tombes encore, t'auras besoin de quelqu'un pour te sortir de cette Forteresse…"~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54207 /* ~"Morte, il faut que tu me dises tout ce que tu sais à propos de la Forteresse… c'est important."~ */ GOTO 547
  IF ~  !InParty("Morte")
~ THEN REPLY #54208 /* ~"Morte, il faut que tu me dises tout ce que tu sais à propos de la Forteresse… c'est important."~ */ GOTO 546
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54209 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54210 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 546 // from: 545.1
  SAY #54211 /* ~"Cette 'Forteresse des Regrets'… elle s'étale sur des LIEUES, chef. C'est une Forteresse, mais ça ressemble plus à un PLAN, avec toute cette pierre, cette obscurité et ces ombres, partout ces ombres. Si tu vas là-bas… tu ferais mieux d'être préparé."~ */
  IF ~~ THEN REPLY #54212 /* ~"Que s'est-il passé la première fois que nous sommes venus ici ?"~ */ GOTO 548
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54213 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54214 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 547 // from: 545.0
  SAY #54215 /* ~"Cette 'Forteresse des Regrets'… elle s'étale sur des LIEUES, chef. C'est une Forteresse, mais ça ressemble plus à un PLAN, avec toute cette pierre, cette obscurité et ces ombres, partout ces ombres. Si on va là-bas… on ferait mieux d'être préparé."~ */
  IF ~~ THEN REPLY #54216 /* ~"Que s'est-il passé la première fois que nous sommes venus ici ?"~ */ GOTO 548
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54217 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54218 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 548 // from: 546.0 547.0
  SAY #54219 /* ~"Chef, je sais pas ce qui t'est arrivé à TOI, mais je sais ce qui m'est arrivé à MOI… J'ai passé mon temps à courir de caveau en caveau, avec ces ombres au-dessus de moi, qui essayaient de m'avoir… puis j'ai juste… on s'est retrouvé 'dehors', comme si quelqu'un nous avait sortis…"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
NearbyDialog("Ddakkon")
~ THEN REPLY #54220 /* ~"Attends un instant. Quand tu parles de 'nous', on dirait que tu ne parles pas uniquement de toi et moi."~ */ GOTO 565
  IF ~  CheckStatGT(Protagonist,15,INT)
!NearbyDialog("Ddakkon")
GlobalGT("Dakkon","GLOBAL",0)
~ THEN REPLY #54221 /* ~"Attends un instant. Quand tu parles de 'nous', on dirait que tu ne parles pas uniquement de toi et moi."~ */ GOTO 549
  IF ~  CheckStatGT(Protagonist,15,INT)
!NearbyDialog("Ddakkon")
Global("Dakkon","GLOBAL",0)
~ THEN REPLY #54223 /* ~"Attends un instant. Quand tu parles de 'nous', on dirait que tu ne parles pas uniquement de toi et moi."~ */ GOTO 550
  IF ~~ THEN REPLY #54225 /* ~"Je vois. Y a-t-il autre chose que tu peux me dire ?"~ */ GOTO 552
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54226 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54227 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 549 // from: 548.1
  SAY #54229 /* ~Morte devient silencieux pendant un instant. "Non… d'autres étaient là. Il y avait… Dak'kon, cette gamine Sensat, Deionarra, cet archer aveugle à moitié bougre à force de picoler, et toi et moi… et c'est devenu infernal. On dirait bien qu'il n'y a que toi, moi, et Dak'kon qui nous en sommes tirés, mais pas les autres. Je sais pas ce qui leur est arrivé."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #54230 /* ~"Dak'kon ? Mais pourquoi… Il faudra que je lui pose la question ; mais tu dis que Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"~ */ GOTO 551
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #54231 /* ~"Dak'kon ? Mais pourquoi… Il faudra que je lui pose la question ; mais tu dis que cette femme, Deionarra, et cet archer ne sont jamais revenus de la Forteresse ?"~ */ GOTO 551
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54232 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54233 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 550 // from: 548.2
  SAY #54234 /* ~Morte devient silencieux pendant un instant. "Non… d'autres étaient là. Il y avait… ce vieux gith, Dak'kon, cette gamine Sensat, Deionarra, cet archer aveugle à moitié bougre à force de picoler et toi et moi… et c'est devenu infernal. On dirait bien qu'il n'y a que toi, moi, et Dak'kon qui nous en sommes tirés, mais pas les autres. Je sais pas ce qui leur est arrivé."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #54235 /* ~"Tu dis que Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"~ */ GOTO 551
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #54236 /* ~"Tu dis que cette femme, Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"~ */ GOTO 551
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54237 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54238 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 551 // from: 549.0 549.1 550.0 550.1
  SAY #54239 /* ~Morte secoue la tête. "Pas que je sache."~ */
  IF ~~ THEN REPLY #54240 /* ~"Y a-t-il autre chose que tu puisses me dire à propos de cette Forteresse ?"~ */ GOTO 552
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54241 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54242 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 552 // from: 548.3 551.0
  SAY #54243 /* ~"Je peux pas t'en dire plus, chef - excepté qu'on est certains de se retrouver divisés dès qu'on arrivera, c'est un endroit ÉNORME et ça grouille d'ombres… et quelque part dans cette Forteresse, il y a quelque chose de plus puissant que *n'importe lequel* d'entre nous. Y'a rien de plus à ajouter…"~ */
  IF ~~ THEN REPLY #54244 /* ~"En es-tu *sûr* ? C'est peut-être la dernière fois que nous avons une chance de nous parler…"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ GOTO 553
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54245 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54246 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 553 // from: 552.0
  SAY #54249 /* ~"Eh bien…" Morte s'interrompt. "Ouais, y'a autre chose que tu devrais savoir - le TOI que j'ai connu avant, le TOI qui nous a menés ici, il était pas comme toi. Pas du tout."~ */
  IF ~  GlobalGT("BD_MORTE_MORALE","GLOBAL",5)
~ THEN REPLY #54250 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 554
  IF ~  GlobalLT("BD_MORTE_MORALE","GLOBAL",6)
~ THEN REPLY #54252 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 555
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54255 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54262 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 554 // from: 553.0
  SAY #54263 /* ~"L'autre TOI, il… il s'intéressait pas à grand monde. À personne. On aurait pu TOUS mourir dans la Forteresse et il aurait pas cillé. Alors… accroche-toi à tes différences, parce que… et ben, j'préfère nettement ce *toi*. TRÈS nettement."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54264 /* ~"Mais ce n'est pas tout ce que tu as à dire, n'est-ce pas ?"~ */ GOTO 556
  IF ~~ THEN REPLY #54265 /* ~"C'est tout ?"~ */ GOTO 556
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54266 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54267 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 555 // from: 553.1
  SAY #54268 /* ~"Ce que j'veux dire, c'est que malgré ton entêtement, t'as plus d'ESPRIT qu'il en a jamais eu. L'autre TOI, il… il était détaché de tout. Alors… je veux juste que tu gardes ça en tête."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54269 /* ~"Mais ce n'est pas tout ce que tu as à dire, n'est-ce pas ?"~ */ GOTO 556
  IF ~~ THEN REPLY #54270 /* ~"C'est tout ?"~ */ GOTO 556
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54271 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54272 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 556 // from: 554.0 554.1 555.0 555.1
  SAY #54273 /* ~"Non…" Morte s'interrompt. "Y'a une autre chose - j'ai peut-être pas beaucoup aimé *l'autre*, mais c'était un lascar intelligent - le lascar le plus futé que j'ai jamais rencontré. Il avait tout planifié. S'il est mort à la Forteresse, ça veut dire que… eh bien…"~ */
  IF ~~ THEN REPLY #54274 /* ~"Tu ne me crois pas capable de réussir, n'est-ce pas ?"~ */ GOTO 557
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
InParty("Morte")
~ THEN REPLY #54275 /* ~"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"~ */ GOTO 534
  IF ~  GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",1)
!InParty("Morte")
~ THEN REPLY #54276 /* ~"Peu importe, Morte. Adviendra ce qu'il adviendra. Je vais maintenant franchir ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 557 // from: 556.0
  SAY #54277 /* ~"Non…" Morte secoue la tête. "Ce n'est pas ça, chef. Il ne s'agit pas toujours de savoir qui est le plus futé, ou le plus puissant, ou le plus dur… parfois, ça se résume à qui tu es et à ce que tu veux. Bref, jadis, tu as voulu devenir immortel… mais, en fin de compte, est-ce que c'était ce que tu voulais *vraiment* ? Prends bien garde à ce que tu veux, cette fois-ci. Simple conseil."~ */
  IF ~  InParty("Morte")
Global("Morte_Morale_Fortress_Portal","AR0202",0)
~ THEN REPLY #54278 /* ~"Très bien. Écoute, Morte… nous n'avons pas vraiment discuté de ça, mais tu sais que tu n'es pas obligé de venir avec moi, hein ? Je comprendrais très bien que tu ne veuilles pas."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
SetGlobal("Morte_Morale_Fortress_Portal","AR0202",1)
~ GOTO 558
  IF ~  InParty("Morte")
~ THEN REPLY #54279 /* ~"Compris. Si tu as tout dit, allons-y. Tu es prêt ?"~ */ GOTO 534
  IF ~  !InParty("Morte")
~ THEN REPLY #54280 /* ~"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 558 // from: 557.0
  SAY #54281 /* ~"Ouais… Je sais, chef. Et je peux pas te mentir… Je veux pas y aller… mais je le ferai. Sache seulement qu'une fois qu'on aura passé ce portail, ça ne tiendra plus seulement qu'à *toi*. C'est avec nos vies que tu joues et on retombe pas sur nos pieds quand on meurt."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
GlobalGT("Ravel_Morte","GLOBAL",0)
GlobalLT("Torment_Fell","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #54282 /* ~"Alors pourquoi est-ce que…"~ */ EXTERN ~DGRACE~ 169
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
GlobalGT("Ravel_Morte","GLOBAL",0)
Global("Torment_Fell","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #54283 /* ~"Alors pourquoi est-ce que…"~ */ EXTERN ~DGRACE~ 170
  IF ~  GlobalGT("Ravel_Morte","GLOBAL",0)
GlobalLT("Torment_Fell","GLOBAL",2)
!NearbyDialog("Dgrace")
~ THEN REPLY #54284 /* ~"Alors pourquoi est-ce que…"~ */ GOTO 562
  IF ~  GlobalGT("Ravel_Morte","GLOBAL",0)
Global("Torment_Fell","GLOBAL",2)
!NearbyDialog("Dgrace")
~ THEN REPLY #54285 /* ~"Alors pourquoi est-ce que…"~ */ GOTO 563
  IF ~  Global("Ravel_Morte","GLOBAL",0)
~ THEN REPLY #54286 /* ~"Alors pourquoi est-ce que…"~ */ GOTO 564
END

IF ~~ THEN BEGIN 559 // from:
  SAY #54762 /* ~Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 560 // from:
  SAY #54763 /* ~Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 177
END

IF ~~ THEN BEGIN 561 // from:
  SAY #54764 /* ~Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 8
END

IF ~~ THEN BEGIN 562 // from: 558.2
  SAY #54831 /* ~"C'est ce qu'a dit Ravel dans le dédale… Elle a dit que tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. "Peut-être que c'est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54832 /* ~"Peut-être, en effet. Alors… tu es avec moi, Morte ?"~ */ GOTO 534
  IF ~  !InParty("Morte")
~ THEN REPLY #54833 /* ~"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 563 // from: 558.3
  SAY #54834 /* ~"C'est ce qu'a dit Ravel dans le dédale… Et qu'est-ce qu'a dit Fell à propos de ce symbole, le Tourment ? Il paraît que tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. Peut-être que c'est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54835 /* ~"Peut-être, en effet. Alors… tu es avec moi, Morte ?"~ */ GOTO 534
  IF ~  !InParty("Morte")
~ THEN REPLY #54836 /* ~"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 564 // from: 558.4
  SAY #54837 /* ~"Je te connais de longue date, chef, et y a *quelque chose* chez toi… Tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. Peut-être que c'est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54838 /* ~"Peut-être, en effet. Alors… tu es avec moi, Morte ?"~ */ GOTO 534
  IF ~  !InParty("Morte")
~ THEN REPLY #54839 /* ~"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 565 // from: 548.0
  SAY #54840 /* ~Morte devient silencieux.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 175
END

IF ~~ THEN BEGIN 566 // from:
  SAY #54841 /* ~"Le crâne, c'était moi." Morte ajoute tranquillement : "La femme était une pauvre fille du nom de Deionarra ; je n'ai jamais connu l'archer…"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 177
END

IF ~~ THEN BEGIN 567 // from:
  SAY #54842 /* ~"Ouais…" Morte fait un bruit de ferraille comme s'il tremblait. "Chef, à cette Forteresse… y a des ombres *partout*…"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 178
END

IF ~~ THEN BEGIN 568 // from:
  SAY #54843 /* ~"Elles m'ont parlé comme le Pilier des Crânes…" Morte baisse le ton. "Elles *savaient*…"~ */
  IF ~~ THEN REPLY #54844 /* ~"Très bien ; écoutez, vous deux : dites-moi tout ce que vous savez à propos de cette forteresse…"~ */ EXTERN ~DDAKKON~ 179
END

IF ~~ THEN BEGIN 569 // from:
  SAY #54845 /* ~"Je peux rien dire d'autre, chef… sauf qu'on sera sûrement divisés dès qu'on arrivera… C'est IMMENSE, et ça grouille d'ombres… Et quelque part dans cette Forteresse, y a quelque chose de plus puissant que *n'importe lequel* d'entre nous."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 182
END

IF ~~ THEN BEGIN 570 // from:
  SAY #54846 /* ~" Je peux rien dire d'autre, chef… sauf que quand on entre là-dedans, on se trouve divisés dès qu'on arrive… C'est IMMENSE, et ça grouille d'ombres… Et quelque part dans cette Forteresse, y a quelque chose de plus puissant que tout ce qu'on peut imaginer."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 182
END

IF ~~ THEN BEGIN 571 // from:
  SAY #55832 /* ~"Chef, on court droit aux ennuis… Ce modrone est devenu un renégat."~ */
  IF ~~ THEN REPLY #55833 /* ~"Renégat ?"~ */ GOTO 572
END

IF ~~ THEN BEGIN 572 // from: 571.0
  SAY #55834 /* ~"Ouais, tu vois, des fois, les modrones sont un peu chamboulés par le chaos, et quand ça arrive… Oh, la *meilleure* explication, c'est sans doute que ces modrones renégats sont plus ou moins… des modrones à l'envers."~ */
  IF ~~ THEN REPLY #55836 /* ~"Alors, c'est un… modrone à l'envers ?"~ */ EXTERN ~DNORDOM~ 21
END

IF ~~ THEN BEGIN 573 // from:
  SAY #55837 /* ~"Chef, c'est très amusant tout ça, mais essayer d'enlever un tabouret de bar de sous les fesses d'un baatezu, ça vaudrait encore mieux que de branler notre râtelier avec cet idiot de polygone."~ */
  IF ~~ THEN REPLY #55839 /* ~"Dis, tu sais ce que c'est des esprits d'engrenage, Morte ?"~ */ GOTO 574
END

IF ~~ THEN BEGIN 574 // from: 573.0
  SAY #55841 /* ~"Chef, je vois pas ce que ce cube veut dire avec tout son boucan."~ */
  IF ~~ THEN REPLY #55842 /* ~"Je te croyais l'*expert* des plans."~ */ GOTO 575
  IF ~~ THEN REPLY #55843 /* ~"D'accord. Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55844 /* ~"C'est bon, laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 575 // from: 574.0
  SAY #55845 /* ~"Qu… J'en sais plus que *toi*, espèce d'amnésique bégayant ! 'Tiens, voilà trois infos de plus à fourrer dans ta p'tite boîte grise vide : un, y a PAS d'experts sur les plans, deux, c'est moi qui suis le plus proche de ce que tu cherches, et trois, je te conseille d'être poli avec moi. Pourquoi ? Voir la deuxième raison."~ */
  IF ~~ THEN REPLY #55846 /* ~"D'accord. Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55847 /* ~"C'est bon, laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 576 // from:
  SAY #55848 /* ~"Méchanus ? Rasoir dans tous les sens du terme, chef. Imagine un plan rempli de modrones et de gros engrenages qui tournent… Et tu as le magnifique et PASSIONNANT plan de Méchanus. Trop de lois, trop tatillon. Un endroit qui viendrait même pas à l'idée, surtout pas pour le visiter."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN DO ~SetGlobal("Know_Source","GLOBAL",1)
~ EXTERN ~DGRACE~ 184
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #55849 /* ~"Nordom, qu'est-ce que tu entendais tout à l'heure par 'origine nulle' ?"~ */ EXTERN ~DNORDOM~ 65
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #55850 /* ~"Peu importe, Morte. J'en ai assez entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 577 // from:
  SAY #55855 /* ~"Excuse-MOI mademoiselle la Prêtresse de Piété, mais Méchanus EST l'endroit le plus rasoir de l'univers… La seule chose qui pourrait le rendre intéressant, ce serait *ta* visite…" Morte lève les yeux au ciel. "Mais j'ai le sentiment que même *ça*, ça perdrait de son charme au bout d'un moment."~ */
  IF ~~ THEN REPLY #55857 /* ~"Nordom, qu'est-ce que tu entendais tout à l'heure par 'origine nulle' ?"~ */ EXTERN ~DNORDOM~ 65
  IF ~~ THEN REPLY #55858 /* ~"Peu importe, Morte. J'en ai assez entendu. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 578 // from:
  SAY #55860 /* ~"Tous les modrones font partie de ce 'bassin', chef, une sorte de grosse banque d'énergie… Quand y a un modrone qui meurt, l'énergie qu'il a fallu pour le faire est récupérée dans la banque et un nouveau émerge. Le problème… c'est que si un modrone pète un peu les plombs, il coupe en quelque sorte ce lien, mais conserve un peu d'énergie."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 186
  IF ~~ THEN REPLY #55862 /* ~"Alors… Nordom, ce Méchanus est une source d'énergie ?~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55864 /* ~"Je vois. Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55865 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 579 // from:
  SAY #55867 /* ~Morte foudroie Tombée-en-Disgrâce du regard. "Cela ne te *gêne* pas ? La réponse était complète, merci. C'est *moi* la source d'informations ici, PAS toi, d'accord ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 187
END

IF ~~ THEN BEGIN 580 // from:
  SAY #55870 /* ~"Oh, *je* vois ! Peut-être que si j'étais une succube, tu prêterais plus d'attention à MES paroles, c'est ça ? Peut-être que si je montrais un petit morceau de peau de temps à autre, j'aurais le droit au respect, hein ? Tout cela est bien superficiel, chef ! Tiens, je devrais…"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 191
END

IF ~~ THEN BEGIN 581 // from:
  SAY #55871 /* ~NŒUD NUL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 582 // from:
  SAY #55873 /* ~"Voyez-vous ça ! T'as entendu, chef ?! Ce que la succube a dit ? Elle a raison. Je suis plus facile à comprendre… je 'connais mieux la chanson', tu vois ce que je veux dire ? Si je ne m'abuse, vous avez besoin de mes services ?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55875 /* ~"D'accord, et j'ai donc encore une question : vous dites tous les deux que Nordom fait partie de cette Source mais qu'il en est coupé. Et quand un modrone meurt, il est réabsorbé. Nordom aussi ?"~ */ GOTO 583
  IF ~~ THEN REPLY #55876 /* ~"Je n'ai jamais dit le contraire, Morte. Alors… Nordom, cette source d'énergie dont tu as parlé… elle vient de Méchanus "~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55877 /* ~"D'accord.  Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55879 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 583 // from: 582.0
  SAY #55882 /* ~Morte fait 'oui' de la tête.~ */
  IF ~~ THEN REPLY #55884 /* ~"Et s'il meurt, un autre Nordom est créé." ~ */ GOTO 584
END

IF ~~ THEN BEGIN 584 // from: 583.0
  SAY #55886 /* ~"Euh… non."~ */
  IF ~~ THEN REPLY #55887 /* ~"Alors, que se passe-t-il ?"~ */ GOTO 585
END

IF ~~ THEN BEGIN 585 // from: 584.0
  SAY #55890 /* ~"Et bien, ils prendront son énergie, chef, et ils cracheront un autre modrone, mais ce ne sera pas Nordom, parce que ce n'est plus *vraiment* un modrone ; il a en lui trop de choses des plans. Ils feront un remplaçant non-Nordom."~ */
  IF ~~ THEN REPLY #55892 /* ~"Alors… en devenant renégat, il est devenu… mortel ?"~ */ GOTO 586
  IF ~~ THEN REPLY #55894 /* ~"D'accord.  Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55895 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 586 // from: 585.0
  SAY #55897 /* ~Morte se tait un instant. "Ma foi… oui, on peut voir les choses comme ça. Je veux dire, s'il n'avait pas eu sa petite rébellion de renégat, il serait parfait… S'il mourait, un autre modrone apparaîtrait, exactement comme lui. Mais comme il est maintenant 'à l'envers'… eh bien, cette partie va être perdue quand il mourra."~ */
  IF ~~ THEN REPLY #55898 /* ~"D'accord.  Nordom, j'ai encore quelques questions à te poser…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55900 /* ~"C'est tout ce que je voulais savoir. Perdons pas de temps."~ */ EXTERN ~DNORDOM~ 74
END

IF ~~ THEN BEGIN 587 // from:
  SAY #55901 /* ~"Aïïïïïïeee ! Pour l'amour des Puissances et de ma raison, arrête ! Il va péter une manivelle si tu continues à lui demander ça !"~ */
  IF ~~ THEN REPLY #55902 /* ~"C'est un peu *ça* le but de l'opération, Morte."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_5","GLOBALLaw",-1)
~ GOTO 588
  IF ~~ THEN REPLY #55905 /* ~"Euh, je voulais connaître la réponse, et il commençait à me la donner."~ */ GOTO 589
  IF ~~ THEN REPLY #55906 /* ~"Peu importe. J'ai encore quelques questions à poser à Nordom…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55907 /* ~"Laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 588 // from: 587.0
  SAY #55909 /* ~"Oh." Morte sourit de toutes ses dents. "Tu aurais pu DIRE quelque chose. Bref, poursuis. Bien sûr…" Morte fait *cliqueter* ses dents, imitant Nordom. "Si tu veux savoir des choses sur les modrones, demande-MOI."~ */
  IF ~~ THEN REPLY #55910 /* ~"D'accord, Morte… Que peux-tu me dire des modrones ?"~ */ GOTO 590
  IF ~~ THEN REPLY #55912 /* ~"Peu importe. J'ai encore quelques questions à poser à Nordom…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55913 /* ~"Laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 589 // from: 587.1
  SAY #55914 /* ~"Écoute, chef, les modrones NORMAUX comprennent quasiment rien au-delà de leurs tâches élémentaires, et cet idiot de polygone sort tout droit des plans. Alors, va pas embrouiller le cube, d'accord ? Du moins, pas tant qu'il est armé. Si t'as des questions sur les modrones, demande-moi, pas à lui."~ */
  IF ~~ THEN REPLY #55915 /* ~"D'accord, Morte… Que peux-tu me dire des modrones ?"~ */ GOTO 590
  IF ~~ THEN REPLY #55917 /* ~"Peu importe. J'ai encore quelques questions à poser à Nordom…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55918 /* ~"Laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 590 // from: 588.0 589.0
  SAY #55921 /* ~"C'est comme ça, chef : les modrones sont ces formes géométriques idiotes qui se déplacent avec un bruit de ferraille sur leur plan d'origine, Méchanus… Des as du rangement, de l'ordre, qui voudraient rendre le RESTE du multivers à leur image. C'est pour ça qu'ils sont tellement nuisibles."~ */
  IF ~~ THEN REPLY #55923 /* ~"Quel mal y a-t-il à vouloir mettre de l'ordre dans le multivers ?"~ */ GOTO 592
  IF ~~ THEN REPLY #55925 /* ~"Qu'est-ce que c'est, Méchanus ?"~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 591
  IF ~~ THEN REPLY #55926 /* ~"Peu importe. J'ai encore quelques questions à poser à Nordom…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55928 /* ~"Laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 591 // from: 590.1
  SAY #55930 /* ~"C'est le plan d'où viennent tous ces automates. Pose-lui la question, tu vas voir sa réponse. C'est leur foyer, c'est là qu'ils passent leur temps à ranger, à briquer… Et que je te catalogue, et que je te mette *ça* et puis *ça* en ordre, et que je te fasse une loi, et cetera et cetera."~ */
  IF ~~ THEN REPLY #55931 /* ~Vérité : "Noble objectif, ce me semble ! Quel mal y a-t-il à vouloir mettre de l'ordre dans le multivers ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_2","GLOBALLaw",2)
~ GOTO 592
  IF ~~ THEN REPLY #55935 /* ~"Ça n'a pas l'air de te réjouir outre mesure."~ */ GOTO 592
  IF ~~ THEN REPLY #55936 /* ~" J'ai encore quelques questions à poser à Nordom…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55937 /* ~"Laisse tomber. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 592 // from: 590.0 591.0 591.1
  SAY #55938 /* ~Morte jette un coup d'œil à Nordom, qui lève son arbalète gauche à hauteur de la tête, comme s'il l'écoutait.~ */
  IF ~~ THEN GOTO 593
END

IF ~~ THEN BEGIN 593 // from: 592.0
  SAY #55940 /* ~"Parce que, chef, le chaos a sa juste place. Si tout était comme un *modrone* voit les choses, ce serait pas vraiment une vie… En tout cas, pas une vie que j'aurais envie de vivre. Ce qu'ils veulent, c'est tout *structurer*. Pouahhh."~ */
  IF ~~ THEN REPLY #55941 /* ~Vérité : "Entièrement d'accord ; le chaos a sa place… trop de lois et on stagnerait tous. Dis, j'ai encore quelques questions à poser à Nordom…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_4","GLOBALLaw",-2)
~ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55942 /* ~"Je vois. Dis, j'ai encore quelques questions pour Nordom…"~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55944 /* ~"D'accord, d'accord. Perdons pas de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 594 // from:
  SAY #56029 /* ~"*J'aime* son odeur. Un délice."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 27
END

IF ~~ THEN BEGIN 595 // from:
  SAY #56030 /* ~"Minute, chef… Baator, ça sent MAUVAIS. Ce fiélon nous cache certainement quelque chose… Et même s'il y a un 'Pilier des Crânes', y aura bien quelqu'un d'autre qui sait comment atteindre la Forteresse *sans* passer par l'un des plus dangereux plans du multivers."~ */
  IF ~~ THEN REPLY #56031 /* ~"Quels sont tes desseins, Langue-fourchue ?"~ */ EXTERN ~DFHJULL~ 88
  IF ~~ THEN REPLY #56032 /* ~"Pourquoi tu veux pas aller là-bas, Morte ?"~ */ GOTO 596
END

IF ~~ THEN BEGIN 596 // from: 595.1
  SAY #56033 /* ~"C'est un lieu dangereux, chef. J'aimerais autant pas y aller. Je connais déjà et c'est pas beau. Compris ?"~ */
  IF ~~ THEN REPLY #56034 /* ~"Nous parlerons de ça plus tard, Langue-fourchue, j'ai quelques questions…"~ */ EXTERN ~DFHJULL~ 46
END

IF ~~ THEN BEGIN 597 // from:
  SAY #56936 /* ~"Ce type est *partout* !"~ */
  IF ~~ THEN REPLY #56937 /* ~"Oui, mais il nous a aidés. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 598 // from:
  SAY #59827 /* ~(NULL NODE)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 599 // from:
  SAY #60950 /* ~"Hé, c'est pas si mal d'être mort. Vois le bon côté des choses… au moins, tu n'as plus à t'exprimer avec ce charabia ridicule."~ */
  IF ~~ THEN REPLY #61111 /* ~"Du calme, Morte. Je vais m'en occuper. Tu peux me dire ce qui s'est passé ?"~ */ EXIT
  IF ~~ THEN REPLY #61112 /* ~"Laisse tomber. Je vais te laisser tranquille."~ */ EXIT
END

IF ~~ THEN BEGIN 600 // from:
  SAY #61408 /* ~"Euh… dis donc, chef… qu'est-ce que tu en penses ? Tu prêterais un peu de jonc au vieux Morte ? Ça fait un sacré bout de temps, tu sais…"~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61411 /* ~"Oui, pourquoi pas ? Mademoiselle ?"~ */ EXTERN ~DUCHO~ 9
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61412 /* ~"Navré, Morte. On n'a pas assez de cuivre. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #61413 /* ~"Il faut qu'on y aille, Morte. Au revoir, mademoiselle."~ */ EXIT
END

IF ~~ THEN BEGIN 601 // from:
  SAY #61409 /* ~"Entendu ! Merci, chef !" Il se détourne pour suivre la femme.~ */
  IF ~~ THEN REPLY #61414 /* ~Attends son retour.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 10
END

IF ~~ THEN BEGIN 602 // from:
  SAY #61410 /* ~Morte paraît à peine remarquer ta présence ; il alterne entre des petits rires et des soupirs satisfaits.~ */
  IF ~~ THEN REPLY #61415 /* ~"Entendu… Je gage que tout s'est bien passé. Au revoir, mademoiselle."~ */ EXIT
END

IF ~~ THEN BEGIN 603 // from:
  SAY #61481 /* ~"Moi ? Je suis la tête de Vecna."~ [MRT562] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 604 // from:
  SAY #61482 /* ~"Les dieux sont miséricordieux !"~ [MRT485] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 605 // from:
  SAY #61483 /* ~"C'est une longue histoire dans laquelle la Tête de Vecna joue un rôle. Je ne veux pas en parler."~ [MRT559A] */
  IF ~~ THEN EXTERN ~BGRACE~ 3
END

IF ~~ THEN BEGIN 606 // from:
  SAY #61484 /* ~"Est-ce qu'on ne pourrait pas *changer* de sujet ? Merci."~ [MRT559B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 607 // from:
  SAY #61485 /* ~"Moi ? *lé pétit Morté*."~ [MRT560] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 608 // from:
  SAY #61486 /* ~"Que dire ? Je suis un *Mémento Morte*."~ [MRT561] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 609 // from:
  SAY #61487 /* ~"À condition de pouvoir poser ma tête sur tes coussins."~ [MRT486A] */
  IF ~~ THEN EXTERN ~BGRACE~ 7
END

IF ~~ THEN BEGIN 610 // from:
  SAY #61488 /* ~"Rien ! Rien du tout. Du tout."~ [MRT486B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 611 // from:
  SAY #61489 /* ~"Arf ! Arf ! Hi ! Hi ! Hi !"~ [MRT484] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Morte","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 612 // from:
  SAY #62890 /* ~"C'est une tanar'ri… une succube, chef."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 613 // from:
  SAY #63454 /* ~"Je ne peux me tenir sur rien. Rapport aux jambes, tu vois."~ [MRT482] */
  IF ~~ THEN EXTERN ~BANNAH~ 1
END

IF ~~ THEN BEGIN 614 // from:
  SAY #63455 /* ~"Je pensais que tu étais belle, mais je me trompais."~ [MRT483] */
  IF ~~ THEN EXTERN ~BANNAH~ 3
END

IF ~~ THEN BEGIN 615 // from:
  SAY #63456 /* ~"J'ai cessé de respirer la première fois que je t'ai vue, fiélonne."~ [MRT524] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 616 // from:
  SAY #63457 /* ~"Tu sais, j'ai un NOM."~ [MRT526] */
  IF ~~ THEN EXTERN ~BANNAH~ 6
END

IF ~~ THEN BEGIN 617 // from:
  SAY #63458 /* ~"Tiens, c'est intéressant que tu en parles… pas plus tard que l'autre jour, je leur ai demandé combien ils m'offriraient pour toi."~ [MRT531] */
  IF ~~ THEN EXTERN ~BANNAH~ 8
END

IF ~~ THEN BEGIN 618 // from:
  SAY #63459 /* ~"Tu sais, tu serais tellement plus charmante si tu te taisais."~ [MRT530] */
  IF ~~ THEN EXTERN ~BANNAH~ 10
END

IF ~~ THEN BEGIN 619 // from:
  SAY #63460 /* ~"Mais mon cœur est déjà à toi, fiélonne."~ [MRT532] */
  IF ~~ THEN EXTERN ~BANNAH~ 12
END

IF ~~ THEN BEGIN 620 // from:
  SAY #63462 /* ~"Il y a pire manière de s'en aller."~ [MRT525] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",8)
~ EXIT
END

IF ~~ THEN BEGIN 621 // from:
  SAY #63463 /* ~"Tu sais, *tu* es en partie fiélon."~ [MRT533A] */
  IF ~~ THEN EXTERN ~BANNAH~ 15
END

IF ~~ THEN BEGIN 622 // from:
  SAY #63464 /* ~"De là où je flotte, elle a l'air bien."~ [MRT533B] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 623 // from:
  SAY #63666 /* ~"J'ai remarqué. Pourquoi ne fais-tu pas part de ton intuition au chef, hein ?"~ [MRT563] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 624 // from:
  SAY #63667 /* ~"Flatulence, stupide polygone."~ [MRT468A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 2
END

IF ~~ THEN BEGIN 625 // from:
  SAY #63668 /* ~"Alors, pourquoi n'essaies-tu pas d'être plus 'efficace' dès maintenant, le super polygone."~ [MRT469A] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 626 // from:
  SAY #63669 /* ~"Je, euh, je n'ai jamais dit ça !"~ [MRT470B] */
  IF ~~ THEN EXTERN ~DANNAH~ 315
END

IF ~~ THEN BEGIN 627 // from:
  SAY #63670 /* ~"Annah porte-t-elle encore des vêtements ?"~ [MRT565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 6
END

IF ~~ THEN BEGIN 628 // from:
  SAY #63671 /* ~"Alors, la réponse est oui."~ [MRT565B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 629 // from:
  SAY #63672 /* ~"Tu vas bientôt en avoir dix-neuf si tu ne fermes pas ton clapet."~ [MRT564] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 630 // from:
  SAY #63673 /* ~"Si cela signifie que tu obéisses à chacun de mes ordres sans poser de question, alors la réponse est oui."~ [MRT569A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 9
END

IF ~~ THEN BEGIN 631 // from:
  SAY #63674 /* ~"Bienvenue sur les plans, gamin."~ [MRT569B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 632 // from:
  SAY #63675 /* ~"Tombée-en-Disgrâce est-elle nue ?"~ [MRT568A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 11
END

IF ~~ THEN BEGIN 633 // from:
  SAY #63676 /* ~"Alors, la réponse à ta question est oui."~ [MRT568B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",8)
~ EXIT
END

IF ~~ THEN BEGIN 634 // from:
  SAY #63677 /* ~"Annah, Tombée-en-Disgrâce et moi-même nous baignant dans un bain de boue Cimmérien."~ [MRT571A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 13
END

IF ~~ THEN BEGIN 635 // from:
  SAY #63678 /* ~"Hé. Certaines personnes lisent les dictionnaires, d'autres les écrivent."~ [MRT572B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",9)
~ EXIT
END

IF ~~ THEN BEGIN 636 // from:
  SAY #63679 /* ~"Annah, une bouteille d'ambre de feu de Furyondie et une suite à la Salle des Fêtes."~ [MRT573] */
  IF ~~ THEN EXTERN ~BNORDOM~ 15
END

IF ~~ THEN BEGIN 637 // from:
  SAY #63680 /* ~"Oh, la *ferme* !"~ [MRT471D] */
  IF ~~ THEN EXTERN ~BNORDOM~ 17
END

IF ~~ THEN BEGIN 638 // from:
  SAY #63681 /* ~"Va donc embêter quelqu'un d'autre, espèce de stupide boîte à calcul."~ [MRT576A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 19
END

IF ~~ THEN BEGIN 639 // from:
  SAY #63682 /* ~"Je ne sais pas, d'accord ? Il est juste… il est… tu sais… il est parti."~ [MRT576B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 20
END

IF ~~ THEN BEGIN 640 // from:
  SAY #63683 /* ~"Je vais te montrer, si tu ne fermes pas ton clapet."~ [MRT576C] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 641 // from:
  SAY #63684 /* ~"Va donc embrasser un piège à ours."~ [MRT575A] */
  IF ~~ THEN EXTERN ~DGRACE~ 373
END

IF ~~ THEN BEGIN 642 // from:
  SAY #63685 /* ~"Crois-moi, Annah aurait bien besoin d'un baiser."~ [MRT575B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 643 // from:
  SAY #63686 /* ~::il siffle innocemment::~ [MRT472A] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 644 // from:
  SAY #63688 /* ~"Personne ! Personne ne lui a dit !"~ [MRT473D] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 645 // from:
  SAY #63689 /* ~"C'est purement volontaire de leur part, espèce d'idiot. Euh… pour ce que j'en sais."~ [MRT577] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 646 // from:
  SAY #63858 /* ~"Fais-moi confiance, tu ne l'as jamais rencontré."~ [MRT475AA] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 1
END

IF ~~ THEN BEGIN 647 // from:
  SAY #64990 /* ~"Une minute, chef… regarde un peu ça." Tu baisses les yeux et remarques des traces de pas boueuses qui mènent à l'arche… et ne la contournent pas. "Il y a certainement un portail ici, ou quelque chose de ce genre."~ */
  IF ~~ THEN REPLY #64991 /* ~"Un portail ? Comment l'ouvrir ?"~ */ GOTO 648
  IF ~~ THEN REPLY #64993 /* ~"Peut-être. En route." ~ */ EXIT
END

IF ~~ THEN BEGIN 648 // from: 647.0
  SAY #64992 /* ~"J'en sais rien, chef. J'imagine que c'est une clé commune : regarde comme ce passage est emprunté ! Peut-être que la plèbe qui vit ici pourrait te renseigner…"~ */
  IF ~~ THEN REPLY #64994 /* ~"Je vais demander. En route." ~ */ EXIT
END

IF ~~ THEN BEGIN 649 // from: 329.0 729.0
  SAY #65552 /* ~"Oh, *allez* chef. Ne me dis pas que tu as encore oublié."~ */
  IF ~~ THEN REPLY #65553 /* ~"Il faut juste que je me rafraîchisse la mémoire."~ */ GOTO 650
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #65554 /* ~"Non, je pense que je veux écouter *toute* l'histoire cette fois. Vas-y, rafraîchis ma mémoire."~ */ GOTO 650
  IF ~~ THEN REPLY #65555 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65556 /* ~"Alors laisse tomber. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 650 // from: 649.0 649.1
  SAY #65557 /* ~"Quelque chose me dit que je vais entendre ÇA souvent." Morte s'éclaircit la voix. "Voyons…"

'Je sais que tu as l'impression d'avoir bu plusieurs barils d'eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s'il n'est pas déjà inscrit dans le livre des morts.'~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #65558 /* ~"Pharod… hmmm. Continue."~ */ GOTO 651
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #65559 /* ~"Continue."~ */ GOTO 651
  IF ~~ THEN REPLY #65560 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65561 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 651 // from: 650.0 650.1
  SAY #65562 /* ~"Oui, oui, attends." Morte s'interrompt un instant. "D'accord, voilà la fin…"

'Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t'arrive, ou on t'enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.'~ */
  IF ~  Global("Morte_Tattoo_XP","GLOBAL",1)
~ THEN GOTO 653
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #65566 /* ~"Continue. Qu'est-ce que ça dit après ?"~ */ GOTO 652
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #65565 /* ~"Et il n'y avait pas de journal sur moi quand je me suis réveillé ?"~ */ GOTO 682
  IF ~~ THEN REPLY #65567 /* ~"Bon, très bien. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65568 /* ~"Laisse. J'en ai assez entendu. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 652 // from: 651.1
  SAY #65563 /* ~"De quoi tu parles, chef ? C'est tout."~ */
  IF ~  Global("Morte_Tattoo_XP","GLOBAL",0)
~ THEN REPLY #65569 /* ~"Et pour 'Ne fais pas confiance au crâne' ?"~ */ DO ~SetGlobal("Morte_Tattoo_XP","GLOBAL",1)
AddexperienceParty(1000)
~ JOURNAL #65573 /* ~J'ai interrogé Morte au sujet de la phrase qu'il a 'oublié' de lire sur mon dos. Il m'a dit qu'elle n'avait pas d'importance, et que c'était pour cette raison qu'il ne me l'avait pas lue. Je suis sûr qu'il me ment, mais j'ignore pourquoi.~ */ GOTO 654
  IF ~  Global("Morte_Tattoo_XP","GLOBAL",1)
~ THEN REPLY #65570 /* ~"Et pour 'Ne fais pas confiance au crâne' ?"~ */ GOTO 654
  IF ~~ THEN REPLY #65571 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65572 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 653 // from: 651.0
  SAY #65564 /* ~"Et bien sûr, cette partie à la fin qui parle de ne pas faire confiance aux crânes."~ */
  IF ~~ THEN REPLY #65574 /* ~"As ton avis, que signifie cette partie ? Tu penses qu'il s'agit de *toi* ?"~ */ GOTO 655
  IF ~~ THEN REPLY #65575 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65576 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 654 // from: 329.4 652.0 652.1 729.4
  SAY #65577 /* ~"Oh… *cette* partie à la fin ? Bah, je me suis dit que ce n'était pas important et je n'ai donc pas lu la ligne à voix haute."~ */
  IF ~~ THEN REPLY #65578 /* ~"Oh, vraiment ? Et à ton avis, qu'est-ce que ça signifie ? Tu penses qu'il s'agit de *toi* ?"~ */ GOTO 655
  IF ~~ THEN REPLY #65579 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65580 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 655 // from: 653.0 654.0
  SAY #65581 /* ~"Ça m'étonnerait. J'veux dire, tu peux *me* faire confiance, n'est-ce pas, chef ?"~ */
  IF ~~ THEN REPLY #65582 /* ~"Serais-tu en train de me *mentir*, Morte ?"~ */ GOTO 656
  IF ~~ THEN REPLY #65583 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65584 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 656 // from: 655.0
  SAY #65585 /* ~"Non ! Allez, c'est quoi ton problème, chef ? Je n'ai jamais été de mauvais conseil jusqu'ici."~ */
  IF ~~ THEN REPLY #65587 /* ~"*Pas encore…* Tu ne m'as pas lu cette ligne et je n'aime pas ça ; et je voudrais savoir ce que tu as *encore* négligé de mentionner depuis que nous voyageons ensemble."~ */ GOTO 657
  IF ~~ THEN REPLY #65586 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65588 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 657 // from: 656.0
  SAY #65589 /* ~"Rien ! Je t'ai tout dit… enfin, PRESQUE tout, mais rien de *dangereux*, tu sais." ~ */
  IF ~~ THEN REPLY #65590 /* ~"S'il y a QUELQUE CHOSE d'autre, je pense qu'il vaut mieux que tu me le dises tout de suite."~ */ GOTO 658
  IF ~~ THEN REPLY #65591 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65592 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 658 // from: 657.0
  SAY #65593 /* ~"Chef, sérieusement, il n'y a rien d'autre. Je ne te cache rien."~ */
  IF ~~ THEN REPLY #65594 /* ~"Bon, très bien, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65595 /* ~"J'espère que non. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 659 // from: 329.1 729.1
  SAY #65596 /* ~"Sigil est une ville en forme d'anneau située au sommet d'une aiguille infiniment grande et on prétend qu'elle est au centre des plans… Bien sûr, *comment* pourrait-elle être au sommet d'une aiguille infiniment grande *et* être au centre des plans ? Cela soulève quelques questions."~ */
  IF ~~ THEN REPLY #65597 /* ~"Autre chose ?"~ */ GOTO 660
  IF ~~ THEN REPLY #65598 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65599 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 660 // from: 659.0
  SAY #65600 /* ~"On appelle Sigil la 'Cité des Portes', principalement parce qu'elle possède une MULTITUDE de portes invisibles pour y entrer ou en sortir : une arche, un encadrement de porte, un cercle de tonneau, une étagère de livres ou une fenêtre ouverte peut être un portail si les conditions sont bonnes. Tout dépend si tu as la clé pour l'ouvrir."~ */
  IF ~~ THEN REPLY #65601 /* ~"La clé ?"~ */ GOTO 661
  IF ~~ THEN REPLY #65602 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65603 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 661 // from: 660.0
  SAY #65604 /* ~"Bon, je pense que comme ça tu vas comprendre : la plupart des portails sont en état de 'sommeil', tu vois ? Tu peux les franchir, passer à côté, au-dessus, mais rien ne se produit. Et bien, chaque portail a quelque chose pour le 'réveiller'. Ça peut être un air qu'il faut fredonner, une miche de pain Bytopien vieux d'une semaine, ou encore te souvenir comment était ton premier baiser, etc. BOUM : le portail met les gaz et tu peux sauter dedans pour te rendre de l'autre côté."~ */
  IF ~~ THEN REPLY #65605 /* ~"Où, par exemple?"~ */ GOTO 662
  IF ~~ THEN REPLY #65606 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65607 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 662 // from: 661.0
  SAY #65608 /* ~"Partout, chef, vraiment. Tous les endroits imaginables ont leur portail. C'est pour cela que Sigil est si connue dans les plans."~ */
  IF ~~ THEN REPLY #65609 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65610 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 663 // from: 329.2 729.2
  SAY #65611 /* ~"Hé ! Bavarder est ce que je sais faire de mieux." Il fait grincer ses dents pendant un moment puis affiche un rictus. "Eh ? Eh ?"~ */
  IF ~~ THEN REPLY #65612 /* ~"Oh ! Je suis heureux de l'entendre…"~ */ GOTO 664
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",2)
~ THEN REPLY #65613 /* ~"Oui, je suis au courant pour la Litanie d'injures, Morte. Je suis plus curieux de savoir ce que tu as eu lorsque tu étais chez Lothar."~ */ GOTO 667
  IF ~~ THEN REPLY #65614 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65615 /* ~"Peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 664 // from: 663.0
  SAY #65616 /* ~"Non, mais sérieusement, chef. J'ai un truc pour bavarder avec quelqu'un. Je peux vraiment accaparer son attention, si tu vois ce que je veux dire. Je connais des insultes, des grossièretés, des trucs à faire dresser les cheveux sur la tête, tu vois ?"~ */
  IF ~~ THEN REPLY #65617 /* ~"Euh… Comment ça, c'est utile ?"~ */ GOTO 665
  IF ~~ THEN REPLY #65618 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65619 /* ~"Peu importe. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 665 // from: 664.0
  SAY #65620 /* ~"C'est l'un de mes nombreux talents… j'appelle ça ma 'Litanie d'injures'. Tu vois, quelquefois je peux vraiment accaparer l'attention de quelqu'un, rien qu'en faisant la *bonne* remarque. Bien sûr, je dois généralement m'enfuir en courant après… mais tu as compris."~ */
  IF ~~ THEN REPLY #65621 /* ~"Comment ça fonctionne ?"~ */ DO ~SetGlobal("Morte_Talent","GLOBAL",1)
~ JOURNAL #65625 /* ~Morte m'a dit qu'il possédait le 'pouvoir' de mettre les gens en colère ; il l'appelle sa 'Litanie d'injures'. Apparemment, il a mémorisé tellement d'insultes ou cours de sa vie et de sa mort qu'il sait comment provoquer n'importe qui. Les individus qui se jettent sur lui en étant fous de rage sont moins précis et plus faciles à toucher ; de plus, ils ne font rien d'autre que courir après Morte et tenter de l'aplatir à mains nues. C'est le genre de pouvoir qui peut s'avérer très utile contre les jeteurs de sorts. De plus, n'étant pas magique, il affecte normalement les créatures dotées de résistance à la magie. J'imagine que le 'don' de Morte ne peut que s'améliorer encore quand il entend de nouvelles injures.~ */ GOTO 666
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",2)
~ THEN REPLY #65622 /* ~"Autre chose ?"~ */ GOTO 667
  IF ~~ THEN REPLY #65623 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65624 /* ~"Hmmm. Ça peut être utile. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 666 // from: 329.3 665.0 729.3
  SAY #65626 /* ~"Et bien, je peux déblatérer des insultes à quelqu'un jusqu'à ce qu'il devienne furieux et me chasse."

^NREMARQUE : Morte a une faculté nommée 'Litanie d'injures'. C'est une capacité non magique ; si la cible n'arrive pas à résister, elle subit un malus dans sa classe d'armure, attaque et essaiera à tout prix d'engager un combat au corps à corps avec Morte. Plus Morte entend d'insultes et meilleur devient sa Litanie d'injures. La Litanie d'injures est TRÈS EFFICACE contre les mages.^-~ */
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",2)
~ THEN REPLY #65627 /* ~"Peux-tu faire autre chose ?"~ */ GOTO 667
  IF ~~ THEN REPLY #65628 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65629 /* ~"Hmmm. Ça peut être utile. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 667 // from: 663.1 665.1 666.0
  SAY #65630 /* ~"Et bien, je me suis fait des amis pendant que j'attendais sagement sur l'étagère, chez Lothar, que tu me mettes en liberté provisoire. Au fait, merci d'avoir pris ton temps. Ils m'ont dit que si j'avais besoin d'aide, je pouvais passer les voir."~ */
  IF ~~ THEN REPLY #65631 /* ~"Amis ? Que veux-tu dire ?"~ */ JOURNAL #65637 /* ~Morte m'a dit qu'il avait acquis une nouvelle capacité alors qu'il se trouvait sur l'étagère de Lothar ; il lui donne le nom de 'Gang de crânes'. Apparemment, il est capable, un certain nombre de fois par jour, d'appeler les amis qu'il s'est faits chez Lothar, et ceux-ci se jettent alors sur l'adversaire de son choix pour le mordre. Les dégâts qu'ils infligent dépendent du niveau de Morte.~ */ GOTO 668
  IF ~~ THEN REPLY #65632 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65633 /* ~"Heureux de l'entendre alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 668 // from: 667.0
  SAY #65634 /* ~"Ben, je n'ai qu'à siffler et ils arrivent. Ce sont de vrais lascars et aussi des *traîtres*."

^NREMARQUE : Morte possède dorénavant une capacité spéciale appelée le 'Gang de crânes'. Lorsqu'il l'invoque, il peut faire apparaître une horde de crânes qui vont mordre un opposant de nombreuses fois. La force et les dégâts causés par les crânes varient en fonction du niveau de Morte et ce pouvoir ne peut être utilisé qu'un nombre de fois limité par jour.^-~ */
  IF ~~ THEN REPLY #65635 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65636 /* ~"Heureux de l'entendre alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 669 // from: 329.5 729.5
  SAY #65638 /* ~"Et bien, voilà comment *je* vois les choses…"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #65639 /* ~"Continue…"~ */ GOTO 671
  IF ~  Global("Pharod","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #65640 /* ~"Continue…"~ */ GOTO 672
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
!Global("AR0401_Visited","GLOBAL",1)
~ THEN REPLY #65641 /* ~"Continue…"~ */ GOTO 673
  IF ~  Global("AR0401_Visited","GLOBAL",1)
Global("AR0500_Visited","GLOBAL",0)
~ THEN REPLY #65642 /* ~"Continue…"~ */ GOTO 670
  IF ~  Global("AR0500_Visited","GLOBAL",1)
Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #65643 /* ~"Continue…"~ */ GOTO 674
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #65644 /* ~"Continue…"~ */ GOTO 675
  IF ~  Global("Know_Ravel","GLOBAL",1)
GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #65645 /* ~"Continue…"~ */ GOTO 677
  IF ~  Global("AR0610_Visited","GLOBAL",1)
Global("AR0700_Visited","GLOBAL",0)
~ THEN REPLY #65646 /* ~"Continue…"~ */ GOTO 680
  IF ~  Global("AR0700_Visited","GLOBAL",1)
~ THEN REPLY #65647 /* ~"Continue…"~ */ GOTO 681
  IF ~~ THEN REPLY #65648 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65649 /* ~"Tout bien réfléchi, laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 670 // from: 669.3
  SAY #65650 /* ~"Ce que je pense, c'est que c'est ton plan, chef. Je ne peux plus dire grand-chose qui pourrait t'aider."~ */
  IF ~~ THEN REPLY #65651 /* ~"*Ça* c'est un grand changement. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65652 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 671 // from: 669.0
  SAY #65653 /* ~"Je pense que tu devrais essayer de dénicher ce 'Pharod', où qu'il crèche. Tu n'aurais pas eu ces indications tatouées sur ton dos s'il n'avait pas la moindre idée de ce que tu faisais. Un des habitants de ce secteur DOIT savoir où il se trouve."~ */
  IF ~~ THEN REPLY #65654 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65655 /* ~"D'accord. Continuons à le chercher alors."~ */ EXIT
END

IF ~~ THEN BEGIN 672 // from: 669.1
  SAY #65656 /* ~"Moi j'dis qu'on devrait essayer de piquer cette 'sphère en bronze' aussi vite que possible et la rendre au vieux Bègue-béquille."~ */
  IF ~~ THEN REPLY #65657 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65658 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 673 // from: 669.2
  SAY #65659 /* ~"Moi j'dis qu'on devrait repérer où ton cadavre a échoué. Peut-être qu'on découvrira comment ton nom a pu entrer dans le livre des morts."~ */
  IF ~~ THEN REPLY #65660 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65661 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 674 // from: 669.4
  SAY #65662 /* ~"Moi j'dis qu'on devrait trouver quelqu'un qui en sait plus à ton sujet, et comment ça t'est arrivé. Il doit bien y avoir des lascars dans l'un des Quartiers qui en savent plus sur toi."~ */
  IF ~~ THEN REPLY #65663 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65664 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 675 // from: 669.5
  SAY #65665 /* ~"On dirait qu'on va devoir en découvrir plus sur cette guenaude noire, Ravel. Et je dois t'avouer, chef, que je ne suis *pas vraiment* impatient de la trouver. Mais les sages de la Salle des Fêtes et certaines pierres sensorielles pourront peut-être nous en dire plus."~ */
  IF ~  Global("AR0601_Visited","GLOBAL",0)
~ THEN REPLY #65666 /* ~"Salle des Fêtes ? Pierres sensorielles ?"~ */ JOURNAL #65669 /* ~Morte m'a conseillé de me rendre à la Salle des Fêtes du Quartier des Gratte-Papier pour en apprendre davantage au sujet de Ravel, la guenaude noire.~ */ GOTO 676
  IF ~~ THEN REPLY #65667 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65668 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 676 // from: 675.0
  SAY #65670 /* ~"Désolé, chef - j'oublie tout le temps que tu as toutes les connaissances d'un primaire complètement béjaune. Tu vois, la Salle des Fêtes est la bicoque principale de la faction des Sensats dans le Quartier des Gratte-Papier. Ils ont des bibliothèques de pierres sensorielles qui stockent les expériences, et ils ont plein de sages, de conférenciers et de mentors qui pourront peut-être nous aider à sortir de l'obscurité et comprendre ce qui se passe avec Ravel."~ */
  IF ~~ THEN REPLY #65671 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65672 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 677 // from: 669.6
  SAY #65673 /* ~"Et bien, Ravel s'est fait enfermer. Mais il y a certainement UNE clé et UN portail qui pourrait nous y emmener, si tu veux toujours y aller."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #65674 /* ~"Tu sais ce que pourrait être la clé du dédale ?"~ */ JOURNAL #65678 /* ~Morte m'a dit qu'un habitant du Quartier des Gratte-Papiers saurait peut-être où trouver un morceau de Ravel. Si cela échoue, nous pourrons toujours essayer la Salle des Fêtes et ses pierres sensorielles. Et si nous devions faire chou blanc une seconde fois, nous pourrions aller interroger les prostituées… c'est franchement plus agréable que d'arrêter tous les passants pour leur poser des questions.~ */ GOTO 678
  IF ~~ THEN REPLY #65675 /* ~"Tu sais où je peux trouver un portail pour aller dans son dédale ?"~ */ GOTO 679
  IF ~~ THEN REPLY #65676 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65677 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 678 // from: 677.0
  SAY #65679 /* ~"Aucune idée. Un 'morceau de Ravel' ? Ça pourrait être n'importe quoi : une de ses verrues desséchées, une de ses œuvres d'art, ou encore un peu de sa bave. C'est trop vague. Mais je parie que QUELQU'UN dans le Quartier des Gratte-Papier sait comment faucher un objet à cette sorcière azimutée. Si on ne trouve personne, on peut toujours aller voir les pierres sensorielles dans la Salle des Fêtes, peut-être que l'une d'entre-elles pourra nous dévoiler quelque chose d'utile."~ */
  IF ~~ THEN REPLY #65680 /* ~"Tu sais où je peux trouver un portail pour aller dans son dédale ?"~ */ GOTO 679
  IF ~~ THEN REPLY #65681 /* ~"Bonne remarque. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65682 /* ~"D'accord. Continuons à chercher alors.~ */ EXIT
END

IF ~~ THEN BEGIN 679 // from: 677.1 678.0
  SAY #65683 /* ~"J'suis pas trop sûr, chef. Il y a des tonnes de portails à Sigil. Essaie la Salle des Fêtes. Je doute qu'il soit là mais l'une des pierres sensorielles pourra peut-être nous dire quelque chose. Si ça ne marche pas, on n'a qu'à oublier tous ces va et vient et trouver quelqu'un qui nous FABRIQUE un portail."~ */
  IF ~~ THEN REPLY #65684 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65685 /* ~"D'accord. Passons à autre chose alors."~ */ EXIT
END

IF ~~ THEN BEGIN 680 // from: 669.7
  SAY #65686 /* ~"Je propose qu'on trouve ce qu'on cherche et qu'on se tire d'ici, chef. Cet endroit me donne la chair de poule et je n'ai même pas de peau. D'accord ?"~ */
  IF ~~ THEN REPLY #65687 /* ~"C'est vrai. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65688 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 681 // from: 669.8
  SAY #65689 /* ~"Tu m'as eu, chef. C'est ton plan après tout, je ne fais que te suivre."~ */
  IF ~~ THEN REPLY #65690 /* ~"C'est vrai. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65691 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 682 // from: 651.2
  SAY #65692 /* ~"Non… t'étais nu comme un ver. Comme j'te l'ai déjà dit, on dirait que t'as déjà un journal écrit sur le corps."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #65693 /* ~"Et tu es sûr que tu ne connais personne du nom de Pharod ?"~ */ GOTO 683
  IF ~~ THEN REPLY #65694 /* ~"C'est vrai. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65695 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 683 // from: 682.0
  SAY #65696 /* ~"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander aux habitants."~ */
  IF ~~ THEN REPLY #65697 /* ~"Avant d'y aller, j'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65698 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 684 // from: 329.6 729.6
  SAY #65699 /* ~"Ouais, un mimir c'est une encyclopédie flottante. Tu rentres des informations et il en sort d'autres."~ */
  IF ~  Global("Grace_Silver_Mimir","GLOBAL",1)
~ THEN REPLY #65700 /* ~"Les mimirs ne sont donc pas fabriqués à partir de métal argenté ?"~ */ GOTO 685
  IF ~~ THEN REPLY #65701 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65702 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 685 // from: 684.0
  SAY #65703 /* ~"Et alors ? peut-être que certains le sont mais pas *moi*. Et il y a des choses plus bizarres que ça dans les plans, chef."~ */
  IF ~~ THEN REPLY #65704 /* ~"Je ne pense pas que tu sois un mimir, Morte. Qu'est-ce que tu es ?"~ */ GOTO 686
  IF ~~ THEN REPLY #65705 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65706 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 686 // from: 685.0
  SAY #65707 /* ~"C'est quoi, cet interrogatoire ? Qu'est-ce que *tu* sais sur les mimirs, de toute façon ?"~ */
  IF ~  Global("Grace_Smell_Mimir","GLOBAL",1)
~ THEN REPLY #65708 /* ~"J'en sais assez pour pouvoir penser que tu me mens."~ */ GOTO 687
  IF ~  Global("Morte_Tattoo_XP","GLOBAL",1)
~ THEN REPLY #65709 /* ~"J'en sais assez pour pouvoir penser que tu me mens. D'abord, la ligne manquante sur mon dos disant de ne pas te faire confiance, et maintenant ça. Qu'est-ce que je suis censé croire ?"~ */ GOTO 687
  IF ~~ THEN REPLY #65710 /* ~"Rien, j'imagine. J'ai d'autres questions…"~ */ JOURNAL #65712 /* ~J'ai parlé à Morte du fait qu'il avait prétendu être un mimir, mais je n'avais rien de précis à lui reprocher. Il va me falloir le prendre à mentir si je veux lui faire dire la vérité.~ */ GOTO 329
  IF ~~ THEN REPLY #65711 /* ~"Bon, peu importe. Allons-y."~ */ JOURNAL #65712 /* ~J'ai parlé à Morte du fait qu'il avait prétendu être un mimir, mais je n'avais rien de précis à lui reprocher. Il va me falloir le prendre à mentir si je veux lui faire dire la vérité.~ */ EXIT
END

IF ~~ THEN BEGIN 687 // from: 686.0 686.1
  SAY #65713 /* ~"OK, je ne suis *pas* un mimir, mais je sais un tas de trucs et je *pourrais* très bien en être un."~ */
  IF ~~ THEN REPLY #65714 /* ~"Qu'est-ce que tu *es* ?"~ */ GOTO 688
  IF ~~ THEN REPLY #65715 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65716 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 688 // from: 687.0
  SAY #65717 /* ~"Je suis un crâne flottant qui en connaît un bout."~ */
  IF ~  Global("Grace_Smell_Mimir","GLOBAL",1)
Global("AR1000_Visited","GLOBAL",0)
~ THEN REPLY #65718 /* ~"Et ton odeur de Baator ?"~ */ GOTO 690
  IF ~  Global("Grace_Smell_Mimir","GLOBAL",1)
Global("AR1000_Visited","GLOBAL",1)
~ THEN REPLY #65719 /* ~"Et ton odeur de Baator ?"~ */ GOTO 689
  IF ~~ THEN REPLY #65720 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65721 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 689 // from: 688.1
  SAY #65722 /* ~"Comment est-ce que TOI tu connaîtrais l'odeur de Baator ?!"~ */
  IF ~~ THEN REPLY #65723 /* ~"Parce que je suis *allé* là-bas, Morte. J'ai marché sur l'Averne."~ */ GOTO 691
  IF ~~ THEN REPLY #65724 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65725 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 690 // from: 688.0
  SAY #65726 /* ~"Comment est-ce que TOI tu connaîtrais l'odeur de Baator ? À moins que… hé ! Tu as parlé de moi avec la tanar'ri, c'est ça ?! Qu'est-ce qu'elle sait ?!"~ */
  IF ~~ THEN REPLY #65727 /* ~"Elle a apparemment mis le doigt sur quelque chose. C'est l'odeur de Baator, pas vrai ?"~ */ GOTO 691
  IF ~~ THEN REPLY #65728 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65729 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 691 // from: 689.0 690.0
  SAY #65730 /* ~"Et bien, oui, mais… Oui. Je pue un petit peu. *Excuse*-moi."~ */
  IF ~~ THEN REPLY #65731 /* ~"*Pourquoi* tu sens comme Baator ?"~ */ DO ~SetGlobal("Morte_Story","GLOBAL",1)
~ GOTO 692
END

IF ~~ THEN BEGIN 692 // from: 691.0
  SAY #65732 /* ~"J'étais aux Enfers pendant un moment. Plutôt longtemps, en fait. La puanteur s'incruste."~ */
  IF ~~ THEN REPLY #65733 /* ~"Tu étais aux Enfers ? Qu'est-ce que tu y FAISAIS ?"~ */ DO ~AddexperienceParty(12000)
~ GOTO 693
END

IF ~~ THEN BEGIN 693 // from: 329.7 692.0 729.7
  SAY #65734 /* ~"Tu vois, il y a ce *pilier* sur l'Averne, le premier niveau de Baator ; on l'appelle le Pilier des Crânes, mais c'est plus une colonne de têtes."~ */
  IF ~~ THEN GOTO 694
END

IF ~~ THEN BEGIN 694 // from: 693.0
  SAY #65735 /* ~"Selon certains lascars, c'est *soi-disant* fait de têtes de biges, principalement des sages et des érudits, qui ont utilisé leurs connaissances lorsqu'ils étaient vivants pour transformer la vérité un tantinet… tellement qu'ils ont peut-être blessé, ou euh, tué quelqu'un. Et bien, lorsque je suis *mort*, je me suis retrouvé là-bas. Marrant, non ?"~ */
  IF ~~ THEN REPLY #65846 /* ~"Pas vraiment."~ */ GOTO 695
END

IF ~~ THEN BEGIN 695 // from: 694.0
  SAY #65736 /* ~"Euh…" Morte reste silencieux pendant un moment. "Ouais, tu as raison, ce n'est pas drôle du tout. Tu vois, je pense que je savais un tas de trucs quand j'étais vivant. Et peut-être que quand je savais quelque chose, je ne disais pas toujours la vérité. Je crois qu'en transformant la vérité une fois ou deux, j'ai peut-être provoqué l'inscription de quelqu'un dans le livre des morts plus tôt que prévu."~ */
  IF ~~ THEN REPLY #65737 /* ~"Peux-tu te rappeler qui ?"~ */ GOTO 697
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #65738 /* ~"C'était moi, pas vrai ?"~ */ GOTO 696
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65739 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65740 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 696 // from: 695.1
  SAY #65741 /* ~Morte te regarde pendant un moment. "Ouais. Je suis incapable de dire *comment* je le sais, chef, mais je pense que oui. Je pense que tu es celui qui m'y a envoyé ; la petite brindille qui fait tout basculer. Le hic, c'est que je ne me rappelle pas ce qui s'est passé. Je ne me souviens même pas d'avoir été un humain ni comment était ma vie avant de me réveiller sur le Pilier."~ */
  IF ~~ THEN REPLY #65742 /* ~"Pourquoi tu as oublié ?"~ */ GOTO 698
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65743 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65744 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 697 // from: 695.0
  SAY #65745 /* ~"Je suis incapable de dire comment je le sais, chef, mais je pense que c'était *toi*. Au moins une fois. Le hic, c'est que je ne me rappelle pas ce qui s'est passé. Je ne me souviens même pas d'avoir été un humain ni à quoi je ressemblais avant de me réveiller sur le Pilier."~ */
  IF ~~ THEN REPLY #65746 /* ~"Pourquoi tu as oublié ?"~ */ GOTO 698
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65747 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65748 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 698 // from: 696.0 697.0
  SAY #65749 /* ~"C'est ce qui se passe normalement quand on meurt, je suis sûr que tu connais ça. On… oublie. Je suppose que quand j'étais vivant, je n'étais pas une personne de confiance dans la communauté… Mais bon sang, qui l'est ?" Morte soupire. "C'est juste que j'y peux rien. Y'a rien de pire que d'être constamment *honnête*."~ */
  IF ~  Global("Chaotic_Morte_1","GLOBAL",0)
~ THEN REPLY #65750 /* ~"À part être condamné aux Enfers. Cela paraît bien pire que de dire la vérité."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Morte_1","GLOBALLaw",1)
~ GOTO 699
  IF ~  Global("Lawful_Morte_1","GLOBAL",0)
~ THEN REPLY #65751 /* ~"Mm, c'est vrai… mais tu devrais mentir avec prudence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Morte_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Morte_1","GLOBALGood",-1)
~ GOTO 699
END

IF ~~ THEN BEGIN 699 // from: 698.0 698.1
  SAY #65752 /* ~"Ouais. Tu as raison. *Encore une fois*." Morte fait claquer ses dents et ça te fait penser à quelqu'un qui pianote des doigts. "Je pense que tout ça, le bien et le mal, mentir et tromper, ça te rattrape un jour et quand je me suis fait inscrire dans le livre des morts, c'était à mon tour de payer."~ */
  IF ~~ THEN REPLY #65753 /* ~"Comment tu t'es échappé du Pilier ?"~ */ JOURNAL #53633 /* ~Morte m'a dit que c'est moi qui l'avait arraché au Pilier des Crânes, il y a bien longtemps de cela, mais il ignore comment j'ai fait. Il m'a également expliqué que tout le savoir du Pilier l'avait quitté à partir du moment où il en avait été séparé… ce qui expliquerait pourquoi il n'est pas tout à fait aussi utile (!) que ce qu'il avait promis à mon incarnation passée.~ */ GOTO 700
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65754 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65755 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 700 // from: 699.0
  SAY #65757 /* ~"Et bien… tu m'as aidé, chef. Quand tu t'es pointé devant le Pilier des Crânes, je me suis poussé vers le devant. Mon savoir-faire et mon charme flagrants ont attiré ton attention. Tu savais que c'était *moi* la tête qui savait le plus de choses. Alors je t'ai proposé un marché."~ */
  IF ~~ THEN REPLY #65758 /* ~"Un marché… ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 701
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65759 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65760 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 701 // from: 700.0
  SAY #65761 /* ~Pendant que Morte parle, ta vision semble se voiler de rouge et tu entends un hurlement, une horrible *plainte* accompagnée de murmures, de cris stridents, de martèlements provenant d'une multitude de voix. TOUTES implorent leur libération en hurlant et la voix de Morte… à peine audible, presque perdue dans la horde. Il a l'air désespéré, effrayé et… pitoyablement, tragiquement *perdu*.~ */
  IF ~~ THEN REPLY #65762 /* ~Écho : "Toi. Crâne. Parle."~ */ GOTO 702
  IF ~~ THEN REPLY #65763 /* ~Repousse le souvenir.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 706
END

IF ~~ THEN BEGIN 702 // from: 701.0
  SAY #65764 /* ~Les hurlements cessent et tu regardes le minuscule crâne aux lignes rouges qui projette une lumière diabolique à travers ses fêlures et tourne les yeux vers toi. Du sang ainsi qu'une substance indéfinissable s'écoulent de ses fêlures et ses dents claquent comme s'il avait froid. "Je peux-peux t'aider, je sais-sais ce que tu cherches… Toutes ces têtes… Tout leur savoir… Pitié, je t'en *supplie* délivre-moi. Laisse-moi t'*aider*. Je te dirai tout, *absolument tout*."~ */
  IF ~~ THEN REPLY #65765 /* ~Écho : "Le *feras*-tu ? JURE-le, crâne. JURE que tu vas me servir jusqu'à la fin des temps, ou tu resteras ici."~ */ GOTO 703
  IF ~~ THEN REPLY #65766 /* ~Repousse le souvenir.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 706
END

IF ~~ THEN BEGIN 703 // from: 702.0
  SAY #65767 /* ~"Je jure. Je jure que… s'il te plaît, *pitié* délivre-moi… Je…" Tu regardes Morte alors qu'il déglutit d'une manière écœurante et son orgueil est tel qu'il en est presque tangible. "Je t'en… *supplie*. Laisse-moi t'*aider*. S'il te plaît."~ */
  IF ~~ THEN REPLY #65768 /* ~Écho : "Très bien. Je vais te libérer."~ */ GOTO 704
  IF ~~ THEN REPLY #65769 /* ~Repousse le souvenir.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 706
END

IF ~~ THEN BEGIN 704 // from: 703.0
  SAY #65770 /* ~Ta vision bascule, comme si tu te déplaçais, et la cacophonie de plaintes et de hurlements recommence, une foule cauchemardesque de braillements, de sifflements, de sarcasmes et d'insultes… Tu sens tes mains glisser dans la fange répugnante du pilier, des crocs et des maxillaires te mordre, et tes mains se referment sur le petit crâne et l'arrachent du pilier comme une vieille croûte…~ */
  IF ~~ THEN REPLY #65771 /* ~Écho : "C'est FAIT."~ */ GOTO 705
  IF ~~ THEN REPLY #65772 /* ~Repousse le souvenir.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 706
END

IF ~~ THEN BEGIN 705 // from: 704.0
  SAY #65773 /* ~Tu regardes le crâne sanglant dans tes mains couvertes de cicatrices, ses yeux couverts de la substance indéfinissable provenant du pilier et ses dents claquent une fois, deux fois. Cela te rappelle les gémissements d'un nourrisson, sans défense et - dans les yeux de l'homme que tu étais autrefois - pitoyable.~ */
  IF ~  Global("Memory_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65774 /* ~Écho : "Je t'ai libéré. Maintenant ta vie… et ta mort sont à moi… Morte."~ */ DO ~SetGlobal("Memory_Morte_Pillar","GLOBAL",1)
GiveExperience(Protagonist,12000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 706
  IF ~  Global("Memory_Morte_Pillar","GLOBAL",1)
~ THEN REPLY #65775 /* ~Écho : "Je t'ai libéré. Maintenant ta vie… et ta mort sont à moi… Morte."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 706
END

IF ~~ THEN BEGIN 706 // from: 701.1 702.1 703.1 704.1 705.0 705.1
  SAY #65776 /* ~Ta vision vacille et les réminiscences du passé s'éloignent. Morte continue son bavardage. "On a parlé un moment, chef, toi et moi, pour voir si le contrat marcherait, et je pense qu'on était tous les deux très impressionnés l'un par l'autre, alors tu m'as fait sortir du pilier et depuis je suis, en quelque sorte, toujours resté avec toi."~ */
  IF ~~ THEN REPLY #65777 /* ~"Euh… Qu'est-il arrivé ensuite ?"~ */ GOTO 707
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65778 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65779 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 707 // from: 706.0
  SAY #65780 /* ~"Et bien, je ne savais pas que je perdrais la plupart des connaissances du Pilier, une fois extrait… je veux dire, comment j'aurais pu le savoir, je n'étais jamais sorti de ce foutu pilier… d'ailleurs, tu étais très compréhensif…"~ */
  IF ~~ THEN REPLY #65781 /* ~"Tu as perdu tout le savoir que tu avais dit posséder… ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 708
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65782 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65783 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 708 // from: 707.0
  SAY #65784 /* ~Ta vision vacille de nouveau, te donnant la nausée, et tu sens ton cœur se soulever. Tu entends des os craquer et se casser et Morte hurle, hurle de douleur, criant à quelqu'un de s'arrêter, s'arrêter de le *tuer*… et ta main envoie des coups de poing, encore et encore…~ */
  IF ~~ THEN REPLY #65785 /* ~Écho : "Par BAATOR, crâne, tu m'as MENTI. Je vais TE REMETTRE DANS CE SATANÉ PILIER ET T'Y LAISSER *CREVER*."~ */ GOTO 709
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65786 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65787 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 709 // from: 708.0
  SAY #65788 /* ~Il y a le cliquetis des os contre quelque chose qui semble être du métal, un sol ou un mur, puis le bruit des dents qui sont éjectées. Tu entends crier Morte comme un cochon qu'on égorge.~ */
  IF ~~ THEN REPLY #65789 /* ~Écho : "SACHE QUE TA SOUFFRANCE SUR LE PILIER NE SERA *RIEN* COMPARÉE AUX TOURMENTS QUE JE VAIS TE FAIRE *SUBIR*."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 710
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65790 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65791 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 710 // from: 709.0
  SAY #65792 /* ~Ta vision vacille et les cris de Morte faiblissent, pour laisser peu à peu la place au rythme de ses bavardages. "Alors tu t'es rendu compte que j'avais encore mon utilité. Je me suis lié d'amitié avec toi, et depuis je ne t'ai pas quitté."~ */
  IF ~~ THEN REPLY #65793 /* ~"Morte, qu'est-ce que je voulais de la part du Pilier ? Et ça fait combien de temps que je t'ai libéré ?"~ */ GOTO 711
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65794 /* ~"Euh… Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65795 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 711 // from: 710.0
  SAY #65796 /* ~Morte réfléchit pendant un moment. "Et bien, combien de temps exactement, je ne sais pas, chef. Des siècles, j'imagine. J'ai fait tout mon possible pour t'aider à chaque fois, mais…" Morte soupire. "Ce n'est pas facile, et pour ce que tu voulais au pied du Pilier, je ne sais pas."~ */
  IF ~~ THEN REPLY #65797 /* ~"Morte, pourquoi n'as-tu rien DIT à la morgue ?" ~ */ GOTO 712
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65798 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65799 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 712 // from: 711.0
  SAY #65800 /* ~Morte prend soudain la défensive. "Parce que je *sais* jamais qui tu vas être ! Certaines de tes incarnations ont été complètement délirantes ! Une fois, tu t'es réveillé obsédé par l'idée que j'étais *ton* crâne et tu m'as chassé autour de l'Aiguille pour me fracasser et me dévorer… Heureusement, tu t'es fait écraser par un chariot dans la rue. Une autre fois, une 'bonne et honnête' version de toi a essayé de me jeter dans le pilier, parce que 'c'était ma place'." Morte sourit d'un air narquois. "*C'est* pour ça que ça t'a jamais fait d'mal de rien savoir…"~ */
  IF ~  Global("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65801 /* ~"Tu es donc resté avec moi pendant tout ce temps ?"~ */ GOTO 713
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65802 /* ~"Laisse tomber, Morte. J'ai d'autres questions…"~ */ GOTO 329
  IF ~  GlobalGT("Know_Morte_Pillar","GLOBAL",0)
~ THEN REPLY #65803 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 713 // from: 712.0
  SAY #65804 /* ~"Et bien oui, chef, j'ai dit que je le ferais. Morte tient toujours ses promesses." Il fait une pause. "Enfin, la plupart d'entre elles. Hé hé. Il y avait cette gamine sur l'Arborée qui…"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Morte_Pillar","GLOBAL",1)
~ GOTO 714
END

IF ~~ THEN BEGIN 714 // from: 713.0
  SAY #65805 /* ~Soudainement tu te rends compte que le ton de Morte a changé. Après cette blague, tu te rends compte qu'il essaie de te cacher quelque chose. Quelque chose sur la raison pour laquelle il est avec toi.~ */
  IF ~~ THEN REPLY #65806 /* ~"Morte, sérieusement, pourquoi est-ce que tu voyages toujours avec moi ?"~ */ GOTO 715
  IF ~~ THEN REPLY #65807 /* ~"Bon, très bien. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65808 /* ~"Peu importe, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 715 // from: 329.8 714.0 729.8
  SAY #65809 /* ~"Chef, j'ai dit que c'était parce que je l'avais promis, d'accord ?" Il semble irrité. "Qu'est-ce que ça pourrait être d'autre ?"~ */
  IF ~~ THEN REPLY #65810 /* ~"Je ne sais pas. Tu n'avais pas besoin de me coller après que je t'avais libéré."~ */ GOTO 716
  IF ~~ THEN REPLY #65811 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65812 /* ~"Laisse tomber, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 716 // from: 715.0
  SAY #65813 /* ~"Bien sûr que non, chef, mais je…" Et soudainement le ton de sa voix te rappelle *pourquoi* il est resté constamment avec toi.~ */
  IF ~~ THEN REPLY #65814 /* ~"Tu te sens *coupable*. Parce que tu as provoqué ma mort il y a très longtemps, pas vrai ? Et depuis, tu souffres."~ */ GOTO 717
END

IF ~~ THEN BEGIN 717 // from: 716.0
  SAY #65815 /* ~"Allez, chef. Moi me sentir *coupable* ? Je suis Morte."~ */
  IF ~~ THEN REPLY #65816 /* ~"Non, je pense que c'est ça. Lorsque je suis venu te délivrer du sort que tu avais mérité, tu n'as pas pu *t'empêcher* d'essayer de m'aider. Et alors que tu aurais pu partir une fois que je t'avais libéré, tu es resté. Parce que tu te sentais redevable de quelque chose."~ */ GOTO 718
END

IF ~~ THEN BEGIN 718 // from: 717.0
  SAY #65817 /* ~Morte reste silencieux pendant un moment et t'observe. "Peut-être. Tu sais ce qui est marrant ? Au début, je ne savais pas comment serait la sensation… En quelque sorte, ça te bouffe petit à petit, tu vois ?"~ */
  IF ~~ THEN GOTO 719
END

IF ~~ THEN BEGIN 719 // from: 718.0
  SAY #65818 /* ~"Au début, j'ai cru que c'était un effet secondaire d'un quelconque enchantement qui te 'liait' à moi, mais au bout d'un ou deux siècles, je me suis rendu compte que c'était *plus* que ça… Quelque chose de plus profond. Je me sentais juste attiré, *connecté* par toi, d'une certaine manière. Peut-être à cause de toute cette souffrance, chef… Tes tourments. Je ne sais pas, je me suis peut-être senti… Je ne sais pas, *responsable* de ce que j'avais fait. Et si une de mes actions t'avait rendu dans cet état ?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Morte_Pillar","GLOBAL",2)
~ GOTO 720
END

IF ~~ THEN BEGIN 720 // from: 719.0
  SAY #65820 /* ~"Le truc, c'est que je ne pense pas que moi, ou la personne que j'étais à l'époque, ait jamais dû réellement *voir* les conséquences de mes mensonges et de mes duperies, et lorsque je t'ai aperçu pour la première fois quand j'étais coincé dans le Pilier, quelque part je *savais* que tu étais celui que j'avais trompé. C'était il y a longtemps…" Morte soupire. "C'est tout ce que je sais."~ */
  IF ~~ THEN REPLY #65821 /* ~"Je vois. Merci de l'admettre, Morte."~ */ DO ~AddexperienceParty(12000)
MoraleInc("Morte",3)
PermanentStatChange("Morte",STR,RAISE,4)
PermanentStatChange("Morte",DEX,RAISE,2)
PermanentStatChange("Morte",CON,RAISE,2)
SetGlobal("BD_MorteStory","GLOBAL",1)
~ JOURNAL #65825 /* ~J'ai découvert pourquoi Morte me suit depuis tout ce temps. C'est parce qu'il se sent coupable de m'avoir tué une fois, du temps où il était toujours vivant. Nous en avons parlé et il a eu l'air soulagé. J'ai l'impression qu'il est plus fort désormais.~ */ GOTO 721
END

IF ~~ THEN BEGIN 721 // from: 720.0
  SAY #65822 /* ~"Non, ne me remercie pas…" Morte soupire et à ta grande surprise, sa voix semble plus dure, plus confiante. Certaines craquelures et certaines fractures de son crâne ont disparu, comme si elles avaient été guéries. "Non, c'est moi qui te remercie. Je sens que mes épaules sont soulagées d'un grand poids… façon de parler."~ */
  IF ~~ THEN REPLY #65823 /* ~"J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65824 /* ~"D'accord, Morte. Passons à autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 722 // from: 329.10 729.10
  SAY #65826 /* ~"Et bien, c'est une guenaude noire. Et il faut qu'elle ait été vraiment assez folle pour TE rendre immortel parmi tous les autres. Quoi, elle aurait pu me choisir." Morte lève les yeux au ciel. "Mais on n'a pas envie de rencontrer quelqu'un d'assez écervelé pour être aux prises avec la Dame des Douleurs.."~ */
  IF ~~ THEN REPLY #65827 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65828 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 723 // from: 329.9 729.9
  SAY #65829 /* ~"C'est une guerre. Une grande guerre sanglante et compliquée. Cela se produit partout, bien qu'on ne puisse pas toujours le voir."~ */
  IF ~~ THEN REPLY #65830 /* ~"Continue…"~ */ GOTO 724
  IF ~~ THEN REPLY #65831 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65832 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 724 // from: 723.0
  SAY #65833 /* ~"Tu vois, chef, c'est une guerre entre deux méchantes races : les démons et les diables. Autrefois, ils ne se connaissaient pas. Les diables étaient le Mal, mais c'était un mal ordonné. Les démons aussi étaient le Mal, mais ils étaient plus laxistes, plus fougueux, plus confus, moins organisés. Les diables étaient de vrais politiciens, les démons de vrais bouchers."~ */
  IF ~~ THEN GOTO 725
END

IF ~~ THEN BEGIN 725 // from: 724.0
  SAY #65834 /* ~"Puis un jour, les deux races se sont rencontrées. Elles se sont observées et elles n'ont pas aimé comment l'autre race faisait le mal. Et depuis elles n'ont pas cessé de se battre. C'est un énorme cauchemar. Mais au moins, ça laisse ces deux races occupées et elles ne sont plus en train de courir partout sur les plans."~ */
  IF ~~ THEN REPLY #65835 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65836 /* ~"C'est tout ce que je voulais savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 726 // from: 329.11 729.11
  SAY #65837 /* ~"Aucune idée, chef. En fait, je ne me rappelle pas quand je suis mort. Je ne peux pas dire que je me reproche grand-chose. Au moins il y a avait quelque chose qui m'attendait à ma mort, même si c'était que vivre en tant que crâne flottant. Ça aurait pu être pire."~ */
  IF ~~ THEN REPLY #65839 /* ~"Qu'est-il arrivé à ton corps ?"~ */ GOTO 727
  IF ~~ THEN REPLY #65840 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65841 /* ~"Bon, très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 727 // from: 726.0
  SAY #65838 /* ~"Euh… Je ne sais pas, OK ? Il a juste disparu." Morte te regarde l'air furieux. "Mais ne t'imagine pas qu'il me MANQUE, car je suis heureux comme ça et je n'ai pas besoin de tes jugements imbéciles ou de tes remarques insidieuses, d'accord ?"~ */
  IF ~~ THEN REPLY #65842 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 329
  IF ~~ THEN REPLY #65843 /* ~"Peu importe. Allons-y. Allez, magne-toi les fesses."~ */ GOTO 728
END

IF ~~ THEN BEGIN 728 // from: 727.1
  SAY #65844 /* ~Morte te regarde l'air furieux. "Je ne suis toujours pas persuadé que tu n'es pas une sorte de malédiction sur pattes destinée à me suivre partout."~ */
  IF ~~ THEN REPLY #65845 /* ~"Et c'est toi qui dis ça. Allons-y."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */
~  Global("AR0200_Visited","GLOBAL",1)
InParty("Morte")
!GlobalGT("Fortress_Morte","GLOBAL",2)
~ THEN BEGIN 729 // from:
  SAY #66344 /* ~"Mais qu'est-ce qui va pas, chef ?"~ [MRT515] */
  IF ~~ THEN REPLY #66345 /* ~"Peux-tu me relire ce qui est tatoué sur mon dos ?"~ */ GOTO 649
  IF ~~ THEN REPLY #66346 /* ~"Peux-tu me parler de Sigil ?"~ */ GOTO 659
  IF ~  Global("Morte_Talent","GLOBAL",0)
~ THEN REPLY #66347 /* ~"Morte… Ça ne me dérange pas que tu me suives mais ne sais-tu rien faire *d'autre* que bavarder ?"~ */ GOTO 663
  IF ~  Global("Morte_Talent","GLOBAL",1)
~ THEN REPLY #66348 /* ~"Morte… Quels sont tes talents magiques déjà ?"~ */ GOTO 666
  IF ~  Global("Morte_Tattoo_XP","GLOBAL",1)
~ THEN REPLY #66349 /* ~"Morte, pourquoi ne m'as-tu pas parlé de cette ligne supplémentaire dans le tatouage de mon dos ?"~ */ GOTO 654
  IF ~~ THEN REPLY #66350 /* ~"J'ai besoin d'un conseil. À ton avis, qu'est-ce qu'on devrait faire maintenant ?"~ */ GOTO 669
  IF ~  Global("Know_Mimir","GLOBAL",1)
Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #66351 /* ~"Tu as dit que tu étais un mimir, n'est-ce pas, Morte ?"~ */ GOTO 684
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #66352 /* ~"Raconte-moi encore une fois comment tu as fini sur le Pilier des Crânes."~ */ GOTO 693
  IF ~  Global("Know_Morte_Pillar","GLOBAL",1)
~ THEN REPLY #66353 /* ~"Morte, pourquoi tu as continué à voyager avec moi une fois que je t'ai sorti du Pilier ?"~ */ GOTO 715
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #66354 /* ~"Qu'est-ce que tu sais de la Guerre Sanglante ?"~ */ GOTO 723
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #66355 /* ~"Que sais-tu sur la guenaude noire nommée Ravel ?"~ */ GOTO 722
  IF ~~ THEN REPLY #66356 /* ~"Comment es-tu mort, Morte ?"~ */ GOTO 726
  IF ~~ THEN REPLY #66357 /* ~"Rien, Morte. Je vérifiais juste que tu étais toujours avec moi."~ */ EXIT
END

IF ~~ THEN BEGIN 730 // from:
  SAY #66816 /* ~"Hé, chef, tu les crois, ces deux-là ? Sûr qu'ils pourraient m'apprendre un truc ou deux…"~ [MRT387] */
  IF ~~ THEN REPLY #66817 /* ~"En effet, Morte. Allez, viens."~ */ EXIT
END

IF ~~ THEN BEGIN 731 // from:
  SAY #67510 /* ~"Je voudrais simplement dire que je ne dirai rien qui pourrait casser l'ambiance, chef. Ne fais surtout pas attention à moi, je vais juste rester là, à flotter et à surveiller."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 418
END

IF ~~ THEN BEGIN 732 // from:
  SAY #67600 /* ~"Vous allez arrêter tous les deux ou faut-il que j'aille chercher un dabus pour vous séparer !" grogne Morte. "Vous dabusez tout de même."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 446
END

IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3)
Global("Absorb","GLOBAL",0)
~ THEN BEGIN 733 // from:
  SAY #68171 /* ~Morte prend brusquement la parole lorsque tu tends la main. "Holà, holà, du calme, chef ! Euh… il y a quelques petites choses qu'il faut que je te dise…"~ [MRT242] */
  IF ~~ THEN REPLY #68176 /* ~"Morte ? Tu n'es pas mort ?"~ */ DO ~SetGlobal("Fortress_Morte","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 734
END

IF ~~ THEN BEGIN 734 // from: 733.0
  SAY #68172 /* ~"Eh bien - quand on est mort depuis aussi longtemps que moi, c'est facile de faire semblant. J'ai comme qui dirait écouté votre conversation. Utilise ce pouvoir sur quelqu'un d'autre ; moi, j'en ai pas besoin."~ */
  IF ~~ THEN REPLY #68177 /* ~"Alors, comme ça, tu avais l'intention de rester planqué là pendant que je me faisais massacrer ?"~ */ GOTO 735
END

IF ~~ THEN BEGIN 735 // from: 734.0
  SAY #68173 /* ~"Ouais, mais c'est pas comme si t'allais mourir, hein, chef ? Enfin, j'veux dire, si jamais t'échoues, t'auras besoin que quelqu'un se souvienne à ta place. Et puis, tu sais bien que je sers pas à grand-chose au combat, du moment qu'y a personne à mettre en boule…"~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68178 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ GOTO 736
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68189 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68190 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68191 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68192 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68193 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68194 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68239 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68438 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68439 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68446 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",0)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68503 /* ~"Dans ce cas, c'est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"~ */ EXTERN ~DTRANS~ 142
END

IF ~~ THEN BEGIN 736 // from: 735.0
  SAY #68174 /* ~Tu puises une nouvelle fois en toi.~ */
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68175 /* ~Ressuscite Annah.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68179 /* ~Ressuscite Dak'kon.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68180 /* ~Ressuscite Tombée-en-Disgrâce.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68181 /* ~Ressuscite Nordom.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68182 /* ~Ressuscite Ignus.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68183 /* ~Ressuscite Vhailor.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3)
GlobalGT("Absorb","GLOBAL",0)
~ THEN BEGIN 737 // from:
  SAY #68310 /* ~Alors que ton pouvoir va envelopper Morte, celui-ci s'élève tout seul. "Euh, un petit instant, chef. Pas la peine de me ressusciter, tu vois. J'étais comme qui dirait en train de vous écouter causer sans me faire remarquer."~ */
  IF ~~ THEN REPLY #68311 /* ~TU FAISAIS SEMBLANT D'ÊTRE MORT.~ */ GOTO 738
END

IF ~~ THEN BEGIN 738 // from: 737.0
  SAY #68312 /* ~"Ce que je veux dire, c'est que je suis *déjà* mort, chef, et… euh, dis-moi, qu'est-ce qui est arrivé à ta voix ?"~ */
  IF ~~ THEN REPLY #68313 /* ~JE SUIS DÉSORMAIS… AUTRE CHOSE. LE TEMPS M'EST COMPTÉ ET, BIENTÔT, MON DESTIN ME RATTRAPERA. SI TU VEUX, JE PEUX TE RENVOYER À SIGIL, MORTE.~ */ GOTO 739
END

IF ~~ THEN BEGIN 739 // from: 738.0
  SAY #68314 /* ~"Que… me renvoyer, moi ? Et *toi* ? Allons, chef, j'suis peut-être un lâche, mais j'vais pas t'laisser là."~ */
  IF ~~ THEN REPLY #68315 /* ~NOMBREUX SONT LES CRIMES COMMIS TANDIS QUE NOUS ÉTIONS SÉPARÉS, MA MORTALITÉ ET MOI. ET LE… PRIX À PAYER EST LOURD. TU NE PEUX TE RENDRE LÀ OÙ J'IRAI BIENTÔT.~ */ GOTO 740
END

IF ~~ THEN BEGIN 740 // from: 739.0
  SAY #68316 /* ~"Eh ben… je peux venir avec toi, si tu veux, chef. On a connu pire, tous les d…"~ */
  IF ~~ THEN REPLY #68317 /* ~PAS CETTE FOIS. PEUT-ÊTRE NOUS RETROUVERONS-NOUS UN JOUR, SUR UN AUTRE PLAN, MAIS PAS MAINTENANT.~ */ GOTO 741
END

IF ~~ THEN BEGIN 741 // from: 740.0
  SAY #68318 /* ~Morte te dévisage longuement puis soupire. "Sans s'mettre la larme à l'œil, ça a été un plaisir de t'connaître, chef."~ [MRT109] */
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68319 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68320 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68321 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68322 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68323 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68324 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68325 /* ~AU REVOIR, MORTE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68490 /* ~AU REVOIR, MORTE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68491 /* ~AU REVOIR, MORTE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68492 /* ~AU REVOIR, MORTE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
~ THEN BEGIN 742 // from:
  SAY #68408 /* ~Morte te dévisage longuement puis soupire. "Sans s'mettre la larme à l'œil, ça a été un plaisir de t'connaître, chef."~ [MRT109] */
  IF ~~ THEN REPLY #68409 /* ~"Bon, alors allons-y…"~ */ EXIT
END
