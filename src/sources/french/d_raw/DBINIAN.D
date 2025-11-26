// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBINIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBINIAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57500 /* ~Tu aperçois un jeune homme vêtu de loques. Il s'ennuie profondément et regarde au loin.~ */
  IF ~~ THEN REPLY #57501 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57502 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57503 /* ~Ton bonjour le surprend et il bondit. Il te dévisage un instant. "Te faufiles pas comme ça près d'moi, matois. T'as failli m'faire crever d'trouille."~ */
  IF ~~ THEN REPLY #57505 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57506 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.1 7.0 8.2 9.1 10.1 11.0
  SAY #57504 /* ~Il fronce les sourcils. "Comme quoi…"~ */
  IF ~~ THEN REPLY #57507 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57508 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57509 /* ~"J'ai entendu dire qu'il y avait un deva dans les parages."~ */ GOTO 8
  IF ~~ THEN REPLY #57510 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57511 /* ~"T'as pas besoin d'savoir mon nom, pose tes questions et fiche-moi la paix." Il te jette un regard de défi.~ */
  IF ~~ THEN REPLY #57512 /* ~"J'ai horreur des gens irrespectueux ; je leur enseigne d'habitude le respect à coups de poing.~ */ GOTO 4
  IF ~~ THEN REPLY #57513 /* ~"Très bien, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57514 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57515 /* ~Il hausse les épaules. "D'accord, je m'appelle Binian. T'es content, maintenant ?"~ */
  IF ~~ THEN REPLY #57516 /* ~"Oui, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57517 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #57518 /* ~"C'est qu'un tas d'fumier et toi, moi et tout c'que tu vois autour, on est que des rebuts qu'la cité jette sur le tas." Il te dédie un sourire moqueur. "Ça résume à peu près tout."~ */
  IF ~~ THEN REPLY #57519 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #57520 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57521 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57522 /* ~Il hausse les épaules et regarde nerveusement alentour. "J'ai volé des trucs… peut-être fait du mal à un ou deux bougres… et m'voilà."~ */
  IF ~~ THEN REPLY #57523 /* ~"Alors tu es un voleur…"~ */ GOTO 7
  IF ~~ THEN REPLY #57524 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57525 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57526 /* ~Il secoue la tête. "Non, j'suis un ex-voleur. Après avoir passé un an dans c'trou puant, j'suis devenu un ex-voleur…" Il soupire et regarde au loin. "J'veux plus jamais revenir ici, ça c'est sûr."~ */
  IF ~~ THEN REPLY #57527 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57528 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57529 /* ~Il hausse les sourcils et regarde au loin. "Y'en a un en bas, au nouveau site d'excavation. Cherche les endroits où qu'on a creusé récemment et tu l'trouveras."~ */
  IF ~~ THEN REPLY #57530 /* ~"Où se trouve le site d'excavation ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57531 /* ~"Qu'est-ce qu'ils extraient ?"~ */ GOTO 10
  IF ~~ THEN REPLY #57532 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57533 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #57534 /* ~Il hausse les épaules. "Jamais allé là-bas, c'est d'ce côté." Il indique vaguement une direction. "Tu peux pas l'manquer, cherche des signes d'excavation."~ */
  IF ~~ THEN REPLY #57535 /* ~"Qu'est-ce qu'ils extraient ?"~ */ GOTO 10
  IF ~~ THEN REPLY #57536 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57537 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0
  SAY #57538 /* ~Il secoue la tête. "Rien. Quand ils veulent agrandir la prison, les gardes nous font creuser." Il grogne. "Ça fait partie du châtiment…"~ */
  IF ~~ THEN REPLY #57539 /* ~"Où se trouve le site d'excavation ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57540 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57541 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57542 /* ~Tu aperçois Binian, le voleur. "Encore toi… qu'est-ce que tu veux cette fois-ci ?"~ */
  IF ~~ THEN REPLY #57543 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57544 /* ~"Peu importe. Au revoir."~ */ EXIT
END
