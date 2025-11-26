// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNODD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNODD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 38 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2810 /* ~Alors que tu t'approches de l'homme encapuchonné, vêtu d'un habit brun, tu remarques qu'il marmonne et qu'il hoche la tête.~ */
  IF ~~ THEN REPLY #22473 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #22475 /* ~Laisse-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 38 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #21938 /* ~"Quelqu'un veut parler à Voui, parler à Voui, ouais…" Il éclate brusquement d'une toux sèche, puis acquiesce pour lui-même.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",4)
~ THEN REPLY #22477 /* ~"J'ai parlé à ta sœur, Amarysse…"~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22489 /* ~"J'ai parlé à ta sœur, Amarysse…"~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22490 /* ~"J'ai parlé à ta sœur, Amarysse…"~ */ GOTO 29
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22491 /* ~"J'ai parlé à ta sœur, Amarysse…"~ */ GOTO 29
  IF ~~ THEN REPLY #22492 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~~ THEN REPLY #22493 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #22494 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #22495 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.4 6.0
  SAY #21939 /* ~"Rien. À part chercher des morts. Rien d'autre." Il renifle, puis tousse à nouveau fortement. Il grommelle pendant un instant, puis se remet à parler. "Rien d'autre. Besoin de jonc. Sous-sous."~ */
  IF ~~ THEN REPLY #22496 /* ~"Des morts ?"~ */ GOTO 3
  IF ~~ THEN REPLY #22497 /* ~"Pourquoi est-ce que tu cherches des cadavres ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22498 /* ~"Où sommes-nous ?"~ */ GOTO 6
  IF ~~ THEN REPLY #22499 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22500 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22501 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #21940 /* ~L'homme acquiesce. "Des morts. J'les vends aux Hommes-Poussière."~ */
  IF ~~ THEN REPLY #22502 /* ~"Tu peux vendre les cadavres ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22503 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #22504 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22505 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22506 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #21941 /* ~Il commence à secouer la tête sans vraiment te regarder. "J'les traîne jusqu'à la Morgue." Il incline la tête d'avant en arrière, puis acquiesce à nouveau. "Là-bas, les Hommes-Poussière marchandent et donnent le jonc - ils emportent le mort, ouais, puis Voui leur parle plus jusqu'au corps d'après." Il renifle, essuyant son nez du revers de la main.~ */
  IF ~~ THEN REPLY #22507 /* ~"Pourquoi payent-ils pour les cadavres ?"~ */ GOTO 5
  IF ~~ THEN REPLY #22508 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #22509 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22510 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22511 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21942 /* ~Il hausse les épaules. "Pas important." Il sourit puis secoue la tête. "Du jonc pour moi, des sous-sous."~ */
  IF ~~ THEN REPLY #22512 /* ~"Où sommes-nous ?"~ */ GOTO 6
  IF ~~ THEN REPLY #22514 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22515 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22516 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.2 3.1 4.1 5.0
  SAY #21950 /* ~Il fronce les sourcils et se lèche les lèvres. "Le Square du Chiffonnier, le square, saleté partout, ouais, partout." Il tousse.~ */
  IF ~~ THEN REPLY #22517 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~~ THEN REPLY #22518 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22519 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22520 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.3 3.2 4.2 5.1 6.1
  SAY #21952 /* ~Il acquiesce. "Quoi ?" Il renifle, puis te regarde avec insistance. "Jonc." Il tape sur sa tête, te pointe du doigt, puis indique sa main. "Tu veux savoir quelqu'chose - du jonc. Ouais, jonc-jonc."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #22521 /* ~Donne-lui deux pièces.~ */ DO ~TakePartyGold(2)
~ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #22522 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 8
  IF ~  PartyGoldGT(9)
