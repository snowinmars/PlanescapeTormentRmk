// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47907 /* ~Tu vois un jeune homme robuste. Il semble décharger des caisses sur divers étals du marché. Il hoche la tête en te voyant approcher. "Bonjour, matois."~ */
  IF ~~ THEN REPLY #47908 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #47909 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47910 /* ~Il hoche de nouveau la tête. "Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #47911 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47912 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 6.1 8.0 9.0 10.0 11.0
  SAY #47913 /* ~"D'accord." Il attend tes questions.~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47914 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47916 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 5
  IF ~~ THEN REPLY #47917 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 8
  IF ~~ THEN REPLY #47918 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47919 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 10
  IF ~~ THEN REPLY #47920 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 7.0
  SAY #47915 /* ~Il secoue la tête. "Le Maître des Os… n'apprécie guère les visiteurs, matois. Tu es peut-être à sa recherche, mais tu ne veux *pas* le trouver."~ */
  IF ~~ THEN REPLY #47931 /* ~"Oui…"~ */ GOTO 4
  IF ~~ THEN REPLY #47932 /* ~"D'accord. Je voudrais te demander autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #47933 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47921 /* ~Il te fixe un moment, puis son regard descend vers tes nombreuses cicatrices. Il hausse les épaules en te regardant dans les yeux. "Quitte le marché, dirige-toi vers le sud, puis prends légèrement à l'est. La maison en ruines. Puissent les Puissances te protéger, matois." Il se retourne pour se remettre au travail.~ */
  IF ~~ THEN REPLY #47922 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #47927 /* ~Il fronce les sourcils et te regarde des pieds à la tête. "Eh bien… Est-ce qu'il avait une particularité, ce crâne ?"~ */
  IF ~~ THEN REPLY #47928 /* ~"Non."~ */ GOTO 6
  IF ~~ THEN REPLY #47929 /* ~"Oui. Il parlait."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47930 /* ~Il hausse les épaules. "Alors, je ne vois pas qui pourrait s'y intéresser."~ */
  IF ~~ THEN REPLY #47941 /* ~"Et s'il parlait ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47942 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47943 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #47934 /* ~Il te regarde un moment. "C'est ce que j'appelle une particularité. Et dans ce cas, il a pu attirer l'attention de Lothar, le Maître des Os."~ */
  IF ~~ THEN REPLY #47935 /* ~"Où est-ce que je peux trouver ce Lothar ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47937 /* ~"Tu devrais aller voir Anze ; il se trouve généralement au comptoir, près du fourneau."~ */
  IF ~~ THEN REPLY #47938 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47939 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #47944 /* ~"Va voir Aalek, il se trouve généralement au comptoir, près du fourneau."~ */
  IF ~~ THEN REPLY #47945 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47946 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #47947 /* ~Il soupire. "Il abrite… Il existe de meilleurs endroits, mais il en existe aussi de pires." Il hausse de nouveau les épaules. "Pour les détails, adresse-toi à Lazlo, le fils d'Anze. Il se trouve généralement près du fourneau. Il adore parler."~ */
  IF ~~ THEN REPLY #47948 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47949 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #47950 /* ~L'ouvrier lève le regard vers toi et sourit. "Rebonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #47951 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47952 /* ~"Rien, au revoir."~ */ EXIT
END
