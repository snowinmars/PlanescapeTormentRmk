// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27654 /* ~Cette femme très élégante se délasse, profitant du bon air tout en sirotant une boisson achetée au café voisin.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27655 /* ~"Bonjour…"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #27656 /* ~"Bonjour…"~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 49
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #27657 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #27658 /* ~Laisse la femme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #27659 /* ~Ses pupilles se dilatent légèrement lorsqu'elle t'aperçoit. "Ah… bonjour, monsieur." Elle sourit l'air gêné.~ */
  IF ~~ THEN REPLY #27660 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27661 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 2
  IF ~~ THEN REPLY #27662 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 49.4
  SAY #27663 /* ~"Je… j'ai honte d'avouer que j'ai été un instant surprise par ton aspect. Je n'ai pas souvent l'habitude de converser avec des hommes si… expérimentés." Elle incline la tête pour s'excuser. "J'espère que je ne t'ai pas offensé."~ */
  IF ~~ THEN REPLY #27664 /* ~"Expérimenté ?"~ */ GOTO 3
  IF ~~ THEN REPLY #27665 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27666 /* ~"Ne t'inquiète pas. Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27667 /* ~"Qui a beaucoup voyagé si tu préfères. C'est ton aspect, monsieur -- enfin, un peu échevelé, rude. Tu trouveras peut-être que tu dépares un peu, ici. Mais Sigil n'en est pas à ça près, hein ? Je pense que le Quartier des Gratte-Papier en voit juste un peu moins que le reste de la cité, c'est tout. Hormis la Salle des Fêtes, bien sûr."~ */
  IF ~~ THEN REPLY #27668 /* ~"Le Quartier des Gratte-Papier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #27669 /* ~"La Salle des Fêtes ?"~ */ GOTO 22
  IF ~~ THEN REPLY #27670 /* ~"Tu veux dire que j'ai l'air d'un mort, c'est ça ? Eh bien, tu sais, je suis mort !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27671 /* ~"Hum. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27672 /* ~"Ça se comprend, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.10 13.2 15.2 16.2 17.2 18.3 19.3 21.2 22.4 23.4 24.2 25.8 26.2 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1 49.3 52.0 54.0
  SAY #27673 /* ~Elle acquiesce. "Demande, je t'en prie."~ */
  IF ~~ THEN REPLY #27674 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #27675 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27676 /* ~"Où est-ce que je pourrais trouver du travail par ici ?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27677 /* ~"Je voulais t'interroger sur un endroit précis…"~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27678 /* ~"Je veux juste des indications…"~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27679 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 42
  IF ~~ THEN REPLY #27680 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27681 /* ~Elle te regarde comme si tu plaisantais, puis réalisant que non, rit d'un air embarrassé. "C'est le Quartier des Gratte-Papier, monsieur."~ */
  IF ~~ THEN REPLY #27682 /* ~"Qu'est-ce que tu peux me dire sur ce Quartier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #27683 /* ~"Exact. En fait, j'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27684 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27685 /* ~"Eh bien, la plus grande partie du Quartier - où mes fonctions me retiennent la plupart du temps - est remplie de salles d'archives et de bâtiments administratifs… mais pas cette section."~ */
  IF ~~ THEN REPLY #27686 /* ~"Tes fonctions ?"~ */ GOTO 10
  IF ~~ THEN REPLY #27687 /* ~"Qu'est-ce qui rend cette partie différente ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27688 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27689 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27690 /* ~"La Salle des Fêtes, bien sûr. La Galerie d'Art et d'Antiquités, aussi…"~ */
  IF ~~ THEN REPLY #27691 /* ~"Continue…"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27692 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27693 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27694 /* ~"Il y a d'autres endroits intéressants comme le domicile de l'avocat, l'apothicaire, la Maison de tolérance des Plaisirs Intellectuels, les catacombes sous le Quartier et le tailleur. Et ce petit magasin de brocante, aussi."~ */
  IF ~~ THEN REPLY #27695 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27696 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27697 /* ~"Tu ne recherches que du travail temporaire, n'est-ce pas ? Tu n'es pas du genre à t'installer ici, non…" Elle s'interrompt une seconde, en te regardant. "Bon, à ta place je chercherais du travail au domicile de l'avocat, chez l'apothicaire ou à la Salle des Fêtes. Tu y trouveras sûrement quelque chose."~ */
  IF ~~ THEN REPLY #27698 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27699 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27700 /* ~Elle acquiesce et roule les yeux. "Mes fonctions, monsieur. Envers mon employeur. Je travaille dans un des nombreux, nombreux bâtiments administratifs qui se trouvent dans le Quartier."~ */
  IF ~~ THEN REPLY #27701 /* ~"Qu'est-ce que tu y fais ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27702 /* ~"Alors, qu'est-ce qui rend cette partie si différente du reste du Quartier ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27703 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27704 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27705 /* ~Elle secoue la tête en souriant. "S'il te plaît, ne parle pas de ça, veux-tu ? Pas ici, alors que j'essaie de profiter d'un moment de détente."~ */
  IF ~~ THEN REPLY #27706 /* ~"Alors, qu'est-ce qui rend cette partie si différente du reste du Quartier ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27707 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27708 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 19.2 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27709 /* ~"Je te dirai le peu que je sais…"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27710 /* ~"La maison de l'avocat."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27711 /* ~"La maison de l'avocat."~ */ GOTO 14
  IF ~~ THEN REPLY #27712 /* ~"L'apothicaire."~ */ GOTO 16
  IF ~~ THEN REPLY #27713 /* ~"La boutique d'art."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27714 /* ~"La maison de tolérance."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27715 /* ~"La maison de tolérance."~ */ GOTO 19
  IF ~~ THEN REPLY #27716 /* ~"Les Sous-sols de Sigil, le Royaume d'en bas."~ */ GOTO 21
  IF ~~ THEN REPLY #27717 /* ~"La Salle des Fêtes."~ */ GOTO 22
  IF ~~ THEN REPLY #27718 /* ~"Le magasin de brocante."~ */ GOTO 23
  IF ~~ THEN REPLY #27719 /* ~"Le tailleur."~ */ GOTO 24
  IF ~~ THEN REPLY #27720 /* ~"Peu importe. Je voudrais t'interroger sur autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27721 /* ~"Nulle part, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27722 /* ~"Les avocats aident à plaider des affaires, à rédiger des documents juridiques et servent de représentants légaux à leurs clients. Iannis, l'avocat du quartier, a une bonne réputation et il est très fiable. Il réside et travaille dans le Quartier depuis très, très longtemps."~ */
  IF ~~ THEN REPLY #27723 /* ~"Comment on va chez Iannis ?"~ */ GOTO 26
  IF ~~ THEN REPLY #27724 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27725 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27726 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 26.1
  SAY #27727 /* ~"Les avocats aident à plaider des affaires, à rédiger des documents juridiques et servent de représentants légaux à leurs clients."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 267
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27729 /* ~" Iannis, l'avocat du quartier, a une bonne réputation et il est très fiable. Il réside et travaille dans le Quartier depuis très, très longtemps."~ */
  IF ~~ THEN REPLY #27730 /* ~"Comment on va chez Iannis ?"~ */ GOTO 26
  IF ~~ THEN REPLY #27731 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27732 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27733 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 27.0
  SAY #27734 /* ~"L'apothicaire vend différents onguents, potions, herbes et autres." Elle fronce les sourcils un instant. "Les propriétaires de l'endroit sont un peu azimutés, toujours en train de goûter la marchandise. De braves hommes, pourtant."~ */
  IF ~~ THEN REPLY #27735 /* ~"Comment on va chez l'apothicaire ?"~ */ GOTO 27
  IF ~~ THEN REPLY #27736 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27737 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27738 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.3 28.0
  SAY #27739 /* ~"La Galerie d'Art et d'Antiquités d'Yvanna est un endroit très mystérieux. Elle possède une collection de pièces d'art, d'antiquités et d'artefacts qui proviennent de tous les plans."~ */
  IF ~~ THEN REPLY #27740 /* ~"Comment on va à la boutique d'art ?"~ */ GOTO 28
  IF ~~ THEN REPLY #27741 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27742 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27743 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.4 29.0
  SAY #27744 /* ~"C'est un établissement de Sensats qui distrait les sens et l'esprit. Il est tenu par une succube, dénommée Tombée-en-Disgrâce à juste titre."~ */
  IF ~~ THEN REPLY #27745 /* ~"De Sensats ?"~ */ GOTO 36
  IF ~~ THEN REPLY #27746 /* ~"Comment on va à la Maison de tolérance ?"~ */ GOTO 29
  IF ~~ THEN REPLY #27747 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27748 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27749 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.5 29.1
  SAY #27750 /* ~"C'est un établissement de Sensats qui distrait les sens et l'esprit. Il est tenu par une succube, dénommée Tombée-en-Disgrâce à juste titre." Elle salue poliment Tombée-en-Disgrâce.~ */
  IF ~~ THEN REPLY #27751 /* ~"De Sensats ?"~ */ GOTO 36
  IF ~~ THEN REPLY #27752 /* ~"Comment on va à la Maison de tolérance ?"~ */ GOTO 29
  IF ~~ THEN REPLY #27753 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27754 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27755 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27756 /* ~[no text]~ */
  IF ~~ THEN REPLY #27757 /* ~[no text]~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6 30.0
  SAY #27758 /* ~Elle semble préoccupée. "Je trouve vraiment bizarre que toutes les entrées n'aient pas encore été fermées. D'après ce que j'ai compris, le Royaume d'en bas n'est que néant et trouble, un vrai danger pour tous ceux qui s'y aventurent."~ */
  IF ~~ THEN REPLY #27759 /* ~"Comment trouver mon chemin en bas ?"~ */ GOTO 30
  IF ~~ THEN REPLY #27760 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27761 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27762 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.7 31.0
  SAY #27763 /* ~"C'est l'un des établissements les plus surprenants de Sigil… c'est le quartier général de la faction des Sensats, connue dans tout le multivers pour ses concerts, ses expositions artistiques et ses conférences. Mais son attrait principal reste les sensoriums."~ */
  IF ~~ THEN REPLY #27764 /* ~"Des Sensats ?"~ */ GOTO 36
  IF ~~ THEN REPLY #27765 /* ~"Des sensoriums ?"~ */ GOTO 38
  IF ~~ THEN REPLY #27766 /* ~"Où se trouve la Salle des Fêtes ?"~ */ GOTO 31
  IF ~~ THEN REPLY #27767 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27768 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27769 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.8 32.0
  SAY #27770 /* ~"Je ne prétendrai pas y être allé, mais je sais que c'est dirigé par une sorte d'importateur… un demi-fiélon, en fait, dont les marchandises proviennent des Plans Inférieurs."~ */
  IF ~~ THEN REPLY #27771 /* ~"Un demi-fiélon ?"~ */ GOTO 35
  IF ~~ THEN REPLY #27772 /* ~"Les Plans Inférieurs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #27773 /* ~"Où est-ce que je peux trouver cet endroit ?"~ */ GOTO 32
  IF ~~ THEN REPLY #27774 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27775 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27776 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.9 33.0
  SAY #27777 /* ~"Goncalves est un excellent tailleur, mais il a mauvais caractère et se vexe facilement. Je dois te prévenir : il te jugera vraisemblablement à ton apparence et tu auras peut-être du mal à t'en faire un ami."~ */
  IF ~~ THEN REPLY #27778 /* ~"Où est la boutique de Goncalves ?"~ */ GOTO 33
  IF ~~ THEN REPLY #27779 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27780 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27781 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27782 /* ~"Oh ? Pour aller où ?"~ */
  IF ~~ THEN REPLY #27783 /* ~"Chez l'avocat."~ */ GOTO 26
  IF ~~ THEN REPLY #27784 /* ~"Chez l'apothicaire."~ */ GOTO 27
  IF ~~ THEN REPLY #27785 /* ~"À la boutique d'art."~ */ GOTO 28
  IF ~~ THEN REPLY #27786 /* ~"À la maison de tolérance."~ */ GOTO 29
  IF ~~ THEN REPLY #27787 /* ~"Les Sous-sols de Sigil, le Royaume d'en bas."~ */ GOTO 30
  IF ~~ THEN REPLY #27788 /* ~"À la Salle des Fêtes."~ */ GOTO 31
  IF ~~ THEN REPLY #27789 /* ~"Au magasin de brocante."~ */ GOTO 32
  IF ~~ THEN REPLY #27790 /* ~"Chez le tailleur."~ */ GOTO 33
  IF ~~ THEN REPLY #27791 /* ~"Peu importe. Je voudrais t'interroger sur autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27792 /* ~"Nulle part, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27793 /* ~"La maison de Iannis se trouve au sud de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici la première fois. Elle est du côté est de la route."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27794 /* ~"Qu'est-ce que tu peux me dire sur l'avocat ?"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27795 /* ~"Qu'est-ce que tu peux me dire sur l'avocat ?"~ */ GOTO 14
  IF ~~ THEN REPLY #27796 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27797 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27798 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'est de la route. Elle est orientée au sud et comporte trois fenêtres de verre teinté."~ */
  IF ~~ THEN REPLY #27799 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 16
  IF ~~ THEN REPLY #27800 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27801 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27802 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'ouest de la route. Elle est orientée au sud et les tuiles de son toit sont maintenues par de grosses pierres."~ */
  IF ~~ THEN REPLY #27803 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #27804 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27805 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 19.1 25.3
  SAY #27806 /* ~Elle se renfrogne explicitement, en secouant la tête. "C'est juste à l'est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. C'est un imposant bâtiment rond, dont l'entrée est orientée au sud."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27807 /* ~"Qu'est-ce que tu peux me dire sur la Maison de tolérance ?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27808 /* ~"Qu'est-ce que tu peux me dire sur la Maison de tolérance ?"~ */ GOTO 19
  IF ~~ THEN REPLY #27809 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27810 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27811 /* ~Elle hausse les épaules. "Je ne sais pas, mais je serais très prudente si je le trouvais. On dit que rien ne ressort du Royaume d'en bas… y compris ceux qui y entrent."~ */
  IF ~~ THEN REPLY #27812 /* ~"Qu'est-ce que tu peux me dire d'autre là-dessus ?"~ */ GOTO 21
  IF ~~ THEN REPLY #27813 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27814 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27815 /* ~"La Salle des Fêtes est très facile à trouver. C'est un édifice massif dans la partie nord-est de cette zone."~ */
  IF ~~ THEN REPLY #27816 /* ~"Qu'est-ce que tu peux me dire sur la Salle des Fêtes ?"~ */ GOTO 22
  IF ~~ THEN REPLY #27817 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27818 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27819 /* ~"'C'est dans la section sud-est de cette zone. Un bâtiment bizarre, situé au sommet d'un grand escalier. Je n'y suis jamais allée moi-même… il me fait une impression bizarre."~ */
  IF ~~ THEN REPLY #27820 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 23
  IF ~~ THEN REPLY #27821 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27822 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27823 /* ~"Tu trouveras la boutique du tailleur juste au nord-est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici la première fois. C'est un imposant bâtiment, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #27824 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 24
  IF ~~ THEN REPLY #27825 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27826 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27827 /* ~Elle acquiesce en baissant la voix. "Tu sais… Baator, les Abysses et le reste. Des endroits terribles."~ */
  IF ~~ THEN REPLY #27828 /* ~"Tu as dit que c'était un demi-fiélon ?"~ */ GOTO 35
  IF ~~ THEN REPLY #27829 /* ~"Où est-ce que je peux trouver ce magasin de brocante ?"~ */ GOTO 32
  IF ~~ THEN REPLY #27830 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27831 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27832 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27833 /* ~"Pas un tieffelin, attention, mais bien un demi-fiélon. La fille d'un Incube et d'une mortelle, dit-on. Je ne m'intéresse pas aux ragots, alors ne parlons plus d'elle."~ */
  IF ~~ THEN REPLY #27834 /* ~"Tu as dit que ses marchandises venaient des Plans Inférieurs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #27835 /* ~"Où est-ce que je peux trouver ce magasin de brocante ?"~ */ GOTO 32
  IF ~~ THEN REPLY #27836 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27837 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27838 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 19.0 22.0
  SAY #27839 /* ~"Oui. La 'Société des Sensations' est leur nom correct. Ils croient que la véritable nature du multivers ne peut être découverte que par l'expérience directe…"~ */
  IF ~~ THEN REPLY #27840 /* ~"Je vois. Continue."~ */ GOTO 48
  IF ~~ THEN REPLY #27841 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27842 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27843 /* ~"Avec les sensoriums, ils ont en fait trouvé un moyen de partager leurs expériences avec d'autres."~ */
  IF ~~ THEN REPLY #27844 /* ~"Des sensoriums ?"~ */ GOTO 38
  IF ~~ THEN REPLY #27845 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27846 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27847 /* ~"Les Sensats ont créé un moyen de saisir les expériences, de les enfermer dans des pierres et de laisser les *autres* les éprouver. Les Sensats parcourent les plans et cherchent dans leur moi intérieur des expériences à partager avec les autres… tout ce qu'ils ont éprouvé ou ressenti ou presque se trouve dans leurs sensoriums."~ */
  IF ~~ THEN REPLY #27848 /* ~"Où se trouvent ces sensoriums ?"~ */ GOTO 39
  IF ~~ THEN REPLY #27849 /* ~"Est-ce que ces expériences… ressemblent à des souvenirs ?"~ */ GOTO 40
  IF ~~ THEN REPLY #27850 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27851 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27852 /* ~"Dans la Salle des Fêtes. Il y a des sensoriums qui sont ouverts au public et d'autres qui sont réservés aux Sensats. Il y a un petit droit d'entrée, mais le prix est franchement modique par rapport à l'expérience que tu en retires."~ */
  IF ~~ THEN REPLY #27853 /* ~"Où se trouve la Salle des Fêtes ?"~ */ GOTO 31
  IF ~~ THEN REPLY #27854 /* ~"Est-ce que ces expériences… ressemblent à des souvenirs ?"~ */ GOTO 40
  IF ~~ THEN REPLY #27855 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27856 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27857 /* ~"Dans un *sens*, oui, mais très intense… et ce ne sont pas des souvenirs à toi, mais ceux d'un autre qu'il a enfermés dans la pierre."~ */
  IF ~~ THEN REPLY #27858 /* ~"Comment ça ? Est-ce qu'on perd sa mémoire ou son expérience une fois qu'elles sont mises dans la pierre ?"~ */ GOTO 41
  IF ~~ THEN REPLY #27859 /* ~"Où se trouvent ces sensoriums ?"~ */ GOTO 39
  IF ~~ THEN REPLY #27860 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27861 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27862 /* ~"Non…" Elle fronce les sourcils. "Je ne crois pas. Je pense que la pierre *copie* l'expérience sensorielle. Tu peux demander à un Sensat pour être sûr, mais c'est ce que j'ai cru comprendre."~ */
  IF ~~ THEN REPLY #27863 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27864 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27865 /* ~"Ce nom me dit quelque chose… c'est le personnage d'un livre ? Le scélérat dans un roman, non ? Je ne m'en souviens pas."~ */
  IF ~~ THEN REPLY #27866 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27867 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27868 /* ~"Quel plaisir de te revoir !" Elle te sourit par-dessus sa tasse de café. "D'autres questions, je suppose ?"~ */
  IF ~~ THEN REPLY #27869 /* ~"Oui."~ */ GOTO 4
  IF ~~ THEN REPLY #27870 /* ~"En fait, non… Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27871 /* ~Elle semble perplexe. "Répète ?"~ */
  IF ~~ THEN REPLY #27872 /* ~"J'ai dit que j'étais mort ! Mort, mort, la-la ! Mort, mort, la-la…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27873 /* ~"Peu importe. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27874 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27875 /* ~Son expression devient méfiante. "Ah, oui… ne le sommes-nous pas tous. Je dois prendre congé, monsieur. Des affaires urgentes m'appellent ailleurs."~ */
  IF ~~ THEN REPLY #27876 /* ~"Attends ! Je ne t'ai pas dit *pourquoi* je suis mort…"~ */ GOTO 46
  IF ~~ THEN REPLY #27877 /* ~"Attends un peu. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27878 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27879 /* ~Elle recule d'un pas. "J'avoue que ça ne m'intéresse pas, monsieur." Elle commence à regarder autour d'elle, comme si elle cherchait quelqu'un pour lui venir en aide.~ */
  IF ~~ THEN REPLY #27880 /* ~"Parce que j'ai tué trop de gens dans mes vies antérieures."~ */ GOTO 47
  IF ~~ THEN REPLY #27881 /* ~"Bon, peu importe. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27882 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27883 /* ~Elle lâche sa tasse en criant : "Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #27884 /* ~Attaque-la.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27885 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27886 /* ~"Ils passent leur vie à faire l'expérience de tout ce qu'ils peuvent dans le multivers ; ils voyagent beaucoup, à la fois dans les plans et dans les profondeurs de leurs esprits et de leurs émotions. Mais ils vont plus loin, tu sais…"~ */
  IF ~~ THEN REPLY #27887 /* ~"Comment ça ?"~ */ GOTO 37
  IF ~~ THEN REPLY #27888 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27889 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.1
  SAY #27890 /* ~Elle écarquille légèrement les yeux en t'apercevant. Elle sourit, mal à l'aise. "Ah… bienvenue à-" Soudain, ses yeux se posent sur Morte. "Oh ! Quel joli petit mimir !"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #27891 /* ~"Un mimir ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 268
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27892 /* ~"N'est-ce pas ? Il adore qu'on lui gratte le dessus du crâne."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27893 /* ~"Je te déconseille de le toucher - il mord."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 272
  IF ~~ THEN REPLY #27894 /* ~"Oui, oui. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27895 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 2
  IF ~~ THEN REPLY #27896 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #27897 /* ~La femme sourit. "Qu'il est chou ! Et il parle tout seul !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 269
END

IF ~~ THEN BEGIN 51 // from: 53.0
  SAY #27899 /* ~Elle secoue la tête. "Non, aucun de ceux que j'ai vus jusqu'ici. Ce sont simplement des objets, non-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 271
END

IF ~~ THEN BEGIN 52 // from:
  SAY #27901 /* ~La femme hausse les épaules. "C'est possible."~ */
  IF ~~ THEN REPLY #27902 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27903 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.1
  SAY #27904 /* ~"Vraiment ?" Elle continue de sourire, mais prend un air soupçonneux. "Tu plaisantes, hein, monsieur !" Ce n'est qu'un mimir…"~ */
  IF ~~ THEN REPLY #27905 /* ~"Qu'est-ce que tu veux dire ? Ils aiment tous ça, non ?"~ */ GOTO 51
  IF ~~ THEN REPLY #27906 /* ~"Non, je dis la vérité. Vas-y."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 54
  IF ~~ THEN REPLY #27907 /* ~"Ne fais pas attention à lui. J'ai des questions…"~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #27908 /* ~Elle tend la main et caresse doucement Morte… qui se blottit dans sa main, en grimaçant et en te faisant des clins d'œil. Elle rit embarrassée : "Étrange !"~ */
  IF ~~ THEN REPLY #27909 /* ~"Oui… Eh bien, j'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27910 /* ~"N'est-ce pas ? Au revoir."~ */ EXIT
END
