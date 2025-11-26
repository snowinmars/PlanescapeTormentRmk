// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17604 /* ~Ce marchand plus âgé a l'air sage. Sa voix profonde est douce mais assurée. "Bonjour. Désires-tu goûter certains des mets les plus délicieux des Plans, mon brave homme ?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22180 /* ~"Mebbeth, la sage-femme du square, a besoin d'herbes provenant de cette graine. Peux-tu m'aider ?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17627 /* ~"Qu'est-ce que tu as ?"~ */ GOTO 3
  IF ~~ THEN REPLY #17628 /* ~"Non, mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17629 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17605 /* ~"Te voici de nouveau. Des prunes de mer, aujourd'hui ? Des semences de flammes arborescentes ?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22188 /* ~"Mebbeth, la sage-femme du square, a besoin d'herbes provenant de cette graine. Peux-tu m'aider ?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17630 /* ~"Qu'est-ce que tu as ?"~ */ GOTO 3
  IF ~~ THEN REPLY #17631 /* ~"Non, mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17632 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2 5.1 6.8 6.10 7.2 8.2 9.2 10.2 11.2 12.2 13.2 15.1 16.1 17.1 18.1 19.1 20.1 21.1
  SAY #17606 /* ~Il secoue la tête. "Je te conseille de chercher des réponses ailleurs, monsieur. Je ne m'occupe que d'aliments exotiques, d'épices et d'herbes et je n'ai que peu de temps ou d'intérêt pour quoi que ce soit d'autre."~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22194 /* ~"Mebbeth, la sage-femme du square, a besoin d'herbes provenant de cette graine. Peux-tu m'aider ?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17633 /* ~"Dans ce cas, qu'est-ce que tu as ?"~ */ GOTO 3
  IF ~~ THEN REPLY #17634 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1 24.0
  SAY #17607 /* ~"Toutes sortes de délices pour charmer ton palais, mon brave homme. Des semences de flammes arborescentes, de la racine de Gar-Bar, des poires Élyséennes, des pétales de lotus pourpre, du pain des bergers de la Bytopie, des épices mutantes du chaos des Limbes et des prunes de mer, voilà ce dont je dispose. Cinq pièces uniquement pour goûter ce qui te plaira."~ */
  IF ~~ THEN REPLY #17635 /* ~Demande-lui de te décrire le goût de quelque chose.~ */ GOTO 4
  IF ~~ THEN REPLY #17636 /* ~Achète quelque chose.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17608 /* ~"Hum ?"~ */
  IF ~~ THEN REPLY #17637 /* ~"Quel goût ça a, les semences de flammes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17638 /* ~"Quel goût ça a, la racine de Gar-Bar ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17639 /* ~"Elles ont quel goût les poires ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17640 /* ~"Ils ont quel goût les pétales ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17641 /* ~"Il a quel goût le pain ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17642 /* ~"Elles ont quel goût les épices mutantes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17643 /* ~"Elles ont quel goût les prunes de mer ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5 4.6
  SAY #17609 /* ~"Je te conseille d'y goûter et de voir ce que tu en penses, mon brave homme."~ */
  IF ~~ THEN REPLY #17644 /* ~Achète quelque chose.~ */ GOTO 6
  IF ~~ THEN REPLY #17645 /* ~"En fait, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17646 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0 7.1 8.1 9.1 10.1 11.1 12.1 13.1 15.0 16.0 17.0 18.0 19.0 20.0 21.0
  SAY #17610 /* ~"Hum ?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17647 /* ~"Je vais goûter quelques semences de flammes."~ */ GOTO 7
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17649 /* ~"Je vais goûter une racine de Gar-Bar."~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17650 /* ~"Je vais goûter une poire."~ */ GOTO 9
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17651 /* ~"Je vais goûter les pétales."~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17652 /* ~"Je vais goûter le pain."~ */ GOTO 11
  IF ~  PartyGoldGT(4)
!NearbyDialog("DDakkon")
~ THEN REPLY #17653 /* ~"Je vais goûter les épices mutantes."~ */ GOTO 12
  IF ~  PartyGoldGT(4)
