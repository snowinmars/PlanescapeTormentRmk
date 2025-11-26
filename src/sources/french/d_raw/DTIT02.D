// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43015 /* ~Cette personne examine négligemment les mannequins d'entraînement ornés de clochettes éparpillés à travers la salle. À ton approche, elle te regarde. "Hum ?"~ */
  IF ~~ THEN REPLY #43016 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 1
  IF ~~ THEN REPLY #43017 /* ~"Rien… Je ne fais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43018 /* ~"C'est la salle d'entraînement des voleurs. Les mannequins qui sont là permettent de s'entraîner au vol à la tire."~ */
  IF ~  Global("Eli","GLOBAL",0)
~ THEN REPLY #43019 /* ~"Où est le prof ?"~ */ DO ~SetGlobal("Eli","GLOBAL",1)
~ JOURNAL #66872 /* ~Je me suis rendu à la salle d'entraînement des voleurs de la Salle des Fêtes, mais je n'y ai pas vu le moindre professeur. L'un des apprentis que j'ai trouvés là m'a dit qu'Eli Havelock, le professeur, était parti en claquant la porte et qu'il se trouvait vraisemblablement dans le Quartier des Gratte-Papier. On me l'a décrit comme un homme mince, de taille moyenne, aux cheveux sombres, au teint basané et aux traits anguleux.~ */ GOTO 2
  IF ~  GlobalGT("Eli","GLOBAL",0)
GlobalLT("Eli","GLOBAL",3)
~ THEN REPLY #66873 /* ~"Où est le prof ?"~ */ GOTO 2
  IF ~~ THEN REPLY #43020 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43021 /* ~"En ce moment, il est sans doute en train d'errer dans le Quartier… Quelqu'un l'a énervé et il est sorti comme un fou de la Salle des Fêtes en jurant comme personne. Il s'appelle Havelock, Eli Havelock. C'est un homme mince, de taille moyenne, brun, basané et aux traits anguleux."~ */
  IF ~~ THEN REPLY #43022 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
