// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
GlobalLT("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #1981 /* ~Tu vois une fille rousse étonnante, vêtue d'une armure de cuir. Son bras droit est couvert de plaques imbriquées qui semblent provenir de la peau d'une autre créature. Une épaulière de corne protège son bras gauche. Bizarrement, elle a une queue…  qu'elle ne cesse d'agiter. "Va caguer."~ [ANA377A] */
  IF ~~ THEN REPLY #1982 /* ~"Bonjour."~ */ DO ~SetGlobal("Know_Annah","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #1983 /* ~Continue ta route.~ */ DO ~SetGlobal("Know_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1984 /* ~La fille t'ignore.~ */
  IF ~~ THEN REPLY #1985 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #1986 /* ~"Tu peux me dire où je suis ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1987 /* ~"Je cherche un certain Pharod. Tu sais où je peux le trouver ?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1988 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 29
  IF ~~ THEN REPLY #1989 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1990 /* ~La fille se retourne, sourit d'un air méprisant, puis fait un geste obscène avec sa queue. "Va caguer, espèce de bougre béjaune."~ */
  IF ~~ THEN REPLY #2119 /* ~"Hé, calme-toi, j'ai juste des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2120 /* ~"Fais attention à ce que tu dis, jeune fille. Je ne suis *pas* d'humeur. Maintenant, réponds à ma question. Qui es-tu ?"~ */ GOTO 16
  IF ~~ THEN REPLY #2121 /* ~"Euh… eh bien, au revoir."~ */ GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2 10.3 11.3
  SAY #1991 /* ~"Ouais. Possible. J'en dirai peut-être plus si tu adoucis la question, hein ?" Elle claque la langue et frotte deux doigts ensemble. "Jonc-jonc, hein ?"~ */
  IF ~  Global("Know_Jink","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #1992 /* ~"'Jonc-jonc' ?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Know_Jink","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #1993 /* ~"'Jonc-jonc' ?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ EXTERN ~DMORTE~ 39
  IF ~  Global("Know_Jink","GLOBAL",1)
~ THEN REPLY #1994 /* ~"Très bien… Combien ?"~ */ GOTO 6
  IF ~~ THEN REPLY #1995 /* ~"Bon, peu importe. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 4 // from: 3.0 197.1 198.1
  SAY #1996 /* ~La fille t'observe, incrédule. Sa queue s'immobilise un instant. "Comment ça ? Jonc, pièce… cuivre, argent, or… tu comprends ?" Elle lève un sourcil. "Si t'en as, je saurai peut-être quelque chose que tu veux entendre."~ */
  IF ~~ THEN REPLY #1997 /* ~"Très bien. Combien ?"~ */ GOTO 6
  IF ~~ THEN REPLY #1998 /* ~"Je doute que tu aies *grand-chose* d'intéressant à me révéler, mais essaie quand même. Je déciderai ensuite si ça vaut le coup."~ */ GOTO 16
  IF ~~ THEN REPLY #1999 /* ~"Peu importe. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2002 /* ~"Ouais…" Elle jette un coup d'œil à Morte et hausse les épaules. "C'que le crâne a dit. Quelques jolies pièces."~ */
  IF ~~ THEN REPLY #2003 /* ~"Très bien. Combien ?"~ */ GOTO 6
  IF ~~ THEN REPLY #2004 /* ~"Je doute que tu aies *grand-chose* d'intéressant à me révéler, mais essaie quand même. Je déciderai ensuite si ça vaut le coup."~ */ GOTO 16
  IF ~~ THEN REPLY #2005 /* ~"Peu importe. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0
  SAY #2006 /* ~"Combien, hein ?" Elle t'observe et croise les bras. "Allez, j'ai pas qu'ça à faire."~ */
  IF ~  PartyGoldGT(9)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #2008 /* ~"Et dix ? Ça suffit ?"~ */ GOTO 7
  IF ~  PartyGoldGT(9)
CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #2007 /* ~Tente de la charmer : "Et dix ? Si tes tuyaux en valent la peine, ça pourrait être plus."~ */ DO ~TakePartyGold(10)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2009 /* ~"Et vingt ?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(10)
~ THEN REPLY #2010 /* ~"Je ne pense pas avoir assez pour t'intéresser."~ */ GOTO 14
  IF ~~ THEN REPLY #2011 /* ~"Peu importe. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #2012 /* ~"Ce tas de cuivre n'est pas suffisant pour aiguiser l'appétit d'un Marqué. Tu auras besoin de plus si tu veux te faire des amis par ici, abruti."~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2013 /* ~"Et vingt, alors ?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(20)
~ THEN REPLY #2014 /* ~"Alors, je ne pense pas avoir assez pour t'intéresser."~ */ GOTO 19
  IF ~~ THEN REPLY #2015 /* ~"Alors, tant pis. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 7.0
  SAY #2016 /* ~"Bon, d'accord…" Elle empoche l'argent. Tout s'est fait si vite que tu n'as aucune idée de l'endroit où l'argent a disparu. "Tu le trouveras dans l'Allée quand tu pars de la Morgue… c'est-à-dire au sud-ouest de la Morgue."~ */
  IF ~~ THEN REPLY #2017 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2018 /* ~"C'est bizarre… Au sud-ouest de la Morgue, il y a une allée remplie de brutes armées jusqu'aux dents. Tu sais quelque chose là-dessus ?"~ */ GOTO 30
  IF ~~ THEN REPLY #2040 /* ~"Au sud-ouest de la Morgue ? Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 10.2 11.2
  SAY #2019 /* ~"Tu es perdu, mais tu es sur le point de trouver des noises. Va voir ailleurs si j'y suis, bibard."~ */
  IF ~~ THEN REPLY #2020 /* ~"J'avais d'abord d'autres questions à te poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #2021 /* ~"Alors, au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 2.0 8.0 9.0 12.4 18.1 21.0 22.1 23.0 26.1 29.0 30.2 31.0
  SAY #2022 /* ~"Quoi ? Qu'est-ce tu veux ?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2023 /* ~"Tu sais que tu as une queue ?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2024 /* ~"Je n'y peux rien mais j'ai remarqué que tu avais une queue."~ */ GOTO 12
  IF ~~ THEN REPLY #2025 /* ~"Tu peux me dire où je suis ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2026 /* ~"Je cherche un certain Pharod. Tu sais où je peux le trouver ?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2027 /* ~"Tu as dit que Pharod se trouvait au sud-ouest de la Morgue, c'est ça ?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2028 /* ~"C'est bizarre… Au sud-ouest de la Morgue, il y a une allée remplie de brutes armées jusqu'aux dents. Tu sais quelque chose là-dessus ?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2029 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 29
  IF ~~ THEN REPLY #2030 /* ~"Rien. Au revoir."~ */ GOTO 19
END

IF WEIGHT #3 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
Global("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #2031 /* ~La fille rousse fait la grimace à ton approche. Sa queue commence à battre l'air. "Ouais ? Qu'est-ce qu'y a ?"~ [ANA238D] */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2032 /* ~"Tu sais que tu as une queue ?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2033 /* ~"Je n'y peux rien mais j'ai remarqué que tu avais une queue."~ */ GOTO 12
  IF ~~ THEN REPLY #2034 /* ~"Tu peux me dire où je suis ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2035 /* ~"Je cherche un certain Pharod. Tu sais où je peux le trouver ?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2036 /* ~"Tu as dit que Pharod se trouvait au sud-ouest de la Morgue, c'est ça ?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2037 /* ~"C'est bizarre… Au sud-ouest de la Morgue, il y a une allée remplie de brutes armées jusqu'aux dents. Tu sais quelque chose là-dessus ?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2038 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 29
  IF ~~ THEN REPLY #2039 /* ~"Rien. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 11.0 11.1
  SAY #2041 /* ~"*Sans* blague ?" Elle regarde sa queue. "Ah oui ! Et moi qui croyais à une illusion optique. Toi, t'en as dans la tête !" Elle montre ses dents. "Retourne dans le trou d'où tu viens et laisse-moi tranquille ! Ni moi ni ma queue ne sommes à vendre, tu piges ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2042 /* ~"Très bien… Simple curio…"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2043 /* ~"Euh, OK… J'ai d'autres quest…"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2044 /* ~"Alors, peu importe. Au rev…"~ */ EXTERN ~DMORTE~ 40
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2045 /* ~"Ouais, mais *pourquoi* est-ce que tu as une queue ?"~ */ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2046 /* ~"Euh, OK… J'ai d'autres questions…"~ */ GOTO 10
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2047 /* ~"Peu importe… Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2050 /* ~"Qu'est-ce que tu racontes, imbécile ? ! Répète pour voir !"~ */
  IF ~~ THEN REPLY #2051 /* ~"Il n'a rien dit… mais ça m'intéresse toujours de savoir… *pourquoi* est-ce que tu as une queue ?"~ */ GOTO 15
  IF ~~ THEN REPLY #2052 /* ~"Oublie-le… J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2053 /* ~"Il a dit que tu ne gagnerais pas ta vie en te vendant."~ */ GOTO 22
  IF ~~ THEN REPLY #2054 /* ~"Il a dit, et je désapprouve, que tu ne gagnerais pas ta vie en te vendant."~ */ GOTO 23
  IF ~~ THEN REPLY #2055 /* ~"Il a dit, et j'approuve, que tu ne gagnerais pas ta vie en te vendant."~ */ GOTO 24
  IF ~~ THEN REPLY #2056 /* ~"Rien. On y va. Au revoir."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 2.2 6.3 13.5 15.2 24.2
  SAY #2057 /* ~"Allez, casse-toi."~ */
  IF ~~ THEN REPLY #2065 /* ~"J'en ai assez de t'entendre, jeune fille… Ton heure a sonné."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #2066 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3 13.0
  SAY #2058 /* ~La fille plisse les yeux. "T'es sourd ou quoi ? T'es plus niais qu'une pierre ou tu fais partie des Puissances d'l'ignorance ? Que les dabus t'emmurent et fassent de toi une rue !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2059 /* ~"Écoute…"~ */ EXTERN ~DMORTE~ 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2060 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2061 /* ~"Alors, au revoir."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 2.1 4.1 5.1 13.1 15.1 24.1 27.0 28.0 30.0 30.1
  SAY #2062 /* ~"Bâcle ça ! J'ai rien d'autre à t'dire, bige ! Casse-toi !"~ */
  IF ~~ THEN REPLY #2063 /* ~"Fais attention à ce que tu dis, jeune fille, sinon… Tu as intérêt à t'en souvenir si jamais on se recroise."~ */ GOTO 19
  IF ~~ THEN REPLY #2064 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2070 /* ~"Tu ferais mieux d'arrêter d'branler ton râtelier d'mimir, avant que j't'éclate la mâchoire, tu piges ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 42
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2078 /* ~"Ouais, c'est ça. Retiens ton copain mimir, abruti, ou j'l'enterre avec son corps, tu piges ?"~ */
  IF ~~ THEN REPLY #2086 /* ~"Un mimir ? Mais de quoi tu parles ?"~ */ GOTO 20
  IF ~~ THEN REPLY #2087 /* ~"Bien. Écoute, j'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2088 /* ~"Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 3.3 4.2 5.2 6.4 7.1 7.2 9.1 10.7 11.7 12.5 16.0 18.2 21.1 22.2 24.3 25.2 25.3 26.2 27.1 28.1 29.1 30.3 31.2
  SAY #2081 /* ~"Allez, va caguer d'où tu viens !"~ */
  IF ~~ THEN REPLY #2082 /* ~"Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #2083 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #2084 /* ~"Hein, mimir ! L'espace entre tes oreilles est si vide que mes mots font écho ? Ha ! ha !"~ */
  IF ~~ THEN REPLY #2085 /* ~"Tu n'as toujours pas répondu à ma question. C'est quoi un mimir ?"~ */ EXTERN ~DMORTE~ 43
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2089 /* ~Elle regarde Morte, puis toi, et ricane. "Je devine l'quel des deux est le cerveau !"~ */
  IF ~~ THEN REPLY #2090 /* ~"Ouais, ouais. Écoute, j'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2091 /* ~"Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY #2092 /* ~"Ah ouais ! Ça tombe bien, je vends des cadavres! T'as l'air prêt pour les fourneaux des Hommes-Poussière, crâne."~ */
  IF ~~ THEN REPLY #2095 /* ~"Tu vends des cadavres ?"~ */ GOTO 25
  IF ~~ THEN REPLY #2096 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2097 /* ~"Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY #2093 /* ~"Qu'est-ce qu'il y a ? Tu veux jouer au plus malin avec moi, c'est ça ?" Elle ricane. "Va caguer, ordure libidineuse."~ */
  IF ~~ THEN REPLY #2098 /* ~"Pas encore… J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2099 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY #2094 /* ~"Ah ouais ? Ça tombe bien, j'vends des cadavres ! T'as l'air prêt pour les fourneaux des Hommes-Poussière." Sa queue fouette l'air. "N'me pousse pas à t'inscrire dans le livre des morts."~ */
  IF ~~ THEN REPLY #2101 /* ~"Tu vends des cadavres ?"~ */ GOTO 25
  IF ~~ THEN REPLY #2102 /* ~"Du calme, jeune fille, j'ai d'abord d'autres questions. Ensuite, je te laisserai…"~ */ GOTO 16
  IF ~~ THEN REPLY #2103 /* ~"Ça ne mène nulle part. Au revoir."~ */ GOTO 14
  IF ~~ THEN REPLY #2104 /* ~Pars.~ */ GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 22.0 24.0
  SAY #2100 /* ~"Ouais, les Hommes-Poussière paient un peu d'jonc quand on débarrasse les rues des cadavres et qu'on les apporte à la Morgue. Mais, c'est mon territoire, alors ne vous amusez pas à ramasser les cadavres ici, pigé ?"~ */
  IF ~~ THEN REPLY #2105 /* ~"Qu'est-ce que les Hommes-Poussière font des morts ?"~ */ GOTO 26
  IF ~~ THEN REPLY #2106 /* ~"Ton territoire ?"~ */ GOTO 28
  IF ~~ THEN REPLY #2107 /* ~"Très bien."~ */ GOTO 19
  IF ~~ THEN REPLY #2108 /* ~"Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #2109 /* ~"Les enterrer convenablement. Les envoyer dans le bon plan et s'assurer que tout est propre et bien rangé dans le multivers."~ */
  IF ~~ THEN REPLY #2111 /* ~"Le bon 'plan' ?"~ */ GOTO 27
  IF ~~ THEN REPLY #2112 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2113 /* ~"Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2110 /* ~"Ouais, *plan* !" L'espace entre tes oreilles est si grand qu't'entends d'l'écho ? Ha ! Tu poses trop d'questions, chien galeux. Va caguer et pomper l'air de quelqu'un d'autre."~ */
  IF ~~ THEN REPLY #2114 /* ~"J'ai juste une autre question…"~ */ GOTO 16
  IF ~~ THEN REPLY #2115 /* ~"Bon, très bien. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #2116 /* ~"Ouais, *mon* territoire ! L'espace entre tes oreilles est si grand qu't'entends d'l'écho ? Ha ! Tu poses trop d'questions, chien galeux. Va caguer et pomper l'air de quelqu'un d'autre."~ */
  IF ~~ THEN REPLY #2117 /* ~"J'ai juste une autre question…"~ */ GOTO 16
  IF ~~ THEN REPLY #2118 /* ~"Bon, très bien. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 29 // from: 1.3 10.6 11.6
  SAY #2122 /* ~Elle te regarde bizarrement. "Nan… j'ai jamais rien vu de semblable."~ */
  IF ~~ THEN REPLY #2123 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2124 /* ~"Merci quand même. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.5 11.5 31.1
  SAY #2125 /* ~"Ah ouais ? Tu f'rais mieux de leur demander où se trouve c'vieux bègue boiteux."~ */
  IF ~~ THEN REPLY #2126 /* ~Vérité : "Assez de mensonges. Tu as intérêt à me dire où est Pharod, jeune fille, ou tu iras rejoindre la liste des morts de la cité."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Annah_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2127 /* ~Bluff : "Assez de mensonges. Tu as intérêt à me dire où est Pharod, jeune fille, ou tu iras rejoindre la liste des morts de la cité."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2128 /* ~"Je le ferai peut-être. Écoute, j'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2071 /* ~"Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 10.4 11.4
  SAY #2129 /* ~"Ouais." Elle t'observe. "C'est vrai. T'as déjà oublié ?"~ */
  IF ~~ THEN REPLY #2130 /* ~"Non, mais j'ai des questions…"~ */ GOTO 10
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2131 /* ~"Non, mais je me demandais si *tu* avais… Tu vois, au sud-ouest de la Morgue, il y a une allée remplie de brutes armées jusqu'aux dents. Tu sais quelque chose là-dessus ?"~ */ GOTO 30
  IF ~~ THEN REPLY #2132 /* ~"Non, pas cette fois. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2359 /* ~"Je laisserais tomber, matois. Aucun intérêt de s'attarder avec un gith qui veut pas parler, hein ? Partons."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9023 /* ~"Gith ?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Know_Gith","GLOBAL",0)
~ THEN REPLY #9024 /* ~"Gith ?"~ */ GOTO 74
  IF ~~ THEN REPLY #9025 /* ~"Je n'ai pas l'intention de partir tout de suite. Je vais d'abord lui poser des questions…"~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9026 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2365 /* ~"Laisse tomber… on s'en va, hein ?"~ */
  IF ~~ THEN EXTERN ~DGITH~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #6807 /* ~"Eh…" Annah te regarde d'un air bizarre. "C'est un dabus."~ */
  IF ~~ THEN REPLY #6961 /* ~"Qu'est-ce qu'un 'dabus' ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #6811 /* ~Annah baisse la voix. "Le dabus et *elle* sont apparentés - ils s'occupent d'la cité, de l'agrandir, d'la détruire, de la reconstruire et tout. Ils s'expriment par symboles dans l'air. Ouais, faut les voir ensemble pour comprendre la chanson." Annah semble agacée. "Un vrai casse-tête."~ */
  IF ~~ THEN REPLY #6962 /* ~"Apparentés ? Avec qui ?"~ */ GOTO 36
  IF ~~ THEN REPLY #6963 /* ~"Je vois."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #6813 /* ~"La Dame des Douleurs." Annah fait un demi-cercle dans les airs devant elle. "Ils travaillent pour elle et elle les protège. Si tu trafiques avec eux, tu risques d'attirer son attention."~ */
  IF ~~ THEN REPLY #6964 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ GOTO 37
  IF ~~ THEN REPLY #6965 /* ~"Je vois."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #6814 /* ~"Chuuut !" Annah met un doigt en travers de sa bouche. "Va pas branler ton râtelier à son sujet. Elle a des oreilles *partout*, alors t'avise pas d'aller crier son nom sur tous les toits, t'entends ?"~ */
  IF ~~ THEN REPLY #6966 /* ~"Oh !"~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6967 /* ~"Très bien, très bien."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6815 /* ~Elle s'arrête un moment. "Eh… oui."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6968 /* ~"Tu veux bien ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6970 /* ~"Tu veux bien ?"~ */ GOTO 39
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6971 /* ~"Alors fais-le."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6972 /* ~"Alors fais-le."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 39
  IF ~~ THEN REPLY #6973 /* ~"Peu importe. Partons."~ */ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.3
  SAY #6818 /* ~Annah secoue la tête. "Nan, j'ai pas l'intention d'marcher avec toi dans l'ombre de la Dame. Traînons pas ici, OK ? Tout c'que tu risques, c'est d'attirer l'attention de la Dame en parlant à un parent à elle."~ */
  IF ~~ THEN REPLY #6975 /* ~"Je vois."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6974 /* ~"Peu importe. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.2 41.0 44.0 45.1 46.1 48.1
  SAY #6822 /* ~Annah acquiesce. Le dabus continue de vous regarder tous les deux fixement, les mains dans ses manches.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6976 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6977 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6978 /* ~"Demande-lui qui il est."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6979 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6980 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6981 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #6982 /* ~"Demande-lui de nous parler de la Dame des Douleurs."~ */ GOTO 45
  IF ~~ THEN REPLY #6983 /* ~"Demande-lui de nous parler de Fell."~ */ GOTO 48
  IF ~~ THEN REPLY #6984 /* ~"Peu importe. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 41 // from:
  SAY #6825 /* ~"Y vient d'dire qu'y f'sait partie des dabus." Elle hausse les épaules. "Ils ont pas d'noms."~ */
  IF ~~ THEN REPLY #6985 /* ~"Peux-tu lui poser une autre question ?"~ */ GOTO 40
  IF ~~ THEN REPLY #6986 /* ~"C'est tout ce que je voulais savoir. Allons-nous-en."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 42 // from:
  SAY #6826 /* ~"Y vient d'dire qu'y f'sait partie des dabus." Elle hausse les épaules. "Ils ont pas d'noms."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 115
END

IF ~~ THEN BEGIN 43 // from:
  SAY #6828 /* ~"Ben, il a pas voulu dire son nom, *pas vrai*, le crâne ?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 116
END

IF ~~ THEN BEGIN 44 // from:
  SAY #6835 /* ~Elle hausse les épaules. "Il dit qu'il fait son boulot. Tu sais, il s'occupe d'la cité, et tout ça."~ */
  IF ~~ THEN REPLY #6987 /* ~"Peux-tu lui poser une autre question ?"~ */ GOTO 40
  IF ~~ THEN REPLY #6988 /* ~"C'est tout ce que je voulais savoir. Allons-nous-en."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 45 // from: 40.6
  SAY #6840 /* ~Annah secoue la tête. "Nan, j'ai pas l'intention d'marcher avec toi dans l'ombre de la Dame. Tu risques d'attirer son attention en fricotant avec un parent à elle."~ */
  IF ~~ THEN REPLY #6989 /* ~"Écoute, demande-lui juste de te parler de la Dame, d'accord ?"~ */ GOTO 46
  IF ~~ THEN REPLY #6990 /* ~"Très bien. Peux-tu leur poser une autre question pour moi ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6991 /* ~"Alors, laisse tomber. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0
  SAY #6845 /* ~Annah secoue la tête. "Nan, pas question."~ */
  IF ~~ THEN REPLY #6992 /* ~"Écoute, *fais-le*. Je te préviens."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 47
  IF ~~ THEN REPLY #6993 /* ~"Très bien. Peux-tu leur poser une autre question pour moi ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6994 /* ~"Alors, laisse tomber. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #6848 /* ~Annah croise les bras et sa queue se met à balayer le sol.~ */
  IF ~~ THEN REPLY #6995 /* ~"Alors, laisse-moi essayer…"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6996 /* ~"Alors, laisse tomber. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 48 // from: 40.7
  SAY #6851 /* ~"Nan, j'irai pas d'mander aux amis de Fell de m'parler de lui. C'est pas bon d'parler d'ces choses-là."~ */
  IF ~~ THEN REPLY #6997 /* ~"Écoute, *pose-lui* juste cette satanée question, d'accord ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 46
  IF ~~ THEN REPLY #6998 /* ~"Peux-tu lui poser une autre question pour moi ?"~ */ GOTO 40
  IF ~~ THEN REPLY #6999 /* ~"Alors, laisse tomber. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1855 /* ~Annah se redresse tandis que tu es sur le point de partir avec cette femme. "Eh, t'es *abruti* ou quoi ?!" Sa queue balaie le sol, puis elle se met à tourner autour de la catin. "Psst !" Elle brandit ses dagues coup-de-poing devant la catin éberluée. "Dégage, sale pute de Sigil !"~ */
  IF ~~ THEN REPLY #7469 /* ~"Ouah ! Calme-toi, Annah !"~ */ GOTO 50
  IF ~~ THEN REPLY #7470 /* ~"Range ces satanées lames !"~ */ GOTO 50
  IF ~~ THEN REPLY #7471 /* ~Observe ce qui se passe.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 53.0 53.1
  SAY #1856 /* ~Elle tourne autour de toi. "Eh toi, bougre d'rapiat, tu f'rais mieux d'arrêter ton cirque avant que j'te rafraichisse la tige, compris ?"~ */
  IF ~~ THEN REPLY #7472 /* ~"Me faire 'rafraîchir la tige' ? Il faut que je paie pour ça ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7473 /* ~"Arrête de menacer cette femme ou c'est de *ta* queue que je vais m'occuper, compris ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7474 /* ~"Je ne t'ai pas demandé ton avis, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7475 /* ~"D'accord, d'accord… Calme-toi."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3
  SAY #7183 /* ~Annah se calme légèrement, mais sa queue continue de balayer le sol. "Tu f'rais mieux d'faire gaffe si tu veux rester en un seul morceau."~ */
  IF ~~ THEN REPLY #7476 /* ~"Ne me *menace* pas, Annah. Tu n'as qu'une vie, tu comprends ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7477 /* ~"Je ne t'ai pas demandé ton avis, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7478 /* ~"D'accord, d'accord… Calme-toi. Ton sang de fiélon va déborder."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 50.0 51.0 51.1 51.2
  SAY #7184 /* ~Annah bouge la queue… un geste obscène de toute évidence.~ */
  IF ~~ THEN EXTERN ~DHARLOTN~ 35
END

IF ~~ THEN BEGIN 53 // from: 49.2
  SAY #7185 /* ~Annah pique la femme avec la pointe de ses lames, dessinant ainsi une fine ligne sanglante. "Te voilà marquée, ma vieille", dit-elle. La femme semble paralysée de peur, incapable de bouger.~ */
  IF ~~ THEN REPLY #7480 /* ~"Hé. Joli travail."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Harlot_2","GLOBALLaw",-1)
~ GOTO 50
  IF ~~ THEN REPLY #7481 /* ~"Calme-toi, Annah…"~ */ GOTO 50
END

IF ~~ THEN BEGIN 54 // from:
  SAY #1884 /* ~Annah se met soudain à siffler tandis que tu t'éloignes, et tu vois la femme ivre reculer d'un pas, effrayée.~ */
  IF ~~ THEN REPLY #7598 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1885 /* ~Annah s'incline vers la femme, et des dagues coup-de-poing s'échappent de ses mains. "Cette sorcière t'a joué un sale tour." L'une des lames d'Annah va se nicher sous la gorge de la femme. "Tu dois être à court de jonc à force qu'cette pute s'frotte contre toi."~ */
  IF ~~ THEN REPLY #7599 /* ~"Qu'est-ce que tu - ?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #1886 /* ~La femme ivre regarde Annah, puis te regarde et secoue la tête, effrayée. "J'ai rien volé, matois ! Elle ment !"~ */
  IF ~~ THEN REPLY #7600 /* ~"Euh… Tu es sûre, Annah ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 57
  IF ~~ THEN REPLY #7601 /* ~"Range ces satanées lames avant que ce soit *moi* qui me mette en colère, d'accord ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7602 /* ~"Pardon, femme, la tieffeline m'inspire plus confiance que toi. Rends-moi l'argent."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #7603 /* ~"Laisse-la partir, Annah. Elle n'en vaut pas la peine."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #1887 /* ~"Eh ?" Annah grogne, et sa queue se met à balayer le sol. "Si j'en suis *sûre ?!*" Sa lame s'enfonce davantage dans la gorge de la femme. "Oui… j'en suis sûre." Ses yeux se rétrécissent lorsqu'elle te regarde. "Tu m'crois pas ?" Elle crache. "Pas grave. J'l'étrip'rai moi-même et j'lui piquerai son jonc."~ */
  IF ~~ THEN REPLY #7604 /* ~"Range ces satanées lames avant que ce soit *moi* qui me mette en colère, d'accord ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7605 /* ~"Laisse-la partir, Annah. Elle n'en vaut pas la peine."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.1 56.3 57.0 57.1
  SAY #1888 /* ~"Eh ?" Annah siffle comme un chat. "T'es *abruti* ou quoi ?! Elle t'a plumé, j'te dis."~ */
  IF ~~ THEN REPLY #7606 /* ~"Je ne te laisserai pas t'en prendre à elle tant que tu n'auras pas prouvé qu'elle a fait quelque chose de mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_Harlot_1","GLOBALLaw",1)
~ GOTO 61
  IF ~~ THEN REPLY #7607 /* ~"Pour la dernière fois : range ces lames et laisse-la partir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
  IF ~~ THEN REPLY #7608 /* ~"Et même si c'est le cas ? Elle n'en vaut pas la peine."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #1889 /* ~La femme s'arrête un instant, s'incline, puis se relève, retrousse sa manche et laisse apparaître un petit sac accroché à son poignet. Annah le coupe et le met dans sa poche. "Tu f'rais mieux d'te tirer." Puis elle repousse la femme. "Allez, oust ! Dégage !"~ */
  IF ~~ THEN REPLY #7609 /* ~"Va-t'en d'ici, femme. Il vaudrait mieux qu'on ne te revoie pas dans le coin."~ */ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 60 // from: 58.1 58.2 61.1
  SAY #1890 /* ~Annah reste un long moment silencieuse, puis retire la lame et recule. Puis elle siffle et crache aux pieds de la femme. "Allez, oust ! Dégage !"~ */
  IF ~~ THEN REPLY #7610 /* ~"Tu ferais mieux de partir, femme."~ */ EXTERN ~DHARLOTD~ 27
END

IF ~~ THEN BEGIN 61 // from: 58.0
  SAY #1891 /* ~Annah grogne, puis dessine un arc de cercle en l'air avec sa dague coup-de-poing… découpant les manches de la robe de la femme et laissant apparaître un sac accroché à son poignet. On dirait qu'elle le garde là pour subtiliser l'argent plus rapidement.~ */
  IF ~~ THEN REPLY #7611 /* ~"On dirait que tu avais raison, Annah. Très bien, femme, rends ce que tu as volé."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #7612 /* ~"Ça ne fait rien. Laisse tomber, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1892 /* ~La femme s'incline, puis se relève et détache le petit sac accroché à son poignet. Annah l'arrache et le met dans sa poche.~ */
  IF ~~ THEN REPLY #7613 /* ~"Va-t'en d'ici, femme. Je ne veux plus te revoir."~ */ DO ~GivePartyGold(100)
GiveGoldForce(38)
~ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7701 /* ~Tandis que tu t'éloignes, Annah se rapproche soudain et vient se frotter contre toi.~ */
  IF ~~ THEN REPLY #7702 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #7703 /* ~Annah se retourne vers l'homme, qui reste debout à regarder les bâtiments. "Ce sale bâtard de Sigil t'a pelé, ouais." Annah sourit. "Tu f'rais mieux d'faire gaffe, sinon tu t'retrouv'ras bientôt sans jonc."~ */
  IF ~~ THEN REPLY #7704 /* ~"De quoi tu parles ?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #7705 /* ~Elle te tend une poignée de pièces. "Tout ce jonc retrouve son propriétaire, pas vrai ?" Elle jette un nouveau coup d'œil en arrière. "C'est qu'un pauvre bougre, c'est tout ; y peut pas piquer dans la poche d'un bige sans déclencher toutes les sirènes de Sigil. Il t'a pelé, et moi, j'l'ai r'pelé." Elle sourit. "Hein ?"~ */
  IF ~~ THEN REPLY #7706 /* ~"Euh… Tu es sûre qu'il m'a volé, Annah ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #7707 /* ~"Hé… Merci."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #7708 /* ~"Eh ?" Annah fronce les sourcils, et sa queue se met à balayer le sol. "Si j'en suis *sûre* ?! " Elle s'écarte de toi. "Tu m'crois pas ?" Elle crache. "Peu importe."~ */
  IF ~~ THEN REPLY #7709 /* ~"Ça importe pour moi. Si cet argent n'est pas le nôtre…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_3","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 67
  IF ~~ THEN REPLY #7710 /* ~"Alors, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #7711 /* ~"Eh ?" Annah siffle comme un chat. "T'es *bête* ou quoi ?! Il t'a pelé, j'te dis. Si tu l'as même pas r'marqué, c'est qu'tu l'méritais, alors !"~ */
  IF ~~ THEN REPLY #7712 /* ~"Tu as des preuves ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_4","GLOBALLaw",1)
TakePartyGold(5)
~ GOTO 68
  IF ~~ THEN REPLY #7713 /* ~"Alors, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #7714 /* ~Annah reste un moment silencieuse, puis t'arrache l'argent des mains et le lance violemment. Tu regardes les pièces s'éparpiller dans la rue, certaines échouent dans des flaques, d'autres dans des gouttières ou des égouts. "Laisse-le-lui alors !" Annah crache à tes pieds. "Tu mérites pas d'garder ce jonc *d'toute façon !*"~ */
  IF ~~ THEN REPLY #7715 /* ~"Baisse le ton. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #7716 /* ~Annah s'incline et arbore un sourire méchant. "Tout l'plaisir était pour moi, ouais."~ */
  IF ~~ THEN REPLY #7717 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #7822 /* ~"Nan !" Annah a l'air terrifié. "Nan, va pas branler ton râtelier avec ceux-là ! Ces fiélons t'étriperont vivant !"~ */
  IF ~~ THEN REPLY #7826 /* ~"Je voulais lui poser quelques questions…"~ */ GOTO 71
  IF ~~ THEN REPLY #7827 /* ~"Bon, alors peu importe. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #7829 /* ~Annah secoue la tête. "Il t'étripera, c'est sûr."~ */
  IF ~~ THEN REPLY #7830 /* ~"J'en prends le risque."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7831 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #7832 /* ~"T'es *abruti* ou quoi ?!" Annah intervient, sa queue balayant le sol. "Tu m'as écoutée, oui ou non ?! Va pas branler ton râtelier avec les fiélons !"~ */
  IF ~~ THEN REPLY #7833 /* ~"J'en prends le risque."~ */ GOTO 73
  IF ~~ THEN REPLY #7834 /* ~"Bon, très bien. Je le laisse tranquille… Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #7835 /* ~"T'es vraiment l'roi des imbéciles, toi !" Annah crache. Elle a l'air furieux. "Quand t'auras épuisé tes vies - c'qui est pour bientôt - j'te quitterai !"~ */
  IF ~~ THEN REPLY #7836 /* ~"Et tout le plaisir sera pour moi. Maintenant, laisse-moi parler."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7837 /* ~"Ce ne sera pas long. Calme-toi."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7838 /* ~"Bon, très bien. Je le laisse tranquille… Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 32.0 32.1
  SAY #2360 /* ~"Oui, un gith." Elle semble peu désireuse d'en discuter tandis que le githzeraï vous fixe l'un et l'autre. "On calte, d'accord ?"~ */
  IF ~~ THEN REPLY #9027 /* ~"Je n'ai pas l'intention de partir tout de suite. Je vais d'abord lui poser des questions…"~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9028 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9801 /* ~Elle va pour protester, mais tu lui adresses un regard dur, si bien qu'elle se contente de faire la moue à ton intention, les bras croisés, la queue dressée.~ */
  IF ~~ THEN REPLY #9835 /* ~Secoue-le pour attirer son attention.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9837 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #9802 /* ~Faisant mine de n'avoir rien entendu, elle tapote les habits infestés de vermine tandis que l'autre la croise en titubant puis, assurée qu'il n'a pas un sou, elle le pousse et se détourne. "Peuh ! Il n'a pas un liard sur lui. Foutus bibards…"~ */
  IF ~~ THEN REPLY #9840 /* ~Secoue-le pour attirer son attention.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9842 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #9803 /* ~Annah tapote les habits infestés de vermine tandis que l'autre la croise en titubant puis, assurée qu'il n'a pas un sou, elle le pousse et se détourne. "Peuh ! Rien. Foutu bibard…~ */
  IF ~~ THEN REPLY #9844 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10078 /* ~"Ha ! T'es visible comme des mamelles sur un âne ! Z'êtes des amateurs dans c'te ville !" Elle se tourne vers toi. "T'as raison de le surveiller. Il guette c'te case pour peler un bougre."~ */
  IF ~~ THEN REPLY #10079 /* ~"Je crois bien que tu as raison, Annah. On devrait peut-être faire quelque chose."~ */ EXTERN ~DCSTCROG~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #11267 /* ~Annah rétorque avec colère : "Ouais, et les Abysses lui conviennent peut-être, mais il est doué du libre arbitre. Il a le choix, démon, chose dont un esprit comme le tien ne peut guère se targuer !"~ */
  IF ~~ THEN EXTERN ~DILQUIXT~ 20
END

IF ~~ THEN BEGIN 80 // from:
  SAY #11270 /* ~Tous les muscles de son visage se contractent, et elle crache : "Tu vas vraiment laisser ce… ce… cette engeance d'basse-fosse te dire comment mener ta vie ? Entendu, j'me tairai, et j'l'regarderai te dévorer l'âme, pauvre bige !"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11271 /* ~"Vas-y. Ilquix, j'ai d'autres questions…"~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11272 /* ~"Vas-y. Ilquix, j'ai d'autres questions…"~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY #11667 /* ~Elle a un sourire pincé. "Oui, fiélon, tu vas t'apercevoir qu'on croit à la *vraie* liberté, ici. Et nul ne m'empêchera de dire le fond de ma pensée." Ilquix arbore un rictus ironique avant de reprendre son air affable.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11668 /* ~"Vas-y. Ilquix, J'ai d'autres questions…"~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11669 /* ~"Vas-y. Ilquix, j'ai d'autres questions…"~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 82 // from:
  SAY #13084 /* ~"J'suis assez grande pour parler tout'seule ! J'm'appelle Annah, comme si ça la regardait." Annah croise les bras avec un *humph.* Pointe se contente de sourire et se retourne vers toi.~ */
  IF ~~ THEN REPLY #13231 /* ~"Tiens ta langue, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 87
  IF ~~ THEN REPLY #13232 /* ~"Ne fais pas attention à elle, Pointe. J'ai quelques questions…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13233 /* ~"J'ai quelques questions, Pointe…"~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13234 /* ~"Peu importe. Au revoir."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 83 // from:
  SAY #13085 /* ~"J'suis assez grande pour parler tout'seule ! J'm'appelle Annah, comme si ça la regardait. Quant à *ce* rustre," elle te jette un regard féroce, "j'suis pas sûre que ce soit un d'mes amis !" Pointe sourit légèrement avant de se retourner vers toi.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13235 /* ~Vérité : "Annah… excuse-moi si je n'ai pas été très sympa. J'espère que tu me pardonneras tout ce que je t'ai fait subir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13236 /* ~Vérité : "Annah… excuse-moi si je n'ai pas été très sympa. J'espère que tu me pardonneras tout ce que je t'ai fait subir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13237 /* ~Mensonge : "Annah… excuse-moi si je n'ai pas été très sympa. J'espère que tu me pardonneras tout ce que je t'ai fait subir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13238 /* ~Mensonge : "Annah… excuse-moi si je n'ai pas été très sympa. J'espère que tu me pardonneras tout ce que je t'ai fait subir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13239 /* ~"Ne fais pas attention à elle, Pointe. J'ai quelques questions…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13240 /* ~"J'ai quelques questions, Pointe…"~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13241 /* ~"Peu importe. Au revoir."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 84 // from: 83.0 87.0
  SAY #13086 /* ~La queue d'Annah cesse soudain de battre et elle tourne la tête vers toi - ses yeux s'écarquillent de surprise. On dirait qu'elle va parler… puis elle regarde ailleurs, se contentant d'acquiescer. L'arrière de son cou semble en feu - tu te demandes si elle est en train de rougir.~ */
  IF ~~ THEN REPLY #13242 /* ~"Pointe… j'ai quelques questions…"~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13243 /* ~"Ne fais pas attention, Pointe. Au revoir."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 85 // from: 83.1 83.2 87.1 87.2
  SAY #13087 /* ~La queue d'Annah cesse de battre. Elle ne parle pas, mais se contente d'acquiescer.~ */
  IF ~~ THEN REPLY #13244 /* ~"Pointe… j'ai quelques questions."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13245 /* ~"Ne fais pas attention, Pointe. Au revoir."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 86 // from: 83.3 87.3
  SAY #13088 /* ~Les yeux d'Annah sont comme des flammes vertes, mais elle ne dit pas un mot - elle se contente de te regarder d'un air renfrogné.~ */
  IF ~~ THEN REPLY #13246 /* ~"Euh… Pointe, j'ai quelques questions…"~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13247 /* ~"Ne fais pas attention, Pointe. Au revoir."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 87 // from: 82.0
  SAY #13089 /* ~Tout le corps d'Annah se tend un instant -- elle ne parle pas, mais la colère provoquée par tes paroles semble électriser l'espace qui l'entoure. Tu t'attends au pire -- mais elle reste silencieuse, ricanant d'un air écœuré.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13248 /* ~Vérité : "Annah… excuse-moi si je t'ai vexée. Ce n'est pas ce que je voulais dire. J'espère que tu me pardonneras… au nom de notre amitié."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13249 /* ~Vérité : "Annah… excuse-moi si je t'ai vexée. Ce n'est pas ce que je voulais dire. J'espère que tu me pardonneras… au nom de notre amitié."~ */ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13250 /* ~Mensonge : "Annah… excuse-moi si je t'ai vexée. Ce n'est pas ce que je voulais dire. J'espère que tu me pardonneras… au nom de notre amitié."~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13251 /* ~Mensonge : "Annah… excuse-moi si je t'ai vexée. Ce n'est pas ce que je voulais dire. J'espère que tu me pardonneras… au nom de notre amitié."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13252 /* ~"Ne fais pas attention à elle, Pointe. J'ai quelques questions…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13253 /* ~"J'ai quelques questions, Pointe."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13254 /* ~"Tant pis, Pointe. Au revoir."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 88 // from:
  SAY #13090 /* ~Annah incline la tête et regarde Pointe d'un air menaçant. "Pourquoi tu t'occupes de moi, réponds plutôt aux questions de l'homme." Elle sourit d'un air narquois à Pointe pour appuyer ses propos.~ */
  IF ~~ THEN EXTERN ~DIRONNA~ 29
END

IF ~~ THEN BEGIN 89 // from:
  SAY #13751 /* ~Alors que tu t'apprêtes à parler, Annah t'empoigne et siffle. "T'es *sourd* ?! Plus un mot à celui-ci ! C'est un de ces Chiens Affamés." Elle baisse le ton. "Un chaoteux, azimuté, dangereux ! Aussi collants que des mouches et encore plus nombreux."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13780 /* ~"Un Chien Affamé ? De quoi tu parles ?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13781 /* ~"Les Chiens Affamés ? C'est qui déjà ?"~ */ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13782 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13783 /* ~"Tu as peut-être raison. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #13752 /* ~"C'est un gang rucheux, des Chaoteux en plus !" Elle secoue la tête, puis te donne un coup de queue dans le dos. "Reste à l'écart et surveille tes arrières. J'ai eu à faire avec eux et leur morsure est pire que leurs aboiements, tu peux me croire."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13784 /* ~"Les Chaoteux ?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 91
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13785 /* ~"Qui sont les Chaoteux déjà ?"~ */ GOTO 91
  IF ~~ THEN REPLY #13786 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13787 /* ~"Je pensais qu'il pourrait m'apprendre quelque chose. Tant pis, allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1
  SAY #13753 /* ~"C'est une faction, comme les Hommes-Poussière, les Greffiers et les Sensats… sauf qu'ils n'ont ni règle ni croyance…" Annah fait un tire-bouchon avec sa queue pour appuyer ses dires. "Ce sont des fêlés, des toqués, des azimutés, ouais ?" Elle rumine un moment. "Certains les appellent les Xaositectes mais ils s'en moquent de toute façon."~ */
  IF ~~ THEN REPLY #13788 /* ~"Comment est-ce qu'ils recrutent leurs membres ?"~ */ GOTO 92
  IF ~~ THEN REPLY #13789 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13790 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #13754 /* ~Annah hausse les épaules. "J'sais pas. Ils recrutent, c'est tout. C'est juste un amas de mouches pour moi."~ */
  IF ~~ THEN REPLY #13791 /* ~"Je crois que je vais quand même aller lui parler."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13792 /* ~"Je vois. Merci du renseignement."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #13831 /* ~Alors que tu t'apprêtes à parler, Annah t'empoigne et siffle. "T'es *sourd* ?! Plus un mot à celui-ci ! C'est un de ces Chiens Affamés." Elle baisse le ton. "Un chaoteux, azimuté, dangereux ! Aussi collants que des mouches et encore plus nombreux."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13992 /* ~"Un Chien Affamé ? De quoi tu parles ?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13993 /* ~"Les Chiens Affamés ? C'est qui déjà ?"~ */ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13994 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13995 /* ~"Tu as peut-être raison. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1
  SAY #13832 /* ~"C'est un gang rucheux, des Chaoteux en plus !" Elle secoue la tête, puis te donne un coup de queue dans le dos. "Reste à l'écart et surveille tes arrières. J'ai eu à faire avec eux et leur morsure est pire que leurs aboiements, tu peux me croire."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13996 /* ~"Les Chaoteux ?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 95
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13997 /* ~"Qui sont les Chaoteux déjà ?"~ */ GOTO 95
  IF ~~ THEN REPLY #13998 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13999 /* ~"Je pensais qu'il pourrait m'apprendre quelque chose. Tant pis, allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 94.1
  SAY #13833 /* ~"C'est une faction, comme les Hommes-Poussière, les Greffiers et les Sensats… sauf qu'ils n'ont ni règle ni croyance…" Annah fait un tire-bouchon avec sa queue pour appuyer ses dires. "Ce sont des fêlés, des toqués, des azimutés, ouais ?" Elle rumine un moment. "Certains les appellent les Xaositectes mais ils s'en moquent de toute façon."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #14000 /* ~"Comment est-ce qu'ils recrutent leurs membres ?"~ */ GOTO 96
  IF ~~ THEN REPLY #14001 /* ~"Je vais quand même aller lui parler."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14002 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #13834 /* ~Annah hausse les épaules. "J'sais pas. Ils recrutent, c'est tout. C'est juste un amas de mouches pour moi."~ */
  IF ~~ THEN REPLY #14003 /* ~"Je crois que je vais quand même aller lui parler."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14004 /* ~"Je vois. Merci du renseignement."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #15337 /* ~Annah te tire par le bras avant que tu aies pu saluer l'homme. "Attends… j'ai entendu parler de cet affranchi. C'est un nouveau dans la Ruche, il se prend pour un épéiste. Il tue tous les matois qui le combattent. Tu f'rais mieux de te tenir à l'écart de ce genre de type."~ */
  IF ~~ THEN REPLY #15486 /* ~"Je lui parlerai quand même."~ */ GOTO 98
  IF ~~ THEN REPLY #15487 /* ~"Alors, je vais l'éviter."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #15338 /* ~"Hé ! Bien ! Pas la peine de m'en faire ! Te figure pas que je vais t'attendre, maintenant !"~ */
  IF ~~ THEN REPLY #15488 /* ~Parle à l'homme.~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ EXTERN ~DADYZOEL~ 1
  IF ~~ THEN REPLY #15489 /* ~"Tu as peut-être raison, Annah. Je vais l'éviter."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16621 /* ~"Quoi ? Tu plaisantes, non !"~ */
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16902 /* ~"Non. Tu peux faire quelque chose ?"~ */ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16903 /* ~"Je ne plaisante pas, Annah. Je voudrais juste que tu y penses de temps en temps. Au moins me rendre service…"~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #16622 /* ~"Eh ! Ça m'étonnerait ! Trouv'quelqu'un d'autre pour broyer du noir sur tes arbres maudits. T'crois pas que j'vais perdre mon temps avec ces trucs-là. Complètement timbré, j'te jure !"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16904 /* ~"Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16905 /* ~"Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16906 /* ~"Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16907 /* ~"Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16908 /* ~"Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16909 /* ~"Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16910 /* ~"Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16911 /* ~"Bon. J'ai des questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16912 /* ~"Alors, tant pis. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #16623 /* ~Ses simagrées laissent enfin place à un sourire. "Ah, par Baator ! Si tu y tiens tellement, pourquoi pas ? D'accord, je m'occuperai de tes arbres, matois. Mais tu m'dédommageras d'mon temps !"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16913 /* ~"Merci. Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16914 /* ~"Merci. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16915 /* ~"Merci. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16916 /* ~"Merci. Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16917 /* ~"Merci. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16918 /* ~"Merci. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16919 /* ~"Merci. Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16920 /* ~"Merci. J'ai des questions, Deuils…"~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16921 /* ~"Merci, Annah. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #17207 /* ~Annah te donne un coup dans les côtes avant que tu n'aies pu t'approcher de l'homme. "Je ne perdrais pas mon temps à parler à cette vieille goule, si j'étais toi."~ */
  IF ~~ THEN REPLY #17348 /* ~"Et bien, tu n'es pas moi, et moi, j'ai décidé de lui parler."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17349 /* ~"Je vois. Mais il vaudrait quand même mieux que je lui parle."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17350 /* ~"Pourquoi ? Qui est-ce ?"~ */ GOTO 103
  IF ~~ THEN REPLY #17351 /* ~"Je vais rester à l'écart, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.2
  SAY #17210 /* ~Annah parle comme si elle se rappelait une vieille légende. "Y'a pas plus azimuté que le vieux 'Moelle-pote'. C'tait un des Récupérateurs les plus vieux et les pires du square. À peine capable de tirer assez de jonc de sa collecte de corps, il est devenu 'faim-furieux' il y a quelques années et s'est mis à manger les macchabées pour tenir. Les autres Récupérateurs l'évitent et le ridiculisent, en jetant du fumier sur lui dès qu'ils le peuvent. Il les regarde bêtement… j'suis sûre qu'il pense au goût qu'ils auraient."~ */
  IF ~~ THEN REPLY #17352 /* ~"Hmm. Je vais lui parler, juste au cas où."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17354 /* ~"Je vais rester à l'écart, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17426 /* ~"Ouais, il est sûr ; tu l'as pas entendu ?" Annah lève les yeux au ciel. "Pour l'amour des Puissances, tu peux pas le lâcher un moment ? Tu vois pas qu'tu te ridiculises ?"~ */
  IF ~~ THEN REPLY #17427 /* ~Laisse la marchande répondre à Annah.~ */ EXTERN ~D300MER4~ 11
  IF ~~ THEN REPLY #17428 /* ~"Annah… Tais-toi."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17466 /* ~"Elle a raison. Je n'ai besoin de rien. Mes questions…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17467 /* ~"Elle a raison. Je n'ai besoin de rien. Au revoir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #17429 /* ~Annah a l'air scandalisée, puis furieuse : "*Jalouse* ?! Ferme-la ! Surveille ta langue, femme, ou j'te l'arrache de ton râtelier et j'te l'enterre avec ton cadavre aux deux extrémités de Sigil, crois-moi !" La marchande, effrayée, recule. "Et toi !" Elle se tourne vers toi, les yeux pleins de rage et de sarcasme. "Pas *un* mot ! Ne va pas t'faire des idées sur le bavardage écervelé de cette enfumée, ou tu l'regretterais !"~ */
  IF ~~ THEN REPLY #17468 /* ~"Annah… Tais-toi."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17469 /* ~"Elle a raison. Je n'ai besoin de rien. Mes questions…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17470 /* ~"Elle a raison. Je n'ai besoin de rien. Au revoir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 106 // from: 104.1 105.0
  SAY #17430 /* ~"Ha ! Sûrement pas ! Je parlerai quand je veux et ne l'oublie *jamais* ! Et ne crois pas que je vais oublier *ça* non plus, espèce de quoqueret ébouriffé."~ */
  IF ~~ THEN REPLY #17471 /* ~"Ça va, Annah. Elle a raison, marchande, je n'ai besoin de rien. Mes questions…"~ */ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17472 /* ~"Ça va, Annah. Elle a raison, marchande. Je n'ai besoin de rien. Au revoir."~ */ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #17534 /* ~"Huh !" Annah secoue la tête, en levant les yeux au ciel. "T'es cinglé, rien que d'y songer ! Mais c'est vrai qu'ils sont *assez* mignons… c'est ton jonc, bige. C'est à toi de voir."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17589 /* ~"Morte ? Qu'est-ce que tu en penses ?"~ */ EXTERN ~DMORTE~ 187
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17590 /* ~"Je t'en prends un, marchand."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17591 /* ~"Je préfère garder mes pièces de cuivre. J'ai des questions, marchand…"~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17592 /* ~"En fait, je vais garder mes pièces de cuivre. Au revoir."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17593 /* ~"Je n'ai pas assez, marchand, mais j'ai quelques questions…"~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17594 /* ~"Je n'ai pas assez d'argent pour en acheter un. Peu importe, marchand. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #18796 /* ~Annah sort ses couteaux en un tour de main. "Touche-moi, et t'es mort, ça c'est sûr."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18797 /* ~"Annah : calme-toi."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18798 /* ~Laisse faire Annah.~ */ EXTERN ~DCOLYLFN~ 59
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18799 /* ~"Annah : calme-toi."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18800 /* ~Laisse faire Annah.~ */ EXTERN ~DCOLYLFN~ 60
END

IF ~~ THEN BEGIN 109 // from:
  SAY #19035 /* ~Annah a l'air dégoûté. "Allons-y."~ */
  IF ~~ THEN REPLY #19036 /* ~"J'ai des questions à lui poser, d'abord."~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19037 /* ~"D'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #19230 /* ~Annah renifle. "Encore en train de faire le malin, Quint ? Dégage."~ */
  IF ~~ THEN REPLY #19231 /* ~"J'avais d'abord d'autres questions à lui poser, Annah…"~ */ EXTERN ~DQUINT~ 1
  IF ~~ THEN REPLY #19232 /* ~"Au revoir, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20625 /* ~Annah trépigne nerveusement. "Vaut mieux pas traîner avec les morts. Paraît qu'ça porte la poisse."~ */
  IF ~~ THEN REPLY #20626 /* ~"D'accord. De toute façon, ce corps ne dit rien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #20627 /* ~Annah trépigne nerveusement. "Vaut mieux pas traîner avec les morts. Paraît qu'ça porte la poisse."~ */
  IF ~~ THEN REPLY #20628 /* ~"Il aura peut-être des réponses pour nous."~ */ EXTERN ~DBODY1~ 2
END

IF ~~ THEN BEGIN 113 // from:
  SAY #20629 /* ~"C'est ça. Et y'a rien pour nous ici. On y va ? Y'a rien à gagner à fréquenter les cadavres."~ */
  IF ~~ THEN REPLY #20630 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #20775 /* ~"Gris, espèce de moitié d'abruti de vautour, t'avais pas un brin de l'intelligence que les Pouvoirs t'ont donnée et maintenant t'es mort et pourrissant. Qu'aucun pouvoir de la mort n'ait pitié d'ta carcasse putride. J'suis doublement contente d'te voir pourrir ici, et ta mère l'est triplement. Dommage que tu puisses pas nous raconter ton triste sort."~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN REPLY #20776 /* ~"C'est Gris ?"~ */ JOURNAL #66263 /* ~J'ai retrouvé le corps de Gris le Vautour, l'un des Récupérateurs du Village Enseveli. Atrocement mutilé, il était coincé dans un sarcophage, au beau milieu d'un tombeau occupé par des goules.~ */ GOTO 115
  IF ~~ THEN REPLY #20777 /* ~"C'est un bon sentiment, ça, Annah. Allons-y."~ */ JOURNAL #66263 /* ~J'ai retrouvé le corps de Gris le Vautour, l'un des Récupérateurs du Village Enseveli. Atrocement mutilé, il était coincé dans un sarcophage, au beau milieu d'un tombeau occupé par des goules.~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #20778 /* ~"Adieu, Gris le vautour, avec ton bec de charognard coléreux. Vieux libidineux, dommage que je t'aie pas égorgé moi-même quand t'étais encore frais."~ */
  IF ~~ THEN REPLY #20779 /* ~"D'accord, Annah. Merci. Allons-nous-en d'ici."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20780 /* ~Annah pousse le cadavre du bout de son pied et se tourne vers toi. "Tu sais pourquoi on l'appelait Gris le vautour, hein ? Parce que c't'idiot a un bec si gros. Son nez marchait toujours plusieurs mètres devant lui."~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20781 /* ~"Quint te cherchait, Gris. Il a dit que tu avais quelque chose qui lui appartenait."~ */ EXTERN ~DGRIS~ 10
  IF ~~ THEN REPLY #20782 /* ~"Gris, hein ? Je vais prévenir les autres villageois qu'il est mort."~ */ EXTERN ~DGRIS~ 19
  IF ~~ THEN REPLY #20783 /* ~"Merci, Annah. J'ai d'autres questions à poser à Gris."~ */ EXTERN ~DGRIS~ 9
  IF ~~ THEN REPLY #20784 /* ~"Merci, Annah. Allons-y."~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.3
  SAY #20785 /* ~"Y'a pas de quoi." Elle sourit gentiment. "Et adieu à toi, Gris ! Demande aux rats de pas trop te ronger les os !" Elle crache sur le corps.~ */
  IF ~~ THEN REPLY #20786 /* ~"Allons-y, Annah."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21611 /* ~"Hssssst !" Annah siffle pour t'avertir et, alors que tu te tournes pour lui faire face, tu remarques qu'elle fixe la créature de ses yeux grand ouverts. Elle dessine un demi-cercle sur son cœur.~ */
  IF ~~ THEN REPLY #24723 /* ~"Qu'est-ce qui ne va pas Annah ?"~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #21612 /* ~"T'es bête ou quoi ?!" Annah se tourne vers toi… et tu réalises soudain qu'elle est *terrifiée*. "T'es si pressé d'aller danser dans l'ombre de la Dame que t'es prêt à te disputer avec celui-là ?! Jouons vite un air à c't'endroit avant qu'on nous inscrive au livre des morts !"~ */
  IF ~~ THEN REPLY #24724 /* ~"Quel est le problème ?"~ */ GOTO 120
  IF ~~ THEN REPLY #24725 /* ~"On y va, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21613 /* ~"C'est *Fell*." Annah jette un regard apeuré à la créature… vraisemblablement Fell. "Fichons le camp, d'accord ? Ça nous apportera rien de bien d'être ici !"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #24726 /* ~"Je te repose la question… quel est le problème ?"~ */ GOTO 121
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #24727 /* ~"Fell ?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 7
  IF ~~ THEN REPLY #24728 /* ~"On y va, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #21614 /* ~"C'est un dabus qui est pas un dabus, tu vois ? Il marche sur le sol…" La voix d'Annah se réduit à un soupir et elle commence à trembler. "Plus de questions ; on s'tire, hein ?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24729 /* ~"Annah, il ne t'arrivera rien tant que je suis ici. Dis moi, qu'est-ce qu'un 'dabus' ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24730 /* ~"C'est quoi un 'dabus' ?"~ */ GOTO 122
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24731 /* ~"Annah, aucun mal ne te sera fait tant que je serai là. Maintenant, dis-moi ce qui ne va pas."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 123
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24732 /* ~"Je crois qu'il vaudrait mieux qu'on mette les choses au clair tout de suite."~ */ GOTO 123
  IF ~~ THEN REPLY #24733 /* ~"On y va, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1
  SAY #21615 /* ~"Les dabus sont d'*Sa* race - ils prennent soin d'la cité, réparent et détruisent et reconstruisent et tout. Ils parlent avec des énigmes en forme de symboles en l'air - faut les r'mettre en place pour les comprendre."~ */
  IF ~~ THEN REPLY #24734 /* ~"Très bien… mais Fell aussi est un dabus.. Qu'est-ce qui ne vas pas ?"~ */ GOTO 123
  IF ~~ THEN REPLY #24751 /* ~"Annah, je veux simplement poser à Fell quelques questions. On partira tout de suite."~ */ GOTO 126
  IF ~~ THEN REPLY #24752 /* ~"Je vois. Très bien, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.2 121.3 122.0
  SAY #21616 /* ~Annah jette un regard apeuré à Fell. "Fell est un dabus qui l'a énervée, Elle. Il paraît que c'est un dabus qu'est pas un dabus, et que l'voile de la Dame va pas tarder à lui tomber dessus."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24753 /* ~"'Elle' ?"~ */ GOTO 124
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24754 /* ~"'Elle' ? Tu veux dire la Dame des Douleurs ?"~ */ GOTO 125
  IF ~~ THEN REPLY #24755 /* ~"Annah, je veux simplement poser à Fell quelques questions. On partira tout de suite."~ */ GOTO 126
  IF ~~ THEN REPLY #24756 /* ~"Je vois. Très bien, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #21617 /* ~"La Dame des Douleurs." Annah dessine un autre demi-cercle dans l'air devant elle. "Les dabus travaillent pour elle, et elle les protège… à part Fell." Elle frissonne. "Fichons le camp, hein ?"~ */
  IF ~~ THEN REPLY #24757 /* ~"Je voudrais d'abord parler à Fell."~ */ GOTO 126
  IF ~~ THEN REPLY #24758 /* ~"Très bien, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY #21618 /* ~"Ouais… et fais gaffe à ta langue." Annah dessine un autre demi cercle dans l'air alors que tu mentionnes le nom de la Dame. "Les dabus travaillent pour la dame, et elle les protège… à part Fell." Elle frissonne. "Fichons le camp, hein ?"~ */
  IF ~~ THEN REPLY #24759 /* ~"Je voudrais d'abord parler à Fell."~ */ GOTO 126
  IF ~~ THEN REPLY #24760 /* ~"Je vois. Très bien, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 122.1 123.2 124.0 125.0
  SAY #21619 /* ~Annah attrape ton bras. "S'il te plaît, non, non ! Ça ne nous apportera rien de bien - tous ceux qui parlent à Fell peuvent attirer l'attention de la Dame. J'veux pas mourir, j'veux pas !" À ta grande surprise, Annah paraît proche des larmes.~ */
  IF ~~ THEN REPLY #24761 /* ~"*Tais-toi*… il ne t'arrivera rien. Je vais parler à Fell et je veux que tu te taises."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 127
  IF ~~ THEN REPLY #24762 /* ~Promesse : "Annah, aucun mal ne te sera fait tant que je serai là - je te le promets. Je veux juste lui parler un instant."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Fell_2","GLOBALLaw",1)
~ GOTO 128
  IF ~~ THEN REPLY #24763 /* ~Mens pour calmer ses pleurs : "Annah, aucun mal ne te sera fait tant que je serai ici - je te le promets. Je veux juste lui parler un instant."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Fell_2","GLOBALLaw",-1)
~ GOTO 128
  IF ~~ THEN REPLY #24764 /* ~"Très bien, très bien. On y va."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #21620 /* ~Annah rougit, comme si on l'avait giflée. Elle ricane, sa queue battante et sa colère habituelle resurgissant. "Je m'demande pourquoi j'me donne la peine… vas-y, va lui parler jusqu'à ce que ta langue te coupe la gorge !"~ */
  IF ~~ THEN REPLY #24765 /* ~"Très bien."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 128 // from: 126.1 126.2
  SAY #21621 /* ~Pendant une minute, Annah ne regarde que toi. Puis, quelque chose dans ton regard semble la calmer, car elle s'arme de courage. "J'sais pas pourquoi…" Elle secoue la tête. "Vas-y donc, va lui parler ! J'm'en fous !" Il y a une peur sous-jacente dans sa voix.~ */
  IF ~~ THEN REPLY #24766 /* ~"Très bien."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #21622 /* ~Annah s'arrête pendant un moment. Elle semble partagée. "Ouais… Je peux."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24767 /* ~"Tu veux bien ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24768 /* ~"Tu veux bien ?"~ */ GOTO 130
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24769 /* ~"Alors fais-le."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24770 /* ~"Alors fais-le."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 130
  IF ~~ THEN REPLY #24771 /* ~"Peu importe. Partons."~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from: 129.1 129.3
  SAY #21623 /* ~Annah secoue la tête. "Non, j'vais pas te suivre dans l'ombre de la Dame, certainement pas."~ */
  IF ~~ THEN REPLY #24772 /* ~"Je vois. Je vais juste essayer de lui parler moi-même…"~ */ EXTERN ~DFELL~ 8
  IF ~~ THEN REPLY #24773 /* ~"Très bien. Partons."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0 129.2 132.0 133.1 134.3 135.3 136.0 137.12 138.12 139.12 140.9 141.9 142.0 143.3 144.1 145.3 146.3 147.3 148.0 149.3 150.3 151.1 152.3 153.3 154.3 155.12 158.0 159.0
  SAY #21624 /* ~Annah acquiesce. Le dabus continue de vous regarder tous les deux fixement, les mains dans ses manches.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24774 /* ~"Demande-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24775 /* ~"Demande-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24776 /* ~"Demande-lui qui il est."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24777 /* ~"Demande-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24778 /* ~"Demande-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24779 /* ~"Demande-lui quel est cet endroit."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24780 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24781 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24782 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24783 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24784 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24785 /* ~"J'ai l'impression que je te connais, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64394 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64395 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64396 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64397 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64398 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64399 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24786 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24787 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24788 /* ~"Il a dit qu'il m'avait déjà rencontré… sait-il comment je suis mort ?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #24789 /* ~"Demande-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24790 /* ~"Demande-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24791 /* ~"Demande-lui s'il a entendu parler de Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #24792 /* ~"Demande-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24793 /* ~"Demande-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24794 /* ~"Demande-lui si c'est lui qui a fait les tatouages sur le bras démembré que j'ai trouvé."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24795 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24796 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24797 /* ~"Peut-il me dire quelque chose sur les tatouages de mon corps ?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24798 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24799 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24800 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24801 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #21625 /* ~Annah frissonne, sa queue battant doucement d'avant en arrière. "Son nom est Fell."~ */
  IF ~~ THEN REPLY #24802 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24803 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #21626 /* ~Annah fronce les sourcils, étudiant les symboles. "J'connais pas tous les symboles qu'il crache…" Elle jette un regard aux murs du bâtiment. "Quand même… Si mes yeux me trompent pas, on dirait un salon de tatouage."~ */
  IF ~~ THEN REPLY #24804 /* ~"Est-ce que je peux voir les tatouages qu'il a ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24805 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24806 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #21627 /* ~Annah regarde les symboles avec attention. "D'abord, il dit… non, attends." Elle fronce les sourcils. "Il dit que c'est la *première* fois qu'tu viens ici… mais en même temps c'est pas la première fois." Annah siffle d'irritation et sa queue bat d'avant en arrière, comme un serpent. "Hssst ! Il est aussi azimuté qu'toi - ce qu'il dit n'a pas d'sens."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24807 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24808 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24809 /* ~"Est-ce qu'il sait qui je suis ?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #24810 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24811 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #21628 /* ~Annah cligne des yeux. "Oh, ça c'est quelque chose. Il dit qu'il te connaît, jusque-là ça va… mais il dit qu'il peut pas dire ton histoire."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24812 /* ~"Pourquoi pas ?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24813 /* ~"Pourquoi pas ?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24814 /* ~"Pourquoi pas ?"~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #24815 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24816 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #21629 /* ~"Il dit qu'il peut pas. Il dit qu'il est désolé et tout… puis…" Annah fronce les sourcils. "Il dit 'qu'il peut pas changer la nature d'un homme'." Elle parcourt à nouveau les symboles, puis frissonne. "J'comprends pas c'qu'il veut dire après ça."~ */
  IF ~~ THEN REPLY #24817 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24818 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #21630 /* ~Annah se mord la lèvre inférieure. "Il dit qu'la vieille sorcière n'est pas un mythe. Elle existe, pour de vrai."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24819 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24820 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24821 /* ~"Est-ce qu'il sait où elle est ?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24822 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24823 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24824 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24825 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24826 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24827 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24828 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24829 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24830 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24831 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24832 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #21631 /* ~"Il…" Annah dessine un demi-cercle sur son cœur. "Il dit qu'on l'a mise dans un dédale…" Sa voix se réduit à un souffle. "Elle est dans une des cages de la Dame."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24833 /* ~"Mise dans un dédale ?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24834 /* ~"Emprisonnée dans un dédale ?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24835 /* ~"Emprisonnée dans un dédale ?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24836 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24837 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24838 /* ~"Peut-il nous dire quelque chose sur elle ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24839 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24840 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24841 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24842 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24843 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24844 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24845 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24846 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #21632 /* ~"Elle…" Annah regarde les symboles avec attention. "Quelque chose comme les deux s'entendent pas, et qu'la Dame punit Ravel. L'a mise dans un dédale." Annah se tourne vers toi. "Les Dédales sont comme des cages à oiseaux pour les biges qui croient qu'ils peuvent s'opposer à la Dame… ça marche jamais. Ça fait juste plus de dédales."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24847 /* ~"Pourquoi ont-ils mis Ravel dans un dédale ?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24848 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24849 /* ~"Pourquoi est-ce que Ravel a été envoyée dans un dédale ?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24850 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24851 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24852 /* ~"Sait-il comment aller dans le dédale de Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24853 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24854 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24855 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24856 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24857 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24858 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24859 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24860 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #21633 /* ~Annah semble de plus en plus nerveuse tandis qu'elle traduit et tu la vois trembler. "Il dit qu'elle a essayé d'casser Sigil comme un œuf."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24861 /* ~"Est-ce qu'il sait comment trouver Ravel ?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24862 /* ~"Est-ce qu'il sait comment trouver Ravel ?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24863 /* ~"Est-ce qu'il sait comment trouver Ravel ?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24864 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24865 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24866 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24867 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24868 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24869 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24870 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24871 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 156.5
  SAY #21634 /* ~Annah fronce les sourcils. "Il dit de pas aller la chercher…" Elle se gratte nerveusement. "Il dit qu'elle est sous la garde de la Dame." Elle se tourne vers toi. "Il a raison… on peut pas s'opposer, alors il vaut mieux la laisser tranquille, hein ?"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24872 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24873 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24874 /* ~"Que sait-il d'autre sur Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24875 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24876 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24877 /* ~"J'ai une autre question à lui poser…"~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24878 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24879 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24880 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24881 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24882 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #21635 /* ~"Il dit de pas aller la chercher, parce que…" Elle regarde intensément les symboles. "Parce qu'elle a un mauvais cœur." Elle s'arrête. "Il dit qu'elle fera tout pour te faire du mal, et à ceux qui t'accompagnent aussi." Annah soupire, puis te jette un regard mal à l'aise. "Il a raison, tu sais. Si elle vit, elle nous apportera qu'les pires ennuis."~ */
  IF ~~ THEN REPLY #24883 /* ~"Je n'oublierai pas. J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24884 /* ~"Je pense que nos chemins sont destinés à se croiser. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #21636 /* ~La queue d'Annah bat d'avant en arrière. "Il dit qu'le bras est à toi, mais qu'les tatouages sont à lui." Elle fronce les sourcils alors qu'elle étudie les symboles qui flottent en l'air. "…J'comprends pas la dernière partie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24885 /* ~"Quels tatouages ?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24886 /* ~"Quels tatouages ?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24887 /* ~"Quels tatouages ?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #24888 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24889 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #21637 /* ~"Il dit qu'ils sont à lui, mais qu'il les avait oubliés. Il dit qu'il peut les graver à nouveau sur toi, si tu veux."~ */
  IF ~~ THEN REPLY #24890 /* ~"D'accord.. j'aimerais voir tous les tatouages qu'il a."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24891 /* ~"J'ai une autre question à lui poser…"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24892 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #21638 /* ~"Il dit qu'ils sont pas à lui."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Peut-il m'en parler ?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Peut-il m'en parler ?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Peut-il m'en parler ?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #24896 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24897 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #21639 /* ~"Il dit… qu'celui sur ton dos, c'est des indications. L'autre, celui sur ton épaule…" Brusquement, l'un des symboles autour de Fell s'éclaire, et le reste disparaît. Le symbole devient plus grand, et de plus en plus précis.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24898 /* ~"Que signifie le symbole sur mon épaule ?"~ */ EXTERN ~DFELL~ 69
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24899 /* ~"Que signifie le symbole sur mon épaule ?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24900 /* ~"Que signifie le symbole sur mon épaule ?"~ */ EXTERN ~DFELL~ 70
  IF ~~ THEN REPLY #24901 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24902 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #21640 /* ~"Ombres." La queue d'Annah commence à battre d'avant en arrière… bizarrement, elle semble nerveuse. "Il dit que t'as été tué par des ombres."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24934 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24935 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24936 /* ~"Des ombres ?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #24937 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24938 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #21641 /* ~"Il dit…" La queue d'Annah s'arrête de battre et commence à se déplacer lentement, tel un serpent prêt à attaquer. "Il dit que t'as été tué par beaucoup d'ombres, mais il sait pas pourquoi."~ */
  IF ~~ THEN REPLY #24939 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24940 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #21642 /* ~"Il dit… c'est son temple… c'est la galerie de Fell. Il dit, euh… que t'es sa *toile*. Il t'admire et il est aussi… triste pour toi."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24941 /* ~"Triste pour moi ?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24942 /* ~"Triste pour moi ?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24943 /* ~"Triste pour moi ?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #24944 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24945 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #21643 /* ~Annah semble avoir du mal. "Il dit… qu'des marques de torture, non… *tourment* flottent autour, au-dessus de toi. Qu'une tragédie… des tragédies… et des pertes ont été… marquées dans ta chair. Il dit que t'as survécu à de grandes douleurs."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24946 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24947 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24948 /* ~"Qu'est-ce qu'il veut dire ?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #24949 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24950 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #21644 /* ~Annah fronce les sourcils. "J'comprends pas vraiment, mais…" Elle observe attentivement les symboles. "Il… ressent de l'admiration… *t'admire*, parce que t'as abandonné… non, non… parce que t'as *pas* abandonné face au poids de tes… pertes… en série…" Annah grogne, puis crache sur le sol. "Bon sang de maudits rébus ! Pas un poil de sens !"~ */
  IF ~~ THEN REPLY #24951 /* ~"Respire profondément, essaie encore."~ */ GOTO 152
  IF ~~ THEN REPLY #24952 /* ~"Laisse tomber, alors. J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24953 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #21645 /* ~"Vas-y, continue." Annah prend sa respiration, puis regarde à nouveau attentivement les rébus. "Il dit qu'il t'admire parce que t'as pas abandonné face au poids de toutes ces pertes… même si les chaînes sont toujours au-dessus de toi… euh, sur toi."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24954 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24955 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24956 /* ~"Demande-lui de continuer."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #24957 /* ~"Laisse tomber, alors. J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24958 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #21646 /* ~Annah fronce les sourcils. "Il dit… Ces pertes couvrent cette vie et toutes les autres depuis. Qu'ta peau change… eh… qu'tu *mues*… comme un serpent. Tu marches dans les ch'mins d'la vie, les nombreux…" Elle s'arrête. "Euh, les infinis chemins d'la vie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24959 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24960 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24961 /* ~"Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #24962 /* ~"Laisse tomber, alors. J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24963 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #21647 /* ~"Euh… il dit de t'avertir de quelque chose… Toutes tes vies passées…" Elle regarde attentivement, puis continue. "Tes carnations… *incarnations* jettent une ombre. Et qu'il faut qu'tu voyages… vers un endroit où il y a des ombres folles, où les ombres folles vivent, et où la terre est coupée des regrets."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24964 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24965 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24966 /* ~"Je… vois. Est-ce qu'il a dit autre chose ?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #24967 /* ~"Laisse tomber, alors. J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24968 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #21648 /* ~"Il dit aussi d'rien signer."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24969 /* ~"Très bien."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24970 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24971 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24972 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24973 /* ~"Très bien."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24974 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24975 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24976 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24977 /* ~"Très bien."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24978 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24979 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24980 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #24981 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24982 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #21649 /* ~"Fell dit… Euh, non, il *demande* si tu t'sens 'pas-complet'." Annah fronce les sourcils. "J'*crois* qu'il a demandé si tu t'sentais complet."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24983 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24984 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24985 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #24986 /* ~"Ça ne te regarde pas."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24987 /* ~Mensonge : "Je me sens entier, oui. Pourquoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24988 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 141
  IF ~~ THEN REPLY #24989 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #21650 /* ~"Fell dit … que t'es fort. Et qu'tu devrais garder la foi. Alors tu d'viendras à nouveau complet."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24991 /* ~"J'essaierai."~ */ EXTERN ~DFELL~ 103
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24992 /* ~"J'essaierai."~ */ EXTERN ~DFELL~ 104
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24993 /* ~"J'essaierai."~ */ EXTERN ~DFELL~ 105
END

IF ~~ THEN BEGIN 158 // from:
  SAY #21651 /* ~Annah cligne des yeux. "Il… m'a dit de pas abandonner mon cœur."~ */
  IF ~~ THEN REPLY #24994 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24995 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #21652 /* ~"Il dit que c'est la torture…" Elle fronce les sourcils. "Non, il veut dire 'le tourment', je crois. Quelque chose à propos de la peau et de l'esprit que j'arrive pas à comprendre." Elle secoue la tête. "Ça m'donne mal à la tête, ouais."~ */
  IF ~~ THEN REPLY #24996 /* ~"J'ai une autre question à lui poser…"~ */ GOTO 131
  IF ~~ THEN REPLY #24997 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #23928 /* ~"Ah, Shad, tu sais que nous nous faisions tous du souci pour toi, hein ? C'est trop bête que tu sois là." Elle le regarde avec une affection que tu ne lui as jamais vue. "Allez, laisse-nous sortir et profites-en pour filer. Le vieux Bosselé va prendre sa revanche sur les rats, j'crois."~ */
  IF ~~ THEN REPLY #23929 /* ~"T'as tout compris."~ */ EXTERN ~DSHAD~ 7
  IF ~~ THEN REPLY #23930 /* ~"S'il te plaît, Shad."~ */ EXTERN ~DSHAD~ 7
END

IF ~~ THEN BEGIN 161 // from:
  SAY #28622 /* ~Près de toi, Annah siffle. "Hssst ! Qu'est-ce que tu fais, à échanger d'belles paroles ? T'as perdu la tête ou quoi ?"~ */
  IF ~~ THEN REPLY #28623 /* ~"Annah, calme-toi et tais-toi… Je suis en train de parler à quelqu'un, d'accord ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 162
  IF ~~ THEN REPLY #28624 /* ~"Je ne faisais que la complimenter pour qu'elle me pardonne mon impolitesse, Annah, d'accord ?"~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 161.1
  SAY #28625 /* ~Annah crache. "Tu joues au dandy, hein, et t'es encore plus idiot d'le faire avec un fiélon ! Tu comptes t'attaquer au poulailler après ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 53
END

IF ~~ THEN BEGIN 163 // from:
  SAY #28626 /* ~"C'est une fiélonne, une succube, ouais. Elle te jaugera, et puis elle emportera ton âme dans les Plans Inférieurs, pour sûr."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 164 // from:
  SAY #28627 /* ~Annah se raidit, puis commence à marmonner. "Qui dit qu'elle viendrait avec nous ? On n'a pas besoin d'elle, alors c'est non."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 118
END

IF ~~ THEN BEGIN 165 // from:
  SAY #28628 /* ~Annah se raidit puis commence à marmonner. "Qui dit qu'elle viendrait avec nous ? On n'a pas besoin d'elle, alors c'est non."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 277
END

IF ~~ THEN BEGIN 166 // from:
  SAY #28629 /* ~"Tu f'rais mieux d'fermer ton râtelier, crâne, ou j'vais tellement t'secouer qu'il faudra aller ramasser tes dents sur l'aiguille - !"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 117
END

IF ~~ THEN BEGIN 167 // from:
  SAY #30829 /* ~Annah hausse les épaules, roulant des yeux. "Parle autant qu'tu veux, matois ; j'me fous d'ce qu'tu dis… tant qu'tu branles pas ton râtelier à mon sujet, c't'à-dire."~ */
  IF ~~ THEN REPLY #30836 /* ~Essaie d'attirer son attention.~ */ EXTERN ~DABLE~ 7
END

IF ~~ THEN BEGIN 168 // from:
  SAY #30830 /* ~"Ouais, ça fait mal rien que d'le r'garder."~ */
  IF ~~ THEN REPLY #30837 /* ~"Très drôle, Annah. J'ai quelques questions, monsieur…"~ */ EXTERN ~DABLE~ 16
  IF ~~ THEN REPLY #30838 /* ~"Étrange commentaire pour quelqu'un qui semble doté d'une queue de rat géante lui poussant au derrière…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #30831 /* ~Annah montre les dents, queue battante. "Ah ouais, espèce de cagueur à tête dure ? Si tu *veux*, moi et ma queue on peut ficher l'camp pour de bon ! *Ça*, ça t'ferait plaisir, hein ?"~ */
  IF ~~ THEN REPLY #30839 /* ~"Non, Annah, reste. Je plaisantais … Œil pour œil."~ */ GOTO 170
  IF ~~ THEN REPLY #30840 /* ~"Annah, non. Ça me ferait de la peine de te voir partir…Excuse-moi pour ce que j'ai dit. Je t'en prie, reste avec moi."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 171
  IF ~~ THEN REPLY #30841 /* ~"Comme tu voudras, Annah."~ */ GOTO 172
END

IF ~~ THEN BEGIN 170 // from: 169.0 171.0 172.0 173.0
  SAY #30832 /* ~"Hmph." Elle te sourit d'un air narquois, mais ne fait pas mine de partir.~ */
  IF ~~ THEN REPLY #30842 /* ~"Merci, Annah. Et toi, sire… J'ai des questions."~ */ EXTERN ~DABLE~ 16
END

IF ~~ THEN BEGIN 171 // from: 169.1
  SAY #30833 /* ~Annah reste silencieuse pendant un moment. Elle ouvre la bouche, puis se ravise…~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 172 // from: 169.2
  SAY #30834 /* ~Annah te fixe pendant un instant, choquée, avant de devenir livide de rage. "*TRÈS BIEN !*" crie-t-elle. "Au nom des Puissances, *pourquoi* est-ce que j'ai passé tout c'temps à marcher à tes côtés !" Elle commence à taper du pied, te maudissant, ainsi que tes ancêtres, et tous ceux qui ont croisé ton chemin.~ */
  IF ~~ THEN REPLY #30843 /* ~"Annah, attends… Excuse-moi, je t'en prie, reviens."~ */ GOTO 170
  IF ~~ THEN REPLY #30844 /* ~Attrape-la alors qu'elle s'en va.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 173
  IF ~~ THEN REPLY #30845 /* ~Laisse-la partir.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #30835 /* ~Alors que tu la prends par le bras, elle échappe à ta prise et crache : "Ne m'regarde même *plus*, sale con !" Elle saisit ses poignards. "Et si tu tiens à tes doigts, me *touche* pas, où ils finiront dans les entrailles de Sigil, j'te l'jure !"~ */
  IF ~~ THEN REPLY #30846 /* ~"Annah, attends… Je voulais juste m'excuser. Je ne voulais pas te blesser. Je t'en prie, ne t'en va pas."~ */ GOTO 170
  IF ~~ THEN REPLY #30847 /* ~"Essaye un peu de mettre ta menace à exécution, espèce de racaille vulgaire de tieffeline."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30848 /* ~"Adieu, Annah."~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #32668 /* ~Alors que tu t'agenouilles devant la femme, Annah éclate de rage. "C'est *pas* possible ! T'as qu'a saigner cette espèce de traînée guindée, abruti ! Laisse… j'vais l'faire pour toi…"~ */
  IF ~~ THEN REPLY #32689 /* ~"Annah, attends !"~ */ DO ~Attack("Sarhava")
~ EXIT
  IF ~~ THEN REPLY #32690 /* ~Mets-toi entre Annah et la femme.~ */ GOTO 175
  IF ~~ THEN REPLY #32691 /* ~Aide Annah à attaquer la femme.~ */ DO ~Attack("Sarhava")
~ EXTERN ~DSARHAVA~ 15
  IF ~~ THEN REPLY #32692 /* ~Laisse faire Annah.~ */ DO ~Attack("Sarhava")
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY #32669 /* ~Tu te prépares à défendre la femme ; Annah te regarde fixement, choquée. "Qu'est-ce… que… t'es *taré* ?"~ */
  IF ~~ THEN REPLY #32693 /* ~"On n'est pas à la Ruche ici, Annah… On ne peut pas se battre quand ça nous chante. Si on ne fait pas gaffe, on va finir par attirer la garde."~ */ GOTO 176
  IF ~~ THEN REPLY #32694 /* ~"Allez, Annah. Allons-nous-en."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #32670 /* ~Annah fait la grimace et crache sur le pied de la femme. Bizarrement, la femme ne fait pas signe d'attaquer. "Dégoûtant, c'est vraiment… dégoûtant." Elle finit par grommeler pour elle-même ; il te semble reconnaître des mots comme "crevé" et "guiboles"."~ */
  IF ~~ THEN REPLY #32695 /* ~"Madame… On ne veut pas d'ennuis. Arrêtons ça avant que j'appelle moi-même les gardes."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32696 /* ~"Allez, Annah. Allons-nous-en."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 177 // from:
  SAY #32671 /* ~Annah fixe Grâce et Sarhava d'un regard furieux.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 178 // from:
  SAY #32672 /* ~Annah rougit, grimace, et des lames surgissent à ses poings.~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DSARHAVA~ 30
END

IF ~~ THEN BEGIN 179 // from:
  SAY #32673 /* ~"T'as la langue bien pendue, punaise." Annah crache et aiguise ses lames l'une contre l'autre. "Je me demande de quoi tes bijoux et ton déguisement de catin auront l'air sur toi quand tu s'ras crevée dans la rue !"~ */
  IF ~~ THEN REPLY #32674 /* ~"Annah, attends !"~ */ EXTERN ~DSARHAVA~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #33296 /* ~"Ferme ton bec, espèce de crapaud dégoûtant ! Est-ce que je t'ai pas déjà dit de plus jamais m'parler ? La Dame seule sait comment t'as pu trouver mon nom !"~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 53
END

IF ~~ THEN BEGIN 181 // from:
  SAY #33297 /* ~"Dis pas que j't'ai pas prévenu, mort !" Les lames d'Annah se dirigent vers les mains tendues de l'homme…~ */
  IF ~~ THEN REPLY #33298 /* ~Attaque l'homme toi-même.~ */ EXIT
  IF ~~ THEN REPLY #33299 /* ~Laisse faire Annah.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #33435 /* ~"Ferme ton bec, espèce de crapaud dégoûtant ! Est-ce que je t'ai pas déjà dit de plus jamais m'parler ? La Dame seule sait comment t'as pu trouver mon nom !"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 51
END

IF ~~ THEN BEGIN 183 // from:
  SAY #33437 /* ~"T'iras pas dire que j't'avais pas prévenu, mort !" Les lames d'Annah fouettent les mains tendues de l'homme…~ */
  IF ~~ THEN REPLY #33438 /* ~Attaque l'homme toi-même.~ */ EXIT
  IF ~~ THEN REPLY #33439 /* ~Laisse faire Annah.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 218 227 even though they appear after this state */
~  GlobalGT("Annah","GLOBAL",0)
!Global("Annah_Talked_Grace","GLOBAL",5)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 184 // from:
  SAY #33981 /* ~Annah te regarde fixement alors que tu approches, sa queue battant d'avant en arrière. "Alors, heu… T'as encore besoin d'mon aide ?"~ [ANA454A] */
  IF ~~ THEN REPLY #33982 /* ~"Je voulais qu'on fasse le voyage ensemble de nouveau."~ */ GOTO 185
  IF ~~ THEN REPLY #33983 /* ~"Rien, pardon de t'avoir dérangée."~ */ EXIT
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY #33984 /* ~"Oh, t'en es *SÛR* ? Tu m'as abandonnée ici une fois, et j'm'en fous. J'ai pas d'temps pour ces simagrées. Si t'en es pas certain cette fois-ci, tu f'rais mieux d'partir."~ */
  IF ~~ THEN REPLY #33985 /* ~"J'en suis certain. J'ai besoin de ton aide, Annah."~ */ GOTO 186
  IF ~~ THEN REPLY #33986 /* ~"Il vaut mieux que je parte, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #33987 /* ~"Tsss. Ça a pas l'moindre sens, mais j'te suivrai. T'as besoin d'toute l'aide que tu peux trouver, ouais."~ */
  IF ~~ THEN REPLY #33988 /* ~"Très bien, allons-y."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 451 460 218 227 even though they appear after this state */
~  InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #33989 /* ~"Ouais ? Qu'est-ce qu'tu veux ?"~ [ANA579B] */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67680 /* ~"Où est cet endroit où tu as trouvé mon corps ?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67681 /* ~"Où est cet endroit où tu as trouvé mon corps ?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67682 /* ~"Où est cet endroit où tu as trouvé mon corps ?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67683 /* ~"J'aurai une question à te poser sur la manière dont tu as trouvé mon corps…"~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67684 /* ~"Annah… ne t'ai-je pas rencontrée à la Ruche, avant que je ne trouve Pharod ?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67685 /* ~"Annah, aurais-tu trouvé quelque chose sur mon corps avant de le déposer à la Morgue  ?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67693 /* ~"Annah, j'ai trouvé Pharod mort à la cour des Vents Mauvais."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67694 /* ~"Annah, sais-tu comment Pharod est mort ?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67686 /* ~"Parle-moi un peu de Pharod."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67687 /* ~"Annah, quand Pharod a ramené le butin qu'il avait pris sur mon corps, il a disparu pendant un temps, puis il est revenu - pourtant il n'a jamais quitté la cour des Vents Mauvais. Sais-tu où il est allé ?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67690 /* ~"Annah, peux-tu m'enseigner l'art du vol ?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68261 /* ~"Annah, peux-tu m'enseigner l'art du vol ?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67688 /* ~"Je voulais que tu saches que, quand j'ai embrassé Ravel dans le labyrinthe, je…"~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67689 /* ~"Je voulais que tu saches que, quand j'ai embrassé Ravel dans le labyrinthe, je…"~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67695 /* ~"Dans le labyrinthe, Ravel disait que tu étais tourmentée… que voulait-elle dire ?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67051 /* ~"As-tu entendu parler d'une guenaude noire appelée Ravel Puits-de-Rébus ?"~ */ GOTO 316
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67052 /* ~"Sais-tu où je pourrais trouver un peu de Ravel ?"~ */ GOTO 319
  IF ~~ THEN REPLY #33990 /* ~"Rien, Annah. Je voulais juste savoir si je pouvais toujours compter sur toi."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #39003 /* ~"Arrrh, rien qu'un tas d'vermines à cerveau ! On f'rait mieux d'pas traîner ici… ils t'écrabouilleront la cervelle ! J'en ai vu une vingtaine tendre des embuscades à des ivrognes, saboter des maisons, et j'ai même entendu dire qu'en nombre, ils peuvent jeter des sorts. Alors à une centaine, j'préfère pas penser c'que ces canailles pourraient faire…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 189 // from:
  SAY #39004 /* ~"Arrrh, rien qu'un tas d'vermines à cerveau ! On f'rait mieux d'pas traîner ici… ils t'écrabouilleront la cervelle ! J'en ai vu une vingtaine tendre des embuscades à des ivrognes, saboter des maisons, et j'ai même entendu dire qu'en nombre, ils peuvent jeter des sorts. Alors à une centaine, j'préfère pas penser c'que ces canailles pourraient faire…"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 190 // from:
  SAY #39005 /* ~Annah te souffle à voix basse : "Arrrh, t'as réussi à t'attirer les foudres d'la vermine à cerveau, hein ? Alors écoute-moi bien : faut pas s'éterniser dans l'coin si on veut pas qu'ils nous écrabouillent tous. Ils sont malins en bandes, ils sont… J'les ai vus tendre des embuscades à des ivrognes, saboter des maisons, et il paraît que quand ils se réunissent, ils peuvent jeter des sorts. Alors là, j'ose même pas imaginer leur force !… Et t'as réussi à les envoyer caguer. Fais gaffe, hein ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 191 // from:
  SAY #39006 /* ~Annah te souffle à voix basse : "Arrrh, t'as réussi à t'attirer les foudres de la vermine à cerveau, hein ? Alors écoute-moi bien : faut pas s'éterniser dans le coin si on veut pas qu'ils nous écrabouillent tous. Ils sont malins en bandes, ils sont… Je les ai vus tendre des embuscades à des ivrognes, saboter des maisons, et il paraît que quand ils se réunissent, ils peuvent jeter des sorts. Alors là, j'ose même pas imaginer leur force !… Et t'as réussi à les envoyer caguer. Fais gaffe, hein ?"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 192 // from:
  SAY #39007 /* ~"J'sais pas à quoi joue c'te vermine à cerveau avec toi, mais s'ils t'offrent la paix, tu f'rais mieux d'accepter. Ils sont plus malins en bandes, sûr, et même si tu leur as fait du bobo, une bande de c'te taille, ils peuvent encore t'inscrire au livre des morts."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 193 // from:
  SAY #39008 /* ~"J'sais pas à quoi joue c'te vermine à cerveau avec toi, mais s'ils t'offrent la paix, tu f'rais mieux d'accepter. Ils sont plus malins en bandes, sûr, et même si tu leur as fait du mal, une bande de c'te taille peut encore t'inscrire au livre des morts."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 194 // from:
  SAY #39200 /* ~Annah marmonne quelque chose entre ses dents ; tu réussis à comprendre les mots "caguer" et "quel nase".~ */
  IF ~~ THEN EXTERN ~DVIVIAN~ 12
END

IF ~~ THEN BEGIN 195 // from:
  SAY #39585 /* ~"Hé, j'suis nulle pour raconter ces trucs-là." Elle se renfrogne et secoue les mains comme pour chasser cette idée. "Me d'mandez pas d'faire un truc aussi nase, d'accord ?"~ */
  IF ~~ THEN EXTERN ~DYVES~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #39586 /* ~Annah a l'air mal à l'aise, sa queue battant doucement d'avant en arrière. "Ben, j'connais une histoire…" Elle se met soudain en colère et fusille Yvonne du regard. "… mais y a des chances qu'elle te plaise pas, ouais, alors viens pas dire qu'c'est d'*ma* faute parc'que c'est toi qu'insistes !"~ */
  IF ~~ THEN REPLY #39764 /* ~"Vas-y, Annah…"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 197
  IF ~~ THEN REPLY #39765 /* ~"Attends… j'ai une histoire à partager avec toi, Yvonne."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39766 /* ~"Laisse tomber, Annah. J'ai une question, Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39767 /* ~"C'est pas grave, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #39587 /* ~Annah se renfrogne, puis s'adoucit enfin avec un soupir exaspéré. "J'ai entendu une histoire quand j'étais môme."

"C'est un bige qui rentre chez lui tard une nuit, autour d'antipic, et y a une vieille bique toute édentée dans la rue noire et vide. 'Où tu vas ?' qu'elle lui d'mande."~ */
  IF ~~ THEN REPLY #39768 /* ~"Vas-y, Annah…"~ */ GOTO 198
  IF ~~ THEN REPLY #39769 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39770 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #39588 /* ~"'Chez moi, r'trouver ma femme et ma guitoune' qu'il lui répond.

'À côté des Scories ?' qu'elle lui d'mande.

'Ouais' qu'il lui répond."~ */
  IF ~~ THEN REPLY #39771 /* ~"Vas-y, Annah…"~ */ GOTO 199
  IF ~~ THEN REPLY #39772 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ GOTO 4
  IF ~~ THEN REPLY #39773 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #39589 /* ~"Alors elle lui d'mande d'lui rendre un service… d'apporter une boîte à elle à la Fosse des Morts et de la donner à la femme qu'il y trouvera. Faut dire que l'bige est une vraie andouille, trop bon pour dire non malgré l'fait qu'il est sûr qu'la vieille ratatinée cache quelque chose de *louche*, alors il accepte. 'Mais comment s'appelle la femme ?' qu'il lui demande. 'Où est-ce qu'elle habite ? Où est-ce que je peux la trouver si elle est pas à la Fosse des Morts ?'"~ */
  IF ~~ THEN REPLY #39774 /* ~"Vas-y, Annah…"~ */ GOTO 200
  IF ~~ THEN REPLY #39775 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39776 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #39590 /* ~"La femme lui donne la boîte - un truc en bois, enveloppé dans un bout de tissu coloré - et lui dit d'y aller et que l'autre y sera. Et puis, elle le met en garde : 'Et quoi qu'il arrive, n'ouvre pas la boîte !'"~ */
  IF ~~ THEN REPLY #39777 /* ~"Vas-y, Annah…"~ */ GOTO 201
  IF ~~ THEN REPLY #39778 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39779 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #39591 /* ~"Alors il l'emporte chez lui et il la cache dans les chevrons, en se disant qu'il l'apportera à la Fosse des Morts quand il fera jour. Mais sa femme qui l'voit cacher la boîte est prise d'une crise de jalousie et croit qu'c'est un cadeau pour une maîtresse ; elle l'ouvre dès qu'il a l'dos tourné."~ */
  IF ~~ THEN REPLY #39780 /* ~"Vas-y, Annah…"~ */ GOTO 202
  IF ~~ THEN REPLY #39781 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39782 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #39592 /* ~"En fait, la boîte était pleine d'yeux arrachés et de membres masculins amputés avec les poils encore dessus. La femme a crié si fort qu'son bige a accouru… se souvenant de c'que la vieille ratatinée lui avait dit, il a pris peur et remis la boîte dans son emballage."~ */
  IF ~~ THEN REPLY #39783 /* ~"Vas-y, Annah…"~ */ GOTO 203
  IF ~~ THEN REPLY #39784 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39785 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #39593 /* ~"Il est tout de suite allé à la Fosse des Morts et, effectivement, y avait une autre vieille sorcière qui l'attendait là-bas. Il lui a donné la boîte et elle lui a dit : 'Cette boîte a été ouverte et quelqu'un a regardé à l'intérieur.'"~ */
  IF ~~ THEN REPLY #39786 /* ~"Vas-y, Annah…"~ */ GOTO 204
  IF ~~ THEN REPLY #39787 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39788 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #39594 /* ~"Le pauvre bige a essayé de nier, mais elle le r'gardait d'une façon qui f'sait vraiment peur. 'T'as fait quelque chose de terrible !' qu'elle lui dit. Après ça, il est vite rentré dans sa guitoune."~ */
  IF ~~ THEN REPLY #39789 /* ~"Vas-y, Annah…"~ */ GOTO 205
  IF ~~ THEN REPLY #39790 /* ~"Attends… j'ai une question à poser à Yvonne…"~ */ EXIT
  IF ~~ THEN REPLY #39791 /* ~"On l'écoutera une autre fois, Annah. Au revoir, Yvonne."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #39595 /* ~"En rentrant, il s'est senti malade et il s'est couché. Sa femme était toute pleine de r'grets d'avoir ouvert la boîte, et tout, mais c'était trop tard… le lendemain, il est mort d'une maladie pourrissante, et c'qui est d'abord parti, c'est ses yeux et sa queue."

Annah fait un signe de tête résolu, pour signaler la fin de son histoire.~ */
  IF ~~ THEN EXTERN ~DYVES~ 64
END

IF ~~ THEN BEGIN 206 // from:
  SAY #41137 /* ~"Pfff." Annah ricane en roulant les yeux. "Abruti."~ */
  IF ~~ THEN REPLY #41138 /* ~Ignore la remarque d'Annah.~ */ EXTERN ~DKESAI~ 35
  IF ~~ THEN REPLY #41139 /* ~"Ignore-la, Kesai."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 207
  IF ~~ THEN REPLY #41140 /* ~"Annah, s'il te plaît… c'est qu'un compliment."~ */ GOTO 207
  IF ~~ THEN REPLY #41141 /* ~"Ne te vexe pas, Annah… tu es tout aussi adorable."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 208
END

IF ~~ THEN BEGIN 207 // from: 206.1 206.2
  SAY #41142 /* ~Annah te fixe froidement mais ne dit rien.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 208 // from: 206.3
  SAY #41143 /* ~"Et qu'est-ce que *ça* veut dire, ça, hein, abruti d'cagueur ?! Tu m'croyais quand même pas *jalouse* de c'te poule caquetante ? Espèce de crétin !" Annah crache et détourne son regard.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 209 // from:
  SAY #43906 /* ~"Pouah !" Annah se moque de Morte. "Arrête de t'extasier, espèce de crâne dépravé."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 469
END

IF ~~ THEN BEGIN 210 // from:
  SAY #43907 /* ~"Approche-toi encore un chouïa, crâne, pour voir si je peux te casser les dents en mille morceaux !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 470
END

IF ~~ THEN BEGIN 211 // from:
  SAY #44246 /* ~"Eh toi, *va caguer*…" Annah grogne. "Toi, là ! On en a marre d'attendre, alors tu f'rais mieux de…"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 18
END

IF ~~ THEN BEGIN 212 // from:
  SAY #44250 /* ~Annah semble surprise. "Hein ?" Sa surprise fait rapidement place à un regard sévère. "Qu'est-ce que tu *veux dire* ?"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 19
END

IF ~~ THEN BEGIN 213 // from:
  SAY #44252 /* ~Annah semble confuse. "Non. Non, j'suis pas une Sensat…"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 21
END

IF ~~ THEN BEGIN 214 // from:
  SAY #44253 /* ~"Non, j'aime ce que je porte. Qu'il fasse chaud ou froid, c'est pas un problème, c'est mon sang, je crois. Et attention à ce que tu dis sur les tieffelins, OK ?"~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 22
END

IF ~~ THEN BEGIN 215 // from:
  SAY #45721 /* ~"J't'ouvrirais bien les entrailles si c'était possible, sale crâne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 486
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46094 /* ~"Mais par les neuf strates de Baator, qu'est-ce que tu racontes, espèce de crétin ? Se faire garrotter, ça veut dire se faire choper ou épingler par les Têtes-de-Bois. Tu comprends vraiment que dalle, hein ?"~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 1
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46095 /* ~Annah secoue la tête en ricanant. "Continue de branler ton râtelier, pauvre mec. J'aimerais bien voir combien de temps tu tiendrais au cœur de la Ruche." Elle se tourne vers toi. "Allez viens, filons. Pas la peine de perdre notre temps avec ce gamin qui se prend pour une terreur."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 3
END

IF WEIGHT #1 /* Triggers after states #: 227 even though they appear after this state */
~  Global("0110_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #47311 /* ~"Quoi encore ?" Lorsque tu te retournes, tu te trouves face à face avec une superbe rousse que tu n'as même pas entendue entrer. Une série de plaques emboîtées qui paraissent des morceaux de l'épiderme d'une créature recouvre son bras droit, et une épaulière cornue protège le gauche. Curieusement, elle possède une queue… qu'elle remue en t'observant.~ [ANA229B] */
  IF ~  Global("Know_Annah","GLOBAL",0)
~ THEN REPLY #47320 /* ~"Alors, c'est toi qui vas me montrer où tu as retrouvé mon corps ?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #47321 /* ~"C'est toi, Annah ? Je t'ai rencontrée dans la Ruche, devant la Morgue - c'est bien ça ?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0 218.1
  SAY #47312 /* ~La jeune femme se tourne vers Pharod sans t'accorder la moindre attention. "Qu'est-ce que c'est que cette histoire ? Il est hors de question que j'serve de guide à ce chien lépreux. Demande-le à un autre de tes larbins."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 81
END

IF ~~ THEN BEGIN 220 // from:
  SAY #47313 /* ~"Hein ? Qu'est-ce qu'tu racontes ?" demande-t-elle en t'inspectant de plus près. "C'est pas un mort."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 82
END

IF ~~ THEN BEGIN 221 // from:
  SAY #47314 /* ~"Et alors ?" fait-elle en haussant les épaules. "Il devrait pas faire le mort dans la Ruche si j'suis dans les parages, ou il s'réveillera à coup sûr dans les bras des Hommes-Poussière, ça oui."~ */
  IF ~~ THEN REPLY #47322 /* ~"Peut-être que tu aurais dû vérifier que j'étais bien mort avant de me balancer là-bas."~ */ GOTO 222
  IF ~~ THEN REPLY #47323 /* ~"Assez. Où as-tu trouvé ma dépouille ?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #47315 /* ~"Ben voyons ! Et peut-être que si t'avais fait plus attention, je t'aurais pas retrouvé étendu et immobile comme un mort, hein ?"~ */
  IF ~~ THEN REPLY #47324 /* ~"Peut-être que je devrais montrer à la sale voleuse de corps que tu es ce que ça fait de se retrouver à moitié mort au fin fond d'une allée sombre…"~ */ GOTO 223
  IF ~~ THEN REPLY #47325 /* ~"Assez. Où as-tu trouvé ma dépouille ?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #47316 /* ~"J'ai pas peur de toi !" Annah baisse brusquement les bras et, quand elle les relève, ses mains s'ornent de dagues-coup-de-poing. "T'as intérêt à te calmer, ou je te les plante au fond des orbites !"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 224 // from:
  SAY #47317 /* ~Annah adresse un regard méprisant à Pharod puis se tourne vers toi. "Allez, viens. Et suis ma cadence, tu veux ? J'ai pas de temps à perdre avec toi."~ */
  IF ~~ THEN REPLY #47326 /* ~"En fait, je n'ai pas fini d'explorer le Village Enseveli. Quand j'en aurai fini ici, on ira voir où je suis mort."~ */ GOTO 225
  IF ~~ THEN REPLY #47327 /* ~"Très bien. Allons-y sans attendre."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
StartCutSceneMode()
StartCutSceneEx("0110cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47318 /* ~"Ah ouais ? Dans ce cas, t'as qu'à retrouver ta tombe tout seul, espèce de crétin. Parce que moi, je t'attends p…"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 84
END

IF ~~ THEN BEGIN 226 // from:
  SAY #47319 /* ~Annah crache par terre. "La peste vous emporte, tous les deux…"~ */
  IF ~~ THEN REPLY #47328 /* ~"C'est à ça que je pensais. Allons-y."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Annah_AR0400_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #47329 /* ~Annah désigne la porte devant toi. "C'est par là que tu veux aller."~ */
  IF ~~ THEN REPLY #47330 /* ~"D'accord, allons-y."~ */ DO ~SetGlobal("Annah_AR0400_Cut_Scene","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #47849 /* ~"Oui… Ça a été barbouillé avec les peintures azimutées des Chiens Affamés - c'est une vraie porte tant qu'on ne la regarde pas, sinon elle se transforme en peinture."~ */
  IF ~~ THEN REPLY #47850 /* ~"Comment ils ont fait ça ?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #47851 /* ~Annah hausse les épaules. "Il se passe des choses étranges dans les plans." Elle fronce soudain les sourcils. "Tu dois te d'mander comment t'as fait pour sortir du livre des morts toi aussi, alors que j'étais CERTAINE que t'étais mort."~ */
  IF ~~ THEN REPLY #47852 /* ~"Alors, cette porte… Il suffit que je ne la regarde pas pour qu'elle s'ouvre ?"~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #47853 /* ~Annah jette un coup d'œil vers la porte, puis hoche la tête. "Ça paraît louche, mais c'est vrai."~ */
  IF ~~ THEN REPLY #47854 /* ~"Bon, très bien… Je vais faire ce que tu dis. Toi, tu…"~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #47855 /* ~"Attends !" Annah t'arrête avant que tu n'atteignes la porte. "C'est le seul chemin que je connaisse pour aller là où j'ai trouvé ton cadavre, mais c'est pas le plus sûr, d'accord ? T'es prêt ? J'suis pas là pour te surveiller, malgré c'que dit Bègue-béquille."~ */
  IF ~~ THEN REPLY #47856 /* ~"Qu'y a-t-il donc de si dangereux derrière cette porte ?"~ */ GOTO 232
  IF ~~ THEN REPLY #47857 /* ~"Ne t'en fais pas pour moi, contente-toi de rester derrière moi. Maintenant, laisse-moi ouvrir cette porte."~ */ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47858 /* ~"Je vais aller chercher d'autres armes et me reposer un peu avant de continuer."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #47859 /* ~"Des Chaoteux" soupire Annah. "Ils sont complètement azimutés. Ils hurlent à la mort nuit et jour, prêts à te peindre en couleurs et à te faire exploser la cervelle avec un pot de chambre. Des furieux, voilà ce qu'ils sont."~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47860 /* ~"Ne t'inquiète pas, je suis membre de leur faction."~ */ GOTO 233
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47861 /* ~"S'ils sont si furieux, comment est-ce que tu as fait pour t'en sortir ?"~ */ GOTO 234
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47862 /* ~"Ne t'en fais pas pour moi, contente-toi de rester derrière moi. Maintenant, laisse-moi ouvrir cette porte."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47863 /* ~"Hmmm. Allons d'abord chercher du matériel ; on reviendra plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #47864 /* ~"Oh, alors comme ça, tu crois que tous les Chaoteux sont gentils entre eux ?" Elle rit d'un air moqueur. "Alors, t'ES aussi azimuté qu'eux."~ */
  IF ~~ THEN REPLY #47865 /* ~"S'ils sont si furieux, comment est-ce que tu as fait pour t'en sortir ?"~ */ GOTO 234
  IF ~~ THEN REPLY #47866 /* ~"Ne t'en fais pas pour moi, contente-toi de rester derrière moi. Maintenant, laisse-moi ouvrir cette porte."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47867 /* ~"Hmmm. Allons d'abord chercher du matériel ; on reviendra plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.1 233.0
  SAY #47868 /* ~"J'ai rampé sans faire de bruit. Ils peuvent pas te peindre ou te tuer s'ils te VOIENT pas." Elle te regarde des pieds à la tête et fronce les sourcils. "Je crois que j'pourrai pas le refaire avec toi. T'as l'air trop maladroit pour ça."~ */
  IF ~~ THEN REPLY #47869 /* ~"Contente-toi de rester derrière moi. Maintenant, laisse-moi ouvrir la porte…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47870 /* ~"Hmmm. Allons d'abord chercher du matériel ; on reviendra plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50111 /* ~"Eh…" Annah te regarde étrangement. "C'est un dabus."~ */
  IF ~~ THEN REPLY #50112 /* ~"Qu'est-ce qu'un 'dabus' ?"~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #50113 /* ~Annah parle à voix basse. "Les dabus sont d'*Sa* race - ils s'occupent d'la cité, ils l'entretiennent, détruisent c'qui doit l'être pour l'reconstruire entièrement. Ils parlent par symboles - de véritables puzzles qu'il faut assembler pour comprendre c'qu'ils racontent." Annah semble contrariée. "Ça prend vraiment la tête."~ */
  IF ~~ THEN REPLY #50114 /* ~"'Sa race ? La race de qui ?"~ */ GOTO 237
  IF ~~ THEN REPLY #50302 /* ~"Je vois."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #50115 /* ~"La Dame des Douleurs." Annah dessine un demi-cercle dans les airs, devant elle. "Ils travaillent pour elle et elle les protège. Faut pas trop fourrer le nez dans leurs affaires ou tu risques d'attirer son attention."~ */
  IF ~~ THEN REPLY #50116 /* ~"Peux-tu me parler de la Dame des Douleurs ?"~ */ GOTO 238
  IF ~~ THEN REPLY #50301 /* ~"Je vois."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #50117 /* ~"Hsssst !" Annah passe un doigt sur sa gorge. "Ferme ton râtelier. Elle a des oreilles *partout,* alors prononce pas son nom n'importe où, ok ?"~ */
  IF ~~ THEN REPLY #50118 /* ~"Oh !"~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50300 /* ~"Très bien, très bien."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50153 /* ~"Il a juste dit qu'il était un dabus." Elle hausse les épaules. "Ils n'ont pas de nom."~ */
  IF ~~ THEN REPLY #50154 /* ~"Peux-tu lui poser une autre question ?"~ */ GOTO 240
  IF ~~ THEN REPLY #50235 /* ~"C'est tout ce que je voulais savoir. Sortons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 240 // from: 239.0 243.0 244.1 245.1 247.1 248.0 248.2
  SAY #50155 /* ~Annah acquiesce. Le dabus continue de vous regarder, les bras croisés.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50156 /* ~"Demande-lui qui il est."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50157 /* ~"Demande-lui qui il est."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50213 /* ~"Demande-lui qui il est."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50214 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50215 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50216 /* ~"Demande-lui ce qu'il fait."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50217 /* ~"Demande-lui de nous parler de la Dame des Douleurs."~ */ GOTO 244
  IF ~~ THEN REPLY #50229 /* ~"Demande-lui de nous parler de Fell."~ */ GOTO 247
  IF ~~ THEN REPLY #50234 /* ~"Aucune importance. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50161 /* ~"Il a juste dit qu'il était un dabus." Elle hausse les épaules. "Ils n'ont pas de nom."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 490
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50163 /* ~"Bon, et ben çui-là a pas voulu donner son nom, hein l'crâne ?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 491
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50185 /* ~Elle hausse les épaules. "Il dit qu'il fait son travail. T'sais - s'occuper d'la ville et tout ça."~ */
  IF ~~ THEN REPLY #50186 /* ~"Peux-tu lui poser une autre question ?"~ */ GOTO 240
  IF ~~ THEN REPLY #50187 /* ~"C'est tout ce que je voulais savoir. Sortons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 244 // from: 240.6
  SAY #50218 /* ~Annah secoue la tête. "Non, j'veux pas me r'trouver avec toi dans l'ombre de la Dame, alors pas question. Tu n'feras qu'attirer son attention si tu causes trop d'elle aux gens d'sa race."~ */
  IF ~~ THEN REPLY #50219 /* ~"Écoute, parle-lui juste de la Dame, ok ?"~ */ GOTO 245
  IF ~~ THEN REPLY #50227 /* ~"Très bien. Peux-tu leur poser une autre question pour moi ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50228 /* ~"Eh bien, oublie ça alors. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 245 // from: 244.0 247.0
  SAY #50220 /* ~Annah secoue la tête. "Non, je refuse."~ */
  IF ~~ THEN REPLY #50221 /* ~"Écoute, *fais-le*. Je t'avertis."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 246
  IF ~~ THEN REPLY #50225 /* ~"Très bien. Peux-tu leur poser une autre question pour moi ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50226 /* ~"Eh bien, oublie ça alors. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #50222 /* ~Annah croise les bras, et sa queue se met à se balancer.~ */
  IF ~~ THEN REPLY #50223 /* ~"Laisse-moi essayer alors…"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50224 /* ~"Eh bien, oublie ça alors. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 247 // from: 240.7
  SAY #50230 /* ~"Non, j'lui parlerai pas d'Fell. Ça porte malheur et c'est bon pour personne de parler d'ce genre de choses."~ */
  IF ~~ THEN REPLY #50231 /* ~"Écoute, contente-toi de lui poser cette foutue question, ok ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 245
  IF ~~ THEN REPLY #50232 /* ~"Peux-tu lui poser une autre question pour moi ?"~ */ GOTO 240
  IF ~~ THEN REPLY #50233 /* ~"Eh bien, oublie ça alors. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50275 /* ~Elle hésite un moment. "Oui… Je peux."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50276 /* ~"Le feras-tu ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50277 /* ~"Le feras-tu ?"~ */ GOTO 249
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50281 /* ~"Alors fais-le."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50282 /* ~"Alors fais-le."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 249
  IF ~~ THEN REPLY #50283 /* ~"Aucune importance. Partons d'ici."~ */ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.3
  SAY #50278 /* ~Annah secoue la tête. " Non, j'veux pas me r'trouver avec toi dans l'ombre d'la Dame, alors pas question.. Traînons pas ici, ok ? Y'a rien à gagner à parler à des êtres de sa race, à part attirer son attention ."~ */
  IF ~~ THEN REPLY #50279 /* ~"Je vois."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50280 /* ~"Aucune importance. Partons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50702 /* ~"Tu as perdu la *boule*, pauvre bougre ? J'en appelle à toutes les Puissances, tu ferais mieux de t'excuser sinon je te jure de t'envoyer en enfer pour de *bon*, et je tiendrai parole !"~ */
  IF ~~ THEN REPLY #50703 /* ~"Je suis sérieux. Tu l'achètes, Vrischika ?"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
SetGlobal("Sell_Annah","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #50704 /* ~"Laisse tomber. J'avais une autre question, Vrischika…"~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50705 /* ~"Tu as raison… C'était une blague de très mauvais goût, Annah. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #52530 /* ~Annah ne répond pas - la présence de Ravel semble l'avoir tout simplement réduite au silence. Sa queue a cessé de battre l'air et ses yeux ont perdu leur éclat coléreux.~ */
  IF ~~ THEN REPLY #52531 /* ~"Assez, Ravel. Quelles sont tes autres questions ?"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 252 // from:
  SAY #52533 /* ~Annah semble paralysée, les yeux grand ouverts tandis que Ravel tourne son regard strié de veines noires vers elle. Tu peux la voir trembler, tandis que son cœur bat la chamade.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 39
END

IF ~~ THEN BEGIN 253 // from:
  SAY #52534 /* ~"Ouais, la vie l'a p'être avalé, mais il est pas r'sorti d'*ce* côté, alors…"~ */
  IF ~~ THEN REPLY #52535 /* ~"Assez - écoute, Ravel, tu m'as pris ma mortalité et ça a causé plus de mal que de bien. Je veux la récupérer - tu l'as conservée trop longtemps à mon goût."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 254 // from:
  SAY #52536 /* ~"Tu *l'aimais* !" Annah brise son silence. Elle paraît stupéfiée. "Tu *l'aimais*, c'est vrai !"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 129
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52537 /* ~Annah semble paralysée, les yeux grand ouverts tandis que Ravel tourne son regard strié de veines noires vers elle. Tu peux la voir trembler, tandis que son cœur bat la chamade.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 91
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52639 /* ~"J'sais pas." Annah regarde le visage d'un air incrédule et ses mains tapotent nerveusement ses dagues. "Mais j'suis d'avis d'ficher l'camp avant d'savoir, d'accord ?"~ */
  IF ~~ THEN REPLY #52773 /* ~"Pas encore. Il y a quelque chose…"~ */ EXTERN ~DPREGAL~ 1
END

IF ~~ THEN BEGIN 257 // from:
  SAY #52640 /* ~"J'crois qu'y veut parler du dabus. Ils sont tout l'temps en train d'modifier et d'réparer des trucs."~ */
  IF ~~ THEN REPLY #52772 /* ~"Je vois."~ */ EXTERN ~DPREGAL~ 9
END

IF ~~ THEN BEGIN 258 // from:
  SAY #52641 /* ~"Euh, ça doit être en 'route'."~ */
  IF ~~ THEN REPLY #52768 /* ~"De quoi parles-tu ?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #52642 /* ~"J'crois qu'elle est enceinte."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #52769 /* ~"Oh !"~ */ EXTERN ~DPREGAL~ 10
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52770 /* ~"Oh !"~ */ EXTERN ~DMORTE~ 510
END

IF ~~ THEN BEGIN 260 // from:
  SAY #52988 /* ~Annah te regarde, terrifiée. Elle semble vouloir s'avancer, t'aider, mais elle est paralysée. "T'es… Ça va… ?"~ */
  IF ~~ THEN REPLY #52989 /* ~"Oui… oui… j'ai besoin de quelques instants…"~ */ GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #52990 /* ~Annah reste silencieuse et te regarde fixement, hypnotisée. Ton sang coule sur le sol et chaque larme forme un cercle cramoisi en frappant le dallage du sensorium. "Qu'est-ce que t'as vu… Qu'est-ce que t'as vu dans cette pierre diabolique ?"~ */
  IF ~~ THEN REPLY #52991 /* ~"Le désir…"~ */ GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #52992 /* ~Annah se renfrogne, troublée, puis présente ses dagues à la pierre sensorielle, comme si elle pensait la briser. "Ouais ? J'veux *casser* cette pierre, ouais, j'vais t'la détruire !"~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52993 /* ~"Non… non, j'ai besoin d'un instant, Annah. Ça va aller…"~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52996 /* ~"Non… non, j'ai besoin d'un instant, Annah. Ça va aller…"~ */ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 263 // from:
  SAY #53933 /* ~"Pap ! Qu'est-ce que tu fous ici ?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 7
END

IF ~~ THEN BEGIN 264 // from:
  SAY #53974 /* ~Annah regarde le pilier d'un air énervé, les yeux plissés, les poings serrés et la queue droite. La fureur et l'angoisse se mêlent sur son visage tremblant.~ */
  IF ~~ THEN REPLY #53975 /* ~"Annah… est-ce que ça va ?"~ */ GOTO 265
  IF ~~ THEN REPLY #53976 /* ~Vérité : "Je souhaiterais qu'on puisse l'aider, Annah. C'est un destin assez tragique."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pillar_1","GLOBALGood",1)
~ GOTO 265
  IF ~~ THEN REPLY #53977 /* ~Vérité : "C'est triste, Annah, mais il a mérité son destin. Essaie de ne pas trop y penser."~ */ GOTO 265
  IF ~~ THEN REPLY #53978 /* ~Vérité : "Je suis content que cet abruti soit là-dedans, et 'père' ou pas, tu devrais aussi l'être, Annah."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_1","GLOBALGood",-1)
~ GOTO 265
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53979 /* ~Ne dis rien.~ */ EXTERN ~DGRACE~ 171
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #53980 /* ~Ne dis rien.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1 264.2 264.3
  SAY #53982 /* ~Annah sourit d'un air narquois, crache et se détourne de la pile de têtes pourrissantes. Elle hausse les épaules, mais ne te regarde pas. "Pas grave."~ */
  IF ~~ THEN REPLY #54056 /* ~"Tu aimais Pharod, Annah ?"~ */ GOTO 266
  IF ~~ THEN REPLY #54057 /* ~Ne dis rien.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 266 // from: 265.0 268.0
  SAY #54040 /* ~Annah se retourne, le regard embrasé. "C'était mon *Pap*." Elle montre les dents. "Je le *haïssais*. Il voyait en moi qu'un moyen d'récupérer plus de corps, plus de jonc pour sa voûte. 'Chère Annah', 'tendre Annah, t'es la chose la plus précieuse d'ma voûte', qu'il mentait. Et il mentait encore. Et il était faible d'esprit et d'corps. Et il puait l'cadavre ; c'était comme un vautour qui pique sur un cadavre."~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #54047 /* ~La voix d'Annah baisse, mais le feu de ses yeux brille plus ardemment. "Et il était l'seul à m'montrer un peu d'gentillesse. C'est c'que tu *voulais* entendre, hein, c'est ça ? T'es *content* maint'nant, hein ?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 268 // from:
  SAY #54050 /* ~Annah sourit avec dédain, crache et se détourne de la pile de têtes pourries. Elle hausse les épaules, mais ne veut regarder ni Grâce, ni toi. "Pas grave."~ */
  IF ~~ THEN REPLY #54058 /* ~"Tu aimais Pharod, Annah ?"~ */ GOTO 266
  IF ~~ THEN REPLY #54059 /* ~Ne dis rien.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 269 // from:
  SAY #54051 /* ~"Tu veux dire des *mensonges* !" siffle Annah.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 517
END

IF ~~ THEN BEGIN 270 // from:
  SAY #54052 /* ~"Qu'est-ce que t'es, un abruti ?! C'est les boîtes grises des bougres dont les mensonges ont envoyé un pauvre bige à sa mort. Il peut répondre à presque tout - mais faut payer *cher* pour qu'il réponde. Pose pas des questions juste comme ça !"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 271 // from:
  SAY #54062 /* ~"Il peut pas *m'avoir*, pas vrai ?! J'crois pas cagueur ! Qu'est-ce que tu crois, à faire tout c'boucan ?" Elle s'arrête soudain, et plisse les yeux en te regardant. "Par l'ombre d'la Dame, tu f'rais bien d'pas être sérieux… si tu l'es, alors crois-moi, j'te donnerai moi-même à bouffer à c'machin…"~ */
  IF ~~ THEN REPLY #54063 /* ~Vérité : "Je suis sérieux. Rentre là-dedans, Annah, ou je t'y pousserai moi-même."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_4","GLOBALGood",-1)
SetGlobal("Pillar_Question","AR1001",0)
LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #54064 /* ~"Je plaisantais. Pilier : très bien. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54065 /* ~"*Bien sûr* que je plaisantais. Partons."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54066 /* ~"*Bien sûr* que je plaisantais. Partons."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #54129 /* ~"Je…" Annah frissonne tandis qu'une autre vague de froid émane du portail. "Ouais, j'suivrai…. En plus, tu perdrais ta propre tête, si elle était pas sur tes épaules. T'auras besoin d'quelqu'un pour t'surveiller, ouais."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54130 /* ~" Peut-être. Dak'kon ? Tu me suis ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54131 /* ~" Peut-être. Dak'kon ? Tu me suis ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54132 /* ~"Peut-être. Morte ? Tu me suis ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54133 /* ~"Peut-être. Morte ? Tu me suis ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54134 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54135 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54136 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #54137 /* ~"Je…" Annah regarde Tombée-en-Disgrâce puis se tourne vers toi, le regard embrasé. "Si *elle* y va, alors j'y vais aussi. J'te tournerai pas l'dos ici, non."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54138 /* ~"Très bien. Dak'kon ? Tu me suis ?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54139 /* ~"Très bien. Dak'kon ? Tu me suis ?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54140 /* ~"Très bien. Morte ? Tu me suis ?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54141 /* ~"Très bien. Morte ? Tu me suis ?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54142 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54143 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54144 /* ~"Très bien… voyons ce qui se trouve de l'autre côté de ce portail."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56678 /* ~Annah plisse les yeux. "Ouais, j'te conseille de pas m'chercher, l'esprit ! J'ai rien à faire avec toi, tu piges ?"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 94
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56679 /* ~Lorsque les yeux de Vhailor s'arrêtent sur Annah, elle tressaille, comme brûlée. "Pas d'ça, l'esprit, et finis de m'questionner, non mais !"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 95
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56680 /* ~"De quoi ? Et de QUELLE justice que tu causes donc ?! Ta justice, c'est pas la MIENNE… Elle est aussi creuse qu'ton armure ! T'as TA justice, mais t'as vite fait de l'oublier dès qu'il s'agit d'tes oignons !"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 96
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56681 /* ~"De quoi ? Ah ça, toi et tes *Rectifieurs*, vous vous êtes pas gênés pour balancer des tas d'mes amis sous l'arbre mort, et tout ça au nom d'la justice ! Va brûler dans les feux d'Baator, maudite chose pleine d'arthrose, et qu'les Puissances te pissent dessus pour faire bonne mesure ! Et qu'ton armure finisse au fond des cuves d'la Grande Fonderie et qu'il en reste pas une plate !"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 97
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56682 /* ~Annah a l'air désespéré. "Non, pour sûr. Maintenant, fous-moi la paix !"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 98
END

IF ~~ THEN BEGIN 279 // from:
  SAY #57162 /* ~Annah écarquille les yeux et pousse un *Peuh* amer.~ */
  IF ~~ THEN REPLY #57163 /* ~"Au revoir."~ */ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 280 // from:
  SAY #57164 /* ~Annah grimace. "Tss ! Pourquoi tu couches pas avec elle *tout de suite* dans la rue, tant qu't'y es ?"~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 281 // from:
  SAY #61416 /* ~Annah se hérisse alors que tu te disposes à suivre la femme. "Mais qu'est-ce qui te *prend*, idiot ?!" Elle fait volte-face vers la courtisane et dégaine ses lames. "Tire-toi, saleté !"~ */
  IF ~~ THEN REPLY #61425 /* ~"Oula ! Calme- toi, Annah!"~ */ GOTO 282
  IF ~~ THEN REPLY #61427 /* ~"Range ces fichues lames !"~ */ GOTO 282
  IF ~~ THEN REPLY #61428 /* ~Observe ce qui va se passer.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 285
END

IF ~~ THEN BEGIN 282 // from: 281.0 281.1
  SAY #61417 /* ~Elle te fait face. "Toi, encagué - tu ferais mieux de te calmer, ou c'est moi qui vais t'ébarber, tu me suis ?"~ */
  IF ~~ THEN REPLY #61429 /* ~"'M'ébarber la tige' ? Il faut que je paye pour ça ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61430 /* ~"Arrête de la menacer, ou je t'ébarbe autre chose, vu ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61431 /* ~"Je ne t'ai pas demandé ton avis, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61432 /* ~"Bon, bon… calme-toi."~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.1 282.2 282.3
  SAY #61418 /* ~Annah s'apaise un peu, mais sa queue continue de fouetter l'air. "Je te conseille de faire attention si tu veux rester en vie et en un seul morceau."~ */
  IF ~~ THEN REPLY #61433 /* ~"Ne me *menace* pas, Annah. C'est toi qui n'as qu'une vie, tu piges ?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61434 /* ~"Je ne t'ai pas demandé ton avis, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61435 /* ~"Bon, bon… calme-toi. Ton sang de fiélon va bouillir."~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 282.0 283.0 283.1 283.2
  SAY #61419 /* ~Annah fait un geste avec sa queue… un geste obscène.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 285 // from: 281.2
  SAY #61420 /* ~Annah fait un pas vers la femme ; elle paraît sur le point de la taillader.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 6
END

IF ~~ THEN BEGIN 286 // from:
  SAY #61421 /* ~Annah hésite et marmonne : "Cagués de têtes dures…" Elle rengaine ses lames, croise les bras et se borne ensuite à darder des regards venimeux sur la courtisane et toi.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 287 // from:
  SAY #61664 /* ~"Occupe-toi d'tes oignons, la succube. J'ai rien à t'dire."~ [ANA626A] */
  IF ~~ THEN EXTERN ~BGRACE~ 10
END

IF ~~ THEN BEGIN 288 // from:
  SAY #61665 /* ~"Je n'ai rien à te dire, la succube."~ [ANA625A] */
  IF ~~ THEN EXTERN ~BGRACE~ 12
END

IF ~~ THEN BEGIN 289 // from:
  SAY #61762 /* ~"Oh qu'si, ça pourrait…. Faire du mal. À toi."~ [ANA571B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #61763 /* ~"Tu fermes ton clapet, et j'arrête de remuer la queue."~ [ANA569A] */
  IF ~~ THEN EXTERN ~BMORTE~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #61764 /* ~"Oh, ouais… elle peut même aller jusqu'à ton râtelier pour faire gicler ton cerveau."~ [ANA572C] */
  IF ~~ THEN EXTERN ~BMORTE~ 4
END

IF ~~ THEN BEGIN 292 // from:
  SAY #61765 /* ~"Un accent ? De quoi tu parles ?"~ [ANA614B] */
  IF ~~ THEN EXTERN ~BMORTE~ 6
END

IF ~~ THEN BEGIN 293 // from:
  SAY #61766 /* ~"Mais ouais. Toi, en train d'essayer d't'asseoir sur mes genoux, ça f'ra une sacré histoire. Mais elle s'ra pas bien longue."~ [ANA570C] */
  IF ~~ THEN EXTERN ~BMORTE~ 8
END

IF ~~ THEN BEGIN 294 // from:
  SAY #61767 /* ~"Non, juste avec toi."~ [ANA573A] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from:
  SAY #61768 /* ~"Joue encore au plus fin avec moi, l'crâne, et j'te fourre la tête dans l'cul."~ [ANA611A] */
  IF ~~ THEN EXTERN ~BMORTE~ 11
END

IF ~~ THEN BEGIN 296 // from:
  SAY #61769 /* ~"Oh douces puissances… Crâne, t'en as pas marre de t'entendre déblatérer ?"~ [ANA619] */
  IF ~~ THEN EXTERN ~BMORTE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #61770 /* ~"Oui, et si t'étais pas toi, tu s'rais un crâne adorable, même."~ [ANA610A] */
  IF ~~ THEN EXTERN ~BMORTE~ 15
END

IF ~~ THEN BEGIN 298 // from:
  SAY #61771 /* ~"Ferme un peu ton râtelier, l'crâne ! Arrête d'parler d'elle à tout bout d'champ comme ça !"~ [ANA622B] */
  IF ~~ THEN EXTERN ~BMORTE~ 17
END

IF ~~ THEN BEGIN 299 // from:
  SAY #61772 /* ~"T'essaies d'nous faire tailler en pièces ?! N'tente pas le destin comme ça, crâne !"~ [ANA622CA] */
  IF ~~ THEN EXTERN ~BMORTE~ 18
END

IF ~~ THEN BEGIN 300 // from:
  SAY #61773 /* ~"Oh, et si j'étais toi, j'apprendrais à fermer un peu mon râtelier."~ [ANA616B] */
  IF ~~ THEN EXTERN ~BMORTE~ 20
END

IF ~~ THEN BEGIN 301 // from:
  SAY #61774 /* ~"Je s'rais toi, j'm'arrêterais là."~ [ANA617A] */
  IF ~~ THEN EXTERN ~BMORTE~ 22
END

IF ~~ THEN BEGIN 302 // from:
  SAY #61775 /* ~"Tu sais quoi, l'crâne ? Un d'ces jours, tu vas t'retrouver à sourire en haut d'une pique… et ça s'ra le dernier d'tes soucis une fois qu'j'en aurai fini avec toi."~ [ANA607C] */
  IF ~~ THEN EXTERN ~BMORTE~ 23
END

IF ~~ THEN BEGIN 303 // from:
  SAY #61776 /* ~"Bien fait pour toi, l'crâne. Ça nous démange tous de t'fermer l'clapet."~ [ANA624A] */
  IF ~~ THEN EXTERN ~BMORTE~ 25
END

IF ~~ THEN BEGIN 304 // from:
  SAY #61777 /* ~"Trop agiter sa langue, c't'un bon moyen d'se casser l'nez, le crâne."~ [ANA618A] */
  IF ~~ THEN EXTERN ~BMORTE~ 27
END

IF ~~ THEN BEGIN 305 // from:
  SAY #61778 /* ~"J'lui dis *jamais* c'que j'ressens. Et t'avise pas d'bavasser. L'a la marque du destin sur lui et j'veux pas l'détourner de son chemin. T'as entendu, l'crâne ?"~ [ANA621B] */
  IF ~~ THEN EXTERN ~BMORTE~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY #61779 /* ~"Elle laisse ma peau respirer, crétin."~ [ANA620B] */
  IF ~~ THEN EXTERN ~BMORTE~ 31
END

IF ~~ THEN BEGIN 307 // from:
  SAY #61780 /* ~"Oh, j'vais t'donner d'quoi t'blottir, crétin !"~ [ANA588A] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #62891 /* ~"C'est une fiélonne, une succube, ouais. Elle te jaugera, et puis elle emportera ton âme dans les Plans Inférieurs, pour sûr."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 309 // from:
  SAY #63485 /* ~TBD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #63693 /* ~"Non, c'est pour m'gratter le dos, bougre de boîte !"~ [ANA565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 23
END

IF ~~ THEN BEGIN 311 // from:
  SAY #63694 /* ~::soupir::~ [ANA565BC] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #63695 /* ~"Mais qu'est-ce que c'est que *cette* question, espèce de boîte débile ?!"~ [ANA566C] */
  IF ~~ THEN EXTERN ~BNORDOM~ 25
END

IF ~~ THEN BEGIN 313 // from:
  SAY #63696 /* ~"*QUOI ?!*"~ [ANA567E] */
  IF ~~ THEN EXTERN ~DMORTE~ 643
END

IF ~~ THEN BEGIN 314 // from:
  SAY #63859 /* ~"Laisse-le tranquille, tu ne l'connais pas !"~ [ANA568C] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 3
END

IF ~~ THEN BEGIN 315 // from:
  SAY #64221 /* ~::elle fait une grimace à Morte::~ */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 187.15 477.15
  SAY #67053 /* ~En entendant ce nom, Annah crache trois fois par terre et trace un demi-cercle au niveau de son cœur. "Chut ! T'es un vrai crétin, ou quoi ? Prononce jamais son nom, si tu tiens à la vie !"~ */
  IF ~~ THEN REPLY #67055 /* ~"Pourquoi ?"~ */ GOTO 317
  IF ~~ THEN REPLY #67054 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67056 /* ~"Oublie ça, et continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #67057 /* ~"C'est la pire des Dames Grises, ça oui." Annah baisse le ton, comme si elle avait peur qu'on l'entende. "Sacrément pourrie, et plus puissante que des tas de dieux. On dit qu'elle est pleine d'épines - même son cœur - et que PERSONNE peut la tuer, parce que son corps est comme un arbre : tu lui tranches une jambe ou un bras, et y en a toujours un autre qui se met à pousser sur un autre plan."~ */
  IF ~~ THEN REPLY #67058 /* ~"À t'entendre, on dirait qu'elle est encore en vie."~ */ GOTO 318
  IF ~~ THEN REPLY #67059 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67060 /* ~"Oublie ça, et continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #67061 /* ~"Bien sûr que oui. Obligé." Annah baisse encore plus le ton. "Comment tu voudrais qu'y soit possible de la tuer, hein ? C'est pour ça qu'la Dame a dû la balancer dans un DÉDALE… du moins, c'est c'qu'on dit."~ */
  IF ~~ THEN REPLY #67062 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67063 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 187.16 477.16
  SAY #67064 /* ~"Un peu d'cette guenaude ? Un morceau d'elle, tu veux dire ? Nan, j'sais pas où trouver ça." Annah réfléchit en agitant la queue, puis se fend d'un large sourire. "Remarque, elle doit avoir semé une telle progéniture dans le multivers que t'as qu'à demander à un d'ses rejetons."~ */
  IF ~~ THEN REPLY #67065 /* ~"Sa 'progéniture' ? Que veux-tu dire ?"~ */ JOURNAL #67068 /* ~Annah dit que Ravel a eu une progéniture, c'est-à-dire une ou plusieurs filles, qui sont éparpillées dans le multivers. Je me demande si je pourrais retrouver l'une d'elles. Peut-être savent-elles comment atteindre le dédale. Mais quant à savoir où je dois les chercher…~ */ GOTO 320
  IF ~~ THEN REPLY #67066 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67067 /* ~"Oublie ça, et continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #67069 /* ~"Sa progéniture… ses gamines, quoi. On dit que Ravel a eu des tas de filles… ou juste une seule, selon l'histoire que tu crois. Et puis, leur nombre augmente en général avec la quantité de verres que prend le conteur." Annah baisse un peu plus le ton. "On dit que l'père serait un *fiélon*."~ */
  IF ~~ THEN REPLY #67070 /* ~"Crois-tu qu'une de ses filles est encore en vie ? Elle saurait peut-être comment parvenir jusqu'à Ravel."~ */ GOTO 321
  IF ~~ THEN REPLY #67071 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67072 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #67073 /* ~Annah hausse les épaules. "Pas la moindre idée. Ce qui est sûr, c'est que j'aimerais pas les rencontrer. D'ici qu'elles soient aussi pourries qu'leur mère…"~ */
  IF ~~ THEN REPLY #67074 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67075 /* ~"Je vais ouvrir l'œil, des fois que j'en voie une. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 187.10 477.10
  SAY #67076 /* ~"Hein ? demande-t-elle en fronçant les sourcils. Qu'est-ce que tu racontes ?"~ */
  IF ~  Class(Protagonist,FIGHTER)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67077 /* ~"Je veux abandonner la voie des armes pour un temps et me tourner vers une carrière plus… discrète."~ */ GOTO 325
  IF ~  Class(Protagonist,MAGE)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67078 /* ~"J'aimerais abandonner la magie pour un temps et me tourner vers une carrière plus… discrète."~ */ GOTO 325
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67079 /* ~"Je veux abandonner la voie des armes pour un temps et reprendre ma carrière de voleur. Peux-tu me servir de professeur ?"~ */ GOTO 323
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67080 /* ~"J'aimerais abandonner la magie pour un temps et reprendre ma carrière de voleur. Peux-tu me servir de professeur ?"~ */ GOTO 323
  IF ~  Class(Protagonist,THIEF)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67081 /* ~"J'aurais voulu que tu m'enseignes comment devenir voleur."~ */ GOTO 348
  IF ~~ THEN REPLY #67082 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67083 /* ~"Laisse tomber, Annah. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.2 322.3
  SAY #67085 /* ~Elle a un instant l'air sceptique, puis lève les yeux au ciel. "Je peux, ouais. Mais dans ce cas, ferme ton clapet, ouvre tes esgourdes et fais c'que j'te dis, pigé ?" Elle t'inspecte des pieds à la tête. "Pour commencer, tu dois changer ton attitude. Arrête un peu de rouler des mécaniques, d'accord ?"~ */
  IF ~~ THEN REPLY #67086 /* ~"D'accord…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 344.0
  SAY #67087 /* ~Annah te donne toute une série d'instructions que tu t'évertues à suivre. Au bout de quelques instants, elle hoche la tête, impressionnée. "Bon, j'vois que t'as pigé le truc. T'es un rapide, toi, on dirait."~ */
  IF ~~ THEN REPLY #67088 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 477
  IF ~~ THEN REPLY #67089 /* ~"Merci. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 322.0 322.1
  SAY #67090 /* ~Elle t'inspecte rapidement des pieds à la tête et te regarde bizarrement. "T'es sérieux, là ?"~ */
  IF ~~ THEN REPLY #67091 /* ~"Oui, je veux apprendre à être un voleur. Peux-tu me l'enseigner ?"~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #67092 /* ~Elle te fixe un moment, puis secoue la tête. "Nan, t'es beaucoup trop lent. Tu te déplaces comme un sac de patates." Elle fronce les sourcils. "Y faudrait qu'tu sois plus vif pour que j'puisse t'apprendre quoi qu'ce soit."~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #67093 /* ~Détends le bras et attrape-lui le poignet.~ */ GOTO 327
  IF ~  CheckStatGT(Protagonist,13,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67094 /* ~Détends le bras et attrape-lui le poignet.~ */ GOTO 328
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67095 /* ~Détends le bras et attrape-lui le poignet.~ */ GOTO 330
  IF ~~ THEN REPLY #67096 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67097 /* ~"Peu importe alors. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #67098 /* ~"Hssst!" Tu te détends, mais Annah esquive en poussant un sifflement. "J't'ai vu venir gros comme une maison. Un vrai escargot, ça oui ; faudrait qu'tu sois vachement plus vif pour m'attraper." Elle se détend légèrement. "Mais bon, t'es pas un cas désespéré…"~ */
  IF ~~ THEN REPLY #67099 /* ~"Tu veux bien m'apprendre ?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 328 // from: 326.1
  SAY #67100 /* ~"Hssst !" Tu attaques, mais pas assez rapidement et Annah esquive. Ta main frôle l'une de ses dagues coup-de-poing et tu te coupes sur la lame.~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #67101 /* ~Annah regarde ta main ensanglantée et la blessure qui se referme rapidement. Au bout de quelques instants, elle crache par terre. "Ça t'apprendra, crétin ! Ta posture m'a dit qu't'allais bouger avant même que t'aies décidé de l'faire." Elle se détend légèrement. "Mais bon, t'es pas un cas désespéré…"~ */
  IF ~~ THEN REPLY #67737 /* ~"Acceptes-tu de me donner des cours ?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 326.2
  SAY #67102 /* ~Ton bras se détend à la vitesse de l'éclair et, avant qu'Annah ait pu esquisser le moindre geste, tu lui enserres fermement le poignet. Elle se met à cracher et tire pour se libérer. "Lâche-moi, sombre crétin ! Lâche-moi, j'te dis, où j'te fais des trous partout !"~ */
  IF ~~ THEN REPLY #67103 /* ~Lâche-la.~ */ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #67104 /* ~Annah fait un bond en arrière. Elle a les joues rouges et le souffle court. "Me touche plus jamais, t'entends ?" Sa respiration reprend un rythme plus normal et elle fronce les sourcils. "T'es vif, j'te l'accorde. Personne a encore jamais réussi à m'attraper comme tu viens de l'faire. Tu dois avoir du sang d'serpent dans les veines."~ */
  IF ~~ THEN REPLY #67105 /* ~"Tu veux bien m'apprendre ?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 332 // from: 327.0 329.0 331.0
  SAY #67106 /* ~Elle a un instant l'air sceptique, puis lève les yeux au ciel. "Je peux, ouais. Mais dans ce cas, ferme ton clapet, ouvre tes esgourdes et fais c'que j'te dis, pigé ?"~ */
  IF ~~ THEN REPLY #67107 /* ~"Très bien…"~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0
  SAY #67108 /* ~"Y'a quelques p'tits trucs que tu dois apprendre si tu veux être dur à attraper. Pour commencer, tu dois savoir te cacher quand tu veux pas qu'on t'voie."~ */
  IF ~~ THEN REPLY #67109 /* ~"D'accord."~ */ GOTO 334
  IF ~~ THEN REPLY #67110 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #67111 /* ~"Pour ça, faut qu'tu saches où t'es et en combien d'temps tu peux t'fondre dans l'paysage." Elle appuie chaque mot d'un battement de queue. "Quand tu sauras comment faire, tu seras devenu une ombre." ~ */
  IF ~~ THEN REPLY #67112 /* ~"Comment dois-je m'y prendre ?"~ */ JOURNAL #67734 /* ~Dans le cadre de ma formation de voleur, Annah m'a expliqué comment me cacher dans l'ombre. On peut le faire à peu près partout, sauf quand on attaque quelqu'un, quand on essaye de crocheter une serrure… ou quand on fait les poches de son voisin.~ */ GOTO 335
  IF ~~ THEN REPLY #67113 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #67114 /* ~"Mais l'plus important, c'est d'savoir quand tu peux PAS t'cacher. C'est pas possible quand quelqu'un te regarde, quand tu t'bas ou quand t'essaie de crocheter une serrure. Donc, commence par apprendre QUAND tu peux t'cacher, pigé ?"

^NRemarque : Pour te cacher dans l'ombre, sélectionne l'icône Furtivité du bouton Capacités spéciales, dans le menu rapide. Tu auras alors une chance de te cacher dans l'ombre. Toute action tentée contre une personne ou un objet te rendra à nouveau visible.^-~ */
  IF ~~ THEN REPLY #67115 /* ~"Quel est donc l'avantage de se cacher dans l'ombre ?"~ */ JOURNAL #67735 /* ~Annah m'a expliqué l'un des avantages que confère le fait de se cacher dans l'ombre : si je me jette sur quelqu'un qui ne m'a pas vu, mes coups devraient lui faire beaucoup plus mal. Je crois que l'on appelle ça "l'attaque sournoise". Il faudra que j'essaye, pour voir…~ */ GOTO 336
  IF ~~ THEN REPLY #67116 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #67117 /* ~"PARCE QUE…" La queue d'Annah s'enroule en tire-bouchon pour mieux appuyer ses paroles. "Quand tu sors de l'ombre pour planter ton poignard dans l'dos d'quelqu'un et qu'tu sais où frapper, ça fait encore plus mal que d'habitude. C'est aussi à ça qu'ça sert, de savoir s'cacher."~ */
  IF ~~ THEN REPLY #67118 /* ~"Oh."~ */ GOTO 337
  IF ~~ THEN REPLY #67119 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #67120 /* ~"Ensuite, tu dois apprendre à faire les poches des gens. Dit comme ça, ça a l'air facile, mais c'est comme pour se cacher dans l'ombre : faut bien choisir sa cible, tu piges ? C'est facile de faire les poche d'un Rucher, mais y'a de gens qu'y sont plus durs à berner qu'les autres. Et les biges en colère, essaie même pas d't'en approcher. Pour peu qu'y t'voient, y z'ont d'bonnes chances de t'repérer."~ */
  IF ~~ THEN REPLY #67121 /* ~"Ça m'a l'air trop risqué pour être vraiment efficace."~ */ GOTO 338
  IF ~~ THEN REPLY #67122 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #67123 /* ~"Eh bien…" Annah dévoile un rictus. "Les bourses des citoyens peuvent finir par faire un beau p'tit pécule. Et parfois, ils cachent bien plus qu'du cuivre, c'est c'qu'on appelle une trouvaille." Elle sourit. "Et si t'es assez rapide, tu peux piquer bien des trucs aux marchands dans leurs boutiques."

^NREMARQUE : <PICKPOCKET> Voler dans les magasins se fait via un bouton sur l'écran de magasin.^-~ */
  IF ~~ THEN REPLY #67124 /* ~"Et si les marchands verrouillent leur boutique ?"~ */ GOTO 339
  IF ~~ THEN REPLY #67125 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #67126 /* ~"Bon, maintenant, y faut qu'tu saches comment ouvrir une serrure qui t'résiste, pas vrai ? C'est pas toujours facile, mais tout c'qu'est verrouillé renferme forcément quêqu'chose d'intéressant, alors…" Elle fronce les sourcils. "Enfin, l'plus souvent, quoi."

^NREMARQUE : pour crocheter une serrure, sélectionne le talent de voleur correspondant dans tes Facultés spéciales et amène le curseur jusqu'à la serrure que tu souhaites ouvrir. Aussitôt, le curseur changera.^-~ */
  IF ~~ THEN REPLY #67127 /* ~"D'accord."~ */ GOTO 340
  IF ~~ THEN REPLY #67128 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #67129 /* ~" C'qui nous amène tout droit à la leçon suivante. Si quelqu'un a enfermé un truc pour pas qu'tu viennes le chercher, tu peux être sûr qu'y z'ont pas laissé qu'la serrure. Tu peux t'attendre à des tas d'saletés différentes : une lame qu'est là pour te décapiter, un sac en papier plein d'fourmis rouges, d'l'eau d'vaisselle de baatezu…" Elle compte les pièges possibles sur ses doigts. "Ou même un sort ou deux… voire plus." ~ */
  IF ~~ THEN REPLY #67130 /* ~"Comment je fais pour les remarquer ?"~ */ GOTO 341
  IF ~~ THEN REPLY #67131 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #67132 /* ~"C'est comme quand tu veux devenir une ombre. T'ouvres tes mirettes et tu regardes autour de toi. Y'a quêque'chose qui t'semble louche ? Un courant d'air dans un couloir fermé ? Un dessin bizarre par terre ? Un gros coffre qui t'attend joliment au beau milieu d'la pièce ?" Elle te donne un coup de queue. "C'est là qu'y faut commencer à chercher l'piège, ça oui."

^NREMARQUE : pour chercher des pièges, clique sur 'Trouver/désamorcer des pièges' dans tes Capacités spéciales. Une fois cela fait, tu as des chances de détecter les pièges, qui sont alors surlignés dès que tu passes dessus avec le curseur.^-~ */
  IF ~~ THEN REPLY #67133 /* ~"Bon, mais comment je les évite ?"~ */ GOTO 342
  IF ~~ THEN REPLY #67134 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #67135 /* ~"On l'évite ? Eh bien, l'astuce, c'est de désarmer le piège juste devant c'que tu veux ouvrir… enfin disons que t'as a peu près la même chance d'réussir à désarmer le piège que t'as de l'trouver, mais comme on l'a trouvé…" Annah hausse ses épaules. "Ouais, t'as plutôt une bonne chance j'dirais. Disons, la plupart du temps."

^NREMARQUE : <DISARMTRAP> Si tu échoues, tu risques de déclencher le piège.^-~ */
  IF ~~ THEN REPLY #67136 /* ~"Autre chose ?"~ */ GOTO 343
  IF ~~ THEN REPLY #67137 /* ~"Je crois que je comprends les bases, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #67138 /* ~"J'peux pas t'en dire davantage. C'est à force d'essayer qu'on y arrive. J'te souhaite bonne chance…" Elle se fend d'un large sourire. "Sauf si tu t'en prends à une cible que j'me suis déjà réservée, pigé ?"~ */
  IF ~~ THEN REPLY #67139 /* ~"D'accord." ~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 333.1 334.1 335.1 336.1 337.1 338.1 339.1 340.1 341.1 342.1 343.0
  SAY #67140 /* ~"Bon…" elle t'inspecte de haut en bas. "Mettons-nous y vraiment." Elle fronce les sourcils. "Pour commencer, tu dois changer ton attitude. Arrête un peu de rouler des mécaniques, d'accord ?"~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67141 /* ~"D'accord…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 324
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #67142 /* ~"D'accord…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 345
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67143 /* ~"D'accord…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67144 /* ~"D'accord…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
END

IF ~~ THEN BEGIN 345 // from: 344.1
  SAY #67145 /* ~Annah te donne toute une série d'instructions visant à tester tes réflexes et ton sens de l'équilibre. Alors que tu t'exécutes, de lointains souvenirs te reviennent en mémoire, et tu gagnes en assurance en puisant dans ton expérience passée. Annah semble surprise par ta compétence, mais elle hausse la difficulté des exercices jusqu'à ce que tu aies du mal à la suivre. Finalement, elle hoche la tête, impressionnée. "Bon, j'vois que t'as pigé le truc. T'es un rapide, toi, on dirait."~ */
  IF ~~ THEN REPLY #67146 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 477
  IF ~~ THEN REPLY #67147 /* ~"Merci. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 344.2 344.3
  SAY #67148 /* ~Annah te donne toute une série d'instructions visant à tester tes réflexes et ton sens de l'équilibre. Alors que tu t'exécutes, tu sens comme un déclic dans ton esprit. Chaque épreuve ouvre une nouvelle porte, et les images se succèdent : une allée sombre, un toits de maison par nuit de pleine lune, une bourse à la corde tranchée en plein marché, une serrure qui obéit à tes doigts lestes… tu réussis aisément ce qu'Annah te demande, et tu la forces à se surpasser, elle aussi.~ */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #67149 /* ~Annah se fait une joie de relever le défi. Elle multiplie les embûches, mais tu les contre avec une simplicité désarmante avant de lui en proposer, toi aussi. Au terme de la séance, Annah semble avoir changé d'opinion à ton sujet. "T'es sûr que t'as jamais fait ça avant ? T'es un rapide, ça c'est sûr… et j'ai l'impression qu'tu m'en as plus appris que l'inverse."~ */
  IF ~~ THEN REPLY #67305 /* ~"Je crois que j'ai déjà fait ça auparavant. Mais j'ai d'autres questions à te poser…"~ */ GOTO 477
  IF ~~ THEN REPLY #67306 /* ~"Merci pour l'entraînement. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 322.4
  SAY #67308 /* ~"Oui… je pourrais. Quoi, par exemple ?"~ */
  IF ~  Global("Annah_Stealth","GLOBAL",0)
~ THEN REPLY #67309 /* ~"Je voudrais que tu m'apprennes ce que tu sais sur la discrétion."~ */ GOTO 349
  IF ~  Global("Annah_Open_Locks","GLOBAL",0)
~ THEN REPLY #67310 /* ~"Tout ce que tu peux m'enseigner sur le crochetage de serrure serait bienvenu ."~ */ GOTO 351
  IF ~  Global("Annah_Traps","GLOBAL",0)
~ THEN REPLY #67311 /* ~"Peux-tu m'apprendre quelque chose sur la manière de désarmer des pièges ?"~ */ GOTO 353
  IF ~  Global("Annah_Pick_Pockets","GLOBAL",0)
~ THEN REPLY #67312 /* ~"Peux-tu me prodiguer quelques conseils sur la manière de faire les poches à quelqu'un ?"~ */ GOTO 355
  IF ~~ THEN REPLY #67313 /* ~"En fait, je pense pouvoir t'enseigner quelques petites astuces."~ */ GOTO 363
  IF ~~ THEN REPLY #67314 /* ~"Aucune importance. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67315 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #67316 /* ~Elle acquiesce. "Oui, eh bien, le truc pour ne pas être vu c'est de bien connaître l'environnement dans lequel tu te trouves et de savoir à quelle vitesse tu peux t'y FONDRE. J'ai appris quelques astuces - l'une d'elles consiste à se cacher là où l'on ne risque pas de regarder - comme le plafond d'une pièce - ou bien encore de *changer* de cachette quand on te cherche…" Elle affiche un sourire mauvais. "Je me souviens d'une fois où je me cachais de ces têtes-de-bois… la 'loi'… alors j'ai fait…"~ */
  IF ~~ THEN REPLY #67317 /* ~"Oui… ?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Stealth","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,STEALTH,RAISE,3)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #67318 /* ~"… et alors, cette tête-de-bois était affalée dans de l'eau boueuse, sans ses hauts-de-chausses, tandis que ses trois copains étaient enfermés dans la chambre de la mémé qui hurlait comme une malheureuse." Annah reprend son souffle. "Et voilà. Si tu peux appliquer la même méthode, cela t'aidera à te cacher quand tu en auras vraiment besoin."~ */
  IF ~~ THEN REPLY #67319 /* ~"Voyons voir : faire en sorte de se réfugier dans des endroits que l'on connaît bien, de préférence où il y a d'autres distractions - et s'il n'y en a aucune, s'arranger pour en créer."~ */ GOTO 362
END

IF ~~ THEN BEGIN 351 // from: 348.1
  SAY #67320 /* ~"Crocheter des serrures - eh bien, je peux te dire ce qu'il ne faut PAS faire. Tout d'abord, assure-toi d'avoir sur toi un peu d'huile ou autre chose pour lubrifier tes outils au cas où la serrure serait rebelle ; il y a autre chose que j'ai appris - auprès d'ce vieux radoteur boiteux de Pharod, pas moins - de nombreuses serrures de Sigil ont été conçues par ce serrurier d'un autre âge et elles ont toutes en commun ce loquet que -"~ */
  IF ~~ THEN REPLY #67321 /* ~"Continue…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Open_Locks","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,3)
~ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #67322 /* ~"…alors que les premières lueurs de l'aube filtraient à l'intérieur et je savais qu'ils allaient fouiller le grenier pour me trouver. Mais, puisque la serrure du grenier avait été conçue à Sigil, je savais comment bloquer le loquet pour qu'ils ne puissent le forcer, et cela m'a permis de gagner assez de temps pour foutre le camp par le toit avec l'argent."~ */
  IF ~~ THEN REPLY #67323 /* ~"Ainsi, la plupart des serrures sont basées sur ce type de gorge… Cela devrait être utile à savoir si je dois crocheter ce genre de serrure."~ */ GOTO 362
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #67324 /* ~"Eh bien, c'est assez facile - la chose la plus importante dont il faut se souvenir c'est que quelqu'un a dû PLACER le piège, et que, bien sûr, il sait où il se trouve, fais donc attention aux moindres indices de sa présence quand tu te trouves dans un endroit où une personne conserve ses trésors. Je me souviens une fois, alors que je me trouvais dans le Quartier des Gratte-papier,…"~ */
  IF ~~ THEN REPLY #67325 /* ~"Oui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Traps","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,TRAPS,RAISE,3)
~ GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #67326 /* ~"… et, au fait que le tapis sur le sol soit neuf, je compris qu'il l'avait installé récemment. Je le soulevai alors avec mes dagues, persuadée que je trouverais des traces d'acide sur le carrelage en dessous. J'ai su ainsi qu'il fallait que je fasse attention à une giclée d'acide quand j'ouvrirais le coffre pour m'emparer de l'argent."~ */
  IF ~~ THEN REPLY #67327 /* ~"Alors, quand on veut repérer et désarmer un piège, il faut faire attention non seulement aux indices permettant de savoir qu'on en a installé un, mais aussi à ceux permettant de savoir comment on peut l'éviter une fois installé."~ */ GOTO 362
END

IF ~~ THEN BEGIN 355 // from: 348.3
  SAY #67328 /* ~"Eh bien, faucher quelqu'un n'est pas aussi difficile que l'on pourrait l'imaginer…" Annah hausse les épaules. "Tout est une question de rapidité et de délicatesse, pour éviter qu'il ne s'aperçoive qu'il est plus léger. Si cela te crée des problèmes, c'est à cause de la manière dont tu t'y prends." Elle te fait un signe de tête. "Montre-moi."~ */
  IF ~~ THEN REPLY #67329 /* ~"Écoute, je n'ai pas envie de faire les poches à quelqu'un pris au hasard, avec toi en train de regarder. Peut-être une autre fois."~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #67330 /* ~"Non, essaie de me piquer un peu de jonc. Je te dirai ce que tu fais de travers."~ */
  IF ~~ THEN REPLY #67331 /* ~"Très bien… euh, où mets-tu ton argent ?"~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #67332 /* ~"C'est ce que *tu* dois découvrir, si tu veux être un vrai voleur."~ */
  IF ~~ THEN REPLY #67333 /* ~"Très bien… je vais essayer de te faucher… euh, de te faire les poches."~ */ DO ~SetGlobal("Annah_Pick_Pockets","GLOBAL",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #67334 /* ~Tandis que tu t'approches d'elle, Annah lève une main. "Très bien, arrête - t'as déjà tout foiré."~ */
  IF ~~ THEN REPLY #67335 /* ~"Quoi ?"~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #67336 /* ~"Il faut qu'tu fasses attention à la manière dont tu t'approches, - tu peux pas te contenter d'arriver comme une brute sur ta cible - surtout avec ton apparence." Soudain, Annah porte les mains à ses hanches et se tourne comme si elle se désintéressait de toi. "Tu dois agir comme si ta victime ne représentait rien pour toi - moins que rien'. Tu te fiches de ce qu'elle peut posséder."~ */
  IF ~~ THEN REPLY #67337 /* ~"Très bien - donc je me comporte comme si j'en avais rien à faire. Et après ?"~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #67338 /* ~"Après, tu dois *frapper* au bon moment - généralement, j'agis en arrivant à la hauteur de quelqu'un ; toi tu devrais agir *après*, car, avec ton allure, les victimes risquent d'être suffisamment effrayées pour ne pas se retourner afin de voir où t'es allé. Et, encore autre chose que tu devrais faire…"~ */
  IF ~~ THEN REPLY #67339 /* ~"Oui… ?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,1000)
~ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY #67340 /* ~"…donc habille-toi un peu plus décontracté, essaie de ne pas avoir l'air si menaçant, et tu pourras peut-être éviter que ta cible soit sur ses gardes - ou qu'elle dessoûle si elle a un peu abusé de la bibe."~ */
  IF ~~ THEN REPLY #67341 /* ~"Très bien. Alors il ne faut avoir l'air menaçant, plutôt décontracté, comme si la cible n'avait aucune importance, puis agir juste après l'avoir dépassée ?"~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 350.0 352.0 354.0 361.0
  SAY #67342 /* ~Elle acquiesce. "Oui, voilà le soltif."~ */
  IF ~~ THEN REPLY #67343 /* ~"J'aurai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67344 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 348.4
  SAY #67345 /* ~"Quoi ? Es-tu *sérieux ?*" Elle hausse un sourcil. "Toi ? M'apprendre quelque chose ?"~ */
  IF ~  Global("PC_Annah_Stealth","GLOBAL",0)
CheckStatGT(Protagonist,49,STEALTH)
~ THEN REPLY #67346 /* ~"Je pensais pouvoir t'indiquer quelques trucs pour être plus discrète."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",1)
~ GOTO 364
  IF ~  Global("PC_Annah_Open_Locks","GLOBAL",0)
CheckStatGT(Protagonist,49,LOCKPICKING)
~ THEN REPLY #67347 /* ~"Je pense que je connais quelques petites astuces pour crocheter les serrures que je pourrais t'apprendre."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",2)
~ GOTO 364
  IF ~  Global("PC_Annah_Pick_Pockets","GLOBAL",0)
CheckStatGT(Protagonist,49,PICKPOCKET)
~ THEN REPLY #67348 /* ~"Oui, il y a quelques petits trucs pour faire les poches des gens que je pourrais t'enseigner ."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",3)
~ GOTO 364
  IF ~  Global("PC_Annah_Traps","GLOBAL",0)
CheckStatGT(Protagonist,49,TRAPS)
~ THEN REPLY #67349 /* ~"Oui, je connais certaines techniques pour trouver et désarmer des pièges, que j'aimerais partager avec d'autres."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",4)
~ GOTO 364
  IF ~~ THEN REPLY #67350 /* ~"Aucune importance ; je n'ai peut-être rien à enseigner pour l'instant. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67351 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0 363.1 363.2 363.3
  SAY #67352 /* ~"Oui ?" Elle affiche un sourire satisfait. "Comme quoi ?"~ */
  IF ~  Global("Annah_Training","GLOBAL",1)
~ THEN REPLY #67353 /* ~"Eh bien, je pense que ta queue te trahit bien plus que tu ne le penses. J'ai remarqué que tu la remuais à chaque fois que tu étais observée ou que tu te sentais nerveuse ; c'est suffisant pour que quelqu'un observant les ombres note ta présence. Et, autre chose…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Stealth ","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",STEALTH,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",2)
~ THEN REPLY #67354 /* ~"Tu n'utilises pas le bon passe-partout pour crocheter les serrures. Parmi ceux que tu as, sers-toi plutôt de celui qui a une tête en forme de "Y" et de celui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Open_Locks","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",LOCKPICKING,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",3)
~ THEN REPLY #67355 /* ~"Quand tu essaies de faire les poches à quelqu'un, tu devrais mieux utiliser ton corps ; cela ne devrait pas être très difficile pour toi de détourner l'attention de la cible. Et -"~ */ DO ~SetGlobal("PC_Annah_Pick_Pockets","GLOBAL",1)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 365
  IF ~  Global("Annah_Training","GLOBAL",4)
~ THEN REPLY #67356 /* ~"Tu dois bien évidemment chercher les signes t'indiquant que des pièges ont été installés, mais il existe également des indices plus subtils : une odeur de soufre, un changement de température…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Traps","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",TRAPS,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
END

IF ~~ THEN BEGIN 365 // from: 364.2
  SAY #67357 /* ~"Hein ?" Annah plisse les yeux. "Suggères-tu que je devrais jouer les putains ?"~ */
  IF ~~ THEN REPLY #67358 /* ~"Eh bien, pourquoi diable portes-tu cette chose ? Je pensais que cela faisait partie de ta stratégie."~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #67359 /* ~Annah baisse les yeux, puis te regarde. "C'est juste que j'ai tendance à être *chaude* ; je crois que c'est à cause de mon sang. Cette veste laisse ma peau respirer."~ */
  IF ~~ THEN REPLY #67360 /* ~"Bon, tu me dégages un peu plus le haut, et ta proie n'en aura plus rien à faire que tu lui fasses les poches ou non. Maintenant, regarde mes mains - quand tu t'apprêtes à lui couper la bourse, il te faut -"~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #67361 /* ~Au moment où tu vas montrer à Annah comment couper des bourses, elle se raidit.~ */
  IF ~~ THEN REPLY #67362 /* ~"Qu'est-ce qu'il y a *encore ?*"~ */ GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #67363 /* ~"Je n'y peux rien - c'est ta faute !" Annah ferme le yeux. "Tu n'aurais rien dû dire sur ma veste, maintenant je n'arrête pas d'y penser."~ */
  IF ~~ THEN REPLY #67364 /* ~"Regarde-moi dans les yeux - et calme-toi."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #67365 /* ~Le regard d'Annah croise le tien et tu remarques qu'elle est encore tendue - et qu'elle se mord les lèvres.~ */
  IF ~~ THEN REPLY #67366 /* ~"Écoute, je vais te montrer très rapidement et après on sera débarrassés."~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #67367 /* ~Tu te penches vers elle et, soudain, Annah se colle à toi et te serre dans ses bras. Elle reste ainsi un moment, puis te serre plus fort en reniflant ton cou et en remontant vers ta pommette. "Je… J'aime ton odeur." Elle se frotte les joues conte les tiennes - et, à ta grande surprise, tu te rends compte de l'extrême douceur de sa peau. "Ta peau est comme du cuir."~ */
  IF ~~ THEN REPLY #67368 /* ~Vérifie ta bourse.~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #67369 /* ~Tu attrapes la queue d'Annah, puis tu la déroules doucement de ton sac. Annah recule et esquisse une grimace. "C'est bien ce que tu voulais dire ? C'est comme ça qu'tu veux que je fasse les poches d'une cible ?" Elle rougit un peu et tu remarques que son cœur bat la chamade. "C'est terriblement facile."~ */
  IF ~~ THEN REPLY #67370 /* ~"Oui… je pense que tu as pris le coup de main. Écoute, j'ai d'autres questions…"~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ GOTO 477
  IF ~~ THEN REPLY #67371 /* ~"C'est un fait… remettons-nous en route."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 364.0 364.1 364.3
  SAY #67372 /* ~À la fin de ta leçon, Annah acquiesce. "Oui, je n'avais pas réfléchi à cela." Elle fronce les sourcils. "J'aurais fini par m'en rendre compte, alors te prends pas pour un instructeur de la Salle des Fêtes, d'accord ?"~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN REPLY #67373 /* ~"J'essayais juste d'aider."~ */ GOTO 373
  IF ~~ THEN REPLY #67374 /* ~"Eh bien, tant pis pour la gratitude. J'ai d'autres questions…."~ */ GOTO 477
  IF ~~ THEN REPLY #67375 /* ~"Pas de problème. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 372.0
  SAY #67376 /* ~"J'crois plutôt que t'essaies de m'faire ressembler à une *andouille*."~ */
  IF ~~ THEN REPLY #67377 /* ~"Par les enfers, de quoi parles-tu ?"~ */ GOTO 374
  IF ~~ THEN REPLY #67378 /* ~"Eh bien, tant pis pour la gratitude. J'ai d'autres questions…."~ */ GOTO 477
  IF ~~ THEN REPLY #67379 /* ~"Pas de problème. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #67380 /* ~"Tu débarques à la Cour de Pharod, qui t'fait des courbettes en t'léchant les bottes, puis il m'ORDONNE d'aller avec toi, c'qu'il avait JAMAIS fait avant et v'là que tu t'mets à prendre des grands airs, comme quoi tu en sais plus que moi… Mais qu'est-ce qui t'donne le *droit* de te comporter ainsi ? Qui crois-tu ÊTRE ?"~ */
  IF ~~ THEN REPLY #67381 /* ~"J'essaie JUSTE de t'aider, Annah."~ */ GOTO 375
  IF ~~ THEN REPLY #67382 /* ~"Eh bien, tant pis pour la gratitude. J'ai d'autres questions…."~ */ GOTO 477
  IF ~~ THEN REPLY #67383 /* ~"Pas de problème. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #67384 /* ~"Ah, ouais ? T'es sûr qu'à chaque fois que j'pique quelque chose dans une bourse ou que j'crochète une serrure, t'es pas en train de secouer la tête en t'disant 'quelle fille stupide et maladroite, elle n'y connaît rien'. Ça t'permet de te sentir meilleur, n'est-ce pas ?!"~ */
  IF ~~ THEN REPLY #67385 /* ~"Annah, je t'ai juste montré cela pour te rendre encore plus forte que tu ne l'es. Je ne voulais surtout pas me montrer supérieur. Je sais très bien que tu n'es ni maladroite, ni stupide."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse","GLOBAL",1)
~ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #67386 /* ~Annah fronce les sourcils, sa queue se met à remuer. "Oui, eh bien - tu ferais mieux de faire attention. J'apprécie pas trop ta pitié, vraiment pas."~ */
  IF ~~ THEN REPLY #67387 /* ~"C'est assez juste. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67388 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 377 // from: 187.0 477.0
  SAY #67389 /* ~"J'ai trouvé ton corps dans un endroit qui s'trouve derrière la Porte Peinte, dans le Quartier de la Lumière-Rouge de la Ruche - la porte de la rue nord, au nord-est du Bar du Cadavre Fumant. C'est dans l'allée derrière la porte que j'ai trouvé ton corps. C'est un endroit étrange, vraiment. Y a pas beaucoup d'biges qui s'y rendraient."~ */
  IF ~~ THEN REPLY #67390 /* ~"Un endroit étrange ? Comment ça ?"~ */ GOTO 380
  IF ~~ THEN REPLY #67391 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67392 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 187.1 477.1
  SAY #67393 /* ~"Il y a une étrange ruelle de l'autre côté du Chien Qui Aboie - c'est là que nous devons nous diriger. Nous pouvons passer par une porte qui se trouve à l'arrière du bâtiment."~ */
  IF ~~ THEN REPLY #67394 /* ~"Une étrange ruelle ? Qu'entends-tu par là ?"~ */ GOTO 380
  IF ~~ THEN REPLY #67395 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67396 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 379 // from: 187.2 477.2
  SAY #67397 /* ~"En descendant la ruelle étrange, vers le sud-est, après une vieille porte et quelques marches, c'est là que j'ai trouvé ton corps."~ */
  IF ~~ THEN REPLY #67398 /* ~"Une étrange ruelle ? Qu'entends-tu par là ?"~ */ GOTO 380
  IF ~~ THEN REPLY #67399 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67400 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.0 378.0 379.0
  SAY #67401 /* ~"Certains biges, des froussards, disent que c'est un endroit *hanté*." Annah crache et d'un doigt dessine un demi-cercle sur son cœur. "Quelquefois, le vent s'engouffre dans l'allée et engendre des bruits inquiétants mais ça ne veut pas dire qu'il y ait des spectres, des fantômes ou d'autres trucs du genre."~ */
  IF ~~ THEN REPLY #67402 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67403 /* ~"Très bien. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 187.3 477.3
  SAY #67404 /* ~"Oui, quoi ?"~ */
  IF ~~ THEN REPLY #67405 /* ~"Bien, que faisais-tu à chercher des cadavres dans l'Allée Enceinte ? Il a fallu que tu te fraies un passage à travers le bâtiment puis que tu passes près des dabus pour y arriver - et, de plus, cet endroit est désert comparé au reste de la Ruche, alors pourquoi allais-tu chercher des cadavres là-bas ?"~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #67406 /* ~Annah hausse les épaules. "Tout le reste de la Ruche est nettoyé. Il fallait que je trouve d'autres endroits pour faire les poches aux cadavres."~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #67407 /* ~Tandis qu'Annah parle, tu sens des picotements à l'arrière de ton crâne et tu te rends soudain compte qu'elle te ment.~ */
  IF ~~ THEN REPLY #67408 /* ~"En es-tu *sûre,* Annah ?"~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #67409 /* ~Le ton de ta voix devait avoir quelque chose de particulier car la queue d'Annah arrête de remuer pendant quelques instants avant de se s'agiter plus doucement. "Oui…*" Elle fronce les sourcils et semble un peu hésitante. "D'habitude, je ne vais pas là-bas faire les poches aux morts - en y réfléchissant, je n'y étais jamais allée auparavant. Je m'y suis juste retrouvée par hasard."~ */
  IF ~~ THEN REPLY #67410 /* ~"Alors pourquoi es-tu allée là-bas ?"~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #67411 /* ~"Je… Je ne sais pas ! J'y suis juste allée - et c'est heureux pour toi, ou tu y serais encore !"~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #67412 /* ~Les mêmes picotements qu'auparavant se manifestent à l'arrière de ton crâne et tu te rends compte qu'Annah ment mais qu'elle ne *sait* pas qu'elle ment. ~ */
  IF ~~ THEN REPLY #67413 /* ~"Annah, t'es-tu sentie obligée d'aller là-bas ? Est-ce comme cela que tu m'as trouvé ?"~ */ DO ~AddexperienceParty(2500)
SetGlobal("Annah_Alley_Geas","GLOBAL",1)
~ JOURNAL #67414 /* ~Quand Annah a découvert mon corps, je crois que quelque chose *l'incitait* à me chercher. Elle dit que mon cadavre était comme un aimant pour elle et qu'elle se sentait obligée de me chercher.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #67415 /* ~Elle acquiesce… lentement. "Oui, peut-être." Elle hausse timidement les épaules. "Ce n'était pas un de mes terrains de chasse habituels, mais je… je ne pouvais pas m'en *empêcher*. Je *voulais* savoir ce qu'il y avait là-bas, ce jour là - et t'étais là, mort." Elle marque une pause. "t'étais comme une sorte d'aimant. Je ne sais pas ce qui m'a conduit jusqu'à toi."~ */
  IF ~~ THEN REPLY #67416 /* ~"Hmmm. Curieux. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67417 /* ~"Je voulais juste savoir. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 388 // from: 187.4 477.4
  SAY #67418 /* ~Elle acquiesce avec prudence. "Oui - je ne t'ai pas oublié."~ */
  IF ~  GlobalGT("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67419 /* ~"Quand je t'ai interrogée à propos de Pharod, tu m'as dit qu'il se trouvait au sud-est de la Morgue - ce qui n'était pas le *cas*.~ */ GOTO 389
  IF ~  Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67420 /* ~"Que faisais-tu à la Morgue ?"~ */ GOTO 390
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #67421 /* ~"Oui - et tu aurais fait la même chose si une espèce d'épave effrayante s'était pointée pour te demander où pouvait se trouver ton père." Elle hausse les épaules. "De toute façon, tu as fini par le trouver, alors je ne veux plus en entendre parler, je ne veux plus."~ */
  IF ~~ THEN REPLY #67422 /* ~"Que faisais-tu à la Morgue ?"~ */ GOTO 390
  IF ~~ THEN REPLY #67423 /* ~"Eh bien, oublie ça. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67424 /* ~"Eh bien, si tu m'avais dit où il était, ça nous aurait simplifié la vie. Allons-y, maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 388.1 389.0
  SAY #67425 /* ~"C'est mon territoire - je cherchais des morts." Elle te regarde de haut en bas puis fait la grimace. "J'en ai trouvé un qui bouge."~ */
  IF ~~ THEN REPLY #67426 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67427 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 187.5 477.5
  SAY #67428 /* ~Annah te regarde avec méfiance et sa queue arrête de remuer quelques instants, puis se remet à se balancer plus doucement qu'avant. "Ouais, j'ai *p't'être* trouvé quelque chose. Mais, *si* j'ai trouvé quelque chose, c'est à moi - le reste est entre les mains de Pharod."~ */
  IF ~~ THEN REPLY #67429 /* ~"Annah, je n'ai pas le temps de jouer… qu'as-tu trouvé sur mon corps ?"~ */ GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #67430 /* ~"Et bien, tu avais quelques babioles en fer… un p'tit peu de jonc, mais je n'y ai pas touché pour que les Hommes-Poussière pensent que j'étais un peu honnête. T'avais aussi un anneau très laid que j'ai conservé…" Elle sort alors un petit anneau avec une pierre montée dessus. "Ça vaut trois fois plus que le jonc et les trucs de fer." Elle examine l'anneau. "C'est dommage qu'il soit trop laid pour être porté."~ */
  IF ~~ THEN REPLY #67431 /* ~"J'aimerais bien que tu me rendes cet anneau maintenant."~ */ DO ~GiveItemCreate("Ring03",Protagonist,0,0,0)
~ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #67432 /* ~Elle examine l'anneau en fronçant les sourcils, te regarde, puis observe de nouveau l'anneau. Avec un sourire méprisant, elle te le tend. "Toute façon, je voulais pas d'ce truc laid."~ */
  IF ~~ THEN REPLY #67433 /* ~"Parfait. Maintenant tu m'as dis que certains objets trouvés sur mon corps étaient entre les mains de Pharod, que voulais-tu dire ?"~ */ GOTO 394
  IF ~~ THEN REPLY #67434 /* ~"Eh bien, oublie ça. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67435 /* ~"Nous en reparlerons plus tard. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #67436 /* ~"Oui. Pharod prend sa part sur ce que nous trouvons sur chaque corps. C'est son droit, en tant que seigneur du Village et tout ça."~ */
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67437 /* ~"Sur tous les corps que vous trouvez ? Ça fait *beaucoup* de corps."~ */ GOTO 395
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67438 /* ~"Il doit garder tout ça dans la Voûte. J'ai d'autres questions…"~ */ GOTO 477
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67439 /* ~" Il doit garder tout ça dans la Voûte. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 395 // from: 187.9 394.0 429.0 477.9
  SAY #67440 /* ~"Oh ! oui - d'après ce qu'on raconte, le vieux radoteur aurait un beau magot planqué pas très loin de lui. Je ne vois aucune autre raison pour laquelle il resterait dans cet endroit crasseux exposé aux quatre vents. Ça pue et c'est plein de recoins obscurs."~ */
  IF ~~ THEN REPLY #67441 /* ~"Vraiment ? Et ce serait là qu'il met tous les tributs qu'il reçoit ?"~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #67442 /* ~"Oui." Elle te regarde du coin de l'œil. "Qu'est-ce que tu mijotes encore ? T'as l'intention de le délester de ses biens ?"~ */
  IF ~~ THEN REPLY #67443 /* ~Dis la vérité : "Non. Je n'ai aucune raison de faire une telle chose. Pharod ne m'a rien fait."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Annah_1","GLOBALLaw",1)
~ GOTO 397
  IF ~~ THEN REPLY #67444 /* ~Mens : "Non. Je n'ai aucune raison de faire une telle chose."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_2","GLOBALLaw",-1)
~ GOTO 397
  IF ~~ THEN REPLY #67445 /* ~"Après m'être échiné à lui trouver cette sphère, sans rien en tirer en retour, je dois avouer que je suis tenté."~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 396.0 396.1
  SAY #67446 /* ~"Bien - je te mets en garde contre une telle idée. Pharod peut se montrer un peu idiot quelquefois, mais il est aussi méchant que n'importe quelle vermine fiélonne quand il s'énerve." Elle fronce les sourcils. "Et il aime *particulièrement* ses souvenirs."~ */
  IF ~~ THEN REPLY #67447 /* ~"Mais où pourrait-il conserver tout ça ? S'il est au Village depuis aussi longtemps qu'il le dit, il doit avoir amassé un sacré magot."~ */ GOTO 399
END

IF ~~ THEN BEGIN 398 // from: 396.2
  SAY #67448 /* ~"Je te mets en garde contre une telle idée. Pharod peut se montrer un peu idiot quelquefois, mais il est aussi méchant que n'importe quelle vermine fiélonne quand il s'énerve." Elle fronce les sourcils. "Et il aime *particulièrement* ses souvenirs."~ */
  IF ~~ THEN REPLY #67449 /* ~"Mais où pourrait-il conserver tout ça ? S'il est au Village depuis aussi longtemps qu'il le dit, il doit avoir amassé un sacré magot."~ */ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 397.0 398.0
  SAY #67450 /* ~"Eh bien…" Annah se tait quelques instants. "Je sais qu'il n'a jamais quitté sa demeure pour utiliser son butin quand il en avait besoin."~ */
  IF ~~ THEN REPLY #67451 /* ~"Il ne doit pas avoir envie d'être obligé d'aller très loin avec sa jambe estropiée."~ */ GOTO 400
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #67452 /* ~"Oui, c'est vrai - mais, si tu l'observes avec plus d'attention, tu verras qu'il n'est pas boiteux, bien qu'il fasse toute cette comédie à propos de sa jambe."~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #67453 /* ~"Alors a-t-il cette béquille ?"~ */ GOTO 401
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #67454 /* ~"Oh ! cette béquille… pourrait bien être la clef d'un portail, non ?"~ */ GOTO 402
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #67455 /* ~Annah hausse les épaules. "Je ne sais pas." Elle hoche la tête. " Tu pourrais aussi bien te demander pourquoi tu as des os autour de la taille."~ */
  IF ~~ THEN REPLY #67456 /* ~"Aucune importance. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67457 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from: 400.1
  SAY #67458 /* ~Annah fronce les sourcils en signe de réflexion puis hoche lentement la tête. "Oui… il y a de l'idée." Elle hausse les épaules. "Bien que je serais bien incapable de savoir comment l'utiliser. Peut-être qu'il suffit juste de l'avoir."~ */
  IF ~~ THEN REPLY #67459 /* ~"Nous le découvrirons peut-être. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67460 /* ~"Nous verrons cela plus tard. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 403 // from: 187.8 477.8
  SAY #67461 /* ~"Le vieux boiteux radoteur ? C'est mon vieux… enfin, pas mon *véritable* père. Il m'a trouvée quand j'étais encore une petite fille…" Annah hausse les épaules. "Il avait besoin d'un Récupérateur capable de se faufiler dans les endroits où le reste de ses hommes ne pouvaient pas se glisser. Il m'a donc prise sous sa béquille protectrice."~ */
  IF ~  Global("Annah_Looks","GLOBAL",0)
~ THEN REPLY #67462 /* ~"De toute façon, j'avais jamais remarqué que vous vous ressembliez."~ */ DO ~SetGlobal("Annah_Looks","GLOBAL",1)
~ GOTO 404
  IF ~~ THEN REPLY #67463 /* ~"Peux-tu me dire autre chose à son sujet ?"~ */ GOTO 424
  IF ~~ THEN REPLY #67464 /* ~"J'aurai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67465 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #67466 /* ~Annah plisse les yeux et sa queue se met à fouetter l'air. "Et que veux-tu dire par *là* ?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67467 /* ~"Je voulais dire qu'il est difficile de voir une quelconque ressemblance entre toi et cet espèce de troll affreux, voûté, avare et puant."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 410
  IF ~~ THEN REPLY #67468 /* ~"Je voulais dire qu'il ne ressemblait pas vraiment à un tieffelin."~ */ GOTO 405
  IF ~~ THEN REPLY #67469 /* ~"Je voulais dire que tu ne ressembles pas vraiment à un humain."~ */ GOTO 406
  IF ~~ THEN REPLY #67470 /* ~"Je voulais dire que vous ne vous ressemblez pas."~ */ GOTO 407
  IF ~~ THEN REPLY #67471 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67472 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 405 // from: 404.1 409.1
  SAY #67473 /* ~"Oui, c'est *évident*… mais si tu savais autre chose sur les tieffelins que ce que tu as entendu dire dans la rue, tu saurais qu'aucuns d'entre nous ne se ressemblent." Elle secoue la tête. "Aucun espoir pour toi, ça c'est certain."~ */
  IF ~~ THEN REPLY #67474 /* ~"Ce n'était pas une *insulte.* Vous êtes tous les deux tellement différents. Je veux dire que Pharod est… tellement… *Pharod,* et toi, non."~ */ GOTO 407
  IF ~~ THEN REPLY #67475 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67476 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 406 // from: 404.2 409.2
  SAY #67477 /* ~"Oh ! Alors ça, c'est la meilleure ! Tu traînes dans l'coin à moitié écorché et tu as le culot de m'donner des leçons sur l'apparence d'un être *humain* ? Tu sais ce que tu peux en faire de tes leçons ?"~ */
  IF ~~ THEN REPLY #67478 /* ~"Ce n'était pas une *insulte.* Vous êtes tous les deux tellement différents. Je veux dire que Pharod est… tellement… *Pharod,* et toi, non."~ */ GOTO 407
  IF ~~ THEN REPLY #67479 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67480 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 407 // from: 404.3 405.0 406.0 409.3
  SAY #67481 /* ~"Oh ! et qu'est-ce qui peut bien te faire dire ça ? Mes cheveux ? Ma peau ? Je ne vois rien d'autre…" Annah se frappe le front, puis ricane, "peut-être est-ce ma *queue ?* Oh ! oui, ça doit être ça ! Tu es tellement plus brillant que moi, vraiment. Une vrai perle."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67482 /* ~"Je voulais dire qu'il est difficile de voir une quelconque ressemblance entre toi et cet espèce de troll affreux, voûté, avare et puant."~ */ GOTO 410
  IF ~~ THEN REPLY #67483 /* ~"Par les enfers, quel est ton problème ? ! J'ai juste fait une simple remarque et on dirait que je t'ai donné un coup de couteau."~ */ GOTO 408
  IF ~~ THEN REPLY #67484 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67485 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 408 // from: 407.1
  SAY #67486 /* ~"Un coup de couteau est un coup de couteau, c'est bien cela."~ */
  IF ~~ THEN REPLY #67487 /* ~"Tout ce que j'ai dit, c'est que Pharod et toi vous ne vous ressemblez pas. Vous n'avez rien en commun."~ */ GOTO 410
END

IF ~~ THEN BEGIN 409 // from:
  SAY #67488 /* ~"Ah non ! tu ne vas me resservir ton 'Aucune importance. Allons-y', pas question ! Qu'est-ce qu'elles voulaient dire, les saletés que tu viens de sortir ? !"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67489 /* ~"Je voulais dire qu'il est difficile de voir une quelconque ressemblance entre toi et cet espèce de troll affreux, voûté, avare et puant."~ */ GOTO 410
  IF ~~ THEN REPLY #67490 /* ~"Je voulais dire qu'il ne ressemblait pas vraiment à un tieffelin."~ */ GOTO 405
  IF ~~ THEN REPLY #67491 /* ~"Je voulais dire que tu ne ressembles pas vraiment à un humain."~ */ GOTO 406
  IF ~~ THEN REPLY #67492 /* ~"Je voulais dire que vous ne vous ressemblez pas."~ */ GOTO 407
END

IF ~~ THEN BEGIN 410 // from: 404.0 407.0 408.0 409.0
  SAY #67493 /* ~Le visage d'Annah s'empourpre. "Oh ! c'est *ainsi* ? Et à quoi vois-tu cela ?"~ */
  IF ~~ THEN REPLY #67494 /* ~Dis la vérité : "Je veux dire, t'es-tu déjà *regardée* ? Mis à part l'air que tu te donnes, tu es sûre de toi, sensible et gracieuse. Et je ne parle même pas de ton aspect plutôt agréable : ces cheveux rouge-feu, ces yeux verts et ce profil saisissant."~ */ GOTO 412
  IF ~~ THEN REPLY #67495 /* ~Mens : "Je veux dire, t'es-tu déjà *regardée* ? Mis à part l'air que tu te donnes, tu es sûre de toi, sensible et gracieuse. Et je ne parle même pas de ton aspect plutôt agréable : ces cheveux rouge-feu, ces yeux verts et ce profil saisissant."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_3","GLOBALLaw",-1)
~ GOTO 412
  IF ~~ THEN REPLY #67496 /* ~Dis la vérité : "Je veux dire, regarde-toi. Tu es une pirate des corps au moins deux fois plus pingre qu'aimerait l'être Pharod et tu as cette étrange odeur de la Ruche, qui me pique les yeux. Tu as aussi cette saleté de queue de rat qui pend à ton derrière."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.2
  SAY #67497 /* ~Le visage d'Annah se déforme sous l'effet de la colère et ses yeux jettent des éclairs. "Oh - t'ferais bien d'faire attention avec moi. P'têt bien qu'la prochaine fois j'te mettrai dans le livre des morts plutôt qu't'en sortir."~ */
  IF ~~ THEN REPLY #67498 /* ~"Tu peux toujours essayer, *jeune fille,* mais c'est plutôt moi qui vais tirer profit de ton cadavre, et pas l'inverse."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #67499 /* ~"Continue à lancer tes menaces si ça te fait plaisir. Pour l'instant, j'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67500 /* ~"Aucune importance. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 412 // from: 410.0 410.1
  SAY #67501 /* ~Annah se contente de te regarder.~ */
  IF ~~ THEN REPLY #67502 /* ~"C'est tout ce que je voulais dire quand je disais que Pharod et toi, vous ne vous ressembliez pas."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #67503 /* ~Annah hoche la tête, le regard toujours braqué sur toi. Elle ne cille même pas.~ */
  IF ~~ THEN REPLY #67504 /* ~"M'écoutes-tu ?"~ */ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY #67505 /* ~Soudain Annah se colle à toi et te mord le cou en laissant échapper un sifflement. Plutôt que de s'écarter, elle se serre contre toi et te murmure à l'oreille. "Tu t'imagines avoir la moindre chance ?" Lentement, sa queue commence à fouetter l'air, mais le rythme est plus hypnotique que violent.~ */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #67506 /* ~Tu peux sentir le cœur d'Annah battre fort dans sa poitrine. Ses joues s'empourprent. Soudain, tu te rends compte que sa peau est lisse, douce. "Je veux te dire quelque chose mais ne te moque pas de moi."~ */
  IF ~~ THEN REPLY #67507 /* ~"Très bien…"~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #67508 /* ~"Sais-tu que j'aime ton *odeur* ? Oh ! oui - ça me rend encore plus dingue qu'un Chaoteux." Elle renifle ta joue et laisse échapper un sifflement. "Je me rends compte de la manière dont tu me regardes et *j'aime* ça. Tes *yeux* sont avides. Ça m'embrase littéralement."~ */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #67509 /* ~"Je veux te mordre, doucement, autour du cou…" Elle te mordille le cou, sans percer ta peau, et, à chaque murmure, tu peux sentir son souffle sur ton oreille. Ses mains se nouent derrière ton cou, et se resserrent. Tu peux sentir ses ongles s'enfoncer dans ta peau. "Je veux planter mes ongles dans ton cou et te forcer à m'embrasser."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 731
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67512 /* ~Tiens-la et écoute…~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.1
  SAY #67511 /* ~"Sais-tu que je peux te *sentir* à cinquante pas. Peut-être que si tu te lavais, tu vaudrais le coup." Ses yeux étincellent. "Je pourrais te faire l'amour avec une telle vigueur que tu en tomberais de l'Aiguille." Elle recule, sa queue te caressant doucement la cuisse, puis elle te lance un regard sévère. "Alors… as-tu envie de moi ?"~ */
  IF ~~ THEN REPLY #67514 /* ~Serre-la contre toi et mords-la à ton tour.~ */ GOTO 419
  IF ~~ THEN REPLY #67515 /* ~"Oui… oui."~ */ GOTO 422
  IF ~~ THEN REPLY #67516 /* ~"Annah, on laisse tomber ce genre de choses, d'accord ?"~ */ GOTO 423
END

IF ~~ THEN BEGIN 419 // from: 418.0
  SAY #67513 /* ~Tu serres Annah contre toi et avant qu'elle ait pu se libérer, tu la mords délicatement dans le cou. Alors que tes dents touchent sa peau, elle se met à feuler bruyamment et à donner des coups de griffes pour s'arracher à toi. "Je ne faisais que te *taquiner*, espèce de vampire ! Ça-ça suffit !" Cependant, malgré ses protestations, elle est rouge comme une pivoine et sa respiration se fait haletante. "Et fais attention à tes mains, la prochaine fois !" Elle croise les bras. "Tu me fais rougir !"~ */
  IF ~~ THEN REPLY #67517 /* ~Mens : "Quel est le problème ? D'où je viens, on se dit bonjour en se mordillant."~ */ GOTO 420
  IF ~~ THEN REPLY #67518 /* ~"Tu m'as mordu, je t'ai mordue. Si tu n'aimes pas ça, alors ne le FAIS pas."~ */ GOTO 421
  IF ~~ THEN REPLY #67519 /* ~"Bon, écoute, ça suffit… j'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67520 /* ~"Bon, ça suffit ; allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #67521 /* ~"Oh, *très bien*, je te crois." La respiration d'Annah se fait plus régulière et redevient normale. "Évite juste de poser les mains sur moi, tu m'entends ?"~ */
  IF ~~ THEN REPLY #67522 /* ~"Bon, écoute, ça suffit… j'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67523 /* ~"Bon, ça suffit ; allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #67524 /* ~"Je ferai ce qui me plaira de faire." Annah affiche un air méprisant mais semble encore un peu troublée. "Évite juste de poser les mains sur moi, tu m'entends ?"~ */
  IF ~~ THEN REPLY #67525 /* ~"Bon, écoute, ça suffit… j'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67526 /* ~"Bon, ça suffit ; allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from: 418.1
  SAY #67527 /* ~"Eh bien, tes chances sont encore plus minces que tu ne le penses." Annah affiche un air méprisant mais semble encore un peu troublée. "Je ne faisais que te *taquiner*, espèce de vampire ! Tu ne sens pas aussi bon, oh ! que non."~ */
  IF ~~ THEN REPLY #67528 /* ~"Bon, écoute, ça suffit… j'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67529 /* ~"Bon, ça suffit ; allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 423 // from: 418.2
  SAY #67530 /* ~"Ne crains rien." Annah affiche un air méprisant mais semble encore un peu troublée. " Je ne faisais que te *taquiner*, espèce de vampire ! Tu ne sens pas aussi bon, oh ! que non."~ */
  IF ~~ THEN REPLY #67531 /* ~"Bon, écoute, ça suffit… j'ai d'autres questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67532 /* ~"Bon, ça suffit ; allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 424 // from: 403.1
  SAY #67533 /* ~"Il est au Village depuis beaucoup plus longtemps que moi. Il est arrivé ici il y a un paquet d'années, certains villageois disent même qu'il a peut-être *fondé* cet endroit,." Annah fronce les sourcils. "Pharod est un type astucieux. Il a la manière pour extorquer encore plus d'argent que la plupart des autres et il n'a jamais manqué de jonc."~ */
  IF ~  Global("Pharod_Annah_Story","GLOBAL",0)
~ THEN REPLY #67534 /* ~"A-t-il cherché cette sphère de bronze pendant tout ce temps ?"~ */ GOTO 425
  IF ~  Global("Pharod_Annah_Story","GLOBAL",1)
~ THEN REPLY #67535 /* ~"A-t-il cherché cette sphère de bronze pendant tout ce temps ?"~ */ GOTO 426
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67536 /* ~"Quand je lui ai rendu visite, il n'a pas fait étalage de ses richesses. Il doit avoir un peu plus de mal à soutirer de l'argent que tu ne le penses."~ */ GOTO 429
  IF ~~ THEN REPLY #67537 /* ~"J'aurai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67538 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #67539 /* ~"J'suppose." Annah hausse les épaules encore une fois. "Je ne sais pas pourquoi il la voulait tellement. J'ai pu la sentir dès que tu la lui as apportée." Elle plisse le nez. "Quelle infecte odeur de crème. Pourtant… cela devait avoir une certaine importance pour qu'il s'obstine autant pour l'avoir -  une demi-douzaine de Récupérateurs se sont retrouvés inscrits dans le livre des morts en essayant de mettre la main dessus."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #67540 /* ~"Je crois qu'il la cherchait car il pensait qu'elle pouvait lui sauver la vie."~ */ DO ~SetGlobal("Pharod_Annah_Story","GLOBAL",1)
AddexperienceParty(2500)
~ GOTO 427
  IF ~~ THEN REPLY #67541 /* ~"J'aurai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67542 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from: 424.1
  SAY #67543 /* ~Annah hausse les épaules encore une fois. "La bêtise de Pharod n'a pas de limites. Ce n'est pas une babiole qui peut vous sauver de la main du destin. Si une âme est suffisamment noircie, on a beau la laver, elle restera souillée." Elle marque une pause. "Cependant, s'il croyait qu'elle pouvait le sauver, elle *devait* avoir une certaine importance… ou tout au moins une certaine valeur."~ */
  IF ~~ THEN REPLY #67544 /* ~"J'aurai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67545 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #67546 /* ~Elle cligne des yeux. "Que veux-tu dire ?"~ */
  IF ~~ THEN REPLY #67547 /* ~"Pharod n'a pas mené une vie très honnête - il était autrefois Greffier dans un des Hauts Quartiers. Il s'est apparemment servi de son poste pour mentir, tricher et s'en prendre aux autres - à sa mort, il était donc destiné à finir aux enfers. Il pensait que la sphère de bronze pouvait le sauver - il le croyait tellement qu'il a abandonné son titre, sa fortune et sa position pour tenter de la trouver."~ */ JOURNAL #67548 /* ~J'ai répété à Annah ce que j'ai appris de Pestilent, dans la Ruche. Ne sachant apparemment rien du passé de Pharod, elle a été très surprise par ce que je lui ai dit.~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #67549 /* ~"Vraiment ?" Elle reste silencieuse un moment puis secoue la tête. "Non, la bêtise de Pharod n'a pas de limites. Ce n'est pas une babiole qui peut vous sauver de la main du destin. Si une âme est suffisamment noircie, on a beau la laver, elle restera souillée." Elle marque une pause. "Cependant, s'il croyait qu'elle pouvait le sauver, elle *devait* avoir une certaine importance… ou tout au moins une certaine valeur."~ */
  IF ~~ THEN REPLY #67550 /* ~"J'aurai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67551 /* ~"Je vois. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from: 424.2
  SAY #67552 /* ~"Non, il ne l'a pas montrée, mais il n'aime pas que d'autres farfouillent dans ses affaires, alors il les cache."~ */
  IF ~~ THEN REPLY #67553 /* ~"Ses trésors sont donc cachés quelque part ?"~ */ GOTO 395
END

IF ~~ THEN BEGIN 430 // from: 187.14 477.14
  SAY #67554 /* ~Annah fronce les sourcils. "Elle ne voulait *rien* dire. Ce n'était rien de plus que les divagations d'une sorcière folle."~ */
  IF ~~ THEN REPLY #67555 /* ~"Es-tu sûre ?"~ */ GOTO 431
  IF ~~ THEN REPLY #67556 /* ~"Oublie ça, je voulais te demander autre chose…"~ */ GOTO 477
  IF ~~ THEN REPLY #67557 /* ~"Oublie ça. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #67558 /* ~"Ce n'était RIEN. Si tu ne sais pas ce qu'elle voulait dire, eh bien, moi non plus."~ */
  IF ~~ THEN REPLY #67559 /* ~"Écoute, si tu veux en parler, je t'éc-"~ */ GOTO 432
  IF ~~ THEN REPLY #67560 /* ~"Oublie ça, je voulais te demander autre chose…"~ */ GOTO 477
  IF ~~ THEN REPLY #67561 /* ~"Oublie ça. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #67562 /* ~"Je…" Annah baisse les yeux quelques instants. "J'sais pas pourquoi je voyage avec toi ! J'sais pas pourquoi je suis venue avec toi pour trouver Ravel !" Elle se renfrogne, mais elle semble plus troublée qu'en colère. "Cela n'a aucun *sens*, et je n'aime pas ça."~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Ravel_Torment","GLOBAL",1)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #67563 /* ~"Je…" Annah inspire profondément. "Je pense que je *ressens* quelque chose pour toi. C'est une sensation étrange… je ne pense pas avoir aimé *quelqu'un*. Mais toi…" Annah hausse timidement les épaules en évitant ton regard. "Je ne sais pas ce qui m'attire en toi, j'veux dire - t'es qu'un *idiot* la plupart du temps, tu marches comme si t'avais les hanches cassées, t'es maladroit, tu pues comme un zombi, mais…" Elle soupire. "Je *t'aime*."~ */
  IF ~~ THEN REPLY #67565 /* ~"Annah, pourquoi n'as-tu rien dit ? Nous aurions pu régler ça il y -"~ */ GOTO 437
  IF ~~ THEN REPLY #67566 /* ~"Annah, tu comptes beaucoup pour moi… mais pas de cette manière."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.1
  SAY #67564 /* ~Annah se renfrogne et regarde par terre. "Oui, c'est p'têt une bénédiction. Avoir des sentiments pour les autres, c'est un coup à se faire poignarder là où ça ne guérit pas "~ */
  IF ~~ THEN REPLY #67567 /* ~"Annah, pourquoi n'as-tu rien dit ? Nous aurions pu régler ça il y -"~ */ GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #67568 /* ~"C'est parce que je pense que tu es *condamné*." Soudain, Annah croise ton regard. "Je crois que tu es enchaîné, mais que tu ne le sais pas. Alors… tu m'attendris et j'ai peur pour toi… et ça me *tue*. Je ne veux pas qu'il t'arrive quelque chose, mais je ne sais pas comment faire pour l'empêcher. Alors… je marche à tes côtés."~ */
  IF ~~ THEN REPLY #67569 /* ~"J'apprécie que tu sois à mes côtés, Annah."~ */ GOTO 436
  IF ~~ THEN REPLY #67570 /* ~"Eh bien, je pense que je suis condamné. Écoute, j'ai une autre question…"~ */ GOTO 477
  IF ~~ THEN REPLY #67571 /* ~"Je vois. Écoute, oublions ça. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 436 // from: 435.0 437.2
  SAY #67572 /* ~"Oui… bien…" elle reste silencieuse un moment et hausse les épaules. "Aucune importance."~ */
  IF ~~ THEN REPLY #67573 /* ~"Écoute, j'ai une autre question…"~ */ GOTO 477
  IF ~~ THEN REPLY #67574 /* ~"Très bien, Annah. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 437 // from: 433.0
  SAY #67575 /* ~"C'est parce que je pense que tu es *condamné*." Soudain, Annah croise ton regard. "Je crois que tu es enchaîné, mais que tu ne le sais pas. Alors… tu m'attendris et j'ai peur pour toi… et ça me *tue*. Je ne veux pas qu'il t'arrive quelque chose, mais je ne sais pas comment faire pour l'empêcher !"~ */
  IF ~  NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67576 /* ~Embrasse-la.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67577 /* ~Embrasse-la.~ */ GOTO 444
  IF ~  Global("Annah_Kissing","GLOBAL",1)
~ THEN REPLY #67696 /* ~"J'apprécie que tu sois à mes côtés, Annah."~ */ GOTO 436
END

IF ~~ THEN BEGIN 438 // from: 187.13 477.13
  SAY #67578 /* ~Annah grogne. "Si tu veux embrasser une fiélonne, bécoter cette sorcière a été la chose la moins risquée que tu aies jamais faite." Elle crache. "Maintenant arrête de branler ton râtelier. Je ne veux plus en entendre parler, plus jamais."~ */
  IF ~~ THEN REPLY #67579 /* ~"Oublie ça, je voulais te demander autre chose…"~ */ GOTO 477
  IF ~~ THEN REPLY #67580 /* ~"Oublie ça. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 439 // from:
  SAY #67581 /* ~Annah fronce les sourcils, puis approuve. "Oui, tu as eu raison de ne pas embrasser cette sorcière."~ */
  IF ~~ THEN REPLY #67582 /* ~"Eh bien, je ne l'ai pas embrassée parce que je voulais t'embrasser, toi."~ */ GOTO 440
  IF ~~ THEN REPLY #67583 /* ~"Oublie ça, je voulais te demander autre chose…"~ */ GOTO 477
  IF ~~ THEN REPLY #67584 /* ~"Oublie ça. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67585 /* ~"Eh ? Quoi ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67586 /* ~Embrasse-la.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67587 /* ~Embrasse-la.~ */ GOTO 444
  IF ~~ THEN REPLY #67588 /* ~"Aucune importance. Je voulais te demander autre chose…"~ */ GOTO 477
  IF ~~ THEN REPLY #67589 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 441 // from: 187.12 477.12
  SAY #67590 /* ~Annah roule des yeux . "Oh ! oui, tu es prêt à bécoter la plus malfaisante et la plus laide de toutes les sorcières des Plans connus et tu refuses de m'embrasser ? Ah ! d'accord, tout ce que tu peux dire maintenant n'arrangera rien !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67591 /* ~Embrasse-la.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67592 /* ~Embrasse-la.~ */ GOTO 444
  IF ~~ THEN REPLY #67594 /* ~"Oublie ça, je voulais te demander autre chose…"~ */ GOTO 477
  IF ~~ THEN REPLY #67595 /* ~"Oublie ça. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 442 // from: 437.0 440.0 441.0
  SAY #67596 /* ~De ta main libre, tu lui saisis la nuque et tu vois les traits d'Annah se figer tandis que tu l'attires vers toi et que tu l'embrasses.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #67597 /* ~Tout d'abord, tu as l'impression d'embrasser un mur, puis elle commence à t'embrasser à son tour, hésitante, au début, puis avec plus de confiance, ses dents mordillant ta lèvre supérieure. Tu l'entends grogner et sa queue s'enroule autour de ta jambe et se resserre en même temps qu'elle te mord.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 732
END

IF ~~ THEN BEGIN 444 // from: 437.1 440.1 441.1
  SAY #67598 /* ~De ta main libre, tu lui saisis la nuque et tu vois les traits d'Annah se figer tandis que tu l'attires vers toi et que tu l'embrasses.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67599 /* ~Tout d'abord, tu as l'impression d'embrasser un mur, puis elle commence à t'embrasser à son tour, hésitante, tout d'abord, puis avec plus de confiance, ses dents acérées mordillant ta lèvre supérieure. Tu l'entends grogner et sa queue s'enroule autour de ta jambe et se *resserre* en même temps qu'elle te mord.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67601 /* ~Pendant que vous vous embrassez, tu remarques que la peau d'Annah devient chaude - elle irradie de la chaleur, comme du charbon. Tu recules, après qu'Annah t'ai mordillé encore une fois. Elle semble tout d'abord confuse, puis se met en colère. "Qu'est-ce qu'il y a encore ? Je m'y prends mal ?"~ */
  IF ~~ THEN REPLY #67602 /* ~"Non, c'est ta peau - pourquoi devient-elle aussi chaude ?"~ */ DO ~SetGlobal("Annah_Kissing","GLOBAL",1)
PermanentStatChange("Annah",RESISTFIRE,RAISE,5)
PermanentStatChange("Annah",RESISTMAGICFIRE,RAISE,5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67603 /* ~"Ah ! oui ?" Annah fronce les sourcils et se regarde. Tu remarques des petites volutes de fumée qui s'échappent de son justaucorps. "Ça, c'est l'sang de fiélon…" Elle hausse un sourcil. "Mais c'est la première fois que ça se produit."~ */
  IF ~~ THEN REPLY #67604 /* ~"Quoi ? Personne ne t'a jamais embrassée ?"~ */ GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #67605 /* ~Elle hausse les épaules. "Personne n'a jamais osé. Et, même s'ils l'avaient fait, j'doute que ça aurait provoqué cette réaction."~ */
  IF ~~ THEN REPLY #67606 /* ~"Je prendrai ça comme un compliment."~ */ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #67607 /* ~"Oui… euh…" Annah regarde aux alentours et sa queue se met à remuer dans tous les sens. "On s'remet en route ou on attend l'déluge ? On n'a pas le temps de bavasser."~ */
  IF ~~ THEN REPLY #67608 /* ~"Eh bien, je n'ai pas encore fini de t'embrasser. Viens là."~ */ GOTO 450
  IF ~~ THEN REPLY #67692 /* ~"Très bien, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #67609 /* ~Elle recule, effrayée. "Nan - qui sait ce qui risque d'arriver après - mon corps va peut-être *s'embraser* ! Gardez vos distances, toi et tes lèvres !"~ */
  IF ~~ THEN REPLY #67610 /* ~"Très bien - ça va pour CETTE fois. Allons-y."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 460 even though they appear after this state */
~  InParty("Annah")
InParty("Grace")
Global("Annah_Accuse_Grace","GLOBAL",0)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 451 // from:
  SAY #67611 /* ~Annah te regarde et fronce les sourcils. "Hein ? Qu'est-ce que tu m'veux, maintenant ?"~ */
  IF ~~ THEN REPLY #67612 /* ~"Tu vas bien ?"~ */ GOTO 452
  IF ~~ THEN REPLY #67613 /* ~"Je souhaiterais te poser quelques questions."~ */ GOTO 453
  IF ~~ THEN REPLY #67614 /* ~"Rien, Annah. Je vérifiais pour voir si tu étais toujours avec moi."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #67615 /* ~Annah te lance un regard noir.~ */
  IF ~~ THEN REPLY #67616 /* ~"Je voulais te poser d'autres questions."~ */ GOTO 453
  IF ~~ THEN REPLY #67617 /* ~"Laisse tomber. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 451.1 452.0
  SAY #67618 /* ~"Si t'allais plutôt le demander à la succube, hein ?" Annah plisse les paupières. "Et pourquoi est-ce qu'on s'embarrasse d'elle, d'abord ? On a pas besoin d'elle, ça non."~ */
  IF ~~ THEN REPLY #67619 /* ~"Je n'ai pas de temps à perdre en fariboles, Annah. Arrête de hurler et donne-moi un coup de main."~ */ GOTO 455
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67620 /* ~"J'ai besoin de toute l'aide possible, Annah… y compris la tienne."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67621 /* ~"S'il te plaît, Annah, arrête. Tu es très importante pour moi et j'ai besoin de ton aide."~ */ GOTO 458
  IF ~~ THEN REPLY #67622 /* ~"Annah, c'est toi que je veux à mes côtés, pas elle. Si elle te dérange, je lui demanderai de partir."~ */ GOTO 454
  IF ~~ THEN REPLY #67623 /* ~"Je n'ai pas de temps à perdre avec toi, Annah. Si la présence de Tombée-en-Disgrâce ne te convient pas, va-t'en."~ */ GOTO 455
  IF ~~ THEN REPLY #67624 /* ~"Nous en parlerons plus tard. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.3
  SAY #67625 /* ~"Alors, fais-le !" Annah te regarde méchamment. "J'te parie qu't'en es pas capable. Si t'y arrives, tant mieux, mais sinon, tu peux t'attendre à c'que j'ramène ça sur l'tapis."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67626 /* ~"J'ai besoin de toute l'aide possible, Annah… y compris la tienne."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67627 /* ~"S'il te plaît, Annah, arrête. Tu es très importante pour moi et j'ai besoin de ton aide."~ */ GOTO 458
  IF ~~ THEN REPLY #67629 /* ~"Je n'ai pas de temps à perdre avec toi, Annah. Si la présence de Tombée-en-Disgrâce ne te convient pas, va-t'en."~ */ GOTO 455
  IF ~~ THEN REPLY #67630 /* ~"Nous en parlerons plus tard. Continuons."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 453.0 453.4 454.2 457.1 457.2 460.2 461.3 462.1 463.4
  SAY #67631 /* ~"Qui a *BESOIN* d'toi, hein ?" Annah ôte sa sacoche, la laisse tomber à tes pieds et crache dessus. "Me cause plus JAMAIS ou j't'ouvre l'ventre, espèce d'immonde LOQUE puante pleine de cicatrices. Va POURRIR en enfer !"~ */
  IF ~~ THEN REPLY #67632 /* ~"Dans ce cas, va-t'en. Je ne veux plus te revoir."~ */ DO ~LeaveParty()
DropInventory()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1 454.0
  SAY #67633 /* ~"T'es qu'un sale *menteur*, ça oui. Tu m'as juste laissée te suivre parce que tu sais pas quoi faire de moi ! Pourquoi tu m'as pas juste dit de m'tirer quand Pharod t'a rendu responsable de moi ?"~ */
  IF ~~ THEN REPLY #67634 /* ~"Parce que…"~ */ GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #67635 /* ~"Tu crois vraiment que ça m'plaît d'me balader avec toi, hein ? Parce que…" Annah fait une grimace de dégoût. "Parce que ta vie, si on peut appeler ça comme ça, c'est une sale histoire, ça oui. Tu crois qu't'as rendez-vous avec le destin, mais c'est pas vrai. C'est une sale histoire, j'te dis !"~ */
  IF ~~ THEN REPLY #67636 /* ~"Annah, si je ne t'ai pas demandé de partir, c'est que je ne *veux* pas que tu le fasses."~ */ GOTO 458
  IF ~~ THEN REPLY #67637 /* ~"Je t'interdis de me parler de la sorte. À partir de maintenant, tu garderas le silence et tu feras ce qu'on te dit, sans quoi ta vie deviendra un aussi beau merdier que la mienne !"~ */ GOTO 455
  IF ~~ THEN REPLY #67638 /* ~"Je n'ai pas de temps à perdre avec toi, Annah. Si la présence de Tombée-en-Disgrâce ne te convient pas, va-t'en."~ */ GOTO 455
END

IF ~~ THEN BEGIN 458 // from: 453.2 454.1 457.0
  SAY #67639 /* ~"Ah ouais, et pourquoi ? T'as pitié d'moi, c'est ça ? Tu crois que j'te ralentis ? Allez, vas-y, dis-le, si tu l'oses !"~ */
  IF ~~ THEN REPLY #67640 /* ~"Je n'ai pas pitié de toi et tu ne me ralentis pas. Tu es douée, rapide… et j'ai besoin de toute l'aide que je peux trouver."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse_Grace","GLOBAL",1)
~ GOTO 459
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #67641 /* ~Annah fronce les sourcils et sa queue bat de gauche à droite. "Ouais, d'accord… mais en tout cas, si j'vois qu'elle essaye d'nous bouffer, j'l'étripe." Elle te lance un regard noir. "Et va surtout pas croire que j'reste parce que tu m'l'as demandé, hein. Si j'accepte de t'aider, c'est d'mon plein gré."~ */
  IF ~~ THEN REPLY #67642 /* ~"Bien. J'ai quelques questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67643 /* ~"Dans ce cas, continuons."~ */ EXIT
END

IF WEIGHT #5 ~  !InParty("Annah")
GlobalGT("Annah","GLOBAL",0)
Global("Annah_Talked_Grace","GLOBAL",5)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 460 // from:
  SAY #67644 /* ~"Qu'est-ce tu veux ?"~ */
  IF ~  InParty("Grace")
~ THEN REPLY #67645 /* ~"J'ai besoin de ton aide, Annah. Veux-tu bien continuer à me suivre ?"~ */ GOTO 461
  IF ~  !InParty("Grace")
~ THEN REPLY #67646 /* ~"J'ai besoin de ton aide, Annah. Veux-tu bien continuer à me suivre ?"~ */ GOTO 469
  IF ~~ THEN REPLY #67647 /* ~"Si tu n'as pas l'intention de poursuivre avec nous, rends-moi mes affaires sans attendre."~ */ GOTO 455
  IF ~~ THEN REPLY #67914 /* ~"Rien, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #67648 /* ~"Tu peux toujours courir, bige ! Avec quelqu'un comme elle, pas question ! Vous pouvez bien aller pourrir tous les deux dans les Abysses, tiens !"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67649 /* ~"Annah, c'est *toi* que je veux à mon côté. Tu veux bien continuer à me suivre ?"~ */ GOTO 462
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67650 /* ~Vérité : "Annah, Tombée-en-Disgrâce est moins importante que toi à mes yeux. Tu veux bien continuer à nous suivre ?"~ */ GOTO 463
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67651 /* ~Mensonge : "Annah, Tombée-en-Disgrâce est moins importante que toi à mes yeux. Tu veux bien continuer à nous suivre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_5","GLOBALLaw",-1)
~ GOTO 463
  IF ~~ THEN REPLY #67652 /* ~"Si tu n'as pas l'intention de poursuivre avec nous, rends-moi mes affaires sans attendre."~ */ GOTO 455
  IF ~~ THEN REPLY #67915 /* ~"Rien, laisse tomber. Au revoir."~ */ GOTO 468
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #67653 /* ~"Pas question que j'voyage avec une bouffeuse d'âmes comme elle ! Y faut qu'elle dégage !"~ */
  IF ~~ THEN REPLY #67654 /* ~"Très bien, je vais m'arranger pour qu'elle parte. Mais nous en reparlerons."~ */ EXIT
  IF ~~ THEN REPLY #67655 /* ~"Si tu n'as pas l'intention de poursuivre avec nous, rends-moi mes affaires sans attendre."~ */ GOTO 455
  IF ~~ THEN REPLY #67916 /* ~"Je suis désolé que tu le prennes comme ça. Laisse tomber. Au revoir."~ */ GOTO 468
END

IF ~~ THEN BEGIN 463 // from: 461.1 461.2
  SAY #67656 /* ~"Si elle n'a pas d'importance pour toi, alors fais-la dégager ! Parce que moi, pas question que j'voyage avec une bouffeuse d'âmes comme elle !"~ */
  IF ~~ THEN REPLY #67657 /* ~Vérité : "Écoute, Annah, je me *moque* d'elle. J'ai besoin de toi à mon côté, mais j'ai aussi besoin de son aide, du moins pour un temps. Après, ce ne sera plus que toi et moi."~ */ GOTO 464
  IF ~~ THEN REPLY #67658 /* ~Mensonge : "Écoute, Annah, je me *moque* d'elle. J'ai besoin de toi à mon côté, mais j'ai aussi besoin de son aide, du moins pour un temps. Après, ce ne sera plus que toi et moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_6","GLOBALLaw",-1)
~ GOTO 464
  IF ~~ THEN REPLY #67659 /* ~"Dans ce cas, tu ne voyageras avec PERSONNE. Je vais te laisser ici, et tu n'auras plus qu'à retourner mener ta petite vie minable de ramasseuse de cadavres. À moins que tu ne préfères nous suivre."~ */ GOTO 465
  IF ~~ THEN REPLY #67660 /* ~"Très bien, je vais m'arranger pour qu'elle parte. Mais nous en reparlerons."~ */ EXIT
  IF ~~ THEN REPLY #67661 /* ~"Si tu n'as pas l'intention de poursuivre avec nous, rends-moi mes affaires sans attendre."~ */ GOTO 455
  IF ~~ THEN REPLY #67917 /* ~"Je suis désolé que tu le prennes comme ça. Laisse tomber. Au revoir."~ */ GOTO 468
END

IF ~~ THEN BEGIN 464 // from: 463.0 463.1
  SAY #67662 /* ~Annah te fixe un instant pour s'assurer que tu es sincère. "J'espère pour toi que c'que tu dis est vrai, t'entends."~ */
  IF ~~ THEN REPLY #67663 /* ~"Je le suis. Viens là."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 463.2
  SAY #67664 /* ~La colère d'Annah se dissipe quand tu lui parles et elle fronce les sourcils. "Peut-être que j'vais l'faire, ouais… c'est vrai qu'j'ai pas à m'plaindre, pour l'moment."~ */
  IF ~~ THEN REPLY #67665 /* ~"Génial. Retourne ramasser tes cadavres, et peut-être qu'un jour tu finiras comme Pharod : malade, rabougrie et *faible*. À moins que tu ne nous accompagnes. À toi de voir…"~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #67666 /* ~Annah te regarde fixement, sans remuer la queue.~ */
  IF ~~ THEN REPLY #67667 /* ~"C'est maintenant qu'il te faut choisir."~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #67668 /* ~"Je… d'accord, j't'accompagne."~ */
  IF ~~ THEN REPLY #67669 /* ~"Bien. Dans ce cas, viens."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 461.4 462.2 463.5
  SAY #67670 /* ~"Vas-y, retourne dans les bras d'ta catin ailée !" Annah crache par terre. "J'ai plus rien à faire avec vous deux, ça non !"~ */
  IF ~~ THEN REPLY #67671 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 469 // from: 460.1
  SAY #67672 /* ~Annah plisse les paupières. "Où est-ce qu'elle est, ta succube ? Elle a essayé d'te mordre le cou et d't'entraîner dans les Abysses, pas vrai ?"~ */
  IF ~~ THEN REPLY #67673 /* ~"Elle ne nous suit plus, Annah, mais je veux que tu poursuives avec nous."~ */ GOTO 470
  IF ~~ THEN REPLY #67674 /* ~"Rien, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY #67675 /* ~"Et comment j'sais qu'les choses vont rester en l'état, hein ? Et si jamais elle revient, ou…" Annah a l'air frustrée. "Ou si quelqu'un comme elle s'ramène. Ça va recommencer, c'est ça ?"~ */
  IF ~~ THEN REPLY #67676 /* ~"Cela n'arrivera plus, Annah."~ */ GOTO 471
  IF ~~ THEN REPLY #67677 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY #67678 /* ~"Ouais, d'accord… sois prudent, hein. J'vais continuer à t'accompagner."~ */
  IF ~~ THEN REPLY #67679 /* ~"Très bien, continuons."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 187.6 477.6
  SAY #67697 /* ~La queue d'Annah s'arrête tandis que tu prononces ces mots, puis elle te dévisage. "Es-tu sérieux ? Ce n'est pas le bon moment pour plaisanter."~ */
  IF ~~ THEN REPLY #67698 /* ~"Non, Annah - je l'ai trouvé mort à la Cour des Vents Mauvais. Sais-tu qui peut l'avoir tué ?"~ */ GOTO 476
END

IF ~~ THEN BEGIN 473 // from: 187.7 477.7
  SAY #67699 /* ~"Je…" Elle secoue la tête. "Je ne sais *pas*. Personne de sain d'esprit n'aurait osé - Pharod a le bras long. Si tu le contraries, c'est toi qui reçois les coups de bâton."~ */
  IF ~~ THEN REPLY #67700 /* ~"Tu n'es pas obligée de continuer à m'accompagner, Annah. Si tu as besoin de rester au Village Enseveli, je -"~ */ GOTO 474
  IF ~~ THEN REPLY #67701 /* ~"Alors très bien. J'ai d'autres questions…"~ */ GOTO 477
  IF ~~ THEN REPLY #67702 /* ~"Aucune importance. Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY #67704 /* ~"Nan…" Annah t'interrompt. "Il est inutile que je reste ici - et je me suis toujours demandé ce que je ferais si Pharod se retrouvait dans le livre des morts." Elle grogne. "Eh bien, il construit probablement le mur de quelqu'un aux enfers."~ */
  IF ~~ THEN REPLY #67705 /* ~"Mais… c'est ton père. Ne p-"~ */ DO ~SetGlobal("Annah_Discovers_Pharod","GLOBAL",3)
~ GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.0
  SAY #67706 /* ~"Ce n'était pas mon *vrai* père." Son regard se fait sévère. "Il était cupide et il était stupide, et égoïste, et faible." Elle fronce les sourcils. "Et maintenant, il est mort. Voilà tout."~ */
  IF ~~ THEN REPLY #67707 /* ~"OK, très bien. Il y a autre chose que je voulais te demander…"~ */ GOTO 477
  IF ~~ THEN REPLY #67708 /* ~"Dans ce cas, allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from: 472.0
  SAY #67709 /* ~"Nan, c'est inutile - j'ai juste besoin de voir le corps. Pharod est un sacré malin, peut-être qu'il essaie de t'échapper…"~ */
  IF ~~ THEN REPLY #67710 /* ~"Je vais te le montrer dans un instant. D'abord, j'ai une autre question à te poser.."~ */ GOTO 477
  IF ~~ THEN REPLY #67711 /* ~"Je vais te le montrer maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 477 // from: 316.1 317.1 318.0 319.1 320.1 321.0 322.5 324.0 326.3 345.0 347.0 348.5 362.0 363.4 371.0 372.1 373.1 374.1 376.0 377.1 378.1 379.1 380.0 387.0 389.1 390.0 393.1 394.1 401.0 402.0 403.2 404.4 405.1 406.1 407.2 411.1 419.2 420.0 421.0 422.0 423.0 424.3 425.1 426.0 428.0 430.1 431.1 435.1 436.0 438.0 439.1 440.2 441.2 459.0 473.1 475.0 476.0
  SAY #67712 /* ~"Ouais ?"~ */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67714 /* ~"Où est cet endroit où tu as trouvé mon corps ?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67716 /* ~"Où est cet endroit où tu as trouvé mon corps ?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67717 /* ~"Où est cet endroit où tu as trouvé mon corps ?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67719 /* ~"J'aurai une question à te poser sur la manière dont tu as trouvé mon corps…"~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67720 /* ~"Annah… ne t'ai-je pas rencontrée à la Ruche, avant que je ne trouve Pharod ?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67721 /* ~"Annah, aurais-tu trouvé quelque chose sur mon corps avant de le déposer à la Morgue  ?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67722 /* ~"Annah, j'ai trouvé Pharod mort à la cour des Vents Mauvais."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67723 /* ~"Annah, sais-tu comment Pharod est mort ?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67724 /* ~"Parle-moi un peu de Pharod."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67725 /* ~"Annah, quand Pharod a ramené le butin qu'il avait pris sur mon corps, il a disparu pendant un temps, puis il est revenu - pourtant il n'a jamais quitté la cour des Vents Mauvais. Sais-tu où il est allé ?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67726 /* ~"Annah, peux-tu m'enseigner l'art du vol ?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68260 /* ~"Annah, peux-tu m'enseigner l'art du vol ?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67727 /* ~"Je voulais que tu saches que, quand j'ai embrassé Ravel dans le labyrinthe, je…"~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67728 /* ~"Je voulais que tu saches que, quand j'ai embrassé Ravel dans le labyrinthe, je…"~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67729 /* ~"Dans le labyrinthe, Ravel disait que tu étais tourmentée… que voulait-elle dire ?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67730 /* ~"As-tu entendu parler d'une guenaude noire nommée Ravel Puits-de-Rébus ?"~ */ GOTO 316
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67731 /* ~"Sais-tu où je pourrais trouver un morceau de Ravel ?"~ */ GOTO 319
  IF ~~ THEN REPLY #67732 /* ~"Rien, Annah. Je vérifiais pour voir si tu étais toujours avec moi."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Fortress_Annah","GLOBAL",3)
~ THEN BEGIN 478 // from:
  SAY #68184 /* ~Tu puises l'énergie en toi, une brusque rafale de vent se lève et Annah se réveille. Elle soulève lentement la tête puis la secoue, comme si elle ne savait pas où elle était.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68185 /* ~"J'ai retrouvé ma mortalité, Annah, et elle ne m'aime pas des masses. J'ai besoin de ton aide."~ */ DO ~SetGlobal("Fortress_Annah","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 479
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68326 /* ~TU VAS BIEN, ANNAH ?~ */ GOTO 481
END

IF ~~ THEN BEGIN 479 // from: 478.0
  SAY #68186 /* ~Le regard d'Annah se durcit et elle hoche la tête. "J'suis avec toi."~ [ANA205A] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68187 /* ~"Dans ce cas, allons-y…"~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68205 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68206 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68207 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68208 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68241 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68431 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68432 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68443 /* ~"Dans ce cas, allons-y…"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 480 // from: 187.11 477.11
  SAY #68258 /* ~Annah fronce les sourcils et secoue la tête. "Non, pas maintenant. Y'a des ennemis tout près, ça oui !"~ */
  IF ~~ THEN REPLY #68259 /* ~"Ce n'est pas grave…"~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.1
  SAY #68327 /* ~Annah écarquille les yeux en t'entendant. "Que… qu'est-ce qui t'est arrivé ? Ta voix, elle… elle est pleine d'échos…"~ */
  IF ~~ THEN REPLY #68328 /* ~J'AI CHANGÉ. JE SUIS AUTRE CHOSE, DÉSORMAIS. JE NE PEUX RESTER ICI BIEN LONGTEMPS. SI TU VEUX, J'AI LA POSSIBILITÉ DE TE RENVOYER À SIGIL.~ */ GOTO 482
END

IF ~~ THEN BEGIN 482 // from: 481.0
  SAY #68329 /* ~"Que…" Annah s'interrompt brusquement. "Où tu vas ?"~ */
  IF ~~ THEN REPLY #68330 /* ~NOMBREUX SONT LES CRIMES COMMIS TANDIS QUE NOUS ÉTIONS SÉPARÉS, MA MORTALITÉ ET MOI. ET LE… PRIX À PAYER EST LOURD. IL Y A UN LIEU RÉSERVÉ POUR LES ÊTRES TELS QUE MOI DANS LES PLANS INFÉRIEURS. C'EST UNE SORTE DE CHÂTIMENT.~ */ GOTO 483
END

IF ~~ THEN BEGIN 483 // from: 482.0
  SAY #68331 /* ~"Mais, je… je veux *pas* que tu partes."~ */
  IF ~~ THEN REPLY #68332 /* ~JE N'OUBLIERAI JAMAIS TOUT CE QUE TU ÉTAIS PRÊTE À SACRIFIER POUR MOI, ANNAH.~ */ GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY #68333 /* ~Annah hoche la tête. Elle a manifestement envie de dire quelque chose, mais elle garde le silence, refusant d'exprimer ce qu'elle ressent.~ */
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68334 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68335 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68336 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68337 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68338 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68339 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68493 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68494 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68495 /* ~TU N'AS PAS BESOIN DE PARLER POUR QUE JE SACHE CE QUE RESSENT TON CŒUR, ANNAH. AU REVOIR.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #9 ~  Global("Fortress_Annah","GLOBAL",4)
~ THEN BEGIN 485 // from:
  SAY #68410 /* ~Annah hoche la tête, le regard dur. "Je reste avec toi."~ */
  IF ~~ THEN REPLY #68411 /* ~"Dans ce cas, allons-y…"~ */ EXIT
END
