// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_CRTKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_CRTKR~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 0 // from:
  SAY #66521 /* ~L'homme, qui a l'air interloqué, hoche la tête en te voyant approcher. "Bonjour. Puis-je me permettre de te demander comment tu es arrivé ici ?" ~ */
  IF ~~ THEN REPLY #66522 /* ~"J'ai juste descendu l'escalier qui se trouvait derrière cette porte étrange…"~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66660 /* ~"Dans ce cas, je ferais mieux de le cacher un peu mieux." Il hausse les épaules et te dédie un sourire. "Je suis le gardien de la Maison de tolérance, au fait. Tu n'as rien à faire ici, mais si tu veux jeter un coup d'œil, ça ne me dérange pas."~ */
  IF ~~ THEN REPLY #66665 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #66666 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 2 // from:
  SAY #66661 /* ~"Rebonjour. Écoute, tu n'as vraiment rien à faire ici. Ne tarde pas trop à remonter, s'il te plaît. Je ne voudrais pas que nous ayons des ennuis, tous les deux."~ */
  IF ~~ THEN REPLY #66667 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #66668 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #66662 /* ~Il te dédie un sourire nerveux. "Je ne devrais pas t'accueillir ici, et encore moins discuter avec toi. Pas de questions pour le moment, s'il te plaît."~ */
  IF ~~ THEN REPLY #66669 /* ~"Dis-moi au moins ce que c'est que cet endroit."~ */ GOTO 4
  IF ~~ THEN REPLY #66670 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #66663 /* ~"C'est là que ces dames rangent leurs pierres sensorielles, qu'elles utilisent comme des journaux intimes. Tu ne pourras pas t'en servir, si c'est à ça que tu penses : chaque pierre est en phase avec une des étudiantes, qui est la seule à pouvoir l'utiliser."~ */
  IF ~~ THEN REPLY #66671 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ JOURNAL #66672 /* ~J'ai rencontré le gardien de la Maison de tolérance dans une grande salle souterraine. La pièce renfermait une pierre sensorielle pour chacune des prostituées de l'établissement, lesquelles s'en servent de journal intime. L'homme m'a prévenu que je ne pourrai utiliser ces pierres, car chacune ne répond qu'à sa seule propriétaire.~ */ EXIT
END

IF ~  NearbyDialog("Dgrace")
~ THEN BEGIN 5 // from:
  SAY #66664 /* ~"Bonjour, monsieur", fait l'homme avant de se tourner vers Tombée-en-Disgrâce. "Et bonjour à vous, Maîtresse Grâce. Soyez sûre que je m'occuperai des pierres de ces dames en votre absence." Il se tourne de nouveau vers toi. "Et maintenant, si tu veux bien m'excuser, j'ai des choses à faire. Au revoir."~ */
  IF ~~ THEN REPLY #66673 /* ~Pars.~ */ EXIT
END
