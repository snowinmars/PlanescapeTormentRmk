// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH2~

IF ~  NumTimesTalkedTo(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44366 /* ~Tu vois un homme mince qui rôde furtivement. Ses longs doigts agiles tremblent légèrement et il a du mal à te regarder dans les yeux en te parlant. "Tu m'as fait sursauter ! Je… je ne t'avais jamais vu dans le coin, étranger. Qu'est-ce… qu'est-ce que tu me veux ?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44370 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ GOTO 1
  IF ~~ THEN REPLY #44371 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #44373 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44374 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.1 9.0 10.0
  SAY #44376 /* ~Il change d'attitude pour se montrer très professionnel. "Ah bon. Est-ce qu'il t'a aussi parlé de la poignée de main secrète ? Et de ton anneau magique cryptographique ? Connais-tu l'hymne secret de la cellule ? Est-ce que tu as été formé à tout ça ?" Il t'observe un moment des pieds à la tête et dit : "Apparemment, non. Et si la prochaine fois, c'était moi qui te demandait le mot de passe ?" Il soupire. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #44377 /* ~"Je voulais ramasser des objets supplémentaires."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44379 /* ~"J'ai besoin d'un endroit pour me cacher."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44381 /* ~"J'ai besoin de t'interroger sur ta cellule."~ */ GOTO 3
  IF ~~ THEN REPLY #44382 /* ~"Qu'est-ce que vous essayez d'accomplir ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44383 /* ~"Pourquoi es-tu Anarchiste ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44384 /* ~"Rien, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44386 /* ~"J'espère que ça te plaît."~ */
  IF ~~ THEN REPLY #44387 /* ~"Ouais, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 4.2 11.2
  SAY #44389 /* ~"Tu connais la première règle d'un révolutionnaire clandestin ?" Il te laisse tout juste le temps de répondre et dit : "C'est de la garder *secrète*. Je ne te révélerai aucun secret, camarade, *quelle* que soit la personne qui t'envoie. Bon, maintenant qu'on a mis les choses au point, qu'est-ce que tu veux d'autre ?"~ */
  IF ~~ THEN REPLY #44395 /* ~"Je voulais ramasser des objets supplémentaires."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44396 /* ~"J'ai besoin d'un endroit pour me cacher."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44397 /* ~"Qu'est-ce que vous essayez d'accomplir ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44399 /* ~"Pourquoi es-tu Anarchiste ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44400 /* ~"Rien, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.2 11.3
  SAY #44403 /* ~"Ce que nous essayons d'accomplir est secret. C'est pour ça que notre mouvement est clandestin, d'accord ? Tu le sauras quand tu le verras, et c'est pas demain la veille. Nous préparons *soigneusement* nos plans, tu vois ce que je veux dire ? Bien, ceci dit, qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #44409 /* ~"Je voulais ramasser des objets supplémentaires."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44411 /* ~"J'ai besoin d'un endroit pour me cacher."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44412 /* ~"J'ai besoin de t'interroger sur ta cellule."~ */ GOTO 3
  IF ~~ THEN REPLY #44414 /* ~"Pourquoi es-tu Anarchiste ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44415 /* ~"Rien, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 3.3 4.3 11.4
  SAY #44418 /* ~"Regarde autour de toi, bige. Tu vois quelqu'un de libre ? Est-ce que tu vois quelqu'un qui ne soit pas sous l'emprise de quelqu'un d'autre ? Même ceux qui se croient importants se font marcher sur les pieds. Il faut que quelqu'un détruise le système."~ */
  IF ~~ THEN REPLY #44420 /* ~"Pour le remplacer par quoi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44421 /* ~"Ça semble être une bonne raison. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44423 /* ~"Ce n'est pas à moi de décider, bige. Ma spécialité à moi, c'est de détruire pour laisser à d'autres le soin de ramasser les morceaux. Je détruis pour permettre à d'autres de créer. Nous avons tous nos spécialités. Je suis quelqu'un d'optimiste - je crois que certains arriveront à créer quelque chose de bien. Mais avant ça, je dois continuer à détruire."~ */
  IF ~~ THEN REPLY #44424 /* ~"Et qui décide de ce qui est juste ? Qu'est-ce qui te rend si différent ?"~ */ GOTO 7
  IF ~~ THEN REPLY #44426 /* ~"Tant mieux pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44427 /* ~"Ce qui me rend différent, c'est que je veux m'impliquer. Ce qui fait de moi la personne qui décide ce qui est juste, c'est que je cherche l'égalité. Tant que je verrai un Rucher commun se faire traiter comme un prince, je continuerai."~ */
  IF ~~ THEN REPLY #44428 /* ~"Très bien. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1 9.1 10.1
  SAY #44429 /* ~"Je m'appelle Conall. Je travaille ici."~ */
  IF ~~ THEN REPLY #44430 /* ~"Et c'est quoi, cet endroit ?"~ */ GOTO 9
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44431 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 0.2 8.0 10.2
  SAY #44433 /* ~Il t'observe attentivement pour voir si tu plaisantes. "La Voûte du Neuvième Monde. C'est un entrepôt. Tu n'as pas vu l'écriteau en entrant ?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44435 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ GOTO 1
  IF ~~ THEN REPLY #44436 /* ~"Je n'ai pas fait suffisamment attention. Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #44438 /* ~"Merci de m'avoir répondu. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #44440 /* ~"Encore toi ? Si tu veux quelque chose, va voir à la porte."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44442 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ GOTO 1
  IF ~~ THEN REPLY #44443 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #44444 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44446 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #44448 /* ~"Encore toi ? Tu as des problèmes ? Tu as besoin de quelque chose ?"~ */
  IF ~~ THEN REPLY #44449 /* ~"Je voulais ramasser des objets supplémentaires."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44451 /* ~"J'ai besoin d'un endroit pour me cacher."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44452 /* ~"J'ai besoin de t'interroger sur ta cellule."~ */ GOTO 3
  IF ~~ THEN REPLY #44453 /* ~"Qu'est-ce que vous essayez d'accomplir ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44454 /* ~"Pourquoi es-tu Anarchiste ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44456 /* ~"Rien, je suppose. Au revoir."~ */ EXIT
END