~ THEN REPLY #22523 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 8
  IF ~~ THEN REPLY #22524 /* ~"T'auras rien et tu vas répondre à mes questions."~ */ GOTO 15
  IF ~~ THEN REPLY #22525 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1 7.2
  SAY #21953 /* ~"Du jonc pour Voui, des sous-sous." Il grommelle pendant un instant, cachant rapidement les pièces de cuivre dans les replis de ses vêtements. "Demande et Voui essaiera de répondre, ouais." Il tousse un peu et crache quelque chose sur le côté.~ */
  IF ~~ THEN REPLY #22526 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~~ THEN REPLY #22527 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22528 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22529 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22530 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22531 /* ~"Peu importe. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22532 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.1 12.0 13.0 14.0 15.0 16.0
  SAY #21955 /* ~"Moi. Moi ?" Il paraît incertain pendant un moment. "Moi. J'ramasse les morts, j'les amène aux Hommes-Poussière… Les Hommes-Poussière y paient du jonc, pour les amener au bon endroit. Morts heureux. Hommes-Poussière heureux. Voui heureux, ouais, avec le jonc qui brille."~ */
  IF ~~ THEN REPLY #22533 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22534 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22535 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22536 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22537 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22538 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.2 12.1 13.1 14.1 15.1
  SAY #21957 /* ~Il indique le sol, secouant la tête. "Le Square du Chiffonnier, d'la saleté partout, ouais, l'square de Partagetombe." Il grommelle pendant un instant.~ */
  IF ~~ THEN REPLY #22539 /* ~"Parle-moi de Partagetombe."~ */ GOTO 16
  IF ~~ THEN REPLY #22540 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22579 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22581 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22582 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22584 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22586 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.2 13.2 14.2 15.2 16.1
  SAY #22381 /* ~Il paraît effrayé et commence à secouer la tête. "Pharod, Pharod, Pharod…" Il se gratte la tête. "Quoi ? Qu'est-ce 'tu veux savoir ?" Il fronce les sourcils, puis secoue la tête, comme s'il n'était pas sûr d'être autorisé à te parler.~ */
  IF ~~ THEN REPLY #22588 /* ~"Sais-tu où je peux le trouver ?"~ */ GOTO 12
  IF ~~ THEN REPLY #22589 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~~ THEN REPLY #22590 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22592 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22593 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22594 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22595 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22384 /* ~Il secoue la tête, puis grommelle. Il te regarde furtivement, puis recommence à grommeler. Il semble qu'il soit en train de réciter une prière contre le mal. "P-pp-pas *ici*. Dans le Square…" Il fronce les sourcils, comme s'il ne savait pas comment l'expliquer. "… mais pas dans le Square." Il secoue à nouveau la tête, puis tousse.~ */
  IF ~~ THEN REPLY #22596 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~~ THEN REPLY #22597 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22598 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22599 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22600 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22601 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2 10.3 11.3 12.2 14.3 15.3 16.2
  SAY #22387 /* ~"Non, non, non." Il secoue vigoureusement la tête. "Pas de jour-nal." Il renifle, essuyant son nez avec sa manche.~ */
  IF ~~ THEN REPLY #22602 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~~ THEN REPLY #22603 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22604 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22605 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22606 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22607 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.3 10.4 11.4 12.3 13.3 15.4 16.3
  SAY #22389 /* ~"Sage-femme… remèdes, magie, elle… aide les p'tits, gentille." Il fronce le nez. "Elle habite - sur les plat'formes - sent mauvais."~ */
  IF ~~ THEN REPLY #22608 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~~ THEN REPLY #22609 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22610 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22611 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22612 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22613 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #22392 /* ~Il commence à secouer la tête, puis grommelle. Il paraît effrayé, pas vraiment certain de ce qu'il doit faire.~ */
  IF ~~ THEN REPLY #22614 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~~ THEN REPLY #22615 /* ~"Parle-moi de cette région."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22616 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22617 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22618 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22619 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22620 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0
  SAY #22394 /* ~"Partagetombe a beaucoup de monde dans sa poche, même Voui, ouais, sûr. Voui donne un peu d'jonc à Partagetombe, Partagetombe dit aux autres sous lui : 'fais gaffe à Voui', ouais." Il renifle, secouant lentement la tête.~ */
  IF ~~ THEN REPLY #22621 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22622 /* ~"Tu connais un dénommé Pharod ?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22623 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22624 /* ~"Parle-moi de Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22625 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22626 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.3 4.3 5.2 6.2 8.5 9.4 10.5 11.5 12.4 13.4 14.4 15.5 16.4
  SAY #22396 /* ~"Hé… hé…" Il secoue la tête, tousse, puis recommence à remuer la tête. "T'as d'mandé à Voui, ouais, et Voui y d'mande à toi… question, ouais…"~ */
  IF ~~ THEN REPLY #22627 /* ~"Vas-y, pose ta question."~ */ GOTO 18
  IF ~~ THEN REPLY #22628 /* ~Ignore le, fais demi-tour et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #22398 /* ~"Voui a une sœur, ouais, Amarysse. Aa-maar-ysse… vit dans la Ruche, loin, loin du Square. Y'a longtemps, très longtemps Voui a été séparé de sa sœur, emporté…"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22629 /* ~"Tu as été séparé d'elle et tu voudrais que je la retrouve ?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Un Récupérateur du nom de Voui m'a demandé de retrouver sa sœur, Amarysse, et de lui parler. Selon sa description, c'est une jeune femme séduisante qui vit quelque part dans la Ruche.~ */ GOTO 19
  IF ~~ THEN REPLY #22630 /* ~"Alors ta question est… ?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Un Récupérateur du nom de Voui m'a demandé de retrouver sa sœur, Amarysse, et de lui parler. Selon sa description, c'est une jeune femme séduisante qui vit quelque part dans la Ruche.~ */ GOTO 19
  IF ~~ THEN REPLY #22631 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #22415 /* ~"Tu la connais pas ?" Il secoue la tête tristement pendant un instant, mâchouillant sa lèvre inférieure. "Si t'la vois, dis-lui qu'Voui, son frère, s'fait du souci pour elle, ouais, du souci."~ */
  IF ~~ THEN REPLY #22637 /* ~"Pourquoi ne vas-tu pas la chercher ?"~ */ GOTO 20
  IF ~~ THEN REPLY #22638 /* ~"Très bien. J'ferai ça pour toi."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22639 /* ~"J'la trouverai… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22640 /* ~"J'y songerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22417 /* ~"NON !" Voui couvre sa tête avec ses bras, murmurant pour lui-même. "Voui… Voui peut plus parler com' il faut, peut plus, sent les cadav' et la saleté du Square, l'Square du Chiffonnier… NON !" Son excitation lui provoque une toux sèche.~ */
  IF ~~ THEN REPLY #22641 /* ~"Qu'est-ce qui t'est arrivé, Voui ?"~ */ GOTO 21
  IF ~~ THEN REPLY #22642 /* ~"Très bien. J'te la trouverai"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22643 /* ~"J'la trouverai… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22644 /* ~"J'y songerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #22421 /* ~Voui renifle, regardant calmement le sol. Finalement, il commence à remuer la tête pour lui-même, parlant doucement : "Voui était jeune, ouais, il a commencé à entend' les voix, elles disaient fais-ci ! fais-ça ! Mauvaises choses, mauvaises, comme mâchouiller les doigts de Voui…" Il lève la main devant son visage, et tu aperçois de vieilles cicatrices de morsures sous la saleté durcie.~ */
  IF ~~ THEN REPLY #22645 /* ~"Continue…"~ */ GOTO 23
  IF ~~ THEN REPLY #22647 /* ~"Très bien. Je chercherai ta sœur pour toi."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22648 /* ~"J'trouverai ta sœur… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22649 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.0
  SAY #22425 /* ~"Sais pas, sais pas. Mauvais endroit, mauvais !" Il secoue violemment la tête, mains sur les tempes, avant de recommencer ses habituels mouvements de tête.~ */
  IF ~~ THEN REPLY #22650 /* ~"Poursuis ton histoire…"~ */ GOTO 24
  IF ~~ THEN REPLY #22669 /* ~"Très bien. Je chercherai ta sœur pour toi."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22671 /* ~"J'trouverai ta sœur… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22674 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #22427 /* ~"Alors les parents de Voui l'ont emporté, ouais, l'ont mis dans un endroit sombre, une tour, où ils enfoncent des aiguilles et des crochets dans la tête de Voui… les voix arrêtées, ouais, mais Voui peut plus penser, plus parler comme il faut. Voui s'échappé, ouais, puis réveillé dans la Ruche, ouais."~ */
  IF ~~ THEN REPLY #22675 /* ~"Où se trouve cette tour ?"~ */ GOTO 22
  IF ~~ THEN REPLY #22676 /* ~"Poursuis ton histoire…"~ */ GOTO 24
  IF ~~ THEN REPLY #22677 /* ~"Très bien. Je chercherai ta sœur pour toi."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22678 /* ~"J'trouverai ta sœur… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22679 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.1
  SAY #22431 /* ~"Voui s'réveille, y'a les Récupérateurs, ouais, les Récupérateurs y touchent Voui, puis crient 'R'gardez ! Pas mort, pas un mort ! Ramenez-le ! Alors y ramènent Voui, l'ramènent au Square. Y'a des années… plein, plein d'années."~ */
  IF ~~ THEN REPLY #22680 /* ~"Très bien. Je chercherai ta sœur pour toi."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22681 /* ~"J'trouverai ta sœur… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22682 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1 20.1 21.1 22.1 23.2 24.0 26.1
  SAY #22433 /* ~"Voui te r'mercie, ouais, Voui te r'mercie. Amarysse était jolie, très jolie, vit dans la Ruche, maint'nant. La peau blanche, elle avait, les cheveux de jais, et toujours en bleu, toujours en bleu… elle était toujours en bleu…"~ */
  IF ~~ THEN REPLY #22683 /* ~"Au revoir, Voui."~ */ JOURNAL #22636 /* ~J'ai accepté d'aider Voui à retrouver sa sœur Amarysse. Il m'a dit qu'elle avait le teint pâle et les cheveux noirs, et qu'elle portait toujours du bleu.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2 20.2 21.2 22.2 23.3 24.1
  SAY #22435 /* ~Il secoue la tête en toussant. "Voui a rien, rien, si peu à donner…"~ */
  IF ~~ THEN REPLY #22684 /* ~"N'importe quoi fera l'affaire."~ */ GOTO 27
  IF ~~ THEN REPLY #22685 /* ~"Bon, je le ferai pour rien alors."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #22686 /* ~"Bon, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22437 /* ~Voui te regarde tristement. "Voui te donnera tout c'qu'il a, ouais, tout. Tout c'que Voui a, si tu parles à sa sœur. Prouve à Voui que t'as parlé à Amarysse, la sœur de Voui, ouais." Il renifle, tousse. La peau blanche, elle avait, les cheveux de jais, et toujours en bleu, toujours en bleu… elle était toujours en bleu…"~ */
  IF ~~ THEN REPLY #22687 /* ~"Marché conclu. Je reviendrai une fois que je lui aurai parlé. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",3)
