// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELAAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELAAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58377 /* ~Tu aperçois une jeune femme. Son visage est sale, sa chevelure hirsute, et ses habits semblent faits de restes de plusieurs vêtements. Elle fronce les sourcils en te voyant approcher.~ */
  IF ~~ THEN REPLY #58378 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58379 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58380 /* ~Elle regarde alentour avec méfiance et recule d'un pas. "Qu'est-ce que tu veux, bige ?"~ */
  IF ~~ THEN REPLY #58381 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58382 /* ~"Rien, au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58383 /* ~Elle te fixe un instant, puis se détend quelque peu. "J'espère que c'est tout c'que t'attends de moi." Elle t'observe avec méfiance.~ */
  IF ~~ THEN REPLY #58384 /* ~"Que pourrais-je vouloir d'autre ?"~ */ GOTO 3
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58386 /* ~"Je veux seulement quelques réponses."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58387 /* ~"Je veux seulement quelques réponses."~ */ GOTO 7
  IF ~~ THEN REPLY #58388 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58389 /* ~Elle fronce de nouveau les sourcils et met les mains sur ses hanches. "Écoute, bige. J'suis pas si moche que ça, et y'a pas tant d'femmes que ça dans le coin. Fais travailler tes méninges."~ */
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58390 /* ~"Je veux seulement quelques réponses."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58391 /* ~"Je veux seulement quelques réponses."~ */ GOTO 7
  IF ~~ THEN REPLY #58392 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58393 /* ~"D'accord, pourquoi p…" Elle s'interrompt soudainement et te regarde fixement. Elle semble te reconnaître. "Attends un peu. Grand, balafré, avec une drôle de coupe de cheveux… t'est l'bonhomme qu'espionnait Roberta !"~ */
  IF ~~ THEN REPLY #58394 /* ~"Roberta Perfidor… est-ce qu'elle est ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58395 /* ~"Je ne vois pas de quoi tu parles."~ */ GOTO 6
  IF ~~ THEN REPLY #58396 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58397 /* ~"Ouais, elle est là." Elle s'interrompt et sourit. "Tu devrais lui rendre visite. Ça lui ferait plaisir."~ */
  IF ~~ THEN REPLY #58398 /* ~"Oui, j'en suis sûr, mais j'ai d'abord quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58399 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58401 /* ~Elle fronce les sourcils. "Bien sûr que non. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #58404 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58406 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 15.1 16.0 17.0
  SAY #58408 /* ~"Demande-moi ce que tu veux."~ */
  IF ~~ THEN REPLY #58409 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58410 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 12
  IF ~~ THEN REPLY #58411 /* ~"Je cherche un deva, et j'ai cru comprendre qu'il était ici."~ */ GOTO 13
  IF ~~ THEN REPLY #58413 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58415 /* ~"Je suis Yelaan. C'est peut-être pas un nom terrible, mais c'est le mien."~ */
  IF ~~ THEN REPLY #58418 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #58420 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58423 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58425 /* ~Elle réfléchit un instant puis hausse les épaules. "J'ai tabassé une ordure qui m'volait mes affaires. On m'a attrapée et jetée ici."~ */
  IF ~~ THEN REPLY #58427 /* ~"Te volait tes affaires ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58429 /* ~"Qui as-tu fait tabasser ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58431 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58434 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #58436 /* ~"J'étais une catin, et j'me débrouillais bien… jusqu'à c'qu'elle arrive. Alors j'me suis dit qu'en lui refaisant l'portrait, je récupérerais ma clientèle." Elle soupire.~ */
  IF ~~ THEN REPLY #58439 /* ~"Qui as-tu fait tabasser ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58443 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58445 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #58448 /* ~Elle réfléchit un instant, puis hausse les épaules. "Me souviens pas d'son nom… ou peut-être que j'l'ai jamais su. Elle me faisait concurrence, c'est tout c'qui comptait."~ */
  IF ~~ THEN REPLY #58453 /* ~"Tu as dit qu'elle te volait tes affaires ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58455 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58457 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #58459 /* ~Elle te regarde un instant et tu vois une larme se former au coin de son œil. Elle l'essuie rapidement et se reprend. "Qu'est-ce qu'il y a à dire… c'est une prison et la vie y est dure. J'ai entendu dire qu'il y a des prisons pires que ça, mais j'en serai jamais convaincue…" Sa voix chevrotante devient un murmure. "Si j'pouvais tout recommencer…"~ */
  IF ~~ THEN REPLY #58461 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58463 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #58465 /* ~Elle hoche la tête. "Il y a un deva par ici… quelque part. Je l'ai jamais vu, mais on parle beaucoup de lui. Les gens l'appellent le *Porteur de peste*."~ */
  IF ~~ THEN REPLY #58469 /* ~"Porteur de peste ?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #58472 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58475 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58478 /* ~"Oui… après qu'on l'a trouvé, la peste a commencé à se propager ici. Elle a balayé toute la prison et a emporté la plupart d'entre nous, à ce qu'on dit." Elle hausse les épaules. "La plupart des gens disent que c'est sa faute, mais je sais pas si c'est vrai."~ */
  IF ~~ THEN REPLY #58480 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 15
  IF ~~ THEN REPLY #58482 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58486 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58488 /* ~Elle hausse les épaules. "Je l'ignore. Près d'ici, c'est tout ce que je sais."~ */
  IF ~~ THEN REPLY #58489 /* ~"Tu sais qu'il est proche, mais tu ne sais pas où il est…"~ */ GOTO 16
  IF ~~ THEN REPLY #58491 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58493 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58494 /* ~Elle acquiesce. "Écoute, bige. La peste qui a balayé cet endroit a été dévastatrice et les gens disent que c'est la faute du deva. Pourquoi, par Baator, veux-tu que je le cherche ?"~ */
  IF ~~ THEN REPLY #58495 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58496 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #58497 /* ~Tu aperçois Yelaan. Elle te fait un signe en te voyant approcher. "Encore toi… quoi de neuf ?"~ */
  IF ~~ THEN REPLY #58498 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #58499 /* ~"Rien, au revoir."~ */ EXIT
END
