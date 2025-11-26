// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERMALE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66457 /* ~Tu remarques un jeune homme qui a l'air de s'ennuyer ferme. Il hoche la tête à ton attention en te voyant approcher.~ */
  IF ~~ THEN REPLY #66458 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #66459 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66460 /* ~"Oui ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #66461 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66462 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66463 /* ~"Hmm. Eh bien, je ne suis pas vraiment au courant. Tu devrais demander à quelqu'un d'autre." ~ */
  IF ~~ THEN REPLY #66464 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #66465 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66466 /* ~"Je continue de penser que tu devrais t'adresser à quelqu'un d'autre," répond-il en te tournant résolument le dos.~ */
  IF ~~ THEN REPLY #66467 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66468 /* ~Tu aperçois un jeune homme qui te regardes approcher d'un air méfiant.~ */
  IF ~~ THEN REPLY #66469 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #66470 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66471 /* ~"Bonjour à toi, matois." Une certaine inquiétude se peint sur ses traits quand il remarque tes cicatrices.~ */
  IF ~~ THEN REPLY #66473 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66474 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66475 /* ~"Hmm. D'accord…"~ */
  IF ~~ THEN REPLY #66476 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #66477 /* ~"Que fais-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #66478 /* ~"Peux-tu me dire ce qui se passe, au juste ?"~ */ GOTO 9
  IF ~~ THEN REPLY #66479 /* ~"Y a-t-il quelque chose d'intéressant dans ce quartier ?"~ */ GOTO 11
  IF ~~ THEN REPLY #66480 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66481 /* ~"Je préfère garder ça pour moi. Contente-toi de poser tes questions, matois."~ */
  IF ~~ THEN REPLY #66482 /* ~"Très bien, j'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66483 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66484 /* ~"Je suis venu voir la vente aux enchères. Je n'ai pas les moyens de m'acheter quoi que ce soit, mais c'est amusant de savoir qui va être mis en vente cette fois-ci."~ */
  IF ~~ THEN REPLY #66485 /* ~"Je vois. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66486 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66487 /* ~Il se concentre un instant avant de répondre. "Tous ces gens ont commis des crimes et doivent du jonc à leurs victimes. Comme ils ne peuvent pas payer, on les vend pour un temps, ce qui permet de régler leurs dettes."~ */
  IF ~~ THEN REPLY #66488 /* ~"Tu veux dire que ce sont des esclaves ?"~ */ GOTO 10
  IF ~~ THEN REPLY #66489 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66490 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66491 /* ~Il hausse les épaules. "J'imagine qu'on peut le dire, oui - mais ce n'est que temporaire, hein - même si la plupart des gens préfèrent les appeler serviteurs…"~ */
  IF ~~ THEN REPLY #66492 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66493 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66494 /* ~"Rien du tout. Mais la vie est d'un calme plat, ici. C'est pour ça que j'assiste aux ventes aux enchères." Il soupire.~ */
  IF ~~ THEN REPLY #66495 /* ~"Hmm. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #66496 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66497 /* ~Tu remarques un homme anxieux. Il sourit et te fait un geste du bras en te voyant approcher.~ */
  IF ~~ THEN REPLY #66498 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #66499 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66500 /* ~"Salut, matois. Qu'est-ce qui t'amène ?"~ */
  IF ~~ THEN REPLY #66501 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #66502 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66503 /* ~"Des questions ? Oh, dans ce cas, c'est d'un rabatteur que tu as besoin, pas de moi." Il cesse de s'intéresser à toi.~ */
  IF ~~ THEN REPLY #66504 /* ~"Tu ne peux pas répondre à quelques questions ?"~ */ GOTO 15
  IF ~~ THEN REPLY #66505 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66506 /* ~"Pas vraiment, non. Je n'ai pas pour habitude de donner des réponses aux ignorants." Il sourit.~ */
  IF ~~ THEN REPLY #66507 /* ~"Alors tu ne m'aideras pas ?"~ */ GOTO 16
  IF ~~ THEN REPLY #66508 /* ~"Je vois, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66509 /* ~"Sûr que non. À ta place, j'irais me chercher un rabatteur."~ */
  IF ~~ THEN REPLY #66510 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66511 /* ~Tu vois le client du commissaire-priseur. Alors que tu tentes de lui parler de nouveau, il te fait signe de t'éloigner.~ */
  IF ~~ THEN REPLY #66512 /* ~Pars.~ */ EXIT
END
