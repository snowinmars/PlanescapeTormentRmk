// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~Tu vois un jeune homme qui a l'air de s'ennuyer. Il ne t'a pas remarqué.~ */
  IF ~~ THEN REPLY #63564 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~Il sursaute quand tu t'adresses à lui et se tourne vers toi. "Que… Que veux-tu ?"~ */
  IF ~~ THEN REPLY #63567 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~"Des questions… Oh ! non. Je suis occupé." ~ */
  IF ~~ THEN REPLY #63570 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~"Je m'en fiche." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #63573 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~Tu vois un jeune homme. Il fait particulièrement attention à la foule autour de lui. À ton approche, il fait un signe de tête.~ */
  IF ~~ THEN REPLY #63575 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~"Bonjour à toi." Il te toise de haut en bas.~ */
  IF ~~ THEN REPLY #63578 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~"Adresse-toi ailleurs, s'il te plaît."~ */
  IF ~~ THEN REPLY #63582 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~"Y a-t-il quelque chose d'intéressant dans ce quartier ?"~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~"Personne d'important. Veux-tu me demander quelque chose de précis ?~ */
  IF ~~ THEN REPLY #63588 /* ~"Oui, j'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~"J'observe la foule. J'aime regarder les gens  car je les trouve fascinants."~ */
  IF ~~ THEN REPLY #63591 /* ~"Je vois. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~"Pas grand-chose. Je viens juste ici pour observer la foule. Il y a de nombreux marchés et de trucs comme ça, qui attirent une grande variété d'individus… J'aime observer les gens." Il regarde alentour.~ */
  IF ~~ THEN REPLY #63594 /* ~"Que puis-je acheter ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~Il sourit. "Eh ! bien… à peu près n'importe quoi… Jette un coup d'œil et fais tes courses."~ */
  IF ~~ THEN REPLY #63599 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~"Oui ! Les gens ici sont fascinants. Une très grande diversité… Mais je suppose que la plupart s'en fichent…"~ */
  IF ~~ THEN REPLY #63602 /* ~"Hmm. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~Tu vois un homme à l'air anxieux. Il t'adresse un regard contrarié quand tu approches.~ */
  IF ~~ THEN REPLY #63605 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~Il te lance un regard ennuyé. "Euh… Bonjour."~ */
  IF ~~ THEN REPLY #63608 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~"Trouve un indic pour ça." Il fronce les sourcils.~ */
  IF ~~ THEN REPLY #63611 /* ~"Ça ne te prendra qu'un instant."~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~Il se renfrogne. "Je ne suis pas un mouchard…"~ */
  IF ~~ THEN REPLY #63614 /* ~"Alors tu ne m'aideras pas ?"~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~"Je vois, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~Il te lance un regard excédé, ronchonne, et s'éloigne. "Bougre de béjaune…"~ */
  IF ~~ THEN REPLY #63617 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~Tu vois le client du commissaire-priseur. Alors que tu tentes de lui parler de nouveau, il te fait signe de t'éloigner.~ */
  IF ~~ THEN REPLY #63619 /* ~Pars.~ */ EXIT
END
