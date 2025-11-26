// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~Cette personne est essoufflée et en sueur, comme si elle venait de finir un exercice épuisant. À ton approche, elle se tourne vers toi. "Oui ?"~ */
  IF ~~ THEN REPLY #43026 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~"Rien… Je ne fais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~La personne fait un signe de tête en direction des mannequins d'entraînement. "La salle d'entraînement des guerriers."~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~"Où est le prof ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~Je me suis rendu à la salle d'entraînement des guerriers de la Salle des Fêtes, mais je n'y ai pas vu le moindre professeur. L'un des apprentis que j'ai trouvés là m'a dit que Qui-Sai, le professeur, devait être dans une autre pièce de la Salle des Fêtes. Il ne devrait pas être difficile à reconnaître, car sa peau est grise comme la pierre.~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~"Où est le prof ?"~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~"Qui-Sai ?" La personne hausse les épaules, essuyant la sueur qui perle sur son front. "Quelque part dans la Salle des Fêtes, sans doute. Il est facile à reconnaître… sa peau ressemble à de la pierre grise."~ */
  IF ~~ THEN REPLY #43032 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
