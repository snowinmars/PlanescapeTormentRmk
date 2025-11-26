// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGERIK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGERIK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58157 /* ~Tu aperçois un jeune homme au visage ressemblant à celui d'un rat. Il te regarde approcher avec attention et semble évaluer chacun de tes gestes d'un œil averti.~ */
  IF ~~ THEN REPLY #58158 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58159 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58160 /* ~Il se frotte le menton et t'examine. Tu as l'impression qu'il t'évalue du regard. "Oui… bonjour, matois. Bienvenue chez nous. Que veux-tu à Gerik ?"~ */
  IF ~~ THEN REPLY #58161 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58162 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 6.0 9.0 12.0
  SAY #58163 /* ~"Demande… demande…" Il te sourit.~ */
  IF ~~ THEN REPLY #58164 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58165 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58166 /* ~"Je cherche un deva, sais-tu où je peux le trouver ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58167 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58168 /* ~"Nous sommes Gerik. Nous te l'avons déjà dit…pas vrai ?" Il lève un sourcil.~ */
  IF ~~ THEN REPLY #58169 /* ~"Pourquoi parles-tu de toi en disant *nous* ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58170 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58171 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #58172 /* ~Il fronce les sourcils. "Car nous sommes plus d'un…" Il regarde sur la gauche et la droite, puis se retourne vers toi. "Tu ne nous vois pas ?" Il gesticule en direction des côtés.~ */
  IF ~~ THEN REPLY #58173 /* ~"Oui, Je vous vois tous maintenant. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58174 /* ~"Euh… Non, il n'y a que toi et moi ici."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58175 /* ~Il fronce les sourcils, puis se penche de chaque côté et commence à murmurer à un compagnon invisible. Son attention revient ensuite sur toi. "Nous sommes désolés d'entendre cela. Peut-être que tu es malade. Et peut-être que nous pouvons t'aider." Il te sourit.~ */
  IF ~~ THEN REPLY #58176 /* ~"Ah… Les voilà. Je suis désolé, je n'avais pas vu tes compagnons, jusque là. Mais je les vois, maintenant."~ */ GOTO 6
  IF ~~ THEN REPLY #58177 /* ~"Je crois que c'est toi qui as besoin d'aide."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58178 /* ~Il sourit et hoche la tête. "Bien… bien… tout est bien, et nous sommes satisfaits. As-tu d'autres questions ?"~ */
  IF ~~ THEN REPLY #58179 /* ~"Oui."~ */ GOTO 2
  IF ~~ THEN REPLY #58180 /* ~"Non, je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #58181 /* ~Il se renfrogne. "Ça nous dérange… tu devrais partir, nous avons besoin de temps pour réfléchir…" Il t'ignore.~ */
  IF ~~ THEN REPLY #58182 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #58183 /* ~Il regarde alentour, puis son regard semble se perdre au loin. "Cet endroit est notre résidence estivale… nous l'aimons. Le bruit des vagues nous détend."~ */
  IF ~~ THEN REPLY #58184 /* ~"Pourquoi parles-tu de toi en disant *nous* ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58185 /* ~"Des vagues ? Quelles vagues ?"~ */ GOTO 9
  IF ~~ THEN REPLY #58186 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #58187 /* ~"Quelles vagues ?" Il paraît fâché et indique un point distant sur le mur. "Celles-là ! Nous aimons l'océan, la brise marine… c'est très rafraîchissant."~ */
  IF ~~ THEN REPLY #58188 /* ~"Je… vois. Oui, très joli. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58189 /* ~"Uh huh… Bien, je ne supporte pas très bien l'air salé. Je dois partir, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #58190 /* ~Ses yeux s'agrandissent et il hoche la tête. Il regarde de chaque côté et commence à murmurer et à s'adresser à quelque compagnon invisible. Après un instant, il reporte son attention sur toi. "Oui… nous avons vu le deva. Il était magnifique…"~ */
  IF ~~ THEN REPLY #58191 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58192 /* ~Il paraît confus. "Nous ne savons pas… nous l'avons perdu." Son regard devient distant. "Nous l'avons perdu… perdu… perdu…" Sa voix diminue tandis qu'il fixe le mur d'un regard vide. Il ignore les tentatives que tu fais pour relancer la conversation.~ */
  IF ~~ THEN REPLY #58193 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #58194 /* ~Tu aperçois Gerik. Il paraît perdu dans son monde jusqu'à ce qu'il remarque ton approche. "Nous nous souvenons de toi… que veux-tu à Gerik?"~ */
  IF ~~ THEN REPLY #58195 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58196 /* ~"Rien, au revoir."~ */ EXIT
END
