// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBYRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBYRON~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34629 /* ~Tu aperçois un homme bien vêtu, entre deux âges. Il semble observer la foule d'un œil averti. Il remarque ton approche et te jauge d'un coup d'œil.~ */
  IF ~~ THEN REPLY #34661 /* ~"Bonjour."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #34662 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34630 /* ~Il te sourit et te fait un imperceptible signe de tête. "Je suis Byron Tourloupe, usurier. Comment puis-je t'aider ?"~ */
  IF ~~ THEN REPLY #34663 /* ~"Usurier ?"~ */ GOTO 2
  IF ~~ THEN REPLY #34664 /* ~"J'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34665 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34631 /* ~Il te fait à nouveau un signe de tête. "Oui, je pourvois aux besoins des marchands. Veux-tu démarrer une affaire ? En renflouer une qui bat de l'aile ? Ou agrandir ta boutique ? Dans chacun de ces cas, viens m'voir pour obtenir des fonds." Il te dévisage. "Je doute que tu sois un marchand, alors que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #34666 /* ~"Je suis un marchand."~ */ GOTO 3
  IF ~~ THEN REPLY #34667 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34668 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.1
  SAY #34632 /* ~Il sourit et détourne le regard pendant un instant. "Un marchand de mort, peut-être, mais pas le genre avec lequel je fais affaire." Il fronce les sourcils. "Puisque tu continues à monopoliser mon temps, viens-en au but de cette visite."~ */
  IF ~~ THEN REPLY #34669 /* ~"Tu peux me parler de tes affaires ?"~ */ GOTO 4
  IF ~~ THEN REPLY #68104 /* ~"J'aurais quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #68105 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #34633 /* ~Il fronce les sourcils et secoue la tête. "Non, je ne vois pas de raison pour que…" Il te dévisage. "Tu n'es visiblement pas du genre avec lequel je traite. Je crois que tu devrais partir." Il détourne le regard.~ */
  IF ~~ THEN REPLY #34672 /* ~"J'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34673 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 6.2 7.2 8.1 9.1 10.4 11.1 12.0 13.1 15.0 16.1 17.2 30.1 31.1
  SAY #34634 /* ~Il soupire. "Très bien, que ce soit rapide."~ */
  IF ~~ THEN REPLY #34674 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 6
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #34675 /* ~"Je veux te parler de Trist."~ */ GOTO 16
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34676 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 24
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34677 /* ~"J'ai perdu un crâne… Tu ne connais pas quelqu'un que ça pourrait intéresser ?"~ */ GOTO 28
  IF ~~ THEN REPLY #34678 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #34635 /* ~"Si tu veux parler du quartier en général, on l'appelle le Bas Quartier. Si tu veux parler de cet endroit en particulier, on l'appelle le marché en plein air."~ */
  IF ~~ THEN REPLY #34679 /* ~"Parle-moi du Bas Quartier."~ */ GOTO 7
  IF ~~ THEN REPLY #34680 /* ~"Parle-moi du marché en plein air."~ */ GOTO 12
  IF ~~ THEN REPLY #34681 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34682 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from: 6.0
  SAY #34636 /* ~Il a l'air de s'ennuyer. "C'est le domaine des gens ordinaires." Il fait un geste pour montrer les alentours. "Regarde autour de toi et tu verras tout ce qu'il y a à voir… Rien. Rien d'intéressant."~ */
  IF ~~ THEN REPLY #34683 /* ~"Alors, qu'est-ce que tu fais ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #34684 /* ~"Parle-moi du marché en plein air."~ */ GOTO 12
  IF ~~ THEN REPLY #34685 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34686 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34637 /* ~Il sourit. "Ces bougres sans cervelle excellent dans l'art de dépenser leur argent. Ça leur donne le sentiment d'accomplir quelque chose de concret dans leurs vies insignifiantes." Il s'interrompt et regarde aux alentours avec dédain.~ */
  IF ~~ THEN REPLY #34687 /* ~"Continue."~ */ GOTO 9
  IF ~~ THEN REPLY #34688 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34689 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34638 /* ~Il hausse les épaules. "Partout où il y a de l'argent, tu trouveras aussi des marchands et des voleurs. J'aide à fournir aux marchands ce dont ils ont besoin pour les soulager…" Il indique les alentours. "… de leur argent durement gagné." Il te sourit.~ */
  IF ~~ THEN REPLY #34690 /* ~"Tu as parlé de voleurs. Qui est-ce qui les *fournit* ?"~ */ GOTO 10
  IF ~~ THEN REPLY #34691 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #34692 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #34639 /* ~"Pas moi…" Il te jette un regard calculateur et sourit. "Pourquoi tu me demandes ça ?"~ */
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34693 /* ~"Simple curiosité…"~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Il est possible de trouver un voleur du nom de Lenny quelque part au sud-est du marché. Je pourrai peut-être en savoir plus grâce à lui.~ */ GOTO 11
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34694 /* ~"Je voudrais m'entraîner…"~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Il est possible de trouver un voleur du nom de Lenny quelque part au sud-est du marché. Je pourrai peut-être en savoir plus grâce à lui.~ */ GOTO 31
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34695 /* ~"Sans raison, j'ai d'autres questions…"~ */ GOTO 11
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67290 /* ~"J'aurais besoin d'entraînement…"~ */ GOTO 31
  IF ~~ THEN REPLY #67291 /* ~"Pas de raison, non. J'ai d'autres questions…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.2
  SAY #34640 /* ~Il rit. "Une telle curiosité peut être dangereuse… voire fatale, si l'on n'y fait pas attention." Il s'interrompt pour réfléchir à ses propos suivants, tout en t'examinant avec attention. "Tu devrais parler à Lenny. Il est d'habitude au sud-est du marché." Il s'interrompt un instant. "Dis-lui que je t'envoie."~ */
  IF ~~ THEN REPLY #34697 /* ~"Parle-moi du marché en plein air."~ */ GOTO 12
  IF ~~ THEN REPLY #34698 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #35738 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 11.0 31.0
  SAY #34641 /* ~Il indique le bâtiment derrière lui. "Un excellent marché qui subvient à presque tout besoin." Il s'arrête pour réfléchir un instant avant de continuer. "Rien d'exotique n'est disponible ; ces idiots ne peuvent pas se permettre de telles choses, mais c'est quand même un bon marché."~ */
  IF ~~ THEN REPLY #35739 /* ~"J'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #35740 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #34642 /* ~Il hausse les épaules. "Je ne suis pas un guide. Si tu veux en savoir plus sur Sigil, le mieux, c'est de l'explorer. C'est ce que je te conseille. Je dois quand même t'avertir que si tu fouilles de trop près, tu mourras."~ */
  IF ~~ THEN REPLY #35741 /* ~"Oh ? Pourquoi ça ?"~ */ GOTO 14
  IF ~~ THEN REPLY #35742 /* ~"J'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #35743 /* ~"Je vois. Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34643 /* ~Il réfléchit pendant un instant à ce qu'il va te dire. "Sigil cache de nombreux secrets, bons et mauvais. Si tu en découvres trop de mauvais, ta vie sera en jeu."~ */
  IF ~~ THEN REPLY #35744 /* ~"Quel genre de secrets ?"~ */ GOTO 15
  IF ~~ THEN REPLY #35745 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #35746 /* ~"Je vois. Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34644 /* ~Il te regarde d'un air surpris, puis éclate de rire. "Ce ne seraient pas des secrets si je t'en parlais, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #35747 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #35748 /* ~"Je suppose que non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1 30.2
  SAY #34645 /* ~"Ah, Trist…" Il fronce les sourcils et détourne le regard. Après un moment, il te regarde et hausse les sourcils. "Qu'est-ce qu'elle a ?"~ */
  IF ~~ THEN REPLY #35749 /* ~"J'essaie de retrouver pour elle des documents qui ont disparu."~ */ GOTO 17
  IF ~~ THEN REPLY #35750 /* ~"Peu importe, j'ai d'autres questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #35751 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #34646 /* ~Il soupire et secoue la tête. "Il n'y a pas de documents *disparus*. C'était une ruse de Trist, pour jeter le doute sur sa dette. Cette affaire a fait l'objet d'une enquête minutieuse de la part des Rectifieurs, et ils n'ont trouvé aucune trace de ces documents."~ */
  IF ~~ THEN REPLY #35752 /* ~"Les Rectifieurs ?"~ */ GOTO 18
  IF ~~ THEN REPLY #35753 /* ~"Quelque chose aurait pu leur échapper."~ */ GOTO 19
  IF ~~ THEN REPLY #35754 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #35755 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34647 /* ~"Oui, une faction de fanatiques qui recherchent la *vérité* dans les enquêtes criminelles et qui veillent au respect de la justice. Ils sont souvent utilisés comme enquêteurs par les tribunaux de Sigil. Ils sont assez méticuleux, et n'ont rien trouvé du tout…" Il te regarde fixement.~ */
  IF ~~ THEN REPLY #35756 /* ~"Quelque chose aurait pu leur échapper."~ */ GOTO 19
  IF ~~ THEN REPLY #35757 /* ~"Je vois. J'ai d'autres questions…"~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #34648 /* ~"C'est une possibilité, mais peu probable. Tu n'es visiblement pas habitué aux Rectifieurs et à leurs méthodes, pour porter un tel jugement. S'ils n'ont pas pu trouver ce document, c'est qu'il n'existe pas." Il te jette un regard plein de colère.~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Quelqu'un aurait pu voler et détruire le document. Comme ça, l'emprunt aurait été payé deux fois…"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Je crois que Byron Tourloupe a volé des documents à une femme du nom de Trist. Sans ces documents, elle ne peut pas prouver qu'elle a remboursé un prêt et elle va être vendue en tant qu'esclave en remboursement de la dette.~ */ GOTO 20
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Quelqu'un a peut-être volé le document… et l'a même peut-être détruit."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Je crois que Byron Tourloupe a volé des documents à une femme du nom de Trist. Sans ces documents, elle ne peut pas prouver qu'elle a remboursé un prêt et elle va être vendue en tant qu'esclave en remboursement de la dette.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Quelqu'un aurait pu voler et détruire le document. Comme ça, l'emprunt aurait été payé deux fois…"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Je crois que Byron Tourloupe a volé des documents à une femme du nom de Trist. Sans ces documents, elle ne peut pas prouver qu'elle a remboursé un prêt et elle va être vendue en tant qu'esclave en remboursement de la dette.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Quelqu'un a peut-être volé le document… et l'a même peut-être détruit."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Je crois que Byron Tourloupe a volé des documents à une femme du nom de Trist. Sans ces documents, elle ne peut pas prouver qu'elle a remboursé un prêt et elle va être vendue en tant qu'esclave en remboursement de la dette.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67292 /* ~"Il est possible que quelqu'un ai volé et détruit le document. De cette manière, l'emprunt devrait être remboursé deux fois…"~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67293 /* ~"Il se pourrait que quelqu'un ait volé ou détruit le document."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1 19.2 19.3 19.4 19.5
  SAY #34649 /* ~L'espace d'un instant, il semble sur le point de se mettre en colère, puis un sourire réjoui éclaire son visage. "Quelle pensée terrible… quel dommage qu'il n'y ait aucune preuve de telles activités…" Il continue à te sourire.~ */
  IF ~~ THEN REPLY #35763 /* ~"Oui… c'est dommage. Alors, dis-moi, pourquoi est-ce que Trist a été vendue comme esclave ? Elle ne pouvait pas te rembourser sous la forme d'un emprunt ?"~ */ GOTO 21
  IF ~~ THEN REPLY #35764 /* ~"Et bien, s'il existe une preuve, je la trouverai."~ */ JOURNAL #35767 /* ~J'ai dit à Byron Tourloupe que j'avais l'intention de retrouver les documents de Trist.~ */ GOTO 22
  IF ~~ THEN REPLY #35765 /* ~"J'ai d'autres questions…~ */ GOTO 23
  IF ~~ THEN REPLY #35766 /* ~"Bon, j'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34650 /* ~"Oui, elle le pourrait, et je lui ai fait cette offre." Il te regarde d'un air sévère. "Mais elle l'a déclinée. Je ne donne pas de secondes chances. Personne ne décline mes offres sans en subir les conséquences. Personne…"~ */
  IF ~~ THEN REPLY #35768 /* ~"J'ai d'autres questions…"~ */ GOTO 23
  IF ~~ THEN REPLY #35769 /* ~"Je vois. Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #34651 /* ~Il te rit au nez. "Alors je te souhaite bonne chance. Si les Rectifieurs n'ont pas pu aider la pauvre Trist, je ne crois pas qu'il y ait une chance dans les Neuf Enfers pour que tu le puisses. Maintenant va caguer, enfumé." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #35770 /* ~Pars.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0 30.0
  SAY #34652 /* ~"Non, je crois que je t'ai assez vu pour le restant de mes jours. Je ne répondrai à aucune de tes questions. Maintenant va caguer, enfumé." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #35771 /* ~Pars.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.2
  SAY #34653 /* ~Il te jette un regard interrogateur. "Vraiment ? Pourquoi, au nom des Neuf Enfers, voudrais-tu le trouver ?"~ */
  IF ~~ THEN REPLY #35772 /* ~"J'ai mes raisons."~ */ GOTO 25
  IF ~~ THEN REPLY #35773 /* ~"Il m'a volé un crâne."~ */ GOTO 26
  IF ~~ THEN REPLY #35774 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0 27.0 29.0
  SAY #34654 /* ~Il s'interrompt un instant. "J'ai mes raisons, de bonnes raisons, crois-moi, de n'envoyer personne vers Lothar. Maintenant va caguer, bougre." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #35775 /* ~Pars.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #34655 /* ~"Et alors ? Qu'est-ce que tu comptes faire ? Aller le voir et le réclamer ?" Il te regarde des pieds à la tête. "Je dois admettre que tu parais capable de te défendre dans un combat, mais contre Lothar ?" Il ricane. "Ton crâne décorera ses murs."~ */
  IF ~~ THEN REPLY #35776 /* ~"Il faut quand même que je le trouve."~ */ GOTO 25
  IF ~~ THEN REPLY #35777 /* ~"Cet homme est donc si coriace ?"~ */ GOTO 27
  IF ~~ THEN REPLY #35778 /* ~"Je vois. Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #34656 /* ~Il se tord de rire et te jette un regard incrédule. "Lothar est au-dessus des lois, bige. Il est aussi puissant, aussi coriace que ça…"~ */
  IF ~~ THEN REPLY #35779 /* ~"Il faut quand même que je le trouve."~ */ GOTO 25
  IF ~~ THEN REPLY #35780 /* ~"Je vois. Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #34657 /* ~Il secoue la tête. "Vraiment…" Il soupire et détourne le regard pendant un instant. "Je peux t'assurer que ton crâne est irrécupérable. Oublie ça, et trouve autre chose."~ */
  IF ~~ THEN REPLY #35781 /* ~"Pourquoi ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY #35782 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34658 /* ~"Parce qu'il est probable que c'est Lothar, Maître des Os, qui détient ton crâne. Si c'est en effet le cas, alors c'est perdu." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #35783 /* ~"Où est-ce que je peux trouver ce Lothar ?"~ */ GOTO 25
  IF ~~ THEN REPLY #35784 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 30 // from:
  SAY #34659 /* ~Tu aperçois Byron Tourloupe, l'usurier. "De retour ?"~ */
  IF ~  Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35785 /* ~"J'ai quelques questions…"~ */ GOTO 23
  IF ~  !Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35786 /* ~"J'ai quelques questions…"~ */ GOTO 5
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35787 /* ~"Je veux te parler de Trist."~ */ GOTO 16
  IF ~~ THEN REPLY #35788 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 10.1 10.3
  SAY #34660 /* ~Il se met à rire et regarde aux alentours. "Vraiment ? Eh bien, ce n'est pas vraiment le genre de chose que tu devrais admettre devant n'importe qui." Il t'observe et réfléchit. "Comme je l'ai dit, je n'ai aucun rapport avec les voleurs… Tu devrais peut-être en parler à Lenny. On le trouve d'habitude au sud-est du marché." Il s'interrompt un instant. "Dis-lui que je t'envoie."~ */
  IF ~~ THEN REPLY #35789 /* ~"Parle-moi du marché en plein air."~ */ GOTO 12
  IF ~~ THEN REPLY #35790 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #35791 /* ~"Merci, au revoir."~ */ EXIT
END