NearbyDialog("DDakkon")
~ THEN REPLY #17654 /* ~"Je vais goûter les épices mutantes."~ */ GOTO 14
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17655 /* ~"Je vais goûter une prune de mer."~ */ GOTO 13
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17656 /* ~"En fait, je ne prendrai rien. J'ai des questions…"~ */ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17657 /* ~"Finalement, je ne prendrai rien. Au revoir."~ */ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17658 /* ~"Je n'ai pas assez pour acheter quoi que ce soit. Mais j'ai des questions."~ */ GOTO 2
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17659 /* ~"Je n'ai pas assez pour acheter quoi que se soit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #17611 /* ~"Ne les avale pas ; contente-toi de les cracher lorsqu'elles auront fini de picoter." Il sourit et te tend une poignée de petites graines rouges.~ */
  IF ~~ THEN REPLY #17661 /* ~Mets-les dans ta bouche.~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~~ THEN REPLY #17664 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17666 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17667 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #17612 /* ~Il t'offre un petit cube marron qui ressemble à une sorte de matière végétale caoutchouteuse. "C'est bon à mâchonner… ne l'avale pas, mais crache-le lorsqu'il n'a plus de goût."~ */
  IF ~~ THEN REPLY #17668 /* ~Mets-le dans ta bouche.~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~~ THEN REPLY #17670 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17672 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17674 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #17613 /* ~Il te présente la poire la plus grosse et la plus juteuse que tu aies jamais vue. "Ce sont mes préférées", ricane le vieux marchand. "Si sucrées ! Ça me rappelle ma jeunesse."~ */
  IF ~~ THEN REPLY #17675 /* ~Mange la poire.~ */ DO ~TakePartyGold(5)
~ GOTO 17
  IF ~~ THEN REPLY #17681 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17682 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17683 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #17614 /* ~Le vieil homme te présente des espèces de petits flocons marron-rouge. De plus près, ce sont des pétales de fleur séchés. "Tu pourras peut-être ressentir des vertiges, mon ami, alors fais attention."~ */
  IF ~~ THEN REPLY #17684 /* ~Mets-les dans ta bouche.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~~ THEN REPLY #17686 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17687 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17688 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #17615 /* ~Il te propose deux épaisses tranches de pain d'épice aux noix. Elles ont une bonne odeur de carottes et d'amandes.~ */
  IF ~~ THEN REPLY #17689 /* ~Mange le pain.~ */ DO ~TakePartyGold(5)
~ GOTO 19
  IF ~~ THEN REPLY #17690 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17692 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17693 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY #17616 /* ~Il balance un petit sac en papier sous ton nez. "Mouille ton doigt et place-le dans l'épice, puis lèche-le simplement. À chaque fois, le goût sera légèrement différent."~ */
  IF ~~ THEN REPLY #17694 /* ~Goûtes-en.~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~~ THEN REPLY #17696 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17697 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17698 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.7
  SAY #17617 /* ~Il te tend une petite prune d'un bleu-vert étrange. "T'en fais pas, il n'y a pas de noyau. Tu peux tout manger."~ */
  IF ~~ THEN REPLY #17699 /* ~Mange la prune de mer.~ */ DO ~TakePartyGold(5)
