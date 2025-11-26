// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMODRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMODRON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #2980 /* ~Tu vois un cube à deux bras, deux jambes et deux petites ailes sur les côtés. La face avant du cube s'orne d'un visage capable d'expression. Alors que tu t'approches, la créature tourne les yeux vers toi.~ */
  IF ~~ THEN REPLY #2981 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #44710 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44711 /* ~"Bonjour." La créature parle d'une voix monotone et neutre.~ */
  IF ~~ THEN REPLY #44712 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44713 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 6.1 7.2 8.1 9.1 10.1 11.1 12.0 13.1 14.1
  SAY #44714 /* ~La créature continue à te regarder sans afficher la moindre expression. "Pose ta question."~ */
  IF ~~ THEN REPLY #44715 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #44716 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 7
  IF ~~ THEN REPLY #44717 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #44718 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #44719 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44720 /* ~"Nous sommes des modrones."~ */
  IF ~~ THEN REPLY #44721 /* ~"Tu t'appelles Modrone ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44722 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44723 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44724 /* ~"Nous sommes des modrones. Nous n'avons pas de nom. Nous sommes des modrones. Tout ce que tu vois ici est modrone. Nous ne sommes qu'un."~ */
  IF ~~ THEN REPLY #44725 /* ~"Très bien. Vous êtes tous des modrones, mais quel est le nom de *ce* modrone ? Celui à qui je parle."~ */ GOTO 5
  IF ~~ THEN REPLY #44726 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44727 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #44728 /* ~Le modrone commence à émettre des bruits sporadiques semblables à des cognements. Son visage prend une expression de douleur alors qu'il continue à te fixer. "Nous… Je…" Il détourne le regard et les cognements s'estompent. "Nous sommes des modrones. Nous n'avons pas d'autre identité que celle de l'ensemble modrone. Nous n'avons pas de nom."~ */
  IF ~~ THEN REPLY #44729 /* ~"Alors, comment est-ce qu'on différencie un modrone d'un autre ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44730 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44731 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44732 /* ~Il y a une pause alors que le modrone réfléchit à ta question. "Nous savons. Nous sommes des modrones. Nous faisons partie intégrante de l'ensemble. Tout comme tu admets que la main est partie intégrante du bras, nous admettons que chacun est partie intégrante de l'ensemble."~ */
  IF ~~ THEN REPLY #44733 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44734 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44735 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #44736 /* ~"Nous sommes des modrones, nous sommes des tétradrones."~ */
  IF ~~ THEN REPLY #44737 /* ~"C'est quoi, un modrone ?"~ */ GOTO 8
  IF ~~ THEN REPLY #44738 /* ~"C'est quoi, un tétradrone ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44739 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44740 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #44741 /* ~"Nous sommes des modrones. C'est ainsi que s'identifie notre race."~ */
  IF ~~ THEN REPLY #44742 /* ~"Alors, c'est quoi, un tétradrone ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44743 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44744 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #44745 /* ~"Dans notre race, nous sommes identifiés sous le type tétradrone."~ */
  IF ~~ THEN REPLY #44746 /* ~"Alors, c'est quoi, un modrone ?"~ */ GOTO 8
  IF ~~ THEN REPLY #44747 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44748 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #44749 /* ~"Construction de donjon Rubikon."~ */
  IF ~~ THEN REPLY #44750 /* ~"C'est quoi, exactement ?"~ */ GOTO 11
  IF ~~ THEN REPLY #44751 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44752 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 14.0
  SAY #44753 /* ~Le modrone te regarde en fronçant les sourcils, puis jette un coup d'œil à la pièce. "Nous devrions savoir… Nous sommes des modrones. Nous faisons partie intégrante de l'ensemble… Nous… Informations non disponibles. Adresse ta demande à l'ingénieur."~ */
  IF ~~ THEN REPLY #44754 /* ~"Où est-ce que je peux trouver l'ingénieur ?"~ */ GOTO 12
  IF ~~ THEN REPLY #44755 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44756 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44757 /* ~Le modrone examine ce qui l'entoure. "Nous ne savons pas. Informations non disponibles… Nous sommes perplexes…"~ */
  IF ~~ THEN REPLY #44758 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44759 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #44760 /* ~"En attente d'instructions."~ */
  IF ~~ THEN REPLY #44761 /* ~"Quelles instructions ?"~ */ GOTO 14
  IF ~~ THEN REPLY #44762 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44763 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44764 /* ~Le modrone te lance un regard vide. "Les instructions concernant les tâches à exécuter."~ */
  IF ~~ THEN REPLY #44765 /* ~"Quelles tâches ? Qu'est-ce que vous faites, ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #44766 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44767 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #44768 /* ~Tu vois un cube à deux bras, deux jambes et deux petites ailes sur les côtés. La face avant du cube s'orne d'un visage capable d'expression. Alors que tu t'approches, la créature tourne les yeux vers toi.~ */
  IF ~~ THEN REPLY #44769 /* ~"Bonjour."~ */ GOTO 16
  IF ~~ THEN REPLY #44770 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #44771 /* ~"Bonjour." La créature parle d'une voix monotone et neutre.~ */
  IF ~~ THEN REPLY #44772 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44773 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.1 19.1 20.0 21.1 22.0 23.2 24.1 25.1 26.0 27.1 28.0
  SAY #44774 /* ~La créature continue à te regarder sans afficher la moindre expression. "Pose ta question."~ */
  IF ~~ THEN REPLY #44775 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #44776 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 21
  IF ~  Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44777 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 23
  IF ~  !Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44778 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 26
  IF ~~ THEN REPLY #44779 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 27
  IF ~~ THEN REPLY #44780 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44781 /* ~La créature te fixe un moment avant de répondre. "Incertain… La confusion existe…"~ */
  IF ~~ THEN REPLY #44782 /* ~"Qu'est-ce que tu veux dire ? Tu ne sais pas qui tu es ?"~ */ GOTO 19
  IF ~~ THEN REPLY #44783 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44784 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #44785 /* ~"Non… L'incertitude existe… parfois."~ */
  IF ~~ THEN REPLY #44786 /* ~"Je ne me souviens pas qui je suis, moi non plus."~ */ GOTO 20
  IF ~~ THEN REPLY #44787 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44788 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44789 /* ~"Je compatis…" Il tend le bras et te touche doucement l'épaule. Au bout d'un moment, il enlève sa main.~ */
  IF ~~ THEN REPLY #44790 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44791 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY #44792 /* ~"Notre race est connue sous le nom de modrone. Nous sommes du plan de la loi, Méchanus."~ */
  IF ~~ THEN REPLY #44793 /* ~"Qu'est-ce que tu peux me dire sur Méchanus ?"~ */ GOTO 22
  IF ~~ THEN REPLY #44794 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44795 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44796 /* ~"Un lieu de lois… beaucoup de lois. Très structuré…" Sa voix s'évanouit pour laisser place au silence.~ */
  IF ~~ THEN REPLY #44797 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44798 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #44799 /* ~Il jette un coup d'œil autour de lui. "Un simulateur de donjons. Il ne fonctionne pas. Il est cassé." Il soupire.~ */
  IF ~~ THEN REPLY #44800 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 24
  IF ~~ THEN REPLY #44801 /* ~"C'est quoi un simulateur de donjons ?"~ */ GOTO 25
  IF ~~ THEN REPLY #44802 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44803 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #44804 /* ~"Incertain. Il a cessé de fonctionner."~ */
  IF ~~ THEN REPLY #44805 /* ~"C'est quoi un simulateur de donjons ?"~ */ GOTO 25
  IF ~~ THEN REPLY #44806 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44807 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #44808 /* ~Le modrone te lance un regard furieux, puis soupire. "Il simule des donjons. À quoi pourrait servir un simulateur de donjons d'après toi ?"~ */
  IF ~~ THEN REPLY #44809 /* ~"Comment il est tombé en panne ?"~ */ GOTO 24
  IF ~~ THEN REPLY #44810 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44811 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #44812 /* ~Il te regarde en fronçant les sourcils. "Tu devrais le savoir, c'est toi qui l'as réparé."~ */
  IF ~~ THEN REPLY #44813 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44814 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY #44815 /* ~Il marque une pause. "La contemplation… La réflexion… Répondre à tes questions…" Il te regarde en fronçant les sourcils.~ */
  IF ~~ THEN REPLY #44816 /* ~"À quoi tu penses ?"~ */ GOTO 28
  IF ~~ THEN REPLY #44817 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44818 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44819 /* ~"La vie est remplie de mystères…" Il retombe dans le silence.~ */
  IF ~~ THEN REPLY #44820 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #44821 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 29 // from:
  SAY #44822 /* ~Tu vois un cube à deux bras, deux jambes et deux petites ailes sur les côtés. La face avant du cube s'orne d'un visage capable d'expression. Alors que tu t'approches, la créature tourne les yeux vers toi.~ */
  IF ~~ THEN REPLY #44823 /* ~"Bonjour."~ */ GOTO 30
  IF ~~ THEN REPLY #44824 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #44825 /* ~Il te fixe d'un regard vide.~ */
  IF ~~ THEN REPLY #44826 /* ~"J'ai des questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #44827 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #44828 /* ~Son regard ne chancelle pas une seconde alors qu'il continue à te fixer.~ */
  IF ~~ THEN REPLY #44829 /* ~"Tu peux répondre à quelques questions ?"~ */ GOTO 32
  IF ~~ THEN REPLY #44830 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #44831 /* ~Ses yeux impassibles clignent tout en continuant à te fixer.~ */
  IF ~~ THEN REPLY #44832 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END
