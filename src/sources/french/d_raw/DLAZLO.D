// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLAZLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLAZLO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3026 /* ~Tu vois un jeune garçon à la peau jaune et pâle. Ses habits sont sales et déchirés. Il surveille un fourneau.~ */
  IF ~~ THEN REPLY #3027 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36385 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36348 /* ~Il se tourne et te fait un demi-sourire, en interrompant sa tâche. "Salut… besoin d'aide ?"~ */
  IF ~~ THEN REPLY #36386 /* ~"Oui, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36387 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.3 7.2 8.2 9.2 10.1 11.2 12.1 13.1 14.1 15.1 16.1 18.1 19.0 22.0 24.0 25.2 26.1 27.2 28.1 29.1 30.1 32.1 33.0 34.0
  SAY #36349 /* ~"Ouais, ouais, j'serai content d't'aider si j'peux…" Le garçon semble content de ne pas besogner. "Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #36388 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 3
  IF ~~ THEN REPLY #36389 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 10
  IF ~~ THEN REPLY #36391 /* ~"Qu'est-ce que tu peux me dire sur la cité de Sigil ?"~ */ GOTO 20
  IF ~~ THEN REPLY #36392 /* ~"Pourquoi on dirait que tout le monde a la peau jaune par ici ?"~ */ GOTO 23
  IF ~~ THEN REPLY #36393 /* ~"Est-ce qu'il y a quelque chose d'intéressant à voir par ici ?"~ */ GOTO 25
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36394 /* ~"J'ai perdu un crâne… Tu ne connais pas quelqu'un que ça pourrait intéresser ?"~ */ GOTO 31
  IF ~~ THEN REPLY #36395 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36350 /* ~"Cet endroit ?" Il regarde aux alentours. "C'est le marché en plein air. Plein d'vendeurs et d'acheteurs viennent poser leur guitoune ici pour la journée. J'suis ici d'puis pas mal de temps, à travailler sous l'œil d'mon père." Il paraît distant. "Un jour j'pourrai tenir cet étal."~ */
  IF ~~ THEN REPLY #36396 /* ~"Sur quoi tu travailles ?"~ */ GOTO 4
  IF ~~ THEN REPLY #36398 /* ~"J'ai quelques questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36351 /* ~Il indique avec fierté le fourneau. "Le fourneau, on l'utilise pour…" Il hausse les épaules. "J'sais pas pourquoi, mais mon père dit qu'c'est important d'l'entretenir." Il essuie la sueur sur son front et regarde autour de lui.~ */
  IF ~~ THEN REPLY #36399 /* ~"Ton père est l'un des marchands d'ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36400 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36401 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36352 /* ~Il acquiesce. "Il s'appelle Anze, c'est l'étal d'mon père, par là-bas." Il indique un étal sur la droite du fourneau. "S'il a pas c'que tu cherches, il peut p't'être t'indiquer où l'trouver."~ */
  IF ~~ THEN REPLY #36402 /* ~"Il y a quel genre de marchandise ?"~ */ GOTO 6
  IF ~~ THEN REPLY #61999 /* ~"Je vois. J'ai d'autres questions…~ */ GOTO 2
  IF ~~ THEN REPLY #62001 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36353 /* ~Il réfléchit un instant. "Y'a plein d'choses ; d'la nourriture, à boire, d'la magie, des armes… tu cherches p't'être à acheter des provisions ?"~ */
  IF ~~ THEN REPLY #36411 /* ~"Où est-ce que je pourrais acheter des objets magiques ?"~ */ GOTO 7
  IF ~~ THEN REPLY #36412 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36413 /* ~"Où est-ce que je peux trouver un oreiller de cercueil ?"~ */ GOTO 9
  IF ~~ THEN REPLY #36414 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #36415 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0 9.0
  SAY #36354 /* ~"Ouais, on peut trouver d'la magie." Il examine les environs, puis indique un comptoir éloigné. "Y'a l'étal d'Aalek, par là-bas, et il a p't'être des choses pour toi."~ */
  IF ~~ THEN REPLY #36416 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36417 /* ~"Où est-ce que je peux trouver un oreiller de cercueil ?"~ */ GOTO 9
  IF ~~ THEN REPLY #36418 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #36419 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0 9.1
  SAY #36355 /* ~"Mon père peut t'aider, son étal est juste là-bas." Il indique un étal à droite du fourneau. "Il s''appelle Anze."~ */
  IF ~~ THEN REPLY #36420 /* ~"Où est-ce que je pourrais acheter des objets magiques ?"~ */ GOTO 7
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36421 /* ~"Où est-ce que je peux trouver un oreiller de cercueil ?"~ */ GOTO 9
  IF ~~ THEN REPLY #36422 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #36423 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.1 8.1
  SAY #36356 /* ~Il te jette un étrange regard, puis hausse les épaules. "Alors faut qu't'ailles chez Hamrys. J'crois qu'sa boutique est au sud-est d'ici."~ */
  IF ~~ THEN REPLY #36424 /* ~"Où est-ce que je pourrais acheter des objets magiques ?"~ */ GOTO 7
  IF ~~ THEN REPLY #36425 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 8
  IF ~~ THEN REPLY #36426 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #36427 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #36357 /* ~Il acquiesce. "Oh, c'est l'Bas Quartier ici. Les gens du commun vivent ici." Ses yeux s'écarquillent. "Tu sais pourquoi on l'appelle le Bas Quartier ?"~ */
  IF ~~ THEN REPLY #36428 /* ~"Pourquoi ça s'appelle le Bas Quartier ?"~ */ GOTO 11
  IF ~~ THEN REPLY #36429 /* ~"Je me moque du pourquoi. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36430 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36358 /* ~"Ben, d'après c'qu'on dit, l'quartier a un tas d'portails vers les Plans Inférieurs, qui l'trouent comme du fromage, alors j'suppose qu'c'est pour ça qu'le nom est resté." Il fronce les sourcils.~ */
  IF ~~ THEN REPLY #36431 /* ~"Pourquoi il y aurait autant de portails des Plans Inférieurs dans ce quartier ?"~ */ GOTO 12
  IF ~~ THEN REPLY #36432 /* ~"Y a-t-il des créatures qui sortent par ces portails ?"~ */ GOTO 13
  IF ~~ THEN REPLY #36433 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #62003 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36359 /* ~Il hausse les épaules. "C'est un mystère pour moi autant qu'pour toi, matois. Pas sûr qu'il y ait une raison pour qu'les portails soient là, j'crois qu'c'est le hasard. Ça pourrait aussi être la volonté d'la Dame, j'suppose." Il hausse à nouveau les épaules.~ */
  IF ~~ THEN REPLY #62005 /* ~"Y a-t-il parfois des créatures qui en sortent ?"~ */ GOTO 13
  IF ~~ THEN REPLY #62007 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #62009 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0
  SAY #36360 /* ~Ses yeux s'écarquillent un peu plus. "Ouais, en effet. La plupart sont d'passage…" Il déglutit.~ */
  IF ~~ THEN REPLY #36435 /* ~"Tu as l'air nerveux, tu l'as vu de tes yeux ?"~ */ GOTO 14
  IF ~~ THEN REPLY #62013 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #62014 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36361 /* ~"Ouais, j'l'ai vu. C'est pas qu'des mots, matois. Y'a pas plus d'une semaine, j'ai vu deux abishaïs en sortir, du côté d'la tour. Ils ont parlé pendant un moment, puis l'un d'entre eux est retourné à l'intérieur. Celui qu'est resté est toujours là-bas…" Il fronce les sourcils.~ */
  IF ~~ THEN REPLY #62097 /* ~"De quoi est-ce qu'ils parlaient ?"~ */ GOTO 15
  IF ~~ THEN REPLY #36437 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #62098 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36362 /* ~"J'sais pas, pour moi ça faisait qu'siffler, mais on aurait dit qu'ça parlait de la Tour." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #62099 /* ~"La Tour ?"~ */ JOURNAL #36020 /* ~Lazlo, le garçon, dit qu'il connaît un portail situé près de la tour de siège. Il se trouve sur un pont-levis ou sur une construction qui y ressemble, Lazlo n'a pas été très clair dans sa description. Je me demande où mène ce portail.~ */ GOTO 16
  IF ~~ THEN REPLY #62100 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #62101 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36363 /* ~"Oui, c'est un des coins les plus bizarres du Quartier. Personne sait vraiment depuis quand cette vieille tour est là… on peut pas y entrer, tu vois. Pire qu'une ceinture de chasteté. Je serais curieux de savoir ce qu'y'a dedans." Il réfléchit. "L'abishaï montrait la Tour et le portail. Ils cherchaient la clé, je parie." ~ */
  IF ~~ THEN REPLY #62102 /* ~"Quelle clé ?"~ */ GOTO 17
  IF ~~ THEN REPLY #36440 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36441 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #36364 /* ~"La clé du portail qui mène dans la Tour. Chaque portail a sa clé. Ça peut être un geste, un objet, une idée, même… Y'en a beaucoup qui ont voulu y entrer. Ils ont toujours échoué, et c'est pas faute d'avoir essayé."~ */
  IF ~~ THEN REPLY #62103 /* ~"Peut-être que le secret, pour rentrer, c'est de ne pas vouloir rentrer…"~ */ DO ~SetGlobal("Know_Tower_Key","GLOBAL",1)
