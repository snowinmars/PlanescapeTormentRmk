// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDYLANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDYLANA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57455 /* ~Tu aperçois une femme entre deux âges, vêtue de loques. Elle te jette un regard ouvertement hostile tandis que tu approches.~ */
  IF ~~ THEN REPLY #57456 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57457 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57458 /* ~"Va caguer, bige. Va voir ailleurs si j'y suis…" Elle te regarde fixement.~ */
  IF ~~ THEN REPLY #57459 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57460 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57461 /* ~Elle fronce les sourcils. "T'es béjaune ou complètement idiot ? J't'ai dit d'aller caguer. J'me fiche de tes questions !"~ */
  IF ~~ THEN REPLY #57462 /* ~"Si tu réponds à quelques questions, je m'en irai…"~ */ GOTO 3
  IF ~~ THEN REPLY #57463 /* ~"Je n'aime pas ton attitude. Peut-être que tu répondras mieux après quelques coups."~ */ GOTO 11
  IF ~~ THEN REPLY #57464 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.1 5.1 6.0 7.0 8.1 9.1 10.0 11.0 12.0
  SAY #57465 /* ~Elle te regarde fixement. "D'accord. Sois bref."~ */
  IF ~~ THEN REPLY #57466 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #57467 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 7
  IF ~~ THEN REPLY #57468 /* ~"Je cherche un deva, j'ai cru comprendre qu'il était ici."~ */ GOTO 8
  IF ~~ THEN REPLY #57469 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57470 /* ~"J'vois pas c'que ça peut t'faire…" Elle s'interrompt. "Dylana."~ */
  IF ~~ THEN REPLY #57471 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57472 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57473 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57474 /* ~Elle soupire. "J'travaillais avec un contrebandier, à trafiquer d'la bière et d'autres choses. Une nuit, les gardes nous ont attrapés. Il a payé pour s'libérer et m'a laissée pourrir…" Elle hausse les épaules. "Et voilà."~ */
  IF ~~ THEN REPLY #57475 /* ~"On dirait que tu lui dois une revanche."~ */ GOTO 6
  IF ~~ THEN REPLY #57476 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57477 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57478 /* ~Elle sourit. "Oui. Au fait, son nom est Voorsha. Si tu l'rencontres, prends garde."~ */
  IF ~~ THEN REPLY #57479 /* ~"J'y veillerai. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57480 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #57481 /* ~"Que dire de plus ? C'est une prison, par Baator. Tu passes ton temps dans une cellule, et tu pries pour revoir la lumière du jour."~ */
  IF ~~ THEN REPLY #57482 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57483 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #57484 /* ~Elle fronce les sourcils en réfléchissant. "Non, j'crois pas. J'dirais pas qu'j'connais tout l'monde là-bas, mais c'est difficile de manquer un deva. S'il était dans c't'anneau, j'le saurais."~ */
  IF ~~ THEN REPLY #57485 /* ~"Cet anneau ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57486 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57487 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57488 /* ~"Oui, la prison est faite de trois anneaux, l'extérieur, le central et l'intérieur. Plus ton crime est grand, et plus tu descends."~ */
  IF ~~ THEN REPLY #57489 /* ~"Dans quel anneau sommes-nous ?"~ */ GOTO 10
  IF ~~ THEN REPLY #57490 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57491 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57492 /* ~"C'est l'anneau central. Pire que l'extérieur, mais pas tant que l'intérieur."~ */
  IF ~~ THEN REPLY #57493 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #57494 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #57495 /* ~Elle commence à te dire quelque chose, puis s'interrompt. "Oui…t'as l'air du genre à pouvoir faire ça."~ */
  IF ~~ THEN REPLY #57496 /* ~"Alors, vas-tu répondre à mes questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57497 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57498 /* ~Tu aperçois Dylana. Elle n'est pas très heureuse de te voir. "De retour… pourquoi ?"~ */
  IF ~~ THEN REPLY #57499 /* ~"J'ai des questions…"~ */ GOTO 3
END