~ JOURNAL #22635 /* ~J'ai accepté d'aider Voui à retrouver sa sœur Amarysse… contre paiement. Il m'a dit qu'elle avait le teint pâle et les cheveux noirs, et qu'elle portait toujours du bleu.~ */ EXIT
  IF ~~ THEN REPLY #22688 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.0 1.1
  SAY #22441 /* ~"C'est vrai ? Voui est très content, très ! Comment va la sœur de Voui ? Parle-lui d'Amarysse, parle à Voui, s'il te plaît !" Son excitation provoque une longue série de toussotements. Lorsqu'il peut enfin parler à nouveau, il demande : "Est-ce que la sœur de Voui est toujours jolie, si jolie ?"~ */
  IF ~~ THEN REPLY #22689 /* ~"Oui. Elle se… prostitue… maintenant dans la Ruche. Elle va bien mais s'inquiète pour toi."~ */ GOTO 31
  IF ~~ THEN REPLY #22690 /* ~Mensonge : "Oui. Elle travaille… comme serveuse… à présent, dans une taverne de la Ruche. Elle va bien mais s'inquiète pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22691 /* ~Mensonge : "Oui. C'est une putain et si sale avec ça que j'irais même pas avec elle gratos."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 1.2 1.3
  SAY #22444 /* ~"Preuve ! Preuve ! Prouve à Voui…"~ */
  IF ~~ THEN REPLY #22692 /* ~"Elle m'a dit que tu t'appelais autrefois Thodus."~ */ DO ~GiveGoldForce(11)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 32.4 33.2 34.2
  SAY #22446 /* ~"Aïïïeee !" Il bondit pour t'attaquer.~ */
  IF ~~ THEN REPLY #22693 /* ~"Oup-là …"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ JOURNAL #22634 /* ~J'ai menti à Voui en lui disant que sa sœur était une traînée. Il est devenu fou furieux et m'a attaqué.~ */ EXIT
  IF ~~ THEN REPLY #63621 /* ~Riposte à son attaque.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0 28.1 32.2 32.3 33.0 33.1 34.0 34.1
  SAY #22448 /* ~"Voui est tellement content de savoir, d'savoir que sa sœur va bien !" Il semble prêt à pleurer pendant un instant, puis déglutit fortement. "Rien d'autre, elle a rien dit d'autre pour Voui ?"~ */
  IF ~  GlobalLT("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22695 /* ~"Elle m'a seulement dit qu'elle viendrait te voir quand elle en aura le temps."~ */ JOURNAL #22710 /* ~J'ai parlé à Amarysse, la sœur de Voui, puis je suis retourné lui rendre compte de la conversation. Il était ravi d'avoir de ses nouvelles.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldGT(99)
~ THEN REPLY #22696 /* ~"Oui, elle m'a chargé de te donner ces pièces de cuivre. Elle va aussi venir te voir, dès qu'elle en aura le temps."~ */ DO ~TakePartyGold(100)
~ JOURNAL #22709 /* ~J'ai parlé à Amarysse, la sœur de Voui, puis je suis retourné lui rendre compte de la conversation. Il était ravi d'avoir de ses nouvelles et de recevoir le cuivre qu'elle m'avait demandé de lui apporter.~ */ GOTO 36
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22697 /* ~Mensonge : "Elle a simplement dit qu'elle viendrait te voir quand elle trouverait le temps."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_4","GLOBALLaw",-3)
~ JOURNAL #22708 /* ~J'ai parlé à Amarysse, la sœur de Voui, puis je suis retourné lui rendre compte de la conversation. Il était ravi d'avoir de ses nouvelles, mais j'ai rompu ma promesse envers Amarysse en mentant à propos du cuivre que je lui avais juré d'apporter à son frère.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldLT(100)
~ THEN REPLY #22698 /* ~"Oui. Elle m'avait donné de l'argent pour toi mais… j'ai plus rien. Je m'excuse. Elle viendra te voir dès qu'elle en aura le temps."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nodd_3","GLOBALLaw",-1)
~ JOURNAL #22707 /* ~J'ai parlé à Amarysse, la sœur de Voui, puis je suis retourné lui rendre compte de la conversation. Il était ravi d'avoir de ses nouvelles, mais je n'avais pas le cuivre que je lui avais promis d'apporter. Il m'a quand même pardonné, et je me sens soulagé de lui avoir dit.~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #22450 /* ~"C'est vrai ? Voui est si content, ouais !" Il fouille dans ses robes et sort un tas de chiffons graisseux. Il les déroule et te tend leur contenu, onze pièces de cuivre. "Tout ce que Voui a, c'est tout. Comment va la sœur de Voui ? Parle-lui d'Amarysse, parle à Voui, s'il te plaît !" Son excitation provoque une longue série de toussotements. Lorsqu'il peut enfin parler à nouveau, il demande : "Est-ce que la sœur de Voui est toujours jolie, si jolie ?"~ */
  IF ~~ THEN REPLY #22711 /* ~"Es-tu *sûr* que c'est tout ce que tu as, Voui ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_3","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #22712 /* ~"J'peux pas prendre cet argent, Voui - tiens. Reprends-le."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_3","GLOBALGood",1)
TakePartyGold(11)
~ GOTO 34
  IF ~~ THEN REPLY #22713 /* ~"Oui. Elle se… prostitue… maintenant dans la Ruche. Elle va bien mais s'inquiète pour toi."~ */ GOTO 31
  IF ~~ THEN REPLY #22714 /* ~Mensonge : "Oui. Elle travaille… comme serveuse… à présent, dans une taverne de la Ruche. Elle va bien mais s'inquiète pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22715 /* ~Mensonge : "Oui. C'est une putain et si sale avec ça que j'irais même pas avec elle gratos."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22452 /* ~Il secoue vigoureusement la tête. "Ouais, ouais, tout ce que Voui a ! R'garde où il vit, le pauvre Voui… r'garde…" Il gesticule désespérément, grommelant pour lui-même.~ */
  IF ~~ THEN REPLY #22716 /* ~"Très bien. Elle est encore jolie, et elle se… prostitue… dans la Ruche. Elle va bien mais s'inquiète pour toi."~ */ GOTO 31
  IF ~~ THEN REPLY #22717 /* ~Mensonge : "Très bien. Elle est encore jolie et elle travaille … comme serveuse… dans une taverne de la Ruche. Elle va bien mais elle s'inquiète pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22718 /* ~Mensonge : " Très bien. C'est une putain et si sale avec ça que j'irais même pas avec elle gratos."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #22456 /* ~Surpris, il arrête de remuer la tête pendant un instant et reprend les pièces. "Voui te remercie, te remercie. Ouais, merci…"~ */
  IF ~~ THEN REPLY #22719 /* ~"Bien sûr. Ta sœur est encore jolie et elle se… prostitue… dans la Ruche. Elle va bien mais s'inquiète pour toi."~ */ GOTO 31
  IF ~~ THEN REPLY #22720 /* ~Mensonge : "Bien sûr. Ta sœur est encore jolie et elle travaille comme serveuse… dans une taverne de la Ruche. Elle va bien mais elle s'inquiète pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22721 /* ~Mensonge : "Bien sûr. Ta sœur est une putain et si sale avec ça que j'irais même pas avec elle gratos."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 31.0 31.2
  SAY #22458 /* ~Sous la capuche marron-sale, les yeux de Voui s'éclairent de joie. "Merveilleuses nouvelles, merveilleuses, bonnes, merveilleuses nouvelles ! Voui te remercie et te remercie encore, et te remercie mille fois plus, ouais !"~ */
  IF ~~ THEN REPLY #22722 /* ~"Je suis content d'avoir pu t'aider. Au revoir, Voui."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22723 /* ~"Te fatigue pas à me remercier - c'étais mal payé mais c'est pas un service que je t'ai rendu. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22724 /* ~"Te fatigue pas à me remercier - c'étais mal payé mais c'est pas un service que je t'ai rendu. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #22461 /* ~Voui arrête brusquement de remuer la tête et sa bouche s'ouvre grande lorsque tu lui tends les cent pièces. Sous la capuche marron-sale, ses yeux s'éclairent de joie. "Merveilleuses nouvelles, merveilleuses, bonnes, merveilleuses nouvelles ! Voui te remercie et te remercie encore, et te remercie mille fois plus, ouais !"~ */
  IF ~~ THEN REPLY #22725 /* ~"Je suis content d'avoir pu t'aider. Au revoir, Voui."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22726 /* ~"Te fatigue pas à me remercier - c'étais mal payé mais c'est pas un service que je t'ai rendu. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22727 /* ~"Te fatigue pas à me remercier - même si le boulot était mal payé, ce n'était pas un service que je t'ai rendu. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.3
  SAY #22463 /* ~Pendant un instant, Voui penche la tête, murmurant doucement. Finalement, il te regarde droit dans les yeux : "Voui pardonne, il pardonne, ouais, c'est bien tu as dit à Voui, c'est bien, ça prouve que tu veux être une bonne personne, mais tu peux pas, comme Voui… comme Voui. Voui te remercie quand même pour les nouvelles, ouais."~ */
  IF ~~ THEN REPLY #22728 /* ~"Au revoir, Voui."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nodd_Quest","GLOBAL",8)
~ THEN BEGIN 38 // from:
  SAY #22466 /* ~Tu aperçois Voui marchant aux alentours, grommelant pour lui-même.~ */
  IF ~~ THEN REPLY #22729 /* ~"Bonjour, Voui."~ */ GOTO 39
  IF ~~ THEN REPLY #22730 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22470 /* ~"Ouais, c'est l'homme qui a aidé Voui à trouver sa sœur, ouais, jolie Amarysse. Voui te remercie, une fois encore."~ */
  IF ~~ THEN REPLY #22731 /* ~"Au revoir, Voui."~ */ EXIT
END
