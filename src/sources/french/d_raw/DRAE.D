// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58663 /* ~Tu aperçois une femme âgée. Elle fronce les sourcils et secoue la tête en te voyant approcher.~ */
  IF ~~ THEN REPLY #58664 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58665 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58666 /* ~Elle grogne. "Bâcle ça, bige. Garde tes jolis *bonjour* pour toi et dis-moi ce que tu veux."~ */
  IF ~~ THEN REPLY #58667 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58668 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.0 7.1 8.1 9.1 10.0 11.0
  SAY #58669 /* ~"Alors pose-les." Elle te regarde fixement.~ */
  IF ~~ THEN REPLY #58670 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58671 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58672 /* ~"Est-ce que tu sais quoi que ce soit concernant un deva ici-bas ?"~ */ GOTO 7
  IF ~~ THEN REPLY #58673 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58674 /* ~"Et bien… t'es du genre sociable. Mon nom est Rae, même si ça t'avancera pas beaucoup de le savoir."~ */
  IF ~~ THEN REPLY #58675 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58676 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58677 /* ~Elle regarde alentour puis hausse les épaules. "C'est une prison. Elle est divisée en trois sections. La section extérieure est pour les poids plumes. Le centre est pour ceux qui ont de l'avenir. Ici, à l'intérieur, on trouve les vrais criminels." Elle te sourit.~ */
  IF ~~ THEN REPLY #58678 /* ~"De quel genre de crimes parles-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58679 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58680 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58681 /* ~"Pour la zone extérieure, les petits vols et autres crimes de droit commun. Pour le centre, principalement les agressions. C'est rempli de brutes, d'hommes de main et de criminels du même genre. Ici, dans l'anneau intérieur, on trouve les meurtriers, les coupeurs de gorge, les conspirateurs et autres, plus dangereux." Elle sourit.~ */
  IF ~~ THEN REPLY #58682 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58683 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58684 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58685 /* ~Elle éclate de rire. "Parce que j'ai fait quelque chose de mal ! Pourquoi veux-tu que je sois là, sinon ?" Elle te fait signe de t'en aller. "C'est pas tes affaires, de toute façon."~ */
  IF ~~ THEN REPLY #58686 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58687 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #58688 /* ~Elle secoue la tête. "Il n'est pas ici, mais dans une cellule spéciale… ou du moins, il l'était."~ */
  IF ~~ THEN REPLY #58689 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58690 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58691 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58692 /* ~"Les prisonniers de la zone extérieure sont mis à profit pour augmenter la taille de la prison. Ce sont eux qui creusent les nouvelles salles." Elle s'interrompt. "Un jour, ils sont arrivés dans une sorte de pièce, où ils ont trouvé le deva. J'imagine qu'il y est toujours."~ */
  IF ~~ THEN REPLY #58693 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 9
  IF ~~ THEN REPLY #58694 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58695 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58696 /* ~Elle fronce les sourcils. "Je viens de te le dire, nidjot. Il est dans la zone extérieure !"~ */
  IF ~~ THEN REPLY #58697 /* ~"Qu'est-ce qu'un nidjot ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58698 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58699 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58700 /* ~Elle te plante son doigt osseux dans la poitrine. "T'en es un, bige. Exemple vivant d'un nidjot de première."~ */
  IF ~~ THEN REPLY #58701 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58702 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58703 /* ~Tu aperçois Rae. Elle rit en te voyant approcher. "Qu'est-ce que tu veux cette fois-ci, bige ?"~ */
  IF ~~ THEN REPLY #58704 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58705 /* ~"Rien, au revoir."~ */ EXIT
END