~ JOURNAL #66276 /* ~Dans le Bas Quartier, il existe une tour de siège fermée dans laquelle nombre de gens aimeraient bien entrer. Personne n'y est jamais parvenu, et pourtant, ce n'est pas faute d'avoir essayé. C'est peut-être une idée étrange, mais il se pourrait que ce soit en ne souhaitant pas y entrer que l'on ait une chance d'y parvenir…~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36365 /* ~Il hausse les épaules. "J'sais pas, matois. Peut-être."~ */
  IF ~~ THEN REPLY #62104 /* ~"Dis-moi où se trouve ce portail."~ */ JOURNAL #66280 /* ~Le garçon, Lazlo, me dit qu'il existe un portail sur ce qui ressemble à un pont-levis, à l'est du marché. Selon lui, le portail mènerait peut-être à la tour de siège. Si j'allais y jeter un œil…~ */ GOTO 19
  IF ~~ THEN REPLY #36444 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36445 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #36366 /* ~Il s'interrompt pour réfléchir un instant. "Y'a une sorte de pont-levis à l'arrière de la tour. C'est là-bas qu'ça s'trouve…" Il jette un regard distant.~ */
  IF ~~ THEN REPLY #36446 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36447 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36367 /* ~"C'est le centre des plans, la cité où presque tout se croise. Jamais barbante, en fait. La Dame des Douleurs est la loi, et nous, on essaie simplement d'survivre dans son ombre." Il rit un court instant, puis tousse.~ */
  IF ~~ THEN REPLY #36448 /* ~"Qu'est-ce que tu peux me dire sur la Dame des Douleurs ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #36449 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36368 /* ~"J'sais pas grand-chose sur elle… elle garde les Puissances hors de Sigil, s'occupe des fiélons et parle ou traite avec personne… excepté p't'être les dabus. Elle t'inscrira rapidement au livre des morts si tu la vénères ou si t'essaies d'faire du mal à Sigil. Son visage et les lames qui l'entourent seront probablement les dernières choses que tu verras…"~ */
  IF ~  Global("Evil_Rchasr_1","GLOBAL",0)
