// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~Ce cadavre de femme en décomposition ne semble pas s'apercevoir de ta présence. Lorsque tu t'approches, elle se tourne et remue lentement la tête, comme pour t'accueillir.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~Laisse le zombi tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~Le zombi gémit doucement en réponse : "Ggnhuuu… fnnnnuuugh…" À chaque expiration, la puanteur de la chair en décomposition emplit l'air.~ */
  IF ~~ THEN REPLY #19557 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~"Stuuuhhh… mmmaaa-uuhrrr." Le zombi émet une série de grognements inintelligibles… tu ne comprends rien à ce qu'elle dit.~ */
  IF ~~ THEN REPLY #19559 /* ~"Je ne te comprends pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~Le zombi gémit doucement en réponse. Seule ta capacité à converser avec les morts te permet de le comprendre. "Booonnnjour."~ */
  IF ~~ THEN REPLY #19560 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~Le cadavre se tient là un moment, oscillant d'un pied sur l'autre, avant de répondre. "Quest-yon ?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~"Où suis-je ?"~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~La tête du mort oscille lentement. "Quest… yons."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~"Où suis-je ?"~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~Un long silence s'instaure. "Uuuuhhh ?" Le zombi hausse les épaules, l'une plus haut que l'autre. " Deeeemande Mmmarie, Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19578 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~"Maaaison. Mmma maison." Avec ce qui lui reste de muscles faciaux, elle esquisse un sourire. "Teeerre du Roooi Sssilencieux, Naaa-syon Mooortes."~ */
  IF ~~ THEN REPLY #19581 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~Le zombi te regarde fixement un moment. "Mmmon dee-voir. Mmmon traaavail, pppour le Roi SSSilencieux. Je sssers bbbien mmma mmmaaaison."~ */
  IF ~~ THEN REPLY #19584 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~"Bbbeaucoup. Nnnous, sssquelettes, goouuules." Son bras se lève lentement, en direction de l'est. "Rrrats." Son bras oscille lourdement pour te désigner. "Vvvivants."~ */
  IF ~~ THEN REPLY #19587 /* ~"Est-ce qu'il y a d'autres vivants ici, à part moi ?"~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~"Parle-moi des tiens."~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~"Parle-moi de l'autre mort-vivant."~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~"Parle-moi des rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~"Bbbeaucoup. Nnnous, osss, vaaampires." Son bras se lève lentement, en direction de l'est. "Rrratsss."~ */
  IF ~~ THEN REPLY #19593 /* ~"Parle-moi des tiens."~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~"Parle-moi de l'autre mort-vivant."~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~"Parle-moi des rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~La tête du cadavre se balance d'avant en arrière, d'avant en arrière. "Sssoooegoooo…"~ */
  IF ~~ THEN REPLY #19598 /* ~"Qui est Soego ?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~"Hooommes-pppoussière. Deeemande Mmmarie, Sssaaalie Mmmaaaarie."~ */
  IF ~~ THEN REPLY #19603 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~Le zombi étend ses mains en décomposition sur sa poitrine rongée par les vers. "Fffforts !" Elle montre ses pieds avec une main, puis sa tempe. "Llllent. Hhhehhh…" Le cadavre émet un gargouillement désagréable qui te fait penser à un gloussement. "Cccconduits par Sssaaalie Mmmaaarie…"~ */
  IF ~~ THEN REPLY #19608 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~"Qqquiii ? Oooss ? Goouuules ?"~ */
  IF ~~ THEN REPLY #19613 /* ~"Des os… Des squelettes ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~"Les goules."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~"Peu importe. Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~"Peu importe. Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~"Oooos !" Elle a l'air admiratif. "Ccconduits-nous, mmmène-nous. Ensemble, nous construissons les Naaa-syons Mooortes."~ */
  IF ~~ THEN REPLY #19619 /* ~"Les squelettes vous gouvernent ?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~"Hhhargrimmm ccconduit les oosss. Ppparle au Roi Sssilencieux, puis ppparle à Sssaaalie Mmmaaarie. Mmmarie nous pparle, nous donnne du tttravail." Elle penche la tête.~ */
  IF ~~ THEN REPLY #19624 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~Son bras se lève de nouveau lentement et pointe vers l'est. "Rrrats…" Les lambeaux humides de sa lèvre supérieure esquissent un ricanement ; un fluide noir et visqueux s'écoule le long de ses dents marron-jaune. "Mangeeee les morts… mangeee…. maaauvais. Pppeur, mmmaintenant, des goouuules. Ils restttent à l'éccccart."~ */
  IF ~~ THEN REPLY #19630 /* ~"Les rats mangent les cadavres ici ?"~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~"Vous avez fait une trêve avec les rats ?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~"Uuuhn… deemmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19636 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~Le zombi montre son ventre, où des trous dans sa chair en décomposition exposent plusieurs organes internes. "Tttoujours fffaaim. Les lllois du Roi Sssilencieux les emmpêchent deee mmmanger les morts, iiici. Les goouuules ssservent à nnnous protéger, gggardent ces hallls."~ */
  IF ~~ THEN REPLY #19641 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~"De qui ils protègent ces salles ?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~"Rrrats. Et…" Elle lève un bras et pointe vers le haut. "… les viiivants, au-dessus. Ils viiiennent voooler les morts, les dérranger."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~"Elllee nooous cooonduit. Nooous sssurveille. Nooous transmet la paaarole du Roi Sssilencieux."~ */
  IF ~~ THEN REPLY #19651 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~"Ssseigneur des Naaa-syons Moortes. Demmmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19654 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~Le cadavre reste immobile, en te fixant. Elle parle enfin. "Nnnon. Demmmmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19657 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~Comme le zombi te regarde, il semble l'espace d'une seconde te reconnaître de ses yeux morts. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~Laisse le zombi tranquille.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~Ce cadavre de femme en décomposition ne semble pas s'apercevoir de ta présence. Lorsque tu t'approches, elle se tourne et remue lentement la tête, comme pour t'accueillir.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~Le cadavre secoue la tête. "Demmmmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19663 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~Ce cadavre de femme en décomposition ne semble pas s'apercevoir de ta présence. Lorsque tu t'approches, elle se tourne et remue lentement la tête, comme pour t'accueillir.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~"Bonjour…"~ */ GOTO 1
END
