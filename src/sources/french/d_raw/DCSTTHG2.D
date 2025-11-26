// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9902 /* ~Tu vois un homme en armure, une épée au côté. Il t'observe avec méfiance pendant que tu t'approches.~ */
  IF ~~ THEN REPLY #9903 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #9904 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9905 /* ~Il hoche la tête à ton intention, puis jette un vif regard alentour. "De même. Que veux-tu ?"~ */
  IF ~~ THEN REPLY #9906 /* ~"Je voulais te poser des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #9907 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9908 /* ~"Je viens d'arriver à Maudith, je doute donc de savoir répondre à tes questions. Mais j'essaierai."~ */
  IF ~~ THEN REPLY #9909 /* ~"As-tu entendu parler d'un deva qui serait en ville ?"~ */ GOTO 3
  IF ~~ THEN REPLY #9910 /* ~"Si je puis me permettre, pourquoi es-tu à Maudith ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9911 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9912 /* ~Il te regarde, surpris. "Un deva. Non, certes pas. Qu'est-ce qui l'amènerait ici? Ce serait pour le moins bizarre, voire absurde."~ */
  IF ~~ THEN REPLY #9913 /* ~"Oui, et bien… Pourquoi es-tu à Maudith ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9914 /* ~"Je n'en ai aucune idée. Je dois partir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.2 6.1 7.0
  SAY #9915 /* ~"Et bien, bonne chance à toi. Au revoir."~ */
  IF ~~ THEN REPLY #9916 /* ~"Toi aussi."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #9917 /* ~"Je suis mercenaire. J'ai appris qu'il y avait du boulot dans ma branche à Maudith et je venais m'engager. Mais le plus clair de cette fichue cité est interdit à l'entrée, à cause de la peste. Je ne peux pas aller où je dois."~ */
  IF ~~ THEN REPLY #9918 /* ~"Que sais-tu sur cette peste ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9919 /* ~"Où dois-tu aller ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9920 /* ~"Je vois. Je dois te laisser. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9921 /* ~Il hausse les épaules. "Rien. Il paraît qu'elle s'est déclarée tout-à-coup, et qu'on l'a maîtrisée en fermant les zones infestées." Il soupire. "En tout cas, ça ne me facilite pas la tâche. Je ne peux pas rencontrer mon contact."~ */
  IF ~~ THEN REPLY #9922 /* ~"Où dois-tu aller ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9923 /* ~"Je te remercie. Je dois partir maintenant."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #9924 /* ~"À l'Homme Écartelé, une auberge où se retrouvent les mercenaires… mais, pour l'instant, on ne peut pas accéder à ce quartier."~ */
  IF ~~ THEN REPLY #9925 /* ~"Je vois. Je dois m'en aller maintenant."~ */ GOTO 4
END
