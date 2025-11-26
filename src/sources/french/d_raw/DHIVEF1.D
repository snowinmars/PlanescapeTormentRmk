// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEF1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1567 /* ~Tu vois un homme vêtu de vieilles hardes. Alors que tu t'approches de lui, il s'arrête soudainement et regarde autour de lui, effrayé.~ */
  IF ~~ THEN REPLY #1569 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #1568 /* ~"Hé, toi ! Attends une seconde !"~ */ GOTO 1
  IF ~~ THEN REPLY #1570 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1571 /* ~L'homme te regarde ébahi, puis recule. "Hé, qu'est-ce tu veux, matois ?" Sa voix tremble et il semble effrayé par tes cicatrices. "Je n'ai rien sur moi, c'est vrai, et mes guenilles ne valent rien."~ */
  IF ~~ THEN REPLY #1572 /* ~"Du calme. Je ne suis pas là pour te voler. J'ai juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #1573 /* ~"Essaie de fuir et je te promets que tu n'iras pas très loin. J'ai quelques questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1574 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1575 /* ~"Hein ?" Il n'a pas l'air enchanté de te voir. "Qu'est-ce tu veux *maintenant,* matois ?"~ */
  IF ~~ THEN REPLY #1576 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #1577 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0
  SAY #1578 /* ~Tout en gardant ses distances, il jette des coups d'œil de gauche à droite, comme s'il s'attendait à voir quelqu'un sortir de l'ombre. "Des questions… ? Et, euh… de quel genre ?"~ */
  IF ~~ THEN REPLY #1580 /* ~"Tu peux me parler de cette… cité ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1579 /* ~"Tu peux me parler de Sigil ?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1581 /* ~"Tu peux me parler de ces bas quartiers ?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1582 /* ~"Tu peux me parler de la Ruche ?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1583 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1584 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1585 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 27
  IF ~~ THEN REPLY #7126 /* ~"Rien. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.3 5.2 5.3
  SAY #1586 /* ~"Euh…" Il te regarde avec prudence et il plisse le front en signe de confusion. "Qu'est-ce tu veux savoir sur la Ruche, matois ?"~ */
  IF ~~ THEN REPLY #1587 /* ~"Pourquoi ça s'appelle la Ruche ?"~ */ GOTO 6
  IF ~~ THEN REPLY #1588 /* ~"Qu'est-ce qu'il y a d'intéressant dans le coin ?"~ */ GOTO 7
  IF ~~ THEN REPLY #1589 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1590 /* ~"Rien. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.1 7.5 8.3 9.0 10.1 11.3 12.0 13.5 14.1 15.1 16.3 17.2 18.1 19.1 20.1 21.3 22.2 23.3 24.2 25.2 26.0 27.0 28.2 29.0 30.0 31.2 32.1 33.1 34.1 35.0 36.2 42.0
  SAY #1591 /* ~"Et… quelles sont ces questions ?"~ */
  IF ~~ THEN REPLY #1592 /* ~"Tu peux me parler de cette… cité ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1593 /* ~"Tu peux me parler de Sigil ?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1594 /* ~"Tu peux me parler de ces bas quartiers ?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1595 /* ~"Tu peux me parler de la Ruche ?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1596 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1597 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1598 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ? Ou peut-être que tu sais où je peux en trouver un ?"~ */ GOTO 27
  IF ~~ THEN REPLY #7131 /* ~"Rien. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #1599 /* ~Il a l'air perdu. "Je… je ne sais pas." Il semble effrayé de ne pas connaître la réponse. "Un tas de rues, un tas de gens, peut-être."~ */
  IF ~~ THEN REPLY #1600 /* ~"Qu'est-ce qu'il y a d'intéressant dans le coin ?"~ */ GOTO 7
  IF ~~ THEN REPLY #1601 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1602 /* ~"Alors, peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #1603 /* ~"Euh… ça dépend. Ça dépend de ce qui t'intéresse, matois."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1604 /* ~"J'voudrais me payer du bon temps."~ */ EXTERN ~DMORTE~ 128
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1605 /* ~"J'voudrais me payer du bon temps."~ */ GOTO 8
  IF ~~ THEN REPLY #1606 /* ~"Je cherche du travail."~ */ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1607 /* ~"Je cherche un certain Pharod."~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1608 /* ~"Je cherche un journal égaré. Sais-tu où je pourrais en trouver un ?"~ */ GOTO 27
  IF ~~ THEN REPLY #1609 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7132 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1610 /* ~"Ben…" Il humecte les lèvres. "Il y a le Bar du Cadavre fumant… et le bar des Hommes-Poussière… mais tu n'es pas le genre à biber avec les Hommes-Poussière… et les autres endroits sont très dangereux, alors reste sur tes gardes."~ */
  IF ~~ THEN REPLY #1611 /* ~"Où sont les endroits dont tu as parlé ?"~ */ GOTO 9
  IF ~~ THEN REPLY #1612 /* ~"Qu'est-ce qu'il y a de dangereux dans le coin ?"~ */ GOTO 10
  IF ~~ THEN REPLY #1613 /* ~"Les 'Hommes-Poussière' ?"~ */ GOTO 15
  IF ~~ THEN REPLY #1614 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1615 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #1616 /* ~"Ben, le Cadavre fumant est quelques pâtés d'maisons plus loin, en direction de l'aiguille - euh, au sud - à partir de la Morgue - et le bar des Hommes-Poussière est juste au sud-ouest de la Morgue."~ */
  IF ~~ THEN REPLY #1731 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1732 /* ~"Merci. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #1617 /* ~"Partout dans la Ruche, à la tombée de la nuit. Puis, il y a l'allée Anguleuse… Mais garde-toi d'y aller, à moins que tu ne veuilles te retrouver dans le livre des morts."~ */
  IF ~~ THEN REPLY #1618 /* ~"Pourquoi cette 'Allée des Angles' est-elle si dangereuse ?"~ */ GOTO 36
  IF ~~ THEN REPLY #1619 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1620 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2 13.4 14.0 15.0 31.1 32.0
  SAY #1621 /* ~Il réfléchit. "Y a du bon travail minutieux et… euh, honnête à trouver par ici, matois. Tu peux chasser les vermines à cerveau pour quelques pièces, puis les passer à la Succursale des vermines pour un peu de jonc. Mais se frotter aux vermines à cerveau est un travail dangereux. Tu peux aussi ramasser les morts autour de la Ruche, et les porter à la Morgue pour un peu de jonc."~ */
  IF ~~ THEN REPLY #1623 /* ~"Où se trouve cette succursale ?"~ */ GOTO 12
  IF ~~ THEN REPLY #1624 /* ~"Les vermines à cerveau ?"~ */ GOTO 14
  IF ~~ THEN REPLY #1625 /* ~"Ramasser des corps ?"~ */ GOTO 13
  IF ~~ THEN REPLY #1626 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1627 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.1
  SAY #1622 /* ~"C'est juste à côté du marché d'la Ruche. Tu vas vers l'aiguille - c'est au sud-ouest de la Morgue - trois ou quatre pâtés d'maisons plus loin, et tu tomberas d'ssus. Les chasseurs de rats s'retrouvent devant, tu peux pas l'louper."~ */
  IF ~~ THEN REPLY #1733 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7133 /* ~"Merci. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #1628 /* ~"Ouais, les Hommes-Poussière paient du jonc pour tous les cadavres que tu amènes à leurs portes. Pas de quoi se faire une fortune, mais assez pour que les Récupérateurs fassent leurs rondes… et il y a toujours assez de morts par ici."~ */
  IF ~~ THEN REPLY #1633 /* ~"Des Récupérateurs ?"~ */ GOTO 31
  IF ~~ THEN REPLY #1629 /* ~"Où se trouve cette agence dont tu parlais ?"~ */ GOTO 12
  IF ~~ THEN REPLY #1630 /* ~"Que disais-tu à propos de la 'vermine à cerveau' ?"~ */ GOTO 14
  IF ~~ THEN REPLY #1631 /* ~"Les 'Hommes-Poussière' ?"~ */ GOTO 15
  IF ~~ THEN REPLY #1632 /* ~"Qu'est-ce qu'on fait d'autre à la Ruche ?"~ */ GOTO 11
  IF ~~ THEN REPLY #7134 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7135 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.2
  SAY #1634 /* ~"Oui, de sales petites bêtes." Il montre ses dents comme un rat. Il a l'air plutôt idiot. "Seuls, ils ne sont presque rien… c'est seulement quand les vermines à cerveau se rassemblent qu'ils deviennent plus malins. Ils deviennent presque aussi intelligents que les humains…" Il secoue la tête. "Aucune personne sensée ne voudrait ça. C'est un danger qui menace la santé de tous."~ */
  IF ~~ THEN REPLY #2528 /* ~"Qu'est-ce qu'on fait d'autre à la Ruche ?"~ */ GOTO 11
  IF ~~ THEN REPLY #2527 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7136 /* ~"J'en ai entendu assez. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 8.2 13.3 16.0
  SAY #1635 /* ~"Oui… les Hommes-Poussière… les Morts au visage pâle. Ils sont sinistres et n'ont aucun humour. Ils débarrassent les rues des morts, les empilent dans la Morgue. C'est leur travail, à Sigil, surtout parce que personne d'autre ne veut le faire."~ */
  IF ~~ THEN REPLY #1638 /* ~"Qu'est-ce qu'on fait d'autre à la Ruche ?"~ */ GOTO 11
  IF ~~ THEN REPLY #1636 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1637 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1639 /* ~"Laquelle ?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #1640 /* ~"Et les Hommes-Poussière…"~ */ GOTO 15
  IF ~  GlobalGT("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #1641 /* ~"Les Chaoteux… Ils ont l'air intéressant."~ */ EXIT
  IF ~  GlobalGT("Know_Indeps","GLOBAL",0)
~ THEN REPLY #1642 /* ~"Les Indés ?"~ */ EXIT
  IF ~~ THEN REPLY #1643 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1644 /* ~"Oublie ma question. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 17 // from: 3.0 5.0
  SAY #1645 /* ~"Alors, qu'est-ce tu veux savoir sur Sigil ?"~ */
  IF ~~ THEN REPLY #1646 /* ~"C'est *quoi*, cet endroit ?"~ */ DO ~SetGlobal(" Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #1647 /* ~"*Où* est Sigil ?"~ */ GOTO 26
  IF ~~ THEN REPLY #1648 /* ~"En fait, j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1649 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 3.1 5.1 17.0
  SAY #1650 /* ~"La Cité des Portes, la Cage. C'est l'endroit où toutes les portes mènent, et aboutissent ; le Centre des plans, qui reçoit les remous de tous les autres endroits. Certains disent que tout le monde finit là un jour ou l'autre."~ */
  IF ~~ THEN REPLY #1652 /* ~"La 'Cité des Portes' ?"~ */ GOTO 19
  IF ~~ THEN REPLY #1651 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1653 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1654 /* ~"Eh oui, tu vois, matois, la cité…" Il fronce les sourcils, comme s'il luttait avec les mots. "Un tas de portes sont dispersées dans la cité… tu vois, les portes…" Il fronce à nouveau les sourcils, puis soupire.~ */
  IF ~~ THEN REPLY #1657 /* ~"Les portes… ?"~ */ GOTO 20
  IF ~~ THEN REPLY #1658 /* ~"Visiblement, ça va prendre un certain temps. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1659 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1655 /* ~"Comment t'expliquer ? Tu vois, il y a des 'portes' partout dans Sigil, mais elles ne ressemblent pas toujours à des portes. Ce sont plutôt des passages. Elles se présentent sous *différentes* formes… un dormant de fenêtre, un cadre, un porche, un feuillard, un espace entre les pieds d'une table… ou les jambes d'une statue."~ */
  IF ~~ THEN REPLY #1656 /* ~"Et… tu dis que tous ces trucs sont des portes ?"~ */ GOTO 21
  IF ~~ THEN REPLY #1661 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1662 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1660 /* ~Il fronce les sourcils. "Des portes… des passages, cela peut être tout ce qui est fermé de tous côtés. C'est difficile à voir… sauf si tu as la bonne clé. Comment es-tu arrivé ici, matois ? Par une porte ?"~ */
  IF ~~ THEN REPLY #1663 /* ~"Qu'est-ce qui te fait dire ça ?"~ */ GOTO 22
  IF ~~ THEN REPLY #1666 /* ~"C'est quoi ces 'clés' dont tu as parlé ?"~ */ GOTO 23
  IF ~~ THEN REPLY #1667 /* ~"Alors, toutes ces portes sont dans la cité… Et elles mènent où ?"~ */ GOTO 25
  IF ~~ THEN REPLY #1668 /* ~"Peut-être… Écoute, j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1665 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 22 // from: 21.0 23.2 24.1 25.1
  SAY #1664 /* ~"Euh… ben, tu n'as pas l'air d'être de Sigil, tu vois ?"~ */
  IF ~~ THEN REPLY #7137 /* ~"C'est quoi ces 'clés' dont tu as parlé ?"~ */ GOTO 23
  IF ~~ THEN REPLY #7138 /* ~"Où mènent toutes ces portes de la cité ?"~ */ GOTO 25
  IF ~~ THEN REPLY #7139 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 5
  IF ~~ THEN REPLY #7140 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 25.0
  SAY #1670 /* ~"À chaque porte correspond une clé qui permet de l'ouvrir, tu vois ? La plupart du temps, tu ne *sauras* même pas que tu es prêt d'une porte, *sauf* si tu as la clé. Alors la porte s'ouvre, et tu peux traverser et tenter ta chance. Le hic, c'est que, comme les portes, les clés peuvent être n'importe quoi. Ça peut être un air que tu fredonnes près de la porte, une pâtisserie à laquelle tu penses, ou une petite danse. La clé peut aussi être un objet tel qu'un bout de verre, un pavé ou une dent cassée…"~ */
  IF ~~ THEN REPLY #1673 /* ~"On s'y perd."~ */ GOTO 24
  IF ~~ THEN REPLY #1671 /* ~"Où mènent toutes ces portes de la cité ?"~ */ GOTO 25
  IF ~~ THEN REPLY #1672 /* ~"Tout à l'heure, tu m'as demandé si j'étais passé par l'une de ces portes. Pourquoi cette question ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7141 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7142 /* ~"Bon, d'accord… Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1674 /* ~"On s'y habitue."~ */
  IF ~~ THEN REPLY #1676 /* ~"Où mènent toutes ces portes de la cité ?"~ */ GOTO 25
  IF ~~ THEN REPLY #1675 /* ~"Tout à l'heure, tu m'as demandé si j'étais passé par l'une de ces portes. Pourquoi cette question ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7143 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7144 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 25 // from: 21.2 22.1 23.1 24.0
  SAY #1677 /* ~Il hausse les épaules. "Les portes peuvent mener à *tout*, matois. Certaines même ne mènent pas deux fois au même endroit." Il soupire. "Tu vois, c'est ainsi. Les portes mènent presque partout dans les plans… *partout*. Mais elles sont tellement nombreuses qu'il est difficile d'en trouver une qui te mène directement où tu veux."~ */
  IF ~~ THEN REPLY #1678 /* ~"Tu as dit que ces portes avaient des 'clés'… ?"~ */ GOTO 23
  IF ~~ THEN REPLY #1679 /* ~"Tout à l'heure, tu m'as demandé si j'étais passé par l'une de ces portes. Pourquoi cette question ?"~ */ GOTO 22
  IF ~~ THEN REPLY #7145 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7146 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 17.1
  SAY #1680 /* ~"C'est le centre des plans, pour te dire. Je ne le sais pas par expérience." Il hausse les épaules. "Je suppose que tout mène ici, d'une manière ou d'une autre. Sigil n'est pas aussi moche que ce que tu vois ici."~ */
  IF ~~ THEN REPLY #1681 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1682 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 3.6 5.6 7.4
  SAY #1684 /* ~"Tu as perdu quoi ?" Il a l'air étonné. "Aucune idée de l'endroit où tu peux trouver ça, matois."~ */
  IF ~~ THEN REPLY #2531 /* ~"Alors, peu importe. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #2532 /* ~"D'accord… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.4 5.4
  SAY #1683 /* ~"La maîtresse de Sigil ? T'as jamais *entendu* parler d'elle ? Tu es soit un bienheureux ou un ignor… euh, tu sais peu de choses sur Sigil." Il rit doucement. "Les paroles de la Dame font loi ici à Sigil." Il réfléchit un instant. "Sauf qu'elle ne parle pas beaucoup. En fait, elle est aussi silencieuse qu'une morte."~ */
  IF ~~ THEN REPLY #1686 /* ~"'Les paroles de la Dame font loi' ?"~ */ GOTO 29
  IF ~~ THEN REPLY #1687 /* ~"Qu'est-ce que tu peux me dire d'autre sur cette Dame ?"~ */ GOTO 29
  IF ~~ THEN REPLY #1688 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1689 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #1685 /* ~Il te regarde avec prudence. "J'veux pas trop parler d'elle, matois… tu ne veux pas rencontrer son ombre, ni lui chanter des louanges, si tu vois ce que je veux dire. Bon, n'en parlons plus. Branler ton râtelier au sujet de la Dame, c'est pas bon, pas bon du tout."~ */
  IF ~~ THEN REPLY #1692 /* ~"Bon, d'accord, j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1693 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1690 /* ~"La guitoune des Hommes-Poussière. C'est glauque. Je ne veux pas voir cet endroit, même quand ils m'inscriront dans le livre des morts."~ */
  IF ~~ THEN REPLY #1694 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1695 /* ~"Je vois. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 13.0
  SAY #1691 /* ~"Des vautours. Il y en a beaucoup qui ont leur guitoune dans le Square du Chiffonnier. Ils ramassent les morts, prélèvent tout ce qui a un peu de valeur, puis revendent les corps aux Hommes-Poussière à la Morgue."~ */
  IF ~~ THEN REPLY #1696 /* ~"Pourquoi ils font ça ?"~ */ GOTO 32
  IF ~~ THEN REPLY #1698 /* ~"Qu'est-ce qu'on peut faire d'autre à la Ruche ?"~ */ GOTO 11
  IF ~~ THEN REPLY #1697 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7147 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1699 /* ~"Les Hommes-Poussière paient tous ceux qui débarrassent les rues et les allées des morts et qui les leur apportent. Ça leur rend la vie plus facile d'avoir un essaim de la Ruche qui ramasse les cadavres à leur place. Tous les jours, il y a beaucoup de morts dans la Ruche."~ */
  IF ~~ THEN REPLY #1701 /* ~"Qu'est-ce qu'on peut faire d'autre à la Ruche ?"~ */ GOTO 11
  IF ~~ THEN REPLY #1700 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7148 /* ~"Je vois. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 3.5 5.5 7.3
  SAY #1702 /* ~"Ce nom ne me dit rien, matois. Qui est-ce ?"~ */
  IF ~~ THEN REPLY #1703 /* ~"Je crois que c'est un Récupérateur."~ */ GOTO 34
  IF ~~ THEN REPLY #1705 /* ~"C'est ce que j'essaie de savoir. Écoute, j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1669 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1707 /* ~Il réfléchit. "Alors il doit avoir sa guitoune dans le Square du Chiffonnier. Vas-y faire un tour… de jour, bien sûr. Ce n'est pas un lieu très fréquentable le soir."~ */
  IF ~~ THEN REPLY #1708 /* ~"Où se trouve le Square du Chiffonnier ?"~ */ GOTO 35
  IF ~~ THEN REPLY #1709 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1710 /* ~"Merci du conseil. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1711 /* ~"C'est à quelques pâtés d'maisons d'ici - tu vas l'plus à l'ouest possible de la Morgue et tu peux pas l'louper. Mais fais gaffe par là, matois… là-bas, les Récupérateurs attendent pas toujours qu'un corps soit mort pour le ramasser, pigé ?"~ */
  IF ~~ THEN REPLY #1704 /* ~"J'ai compris, merci. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #1706 /* ~"Compris. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 10.0
  SAY #1712 /* ~"C'est un repaire de bandits et de meurtriers, matois. Va pas là-bas, sinon ton prochain arrêt sera la Morgue. L'allée a été détruite. C'était une rue avant jusqu'à ce qu'un mage complètement azimuté décide d'y mettre le feu un soir. Le type s'est fait attrapé, ils l'ont brûlé en retour, et l'ont exposé au Bar du Cadavre fumant. Ça se passe comme ça à la Ruche."~ */
  IF ~~ THEN REPLY #2533 /* ~"Où se trouve cette Allée ?"~ */ GOTO 42
  IF ~  False()
~ THEN REPLY #2529 /* ~"Où se trouve cette Allée ?"~ */ GOTO 42
  IF ~~ THEN REPLY #2530 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7149 /* ~"Peu importe. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 3.7 4.3 5.7 6.2 7.6 8.4 9.1 10.2 11.4 12.1 13.6 14.2 15.2 16.4 17.3 18.2 19.2 20.2 21.4 22.3 23.4 24.3 25.3 26.1 28.3 29.1 30.1 31.3 32.2 34.2 35.1 36.3 42.1
  SAY #1713 /* ~"Hé…" Il humecte les lèvres alors que tu te tournes, prêt à partir. "Matois, tu pourrais peut-être…" Il t'observe un instant. "… donner quelques pièces au pauv' bougre qui t'a aidé. Peu de gens par ici mettent la main à la poche… Juste assez pour arroser cette bouche qui a tant parlé, hein ?"~ */
  IF ~~ THEN REPLY #1714 /* ~"Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_5","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #1715 /* ~"Je vais t'épargner la vie. Qu'est-ce que tu en dis ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_2","GLOBALGood",-2)
~ GOTO 40
  IF ~  PartyGoldGT(0)
~ THEN REPLY #1716 /* ~"D'accord." Donne-lui une pièce de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 41
  IF ~  PartyGoldGT(4)
~ THEN REPLY #1717 /* ~Donne cinq pièces de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",2)
TakePartyGold(5)
~ GOTO 41
  IF ~  PartyGoldGT(9)
~ THEN REPLY #1718 /* ~Donne dix pièces de cuivre.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",3)
TakePartyGold(10)
~ GOTO 41
  IF ~  PartyGold(0)
~ THEN REPLY #2534 /* ~"Excuse-moi. Je n'ai pas d'argent à dépenser."~ */ GOTO 38
  IF ~  PartyGoldGT(0)
~ THEN REPLY #2535 /* ~Mensonge : "Excuse-moi, je n'ai pas d'argent à dépenser."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_3","GLOBALGood",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.5 37.6
  SAY #1719 /* ~Il a l'air déçu. "Oh, ben, oui… alors, salut, matois…" Il part en grommelant.~ */
  IF ~~ THEN REPLY #1723 /* ~"*Qu'est-ce* que tu as dit ?"~ */ GOTO 39
  IF ~~ THEN REPLY #1721 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #1722 /* ~L'homme a l'air ébahi ; il lève les mains. "Non, non, rien, matois ! J'observais le temps, c'est tout ! Rien à voir avec toi !" Il a l'air prêt à courir.~ */
  IF ~~ THEN REPLY #1724 /* ~Attaque-le.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1725 /* ~Laisse-le courir.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #1726 /* ~"Hé… ça m'aurait bien arrangé, matois." Il sourit, mal à l'aise. "Salut, alors." Il part précipitamment.~ */
  IF ~~ THEN REPLY #1727 /* ~Attaque-le.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1728 /* ~Laisse-le courir.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2 37.3 37.4
  SAY #1729 /* ~Il regarde autour pour vérifier que personne n'a vu ce trafic, puis cache le jonc dans les plis de son habit. "Merci bien, matois. Que l'ombre de la Dame t'épargne."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #1730 /* ~"Attends une minute… La Dame ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",0)
~ GOTO 43
  IF ~~ THEN REPLY #7150 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1
  SAY #7127 /* ~"C'est juste au sud-ouest de la Morgue, et juste au sud de la Poussière accumulée, le bar des Hommes-Poussière."~ */
  IF ~~ THEN REPLY #7151 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #7152 /* ~"Merci. Au revoir."~ */ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #7128 /* ~"La maîtresse de Sigil ? Tu n'as jamais *entendu* parler d'elle ? Tu es soit un bienheureux soit un béjau… euh, tu sais peu de choses sur Sigil." Il rit doucement. "Les paroles de la Dame font la loi ici à Sigil." Il réfléchit un instant. "Mais elle ne parle pas beaucoup. En fait, elle est aussi silencieuse qu'une morte."~ */
  IF ~~ THEN REPLY #7153 /* ~"'Les paroles de la Dame font loi' ?"~ */ GOTO 44
  IF ~~ THEN REPLY #7154 /* ~"Qu'est-ce que tu peux me dire d'autre sur cette Dame ?"~ */ GOTO 44
  IF ~~ THEN REPLY #7155 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #7129 /* ~Il te regarde avec prudence. "Je ne veux pas trop parler d'elle, matois… tu ne veux pas rencontrer son ombre, ni lui chanter des louanges, d'accord ? Bon, n'en parlons plus. Branler son râtelier au sujet de la Dame, c'est pas bon, pas bon du tout."~ */
  IF ~~ THEN REPLY #7156 /* ~"Alors, au revoir."~ */ EXIT
END