~ GOTO 21
  IF ~~ THEN REPLY #17701 /* ~"Je ne crois pas que j'aimerai ça. Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17702 /* ~"J'ai changé d'avis. Mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17703 /* ~"Je n'en veux pas, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.6
  SAY #17618 /* ~Il balance un petit sac en papier sous ton nez. "Mouille ton doigt et place-le dans l'épice, puis lèche-le simplement. À chaque fois, le goût sera légèrement différent."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 76
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #17619 /* ~Les graines, sucrées et au goût léger de cannelle, deviennent tièdes et picotent dans la bouche… tu mets un moment à réaliser qu'elles ont pris feu. Mais la sensation meurt vite et tu les craches dans le caniveau.~ */
  IF ~~ THEN REPLY #17457 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17704 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17706 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #17620 /* ~La racine, assez dure et difficile à mâcher au début, a un goût sucré, sirupeux. Elle se ramollit vite et tu fais gaiement claquer ta lange. Le goût finit par s'évanouir et tu craches une pelote marron et gluante dans le caniveau.~ */
  IF ~~ THEN REPLY #17707 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17708 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17709 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY #17621 /* ~Il n'y a rien de surnaturel au goût de cette poire, mais c'est peut-être ce que tu as goûté de meilleur.~ */
  IF ~~ THEN REPLY #17710 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17711 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17712 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0
  SAY #17622 /* ~Les pétales fondent rapidement sur ta langue, laissant un goût étrange mais pas déplaisant, que tu n'arrives pas à définir. Malgré l'avertissement du vieux marchand, tu ne te sens pas du tout désorienté. Il semble légèrement déçu de voir que ça n'a pas d'effet sur toi.~ */
  IF ~~ THEN REPLY #17713 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17714 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17715 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY #17623 /* ~Le pain a un fort goût de carottes et d'amandes comme tu le prévoyais. Il est légèrement sucré et léger, et a un goût de "reviens-y".~ */
  IF ~~ THEN REPLY #17716 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17717 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17718 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.0
  SAY #17624 /* ~Tu finis le paquet en neuf ou dix "coups de langue". Comme promis, chaque coup te donne une saveur différente.~ */
  IF ~~ THEN REPLY #17719 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17720 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17721 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0
  SAY #17625 /* ~La peau de la prune est légèrement amère et très aigre - assez pour faire grimacer et donner le frisson - mais la chair du fruit est remarquablement sucrée. Les deux goûts vont très bien ensemble.~ */
  IF ~~ THEN REPLY #17722 /* ~"Je voudrais goûter autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #17723 /* ~"C'est tout pour l'instant. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17724 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.0 1.0 2.0
  SAY #22184 /* ~L'homme prend la graine, l'observe d'un œil critique… et alors qu'il la presse entre son index et son pouce, il se crispe, et une petite goutte de sang apparaît sur son pouce. "Ah ! Cette graine mord…"~ */
  IF ~~ THEN REPLY #22199 /* ~"Je l'ai remarqué. As-tu les herbes dont elle parle ?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22186 /* ~Il semble ne pas pouvoir détacher son regard de la graine. "Mon gars, j'sais pas s'il y a *qui que ce soit* qui a ce que ton amie recherche… pour être franc, j'ai jamais vu une pareille graine. T'as besoin de quelqu'un qui cultive des graines comme celle-ci, parce que je n'en ai pas."~ */
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22204 /* ~"Très bien… où est-ce que je peux trouver cette personne ?"~ */ JOURNAL #21906 /* ~Le commerçant du marché m'a expliqué qu'il fallait que je trouve un jardinier pour m'aider à cultiver la graine ; il doit bien y en avoir un *quelque part* dans la Ruche. J'ai vu des arbres dans plusieurs rues ; quelqu'un doit bien s'en occuper.~ */ GOTO 24
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22206 /* ~"Très bien… où est-ce que je peux trouver cette personne ?"~ */ JOURNAL #21907 /* ~Le commerçant du marché m'a expliqué qu'il fallait que je trouve un jardinier pour m'aider à cultiver la graine ; je pourrais peut-être demander à Deuils-pour-Arbres de m'aider.~ */ GOTO 24
  IF ~  Dead("MFTree")
~ THEN REPLY #22208 /* ~"Très bien… où est-ce que je peux trouver cette personne ?"~ */ JOURNAL #21908 /* ~Le commerçant du marché m'a expliqué qu'il fallait que je trouve un jardinier pour m'aider à cultiver la graine. Évidemment, maintenant que j'ai tué Deuils-pour-Arbres, je parie qu'il était le seul à pouvoir m'aider. Il vaut mieux que je retourne voir Mebbeth pour essayer d'arranger la situation.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 23.2
  SAY #22187 /* ~"J'en ai pas la moindre idée, l'ami." Il te rend la graine. "T'auras du mal à trouver un jardinier dans la Ruche…"~ */
  IF ~  !Dead("MFTree")
~ THEN REPLY #22213 /* ~"Je vois. Je peux voir ce que tu as d'autre ?"~ */ GOTO 3
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22220 /* ~"J'en ai bien l'impression. Merci de ton aide. Au revoir."~ */ EXIT
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22222 /* ~"Hmmm. Deuils-pour-Arbres pourra peut-être m'aider… au revoir."~ */ EXIT
  IF ~  Dead("MFTree")
~ THEN REPLY #22225 /* ~"Le seul que j'ai vu est… mort. Tant pis. Au revoir."~ */ EXIT
END
