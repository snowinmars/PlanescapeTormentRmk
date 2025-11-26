// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUSTFER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUSTFER~

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
GlobalLT("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #47616 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~~ THEN REPLY #47617 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47618 /* ~"Où est passé ton bon caractère ?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #47619 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #47620 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ EXIT
END

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
Global("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #47621 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~~ THEN REPLY #47622 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47623 /* ~"Où est passé ton bon caractère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47624 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47625 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #47626 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47627 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47628 /* ~"Où est passé ton bon caractère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47629 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47630 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #47631 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47632 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47633 /* ~"Où est passé ton bon caractère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47634 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47635 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #47636 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47637 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47638 /* ~"Où est passé ton bon caractère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47639 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47640 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #47641 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47642 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47643 /* ~"Où est passé ton bon caractère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47644 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47645 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 6 // from:
  SAY #47646 /* ~"Quoi ? Qu'est-ce que tu veux ? Quand est-ce que le sang va commencer à couler ?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47648 /* ~"Qu'est-ce que c'est que cette attitude ?"~ */ GOTO 9
  IF ~~ THEN REPLY #47649 /* ~"Où est passé ton bon caractère ?"~ */ GOTO 7
  IF ~~ THEN REPLY #47650 /* ~"Bientôt. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47651 /* ~"Sans tarder. Retourne te coucher."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.1 4.1 5.1 6.1
  SAY #47652 /* ~"Avant, c'était avant. Maintenant, c'est maintenant. J'en ai assez de tout ce charabia et de tous ces trucs gnangnans. Allons tuer quelque chose, eh ?"~ */
  IF ~~ THEN REPLY #47653 /* ~"Je voudrais savoir d'où vient ce changement de personnalité."~ */ GOTO 9
  IF ~~ THEN REPLY #47654 /* ~"Réponds d'abord à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47655 /* ~"Laisse tomber. On parlera plus tard."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 2.2 3.2 4.2 5.2 6.2 7.1 9.1 13.0 14.0 15.0 16.0 17.1 18.0 19.2 20.0 21.1 22.0 41.2
  SAY #47656 /* ~"À condition qu'on tue après avoir parlé."~ */
  IF ~~ THEN REPLY #47657 /* ~"Que t'est-il arrivé ?"~ */ GOTO 9
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47658 /* ~"Que peux-tu me dire sur Morte ?"~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47659 /* ~"Que peux-tu me dire sur Annah ?"~ */ GOTO 13
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47660 /* ~"Que peux-tu me dire sur Dakkon ?"~ */ GOTO 14
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47661 /* ~"Que peux-tu me dire sur Tombée-en-Disgrâce ?"~ */ GOTO 15
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47662 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 16
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47663 /* ~"Que peux-tu me dire sur Ignus ?"~ */ GOTO 16
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47664 /* ~"Que peux-tu me dire sur Nordom ?"~ */ GOTO 16
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47665 /* ~"Que peux-tu me dire sur toi ?"~ */ GOTO 17
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47666 /* ~"Que peux-tu me dire sur toi ?"~ */ GOTO 18
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47667 /* ~"Que peux-tu me dire sur toi ?"~ */ GOTO 19
  IF ~~ THEN REPLY #47668 /* ~"Laisse tomber. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0
  SAY #47669 /* ~"Disons que l'atmosphère est propice à la haine ; restons-en là, d'accord ? Je *déteste* les Plans Inférieurs et ils me détestent."~ */
  IF ~~ THEN REPLY #47670 /* ~"Pourquoi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #47671 /* ~"Alors, réponds à quelques questions."~ */ GOTO 8
  IF ~~ THEN REPLY #47672 /* ~"D'accord. On en reste là."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47673 /* ~"Parce qu'ils m'ont déjà corrompu une fois, et ça ne va pas recommencer, bige ! Maintenant, tais-toi et tuons !"~ */
  IF ~~ THEN REPLY #47674 /* ~"Réponds d'abord à quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #47675 /* ~"Assez parlé pour le moment."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #47676 /* ~L'arme tombe dans un bruit sourd.~ */
  IF ~~ THEN DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY #47677 /* ~"C'est un sale bige machiavélique et à ta place, je ne lui ferais pas confiance. Tu ferais bien de te *méfier* de ses conseils. Ce que je veux dire, c'est que tu ne devrais pas lui faire confiance. Je connais ce genre de types et je sais qu'ils n'hésitent pas à frapper par derrière."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 488
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY #47678 /* ~"Je ne sais rien d'elle. Du sang fiélon coule dans ses veines. Tu ne peux pas faire confiance aux fiélons. Débarrasse-toi d'elle le plus vite possible. En plus, ce n'est qu'une enfant. Tu peux trouver quelqu'un de beaucoup plus… expérimenté… si tu vois ce que je veux dire."~ */
  IF ~~ THEN REPLY #47679 /* ~"Merci du conseil. J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47680 /* ~"Merci."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY #47681 /* ~"Lui ? Austère, impassible, bourré de préjugés ? Presque aussi utile que des rapports sexuels avec un modrone. C'est tout ce que j'ai à dire là-dessus."~ */
  IF ~~ THEN REPLY #47682 /* ~"Merci du conseil. J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47683 /* ~"Merci."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY #47684 /* ~"Tu peux lui faire confiance, si tu veux. C'est toujours une bonne idée de faire confiance à un tanar'ri. Ce n'est pas parce qu'ils sont maléfiques de naissance qu'ils sont méchants. J'ironise. J'ai réussi à te faire marcher, hein ?"~ */
  IF ~~ THEN REPLY #47685 /* ~"Merci du conseil. J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47686 /* ~"Merci."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 8.6 8.7
  SAY #47687 /* ~"Ça me dépasse. Je l'avais jamais vu avant."~ */
  IF ~~ THEN REPLY #47688 /* ~"Merci du conseil. J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47689 /* ~"Merci."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.8
  SAY #47690 /* ~"Je suis Le Viguier. Dis 'Le' quand tu prononces mon nom. 'Le Viguier' et non 'Viguier'. J'ai été forgé sous les auspices d'Horus en Arcadie. J'ai l'impression de te connaître… On m'a donné ce surnom parce que je trouve toujours des excuses à tout. Et puis, après m'avoir utilisé, la plupart des gens réalisent qu'il y a toujours un moyen de se justifier."~ */
  IF ~~ THEN REPLY #47691 /* ~"Tu as l'impression de me connaître ? Comment ça ?"~ */ GOTO 20
  IF ~~ THEN REPLY #47692 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47693 /* ~"Bien. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.9
  SAY #47694 /* ~"Je suis Le Viguier… Tu sais, il y a quelque chose chez toi qui m'est familier et ça me rend dingue… quelque chose à propos des tanar'ris… Ahh, peu importe. Je suis ton meilleur ami ou ton pire cauchemar. Tout dépend dans quel sens tu vois les choses, bige. Je suis Le Viguier. LE Viguier. Ne l'oublie pas."~ */
  IF ~~ THEN REPLY #47695 /* ~"Tu ne vois toujours pas d'où tu me connais ? Bon, j'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47696 /* ~"Tu ne vois toujours pas d'où tu me connais, hein ? Alors, au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.10
  SAY #47697 /* ~"Je me souviens de toi, maintenant. Tu pensais que je t'appartenais autrefois. Je n'arrivais pas à te remettre à cause de tes cicatrices, mais je me souviens de ton visage maintenant. Tu sais quoi ? Quand tu as trouvé la mort en combattant ces vrocks, ils m'ont torturé. C'est de ta faute. Mais tu sais, il n'y a que du sang autour de toi. Et si je reste avec toi, je suis sûr de me faire mouiller."~ */
  IF ~~ THEN REPLY #47698 /* ~"C'est quoi, des vrocks ?"~ */ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ GOTO 21
  IF ~~ THEN REPLY #47699 /* ~"Ils t'ont torturé ? Comment ça ?"~ */ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ GOTO 22
  IF ~~ THEN REPLY #47700 /* ~"Laisse tomber. J'avais d'autres questions…"~ */ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ GOTO 8
  IF ~~ THEN REPLY #47701 /* ~"Laisse tomber."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #47702 /* ~"Je ne sais pas. Ça va me revenir. Si tu veux que ça me revienne, arrête de me harceler."~ */
  IF ~~ THEN REPLY #47703 /* ~"Bon. J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47704 /* ~"Bon. Continue à réfléchir et amuse-toi bien. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #47705 /* ~"C'est quoi, les vrocks ? Tu ne te souviens donc de rien ? Ce sont les vautours maléfiques des tanar'ris. Qu'est-ce que tu croyais ? Qu'après t'être fait transpercer le cœur, tu te souviendrais d'un détail aussi négligeable que celui-là ? On les a combattus, on les a tués, mais l'un d'entre eux a eu de la chance et a réussi à t'inscrire dans le livre des morts… Et puis, ils m'ont attrapé et ils m'ont torturé."~ */
  IF ~~ THEN REPLY #47706 /* ~"Ils t'ont torturé ? Comment ça ?"~ */ GOTO 22
  IF ~~ THEN REPLY #47707 /* ~"Bon. J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47708 /* ~"Dommage. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1 21.0
  SAY #47709 /* ~Sa voix semble presque désespérée tandis qu'il fait tout pour ne pas se souvenir. "Si tu savais. Ils sont machiavéliques. Comment ils ont pu me faire ça…" Il tremble. "C'est quelque chose qu'on préfère oublier. Mais il faut bien reconnaître qu'ils font preuve de beaucoup d'imagination en matière de tortures."~ */
  IF ~~ THEN REPLY #47710 /* ~"J'avais d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #47711 /* ~"Oui. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier_Lower_Planes","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #47712 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47713 /* ~"Qu'est-ce qui s'est passé ?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47714 /* ~"Qu'est-ce qui s'est passé ?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #47715 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 31
  IF ~~ THEN REPLY #47716 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",0)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 24 // from:
  SAY #47717 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47718 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47719 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 30
  IF ~~ THEN REPLY #47720 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47721 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #47722 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47723 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47724 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 30
  IF ~~ THEN REPLY #47725 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47726 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #47727 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47729 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47730 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 30
  IF ~~ THEN REPLY #47731 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47732 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #47728 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47733 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47734 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 30
  IF ~~ THEN REPLY #47735 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47736 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 28 // from:
  SAY #47737 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47738 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47739 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 30
  IF ~~ THEN REPLY #47740 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47741 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 29 // from:
  SAY #47742 /* ~Le Viguier a presque l'air gêné. "J'ai un peu perdu la tête sur ces Plans Inférieurs, chef. Pardon. Je vais faire en sorte que ça ne se reproduise plus."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47743 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47744 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 30
  IF ~~ THEN REPLY #47745 /* ~"Pas de problème. Réponds juste à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47746 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #47747 /* ~"Si je me souviens bien, j'appartenais à quelqu'un et on est allés dans les Abysses pour chercher quelque chose. Je ne sais plus quoi. On pensait qu'on était assez forts pour se défendre. On avait tort. Mon propriétaire s'est fait tuer et ils m'ont attrapé… et m'ont *torturé*. Ça me rend encore parfois méchant quand je suis exposé aux Plans Inférieurs."~ */
  IF ~~ THEN REPLY #47748 /* ~"Dommage. J'avais des questions à te poser…"~ */ GOTO 31
  IF ~~ THEN REPLY #47749 /* ~"Dommage. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 24.2 25.2 26.2 27.2 28.2 29.2 30.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.1 40.0 42.0 43.1 44.0 45.0 46.0
  SAY #47750 /* ~"Tout ce que tu voudras, chef."~ */
  IF ~  GlobalGT("Justifier_Lower_Planes","GLOBAL",0)
~ THEN REPLY #47751 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 33
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47752 /* ~"Que peux-tu me dire sur Morte ?"~ */ GOTO 34
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47753 /* ~"Que peux-tu me dire sur Annah ?"~ */ GOTO 35
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47754 /* ~"Que peux-tu me dire sur Dakkon ?"~ */ GOTO 36
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47755 /* ~"Que peux-tu me dire sur Tombée-en-Disgrâce ?"~ */ GOTO 37
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47756 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 38
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47757 /* ~"Que peux-tu me dire sur Ignus ?"~ */ GOTO 38
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47758 /* ~"Que peux-tu me dire sur Nordom ?"~ */ GOTO 38
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47759 /* ~"Que peux-tu me dire sur toi ?"~ */ GOTO 39
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47760 /* ~"Que peux-tu me dire sur toi ?"~ */ GOTO 40
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47761 /* ~"Que peux-tu me dire sur toi ?"~ */ GOTO 41
  IF ~~ THEN REPLY #47762 /* ~"Laisse tomber. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.0 24.0 25.0 26.0 27.0 28.0 29.0
  SAY #47763 /* ~"Si je me souviens bien, j'appartenais à quelqu'un et on est allés dans les Abysses pour chercher quelque chose. Je ne sais plus quoi. On pensait qu'on était assez forts pour se défendre. On avait tort. On s'est retrouvé face à une bande de vrocks - les vautours maléfiques des tanar'ris - et même si on en a tué pas mal, l'un d'entre eux a eu de la chance et t'a transpercé le cœur avec sa lance. Ils m'ont attrapé et m'ont… *torturé*. Je redeviens parfois méchant quand je suis confronté aux Plans Inférieurs."~ */
  IF ~~ THEN REPLY #47764 /* ~"C'est terrible. J'avais des questions à te poser…"~ */ GOTO 31
  IF ~~ THEN REPLY #47765 /* ~"C'est dommage. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY #47766 /* ~Il semble un peu gêné. "J'ai perdu le contrôle de la partie qui a été torturée par les tanar'ris quand je me suis perdu dans les Abysses. Mais j'ai repris le contrôle de moi-même. Désolé, chef."~ */
  IF ~~ THEN REPLY #47767 /* ~"Pas de problème. Réponds encore à quelques questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47768 /* ~"Pas de problème. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #47769 /* ~Tu as l'impression que l'Œil de la masse se déplace d'un côté à l'autre. Il chuchote : "J'ai un mauvais pressentiment sur lui, chef, mais je ne sais pas comment dire ça. Le crâne semble familier et il me rappelle des tas de mauvais souvenirs. Mais je ne peux pas l'expliquer parce que je ne m'en souviens pas…"~ */
  IF ~~ THEN REPLY #47770 /* ~"Peut-être plus tard. J'avais d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47771 /* ~"Peut-être plus tard. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.2
  SAY #47772 /* ~"Honnêtement, tu veux mon avis ? Eh bien, elle est un peu fougueuse… mais je crois qu'elle ressent quelque chose pour toi. Elle le cache, mais… Je crois que tu peux lui faire confiance tant que tu ne la trahis pas."~ */
  IF ~~ THEN REPLY #47773 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47774 /* ~"Merci. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.3
  SAY #47775 /* ~"Il a une bonne raison pour voyager avec toi, chef, et je ne suis pas certain que ce soit dans ton intérêt. Tu sais, ces githzeraïs - ils sont inséparables et lorsqu'ils s'associent avec d'autres personnes, c'est qu'il y a une raison. Je l'aurai à l'Œil pour toi."~ */
  IF ~~ THEN REPLY #47776 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47777 /* ~"Merci. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.4
  SAY #47778 /* ~La masse te chuchote frénétiquement quelque chose. "Chef ! Qu'est-ce que tu fais avec une tanar'ri ? Deux mots. Tanar'ri. Succube. Elle est maléfique. Son sang est l'essence du mal. On ne peut pas lui faire confiance. Elle a peut-être l'air gentille, mais ça ne veut rien dire. Elle peut te dire qu'elle a changé, mais ce n'est qu'un mensonge parmi tant d'autres. Elle et les siens tissent des toiles de tromperies. Toujours. C'est leur nature."~ */
  IF ~~ THEN REPLY #47779 /* ~"Merci de me donner ton avis. Réponds à d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47780 /* ~"Merci de me donner ton avis. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.5 31.6 31.7
  SAY #47781 /* ~"Eh bien… Eh bien, rien. Je ne connais pas cette personne, chef."~ */
  IF ~~ THEN REPLY #47782 /* ~"D'accord. Alors, réponds à quelques questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47783 /* ~"Très bien. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.8
  SAY #47784 /* ~"Je suis Le Viguier. On m'appelle comme ça parce que je trouve toujours des excuses à tout. Et puis, après m'avoir utilisé, la plupart des gens réalisent qu'il y a toujours un moyen de se justifier. J'ai été conçu dans une des forges sous les auspices du dieu Horus en personne, dans les plaines d'Héliopolis en Arcadie. Dis donc… J'ai l'impression de te connaître…"~ */
  IF ~~ THEN REPLY #47785 /* ~"Tu as l'impression de me connaître ? Comment ça ?"~ */ GOTO 42
  IF ~~ THEN REPLY #47786 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47787 /* ~"Bien. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.9
  SAY #47788 /* ~"Eh bien, que dire ? Je suis une arme de bonne qualité et légère et je suis très utile au combat. Tu sais, j'ai vraiment l'impression de te connaître et ça me rend dingue… Ça a un rapport avec les tanar'ris et… Ahh, peu importe. Je suis ton meilleur ami ou ton pire cauchemar. Ça dépend sous quel angle tu vois les choses." Il rit bruyamment de sa plaisanterie.~ */
  IF ~~ THEN REPLY #47789 /* ~"Tu ne vois toujours pas d'où tu me connais ? Bon, j'avais d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47790 /* ~"Tu ne vois toujours pas d'où tu me connais, hein ? Alors, au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 31.10
  SAY #47791 /* ~"Je sais qui tu es maintenant ! Je t'appartenais autrefois, il y a très longtemps. Ma mémoire est un peu vague sur cette époque, mais… ouais. C'est toi. Je n'arrivais pas à te remettre à cause de tes cicatrices. Tu sembles plus sinistre qu'avant. Tu as dû traverser des moments difficiles - j'étais à tes côtés pour te conseiller quand tu te réveillais après chaque mort, mais quand tu es mort dans les Abysses en combattant les vrocks, ils m'ont emmené et t'ont laissé pourrir. Je suis content de te revoir."~ */
  IF ~~ THEN REPLY #47792 /* ~"C'est quoi, des vrocks ?"~ */ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ GOTO 43
  IF ~  False()
~ THEN REPLY #47793 /* ~"Ils t'ont torturé ? Comment ça ?"~ */ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ GOTO 44
  IF ~~ THEN REPLY #47794 /* ~"Laisse tomber. J'avais d'autres questions…"~ */ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ GOTO 8
  IF ~~ THEN REPLY #47795 /* ~"Laisse tomber."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Je viens juste de m'apercevoir que le Viguier, masse d'armes douée de parole, m'appartenait autrefois. Elle ne se souvient guère de mon passé mais, apparemment, nous sommes allés chercher quelque chose dans les Abysses, et c'est là que j'ai trouvé la mort.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.0
  SAY #47797 /* ~"Désolé, mais je ne me souviens plus de rien… Donne-moi encore un peu de temps et je suis sûr que ça me reviendra."~ */
  IF ~~ THEN REPLY #47798 /* ~"Bon. J'avais d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47799 /* ~"Bon. Continue à réfléchir et amuse-toi bien. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #47800 /* ~"Ce sont les vautours démoniaques des tanar'ris. Tu t'es battu avec courage, mais ils étaient trop nombreux. Ils ont eu de la chance et ont franchi nos défenses. Ils t'ont arraché le cœur avec une lance barbelée et t'ont laissé te vider de ton sang. Et puis, ils m'ont pris et m'ont torturé… C'était horrible…"~ */
  IF ~~ THEN REPLY #47801 /* ~"Ils t'ont torturé ? Comment ça ?"~ */ GOTO 44
  IF ~~ THEN REPLY #47802 /* ~"J'avais d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47803 /* ~"Dommage. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.1 43.0
  SAY #47804 /* ~Sa voix semble presque désespérée tandis qu'il fait tout pour ne pas se souvenir. "Si tu savais. Ils sont machiavéliques. Comment ils ont pu me faire ça…" Il tremble. "C'est quelque chose qu'on préfère oublier. Mais il faut bien reconnaître qu'ils font preuve de beaucoup d'imagination en matière de tortures."~ */
  IF ~~ THEN REPLY #47805 /* ~"J'avais d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47806 /* ~"Oui. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #47808 /* ~Il y a un œil - un Œil, pour être plus précis - sculpté dans le métal lourd de cette masse. Il devient bleu lorsqu'il te parle en te transmettant des émotions et des pensées. "Bonjour. Tu dois être mon nouveau maître."~ */
  IF ~~ THEN REPLY #47809 /* ~"C'est exact. J'avais des questions à te poser…"~ */ GOTO 31
END

IF ~  GlobalGT("Justifier","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #47810 /* ~"Rebonjour. Qu'est-ce que tu attends de moi ?"~ */
  IF ~~ THEN REPLY #47811 /* ~"Je voudrais juste que tu répondes à quelques questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #47812 /* ~"Rien. Au revoir."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END
