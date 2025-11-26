// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTRAHAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTRAHAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32470 /* ~Tu aperçois un homme de taille moyenne, drapé dans de longues robes d'un noir profond. Ses cheveux sont soigneusement coiffés et un bouc impeccable orne ses traits gracieux. Remarquant ton arrivée, il pose le livre dans lequel il écrivait et se dirige à grand pas vers toi d'un air confiant, tout en souriant. "Impressionnant… Je dois avouer que je n'aurais jamais pensé que tu réussirais à aller si loin."~ */
  IF ~~ THEN REPLY #32476 /* ~"Ça me fait plaisir de te décevoir… C'est toi qui es responsable de tous ces morts errants ?"~ */ GOTO 1
  IF ~~ THEN REPLY #32477 /* ~"Infâme nécromancien ! Je suis là pour t'empêcher de continuer à profaner ce lieu."~ */ GOTO 4
  IF ~~ THEN REPLY #32478 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32471 /* ~"Qui je suis n'a que peu d'importance pour toi. Ce que je veux est la question dont tu devrais le plus te soucier." Alors qu'il parle, il te regarde de haut en bas, comme fasciné par ta personne.~ */
  IF ~~ THEN REPLY #32479 /* ~"Bon… Qu'est-ce que tu veux ?"~ */ GOTO 2
  IF ~~ THEN REPLY #32480 /* ~"Tu as tort. Ce que tu veux ne m'intéresse *pas*… Je suis là pour te tuer."~ */ GOTO 4
  IF ~~ THEN REPLY #32481 /* ~"Peu importe. Il faut que je m'en aille."~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32472 /* ~Il recule d'un pas et hausse un sourcil. "Je veux… ton sang."~ */
  IF ~~ THEN REPLY #32482 /* ~"C'est une menace ?"~ */ GOTO 3
  IF ~~ THEN REPLY #32483 /* ~"Quelle coïncidence… Moi aussi je suis venu pour ton sang. Prépare-toi à mourir !"~ */ GOTO 4
  IF ~~ THEN REPLY #32484 /* ~"Euh… Ça ne m'intéresse pas. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32473 /* ~L'homme commence à répondre, puis s'interrompt brusquement. Un sourire malveillant s'inscrit sur son visage et il se met à rire. "Oui… J'imagine que oui." Il continue à rire de plus en plus fort à sa propre plaisanterie. Tu remarques que ses mains ont commencé à bouger. Lentement, elles battent l'air d'avant en arrière, traçant des figures compliquées dans les airs.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #32474 /* ~"Vraiment ? Eh bien, je t'en prie, essaie tant que tu peux." Il sourit et lève les mains devant lui. Lentement, ses mains commencent à battre l'air d'avant en arrière, traçant des figures compliquées dans les airs.~ */
  IF ~~ THEN REPLY #32485 /* ~Attaque.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 2.2
  SAY #32475 /* ~"J'ai bien peur que tu n'ailles nulle part." Il sourit et lève les mains devant lui. Lentement, ses mains commencent à battre l'air d'avant en arrière, traçant des figures compliquées dans les airs.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
