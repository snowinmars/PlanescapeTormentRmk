// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~"Sssss… Tas de viande, il n'y a pas de place pour toi ici."~ */
  IF ~~ THEN REPLY #38493 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~"Alors, j'y vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~"Nous voulons étendre notre domaine. Éliminer les ennemis… trouver de la nourriture pour ne pas avoir à dévorer la viande ambulante, tu comprends ? Le Roi Sssilencieux nous dit… pas de viande ambulante."~ */
  IF ~~ THEN REPLY #38498 /* ~"Qui est le Roi Silencieux ?"~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~"Ça ? Ccce sssont les Nations Englouties. Ccc'est notre nouveau repaire de chassse. Ccc'est… notre garde-manger."~ */
  IF ~~ THEN REPLY #38503 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~"Nous faisons de la reconnaissssance, de la reconnaisssance pour les Nations Mortes."~ */
  IF ~~ THEN REPLY #38505 /* ~"Qu'est-ce que vous cherchez ?"~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~"Je vois. Alors au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~"Ssss !" La goule siffle d'un air frustré. "Le Roi Sssilencieux est notre maître. Acaste est notre leader ! Nous trouverons bientôt l'équilibre entre les deux !"~ */
  IF ~~ THEN REPLY #38508 /* ~"Mais qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~"Ssss… la viande revient…"~ */
  IF ~~ THEN REPLY #38511 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~"Alors, j'y vais. Au revoir."~ */ EXIT
END
