// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERFEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66400 /* ~Tu aperçois une femme qui s'ennuie. Elle te voit approcher mais détourne le regard.~ */
  IF ~~ THEN REPLY #66401 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #66402 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66403 /* ~Avec un soupir, elle se tourne vers toi. "Bonjour. Qu'est-ce qui t'amène ?"~ */
  IF ~~ THEN REPLY #66404 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66405 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66406 /* ~Son froncement de sourcils s'accentue. "Je suis occupée et je n'ai pas le temps de répondre à tes questions. Va te trouver un rabatteur." ~ */
  IF ~~ THEN REPLY #66407 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #66408 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66409 /* ~"J'essaye de me concentrer sur la vente et je n'ai pas de temps à t'accorder." Elle te tourne résolument le dos.~ */
  IF ~~ THEN REPLY #66410 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66411 /* ~Tu vois une jeune femme. Elle semble assez excitée. Quand tu t'approches, elle te sourit.~ */
  IF ~~ THEN REPLY #66412 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #66413 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66414 /* ~"Salut, matois. Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #66415 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66416 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66417 /* ~Elle fronce les sourcils et soupire. "Je ne veux rien manquer, alors fais vite."~ */
  IF ~~ THEN REPLY #66418 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #66419 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 8
  IF ~~ THEN REPLY #66420 /* ~"Qu'est-ce qui se passe, au juste ?"~ */ GOTO 9
  IF ~~ THEN REPLY #66421 /* ~"Y a-t-il quelque chose d'intéressant dans ce quartier ?"~ */ GOTO 11
  IF ~~ THEN REPLY #66422 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66423 /* ~"Quelqu'un qui essaye de suivre la vente. Fais vite, tu veux ?"~ */
  IF ~~ THEN REPLY #66424 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66425 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66426 /* ~"Je suis venue acheter un des serviteurs. Cet homme, là…" Elle devient rouge comme une pivoine. "Mais ça ne te regarde pas. Autre chose ?"~ */
  IF ~~ THEN REPLY #66427 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66429 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66430 /* ~"Ces gens ont été condamnés pour des crimes mineurs et ont une dette envers la société. On les vend aux enchères pour leur permettre de la payer."~ */
  IF ~~ THEN REPLY #66431 /* ~"Et qu'advient-il quand la dette est payée ?"~ */ GOTO 10
  IF ~~ THEN REPLY #66432 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66433 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66434 /* ~Elle sourit. "Eh bien… ils retrouvent tous leurs droits et la liberté. Ils peuvent alors recommencer à vivre normalement."~ */
  IF ~~ THEN REPLY #66435 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66436 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66437 /* ~"Uniquement les ventes, pour ce qui me concerne. Il y a un autre commissaire-priseur, là-bas, mais il ne vend que des objets. Va quand même le voir, si tu veux." Elle sourit.~ */
  IF ~~ THEN REPLY #66438 /* ~"Je le ferai. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66440 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66439 /* ~Tu vois une femme à l'air sévère. Elle te regarde approcher puis essaie de t'éviter.~ */
  IF ~~ THEN REPLY #66441 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #66442 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66443 /* ~Elle a l'air contrariée. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #66444 /* ~"J'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #66445 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66446 /* ~Elle fronce les sourcils. "Je m'en moque. Va voir quelqu'un qu'ça intéresse."~ */
  IF ~~ THEN REPLY #66447 /* ~"Ça ne te prendra qu'un instant."~ */ GOTO 15
  IF ~~ THEN REPLY #66448 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66449 /* ~Son froncement de sourcils s'accentue. "Je m'en moque. Laisse-moi."~ */
  IF ~~ THEN REPLY #66450 /* ~"Tu ne peux pas prendre quelques instants pour aider quelqu'un ?"~ */ GOTO 16
  IF ~~ THEN REPLY #66451 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66452 /* ~Elle t'adresse un regard méprisant, ronchonne, et s'éloigne.~ */
  IF ~~ THEN REPLY #66453 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66454 /* ~Tu vois la cliente du commissaire-priseur. Alors que tu essaies de lui parler, elle te fait signe de t'éloigner.~ */
  IF ~~ THEN REPLY #66455 /* ~Pars.~ */ EXIT
END
