// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHULT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHULT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2802 /* ~Cet homme a l'air moins sévère et méfiant que les gens qui l'entourent. Il se déplace posément, scrutant simplement le sol autour de lui en avançant. Alors que tu t'approches de lui, il t'adresse un sourire accueillant.~ */
  IF ~~ THEN REPLY #18030 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #18031 /* ~Fais un signe de tête, passe ton chemin.~ */ EXIT
  IF ~~ THEN REPLY #18032 /* ~Passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2803 /* ~"Bonjour, matois ! Dis donc… t'as vu des morts par ici ?"~ */
  IF ~~ THEN REPLY #18033 /* ~"Pas dans le coin, non. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #18034 /* ~"Non, pas dans le coin. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.4 4.3 5.3 6.3 7.4 8.3 9.4 10.3 11.1 12.4 13.3 14.3 15.3 16.1
  SAY #18015 /* ~Et adieu à toi aussi, matois ! Il fait signe et s'en va.~ */
  IF ~~ THEN REPLY #18035 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #18016 /* ~"Dommage, dommage." Il hausse les épaules. "T'avais des questions, c'est ça ? Vas-y, alors !"~ */
  IF ~~ THEN REPLY #18036 /* ~"Qu'est-ce que tu cherches ?"~ */ GOTO 4
  IF ~~ THEN REPLY #18037 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18038 /* ~"Je cherche un certain Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18039 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~~ THEN REPLY #18040 /* ~"Peu importe. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18017 /* ~"Des morts, bien sûr ! Tu reconnais pas les habits des Récupérateurs ?" Il prend un bout du vêtement et te le montre pour inspection.~ */
  IF ~~ THEN REPLY #18427 /* ~"Non…"~ */ GOTO 5
  IF ~~ THEN REPLY #18428 /* ~"Les Récupérateurs ?"~ */ GOTO 5
  IF ~~ THEN REPLY #18429 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18430 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 12.0 13.0 14.0 15.0
  SAY #18018 /* ~"Oui, des Récupérateurs !" Il montre ses vêtements marron en loques. "Voici le vêtement d'un Récupérateur, matois. Tous les pauvres bougres que tu vois avec… moi, par exemple, ha !…. sont probablement en train de chercher des morts. Des cadavres, pour vendre à la Morgue." Il hausse les épaules. "Du moment que ça permet d's'en sortir dans la Ruche, hein ? Ha ha !"~ */
  IF ~~ THEN REPLY #18431 /* ~"Est-ce que les Récupérateurs travaillent ensemble ?"~ */ GOTO 6
  IF ~~ THEN REPLY #18432 /* ~"Pourquoi est-ce que la Morgue achète les cadavres ?"~ */ GOTO 11
  IF ~~ THEN REPLY #18433 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18434 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #18019 /* ~Il rit de bon cœur. "Bon sang, non ! Nous avons tous les mêmes habits, mais y'a qu'un nombre de morts limité. On s'met en bandes, en général… des bandes rivales, des gangs… ce que tu veux… qui ne sont pas tellement amicales entre elles."~ */
  IF ~~ THEN REPLY #18435 /* ~"Est-ce qu'il y a des bandes rivales de Récupérateurs près d'ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #18436 /* ~"Pourquoi est-ce que la Morgue achète les cadavres ?"~ */ GOTO 11
  IF ~~ THEN REPLY #18437 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18438 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #18020 /* ~Il acquiesce. "Aussi sûr que Sigil est ronde ! La plupart des Récupérateurs dans la Ruche habitent dans le Square du Chiffonnier, une décharge au nord d'ici par la grande porte. Elle est pratiquement aux mains des hommes de Partagetombe maintenant, depuis qu'on a chassé la plupart des gars de Pharod."~ */
  IF ~~ THEN REPLY #18439 /* ~"Parle-moi de Partagetombe."~ */ GOTO 8
  IF ~~ THEN REPLY #18440 /* ~"Parle-moi de Pharod."~ */ GOTO 9
  IF ~~ THEN REPLY #18441 /* ~"Pourquoi est-ce que la Morgue achète les cadavres ?"~ */ GOTO 11
  IF ~~ THEN REPLY #18442 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18443 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 10.0
  SAY #18021 /* ~"Partagetombe ? C'est mon patron. Je ne lui parle jamais par contre… je ne l'ai même jamais vu de près. Il est solitaire et dirige tout par l'intermédiaire de quelques sous-fifres. Tu le trouveras dans sa case au Square du Chiffonnier, mais je m'en approcherais pas sauf si t'as d'bonnes raisons. L'aime pas trop les étrangers, en fait."~ */
  IF ~~ THEN REPLY #18444 /* ~"Parle-moi de Pharod."~ */ GOTO 9
  IF ~~ THEN REPLY #18445 /* ~"Pourquoi est-ce que la Morgue achète les cadavres ?"~ */ GOTO 11
  IF ~~ THEN REPLY #18446 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18447 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #18022 /* ~"J'sais pas grand-chose sur c't'homme. On a passé beaucoup de temps à combattre ses gars, mais ils ont tous disparu d'un coup, y compris Pharod. On attrape parfois des traînards dans le Square du Chiffonnier, mais on sait pas où se cachent les autres."~ */
  IF ~~ THEN REPLY #18448 /* ~"Il lui reste beaucoup d'hommes ?"~ */ GOTO 10
  IF ~~ THEN REPLY #18452 /* ~"Parle-moi de Partagetombe."~ */ GOTO 8
  IF ~~ THEN REPLY #18453 /* ~"Pourquoi est-ce que la Morgue achète les cadavres ?"~ */ GOTO 11
  IF ~~ THEN REPLY #18454 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18456 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #18023 /* ~"Sûrement, parc'qu'il paraît que sa bande a bien bossé récemment. Y trouvent beaucoup de morts et récoltent pas mal de jonc des Hommes-Poussière à la Morgue. Sais pas comment, parc'qu'on a du mal à trouver des cadavres en c'moment." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #18457 /* ~"Parle-moi de Partagetombe."~ */ GOTO 8
  IF ~~ THEN REPLY #18459 /* ~"Pourquoi est-ce que la Morgue achète les cadavres ?"~ */ GOTO 11
  IF ~~ THEN REPLY #18460 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18461 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.1 6.1 7.2 8.1 9.2 10.1
  SAY #18024 /* ~"Les rues de la Ruche sont un peu plus propres, faut croire. Ça empêche la peste et tout ça de se répandre. Bien que les Hommes-Poussière aiment garder les morts chez eux, aussi… pour être sûrs qu'il sont bien enterrés, brûlés, et tout. Ça fait partie de leurs croyances et tout ça."~ */
  IF ~~ THEN REPLY #18463 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18464 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.2 5.2 6.2 7.3 8.2 9.3 10.2 11.0
  SAY #18025 /* ~"Demande toujours, matois ! On sait jamais, p't'être que quelqu'un va tomber et crever à mes pieds pendant qu'on cause. Ah Ah !"~ */
  IF ~~ THEN REPLY #18466 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 5
  IF ~~ THEN REPLY #18467 /* ~"Tu peux me parler de cette région ?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18469 /* ~"Je cherche un certain Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18471 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~~ THEN REPLY #18472 /* ~"Peu importe. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 3.1 12.1 14.1 15.1
  SAY #18026 /* ~"Ça c'est la Ruche, matois - c'est l'pire quartier d'tout Sigil. Ah ! Bon, au nord et à l'ouest, par la grande porte, il y a le Square du Chiffonnier, où les Récupérateurs comme moi ont leur guitoune. Par contre, j'connais pas trop le reste de Sigil."~ */
  IF ~~ THEN REPLY #18473 /* ~"Tu peux me parler des Récupérateurs ?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18474 /* ~"Je cherche un certain Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18475 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~~ THEN REPLY #18476 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 3.2 12.2 13.1 15.2
  SAY #18027 /* ~"Le patron des Récupérateurs ? J'sais pas grand-chose sur cet homme. On a passé beaucoup de temps à combattre ses gars, mais ils ont tous disparu d'un coup, Pharod avec. On attrape parfois des traînards dans le Square du Chiffonnier, mais on sait pas où se cache le reste."~ */
  IF ~~ THEN REPLY #18477 /* ~"Tu peux me parler des Récupérateurs ?"~ */ GOTO 5
  IF ~~ THEN REPLY #18478 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18479 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 15
  IF ~~ THEN REPLY #18480 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 3.3 12.3 13.2 14.2
  SAY #18028 /* ~"Hmm… non, j'en ai pas rencontré. Mais j'vais te dire - si j'le trouve, j'te le garde."~ */
  IF ~~ THEN REPLY #18481 /* ~"Merci. Tu peux me parler des Récupérateurs ?"~ */ GOTO 5
  IF ~~ THEN REPLY #18482 /* ~"Merci. Tu peux me parler de cette région ?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18483 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 14
  IF ~~ THEN REPLY #18484 /* ~"Ce serait bien, merci. Au revoir."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #18029 /* ~"'Salut, matois. Dis donc, j't'ai déjà vu ? Sûr ! J'm'en rappelle maintenant. Dis… t'as vu des morts dans l'coin ?"~ */
  IF ~~ THEN REPLY #18485 /* ~"Pas dans le coin, non. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #18486 /* ~"Non, pas dans le coin. Au revoir."~ */ GOTO 2
END
