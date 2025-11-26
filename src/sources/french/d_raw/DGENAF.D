// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63508 /* ~Tu vois une femme qui a l'air de s'ennuyer. Elle te regarde approcher et fronce les sourcils.~ */
  IF ~~ THEN REPLY #63509 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #63510 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63511 /* ~Elle soupire, regarde aux alentours puis tourne les yeux vers toi. "Bonjour à toi … Que veux-tu ?"~ */
  IF ~~ THEN REPLY #63512 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #63513 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63514 /* ~Elle se renfrogne un peu plus. "Des questions… Bâcle ça bige. Je suis occupée et je n'ai pas le temps pour des questions."~ */
  IF ~~ THEN REPLY #63515 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #63516 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63517 /* ~"Je n'ai pas de temps à t'accorder." Elle jette un coup d'œil aux alentours. "Va caguer, ou j'appelle un garde."~ */
  IF ~~ THEN REPLY #63518 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63519 /* ~Tu vois une jeune femme. Elle semble assez excitée. Quand tu t'approches, elle te sourit.~ */
  IF ~~ THEN REPLY #63520 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #63521 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63522 /* ~"Oui. Bonjour et tout ça… Tu désires quelque chose ?"~ */
  IF ~~ THEN REPLY #63523 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63524 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63525 /* ~Elle fronce les sourcils et soupire. "Fais vite, s'il te plaît. Je ne veux rien rater."~ */
  IF ~~ THEN REPLY #63526 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #63527 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 8
  IF ~~ THEN REPLY #63528 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 9
  IF ~~ THEN REPLY #63529 /* ~"Y a-t-il quelque chose d'intéressant dans ce quartier ?"~ */ GOTO 11
  IF ~~ THEN REPLY #63530 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63531 /* ~"Quoi ? Pourquoi as-tu besoin de savoir ça ? Je suis juste quelqu'un qui essaie d'acquérir un peu de matériel. Je ne vois pas pourquoi tu veux connaître mon nom." Elle te lance un regard impatient.~ */
  IF ~~ THEN REPLY #63532 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63533 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63534 /* ~"J'essaie d'acquérir des objets que le commissaire-priseur met aux enchères… Si tu en venais au fait, je pourrais peut-être retourner à mon travail."~ */
  IF ~~ THEN REPLY #63535 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63536 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63537 /* ~"C'est un endroit véritablement extraordinaire. Jette un coup d'œil ! Tu as les revendeurs, les marchés, les enchères…" Elle semble ne pas trouver ses mots. "Il y a beaucoup de choses ici…"~ */
  IF ~~ THEN REPLY #63538 /* ~"Que puis-je acheter ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #63539 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63540 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63541 /* ~Elle sourit. "Eh ! bien… à peu près n'importe quoi… sauf un peu plus de mon temps. As-tu fini avec tes questions ?"~ */
  IF ~~ THEN REPLY #63542 /* ~"Pas tout à fait. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63543 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63544 /* ~Elle fronce les sourcils. "Je ne sais pas… J'ai vécu ici toute ma vie et j'ai tendance à prendre les choses telles qu'elles sont." Elle hausse les épaules. "Jette un coup d'œil autour de toi, je suis sûre que tu trouveras quelque chose qui t'intéresse."~ */
  IF ~~ THEN REPLY #63545 /* ~"Je le ferai. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63546 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63547 /* ~Tu vois une femme à l'air sévère. Elle te regarde approcher puis essaie de t'éviter.~ */
  IF ~~ THEN REPLY #63548 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #63549 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63550 /* ~Elle te regarde avec méfiance. "Euh… Bonjour." Elle semble contrariée.~ */
  IF ~~ THEN REPLY #63551 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #63552 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63553 /* ~"Je ne veux pas que tu me déranges. Va-t'en." Elle se renfrogne.~ */
  IF ~~ THEN REPLY #63554 /* ~"Ça ne te prendra qu'un instant."~ */ GOTO 15
  IF ~~ THEN REPLY #63555 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63556 /* ~Elle se renfrogne encore plus. "Non. Je ne veux pas que tu me déranges. Va-t'en ! T'as compris bige ?"~ */
  IF ~~ THEN REPLY #63557 /* ~"Non, je ne vois pas."~ */ GOTO 16
  IF ~~ THEN REPLY #63558 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63559 /* ~Elle t'adresse un regard méprisant, ronchonne, et s'éloigne.~ */
  IF ~~ THEN REPLY #63560 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63561 /* ~Tu vois la cliente du commissaire-priseur. Alors que tu essaies de lui parler, elle te fait signe de t'éloigner.~ */
  IF ~~ THEN REPLY #63562 /* ~Pars.~ */ EXIT
END