~ THEN REPLY #36450 /* ~"Intéressant…"~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Evil_Rchasr_1","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Evil_Rchasr_1","GLOBAL",1)
~ THEN REPLY #68424 /* ~"Intéressant…"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #36369 /* ~Alors qu'il mentionne le visage entouré de lames, un souvenir te revient. Tu te retrouves pendant un instant dans une allée sombre, respirant fortement. Une femme d'une beauté incroyable t'approche dans l'obscurité, le visage enveloppé de lames et les yeux froids… le souvenir disparaît brusquement et tu te retrouves à nouveau en train de parler au garçon. ~ */
  IF ~~ THEN REPLY #36451 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36452 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.3
  SAY #36370 /* ~"C'est la maladie, ouais. Causée par l'mauvais air. Avec la brume et les fumées d'l'usine, il est souvent difficile de respirer facilement, par ici." Il hausse les épaules.  "Y'a des jours où il fait pas bon rester dehors, quand l'brouillard persiste trop longtemps… À ce qu'il paraît, il est capable de t'faire sortir les yeux d'la tête."~ */
  IF ~~ THEN REPLY #36453 /* ~"On ne peut rien y faire ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36371 /* ~"J'sais pas. Parfois les vents soufflent de l'aiguille et débarrassent la cité du brouillard, mais pas aussi souvent qu'on l'voudrait." Il regarde autour de lui, puis hausse les épaules. "La volonté d'la Dame, j'imagine. C'est pas logique, mais d'toute façon, y'a pas grand-chose de logique."~ */
  IF ~~ THEN REPLY #36454 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36455 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.4
  SAY #36372 /* ~"Y'a pas grand-chose à voir… mais la Grande Fonderie est impressionnante, tu pourrais aller la voir… l'refuge des Adorateurs, tu sais." Il s'arrête et réfléchit. "Les choses les plus intéressantes à voir se trouvent dans les Quartiers Supérieurs. Tu ferais mieux d'aller là-bas. On dit qu'il y a une Maison de tolérance là-bas, la Salle des Fêtes, et des endroits plus intéressants. Mais j'sais pas vraiment, j'suis resté ici toute ma vie."~ */
  IF ~~ THEN REPLY #36456 /* ~"Parle-moi de la Fonderie."~ */ GOTO 26
  IF ~~ THEN REPLY #36457 /* ~"Parle-moi des Adorateurs."~ */ GOTO 27
  IF ~~ THEN REPLY #36458 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36459 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0 30.0
  SAY #36373 /* ~"Au centre du Quartier, plus ou moins. Une construction impressionnante, pour sûr. Tu peux pas la manquer, va au nord. Tu la reconnaîtras aux grandes portes." Il fait une marque sur ta carte.~ */
  IF ~~ THEN REPLY #36460 /* ~"Parle-moi des Adorateurs."~ */ GOTO 27
  IF ~~ THEN REPLY #36461 /* ~"Je vois. J'ai d'autres questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36462 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #36374 /* ~"Ils ont plusieurs noms : les Adorateurs, les Hommes-Dieux, les Adorateurs de la Source… En général, on les appelle juste les Hommes-Dieux. Ils ont leur guitoune dans la Grande Fonderie, et ils ont l'air d's'en sortir assez bien. Ils sont pas désagréables. Ils pensent que tout l'monde peut être grand, même aussi grand qu'les Puissances ; il suffit d'essayer d'après eux. Même si ça te prend plusieurs vies pour y arriver, c'est possible."~ */
  IF ~~ THEN REPLY #36463 /* ~"Parle-moi de la Fonderie."~ */ GOTO 26
  IF ~~ THEN REPLY #36464 /* ~"Alors, c'est une autre faction d'ici. Tu fais partie de quelle faction ?"~ */ GOTO 28
  IF ~~ THEN REPLY #36465 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36466 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #36375 /* ~Il sourit. "Oh, mon père… et moi… on est des Indés… on est une faction qui est pas vraiment une faction… une faction qui pense que les gens sont libres de faire ce qu'ils veulent. On est un groupe assez dissolu, et on n'aime pas trop obéir aux autres factions."~ */
  IF ~~ THEN REPLY #36467 /* ~"Quelles est le but de toutes ces factions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #36468 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36469 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #36376 /* ~Il te regarde. "Les factions gouvernent une grande partie d'Sigil et les affaires de tous les jours. Y'en a un paquet : y'a les Morts, les Hommes-Poussière, qui s'occupent de tous les cadavres dans la rue, et puis y'a les Greffiers, qui créent les lois, et les Sensats… y'a pas mal de factions. Ici, dans l'Bas Quartier, on n'a pratiquement affaire qu'aux Adorateurs, les Hommes-Dieux." De la tête, il indique quelque chose au loin. "Ils ont leur guitoune dans la Grande Fonderie, ils sont assez sympas."~ */
  IF ~~ THEN REPLY #36470 /* ~"Qu'est-ce que tu peux me dire sur ces autres factions ?"~ */ GOTO 30
  IF ~~ THEN REPLY #36471 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36472 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36377 /* ~Il hausse les épaules. "Pas grand-chose. J'm'en suis jamais soucié, vu qu'j'suis un Indé. Les locaux des factions sont pleins d'gens qui t'diront la chanson. Va leur demander."~ */
  IF ~~ THEN REPLY #36473 /* ~"Qu'est-ce que tu peux me dire sur cette Fonderie ?"~ */ GOTO 26
  IF ~~ THEN REPLY #36474 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #36475 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5
  SAY #36378 /* ~Il commence à s'animer. "T'as perdu un crâne, tu dis ? J'parie qu'je sais où il est passé… Dans l'Quartier, y a un gars, un mage à c'qu'on dit, qui collectionne les têtes, il les met sur ses étagères, comme des livres. Ils sont morts, mais avec sa magie, il leur fait répondre à ses questions, même s'ils sont inscrits au livre des morts."~ */
  IF ~~ THEN REPLY #36476 /* ~"Où est-ce que je peux trouver cette personne ?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36379 /* ~Il fronce les sourcils. "J'sais pas vraiment. J'ai entendu dire qu'il avait sa guitoune près d'un des bâtiments en ruines, dans les parages, mais j'y suis jamais allé." Il claque des doigts. "Mais p't'être que d'autres le savent… tu d'vrais demander à Sébastion."~ */
  IF ~~ THEN REPLY #36477 /* ~"Où est-ce que je peux trouver Sébastion ?"~ */ GOTO 33
  IF ~~ THEN REPLY #36478 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36479 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36380 /* ~Il indique vaguement l'ouest. "Retourne au square, et dirige-toi vers le nord-ouest. Sébastion a sa guitoune à côté d'une espèce de pont-levis."~ */
  IF ~~ THEN REPLY #36480 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36481 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 34 // from:
  SAY #36381 /* ~"Rebonjour. T'as d'autres questions auxquelles j'pourrais répondre ?"~ */
  IF ~~ THEN REPLY #36482 /* ~"Oui…"~ */ GOTO 2
  IF ~~ THEN REPLY #36483 /* ~"Non, au revoir."~ */ EXIT
END
