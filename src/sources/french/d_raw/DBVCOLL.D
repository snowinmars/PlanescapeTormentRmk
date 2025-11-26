// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~L'homme est drapé d'un habit brun sale, en loques. Une longue capuche cache presque entièrement son visage.~ */
  IF ~~ THEN REPLY #54789 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~Laisse-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~Tu vois ses yeux se plisser derrière son capuchon, et il recule d'un pas. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #54792 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~"J'avais des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~"Moi, j'm'occupe de mes affaires, matois, et j'te d'manderai d'en faire autant."~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~Il regarde autour de lui. "Non, y a pas de nom spécial. Les 'Dédales d'Ordures' on pourrait peut-être appeler ça."~ */
  IF ~~ THEN REPLY #54803 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~"J'avais quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~"Le village de Pharod, matois." Il montre les briques et les ordures du plafond, très haut au-dessus dans l'obscurité pestilentielle. "Le Village Enseveli."~ */
  IF ~~ THEN REPLY #54807 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~"Hein ?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~"Je cherche un certain Pharod."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~"Je cherche un certain Pharod."~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~Il ne fait que secouer la tête, intrigué.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~"Et Pharod ? Tu sais où il est ?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~"Et Pharod ? Tu sais où il est ?"~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~L'homme acquiesce. "Faut aller au sud-ouest, là où y a un dédale d'ordures. Y a une trappe, ça conduit où se trouve Pharod."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~L'homme acquiesce. "Y a une voûte qui sort au nord-ouest de c'te grande salle… par-là, tu trouveras l'vieux Pharod."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~L'homme recule d'un pas, te scrutant avec méfiance sous son capuchon. "Encore, hein ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #54826 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~"J'avais des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~"Rien. Au revoir."~ */ EXIT
END
