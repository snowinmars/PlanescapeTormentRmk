// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELCIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELCIT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19719 /* ~Il ne reste plus de viande sur les os de ce vieux cadavre animé… seuls quelques haillons colorés, qui semblent plus tenir lieu de décoration que de vêtements.~ */
  IF ~~ THEN REPLY #19744 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19751 /* ~Laisse le squelette tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19720 /* ~"Et bienvenue à toi." La voix calme, lointaine de la chose sort en résonnant de son crâne, dans un nuage de poussière.~ */
  IF ~~ THEN REPLY #19753 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #19755 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #19721 /* ~"Je répondrai si je le peux." De la poussière tombe des articulations des mâchoires du squelette lorsqu'il parle. "Demande ce que tu voudras, j'ai tout le temps qu'il faut pour te parler."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19757 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 17
  IF ~~ THEN REPLY #19759 /* ~"Où suis-je ?"~ */ GOTO 3
  IF ~~ THEN REPLY #19760 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 14
  IF ~~ THEN REPLY #19761 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19763 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19765 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #19768 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.1
  SAY #19722 /* ~"Tu es dans ce que nous appelons les Nations Mortes… notre terre et demeure, sous la cité de Sigil. Ce n'est qu'une petite partie de notre civilisation, une ligne de démarcation… les Nations mortes s'étendent sur de nombreuses, nombreuses ligues dans l'obscurité."~ */
  IF ~~ THEN REPLY #19769 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19770 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3 5.3 6.0 7.1 8.3 10.1 11.2 12.1 13.0
  SAY #19723 /* ~"Cet endroit est la demeure des morts-vivants, régi par notre Roi Silencieux. Il y a des zombis ici, ainsi que des goules. Plus loin, dans les catacombes vers l'est, vivent les rats-crâne. Parfois, un des Vivants - un comme toi, ou Soego - s'aventure ici bas."~ */
  IF ~~ THEN REPLY #19771 /* ~"Qui est ce Roi Silencieux ?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19772 /* ~"Parle-moi des tiens."~ */ GOTO 6
  IF ~~ THEN REPLY #19773 /* ~"Parle-moi des autres morts-vivants."~ */ GOTO 9
  IF ~~ THEN REPLY #19774 /* ~"Parle-moi des rats-crâne."~ */ GOTO 11
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19775 /* ~"Parle-moi de Soego."~ */ GOTO 13
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19776 /* ~"Parle-moi de Soego."~ */ GOTO 12
  IF ~~ THEN REPLY #19777 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19778 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.6 6.1 7.2 8.4 9.2 10.2 11.3 12.2 13.1 14.1 15.1 16.1 17.3 18.2 20.0 21.5 22.2 23.2 24.2
  SAY #19724 /* ~Le squelette acquiesce lentement, les os de son cou craquant doucement. "Demande, je t'en prie."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19779 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 17
  IF ~~ THEN REPLY #19780 /* ~"Où suis-je ?"~ */ GOTO 3
  IF ~~ THEN REPLY #19781 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 14
  IF ~~ THEN REPLY #19782 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19783 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19784 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #19785 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #19725 /* ~Le squelette acquiesce. "Nous sommes les plus vieux des morts-vivants ici, les plus libres de chair. Nous faisons un effort pour servir de guides et de mentors aux autres, pour maintenir une communauté saine."~ */
  IF ~~ THEN REPLY #19786 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19787 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19788 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.0 23.0
  SAY #19726 /* ~"Forts, mais d'esprit et de corps lents, ils ont gardé davantage de leur humanité - de leurs émotions - que nous. Ils travaillent dans notre communauté comme ouvriers sous la direction de Salie Marie, la plus attentionnée et intelligente de tous."~ */
  IF ~~ THEN REPLY #19789 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #19790 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19791 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19792 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 11.1 24.0
  SAY #19727 /* ~"Les goules sont des créatures fortes, violentes et voraces conduites par leur effrayante matrone, Acaste. Ils servent de gardes à la communauté - les Nations Mortes -… mais sont un élément instable. La peur des autres morts-vivants et du Roi Silencieux, les tient sous contrôle. Sans notre grand seigneur pour les commander, nous… ainsi que nos protégés… pourrions un jour leur servir de proies."~ */
  IF ~~ THEN REPLY #19793 /* ~"Parle-moi d'Acaste."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #19794 /* ~"Qui est ce Roi Silencieux ?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19795 /* ~"Vos protégés ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19796 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19797 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19798 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #19728 /* ~"De qui veux-tu parler ?"~ */
  IF ~~ THEN REPLY #19799 /* ~"Des zombis."~ */ GOTO 7
  IF ~~ THEN REPLY #19800 /* ~"Des goules."~ */ GOTO 8
  IF ~~ THEN REPLY #19801 /* ~"Peu importe. J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #19802 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0 8.1 17.1 18.1 21.0 22.0
  SAY #19729 /* ~"Notre seigneur et maître. On l'appelle le Roi Silencieux parce qu'il ne parle qu'en cas de besoin absolu." Le squelette gesticule en parlant, ses vieilles articulations craquant et éclatant au fur et à mesure. "Interroge Hargrimm, notre grand prêtre, à son sujet. Il pourra t'en dire plus."~ */
  IF ~~ THEN REPLY #19803 /* ~"Parle-moi de Hargrimm."~ */ GOTO 22
  IF ~~ THEN REPLY #19804 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19805 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19806 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY #19730 /* ~"De la vermine, dont l'intelligence croît en fonction de la présence à proximité d'autres vermines de leur espèce. Une menace sérieuse. Une fois… ils ont fait une razzia sur nos protégés, en dérangeant les os des silencieux. Maintenant, ils restent dans les parties les plus à l'est des catacombes. Les goules en ont attrapé et mangé assez pour mettre un terme à leur pillage, ne serait-ce que temporairement."~ */
  IF ~~ THEN REPLY #19808 /* ~"Vos protégés ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19810 /* ~"Parle-moi des goules."~ */ GOTO 8
  IF ~~ THEN REPLY #19811 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19812 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19813 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.5
  SAY #19731 /* ~"C'était une sorte de missionnaire, un Homme-Poussière qui espérait nous persuader de nous rendre à la Vraie Mort. Maintenant, si j'ai bien compris, c'est un de nos protégés."~ */
  IF ~~ THEN REPLY #19814 /* ~"Vos protégés ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19815 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19816 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19817 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.4 21.4
  SAY #19732 /* ~"C'est une sorte de missionnaire, un Homme-Poussière qui espère nous persuader de nous rendre à la Vraie Mort. Tu le trouveras errant dans la Chapelle au nord de ces couloirs froids et poussiéreux, si tu souhaites lui parler."~ */
  IF ~~ THEN REPLY #19818 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #19819 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19820 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2 5.2
  SAY #19733 /* ~"Que font les vivants, dans le monde au-dessus ? Ici, nous menons nos vies dans l'obscurité tranquille. Nous travaillons pour protéger nos protégés, les silencieux, des déprédations des autres."~ */
  IF ~~ THEN REPLY #19821 /* ~"Vos protégés ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19822 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19823 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2 11.0 12.0 14.0 18.0
  SAY #19734 /* ~"Les silencieux… les morts qui ne font que dormir. Nous les protégeons, nous les surveillons tandis qu'ils se reposent."~ */
  IF ~~ THEN REPLY #19824 /* ~"Qui pourrait bien les déranger ?"~ */ GOTO 20
  IF ~~ THEN REPLY #19825 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19826 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 5.5
  SAY #19735 /* ~Le squelette hausse les épaules, ses omoplates grinçant à l'arrière de sa cage thoracique. "Non. Tu devrais peut-être parler à Hargrimm, notre grand prêtre. Il en sait beaucoup."~ */
  IF ~~ THEN REPLY #19827 /* ~"Parle-moi de Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19828 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19829 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 5.0
  SAY #19736 /* ~Le squelette se touche le menton, en inclinant légèrement le crâne. "Les goules sont autorisées à se nourrir de ceux qu'ils trouvent en train de voler les catacombes. Le Roi Silencieux a pensé qu'il serait mieux de laisser les autres intrus - ceux pris à errer et faits prisonniers, comme toi - dépérir ici entre nos mains, plutôt que de les laisser se faire dévorer par les goules. Tu souhaites peut-être interroger Hargrimm, notre grand prêtre - c'est lui qui parle au Roi Silencieux."~ */
  IF ~~ THEN REPLY #19830 /* ~"Parle-moi de Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19831 /* ~"Le Roi Silencieux ?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19832 /* ~"'Dépérir entre vos mains' ?"~ */ GOTO 18
  IF ~~ THEN REPLY #19833 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19834 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #19737 /* ~Le squelette acquiesce. "Pour devenir un de nos protégés. Pour compter au nombre des silencieux."~ */
  IF ~~ THEN REPLY #19835 /* ~"Vos… protégés ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19836 /* ~"Qui est ce Roi Silencieux ?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19837 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19838 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #19738 /* ~"Bonjour, une fois encore. Tu t'habitues à ta nouvelle demeure ?"~ */
  IF ~~ THEN REPLY #19839 /* ~"Difficilement. J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #19840 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #19739 /* ~"Il y en a beaucoup." Tout en parlant, il les compte sur ses phalanges jaunies et poussiéreuses. "Les rats et les goules affamées et incontrôlées et surtout… les vivants. Ceux du Village Enseveli - les servants d'un homme nommé Pharod - descendent souvent dans les souterrains des Nations Mortes, dérangeant les silencieux. Je ne sais pas pourquoi et je ne m'en soucie pas… mon seul but est d'arrêter leur répugnant travail."~ */
  IF ~~ THEN REPLY #19841 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19842 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.4 5.4 22.1 23.1 24.1
  SAY #19740 /* ~Le squelette acquiesce avec grâce. "Qui ?"~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #19843 /* ~"Le Roi Silencieux."~ */ GOTO 10
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #19844 /* ~"Hargrimm."~ */ GOTO 22
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #19845 /* ~"Salie Marie."~ */ GOTO 23
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #19846 /* ~"Acaste."~ */ GOTO 24
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19847 /* ~"Soego."~ */ GOTO 13
  IF ~~ THEN REPLY #19848 /* ~"Peu importe. J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #19849 /* ~"Personne, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.0 16.0 17.0 21.1
  SAY #19741 /* ~"Notre grand prêtre. C'est lui qui parle au Roi Silencieux, et nous transmet les paroles et l'enseignement de notre seigneur. Il est là, dans l'antichambre de la salle du trône du Roi Silencieux."~ */
  IF ~~ THEN REPLY #19850 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19851 /* ~"Je voudrais te questionner sur quelqu'un d'autre…"~ */ GOTO 21
  IF ~~ THEN REPLY #19852 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19853 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0 21.2
  SAY #19742 /* ~"Elle est lente mais attentionnée et sage. C'est une sorte de mère pour les autres zombis. Tu la trouveras dans une chambre à l'ouest de l'endroit où tu as pénétré pour la première fois dans les Nations Mortes."~ */
  IF ~~ THEN REPLY #19854 /* ~"Parle-moi des zombis."~ */ GOTO 7
  IF ~~ THEN REPLY #19855 /* ~"Je voudrais te questionner sur quelqu'un d'autre…"~ */ GOTO 21
  IF ~~ THEN REPLY #19856 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19857 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.0 21.3
  SAY #19743 /* ~"C'est la matrone effrayante d'une horde de goules qui se donnent le nom de Calamités. Elles servent de gardes et de protecteurs aux Nations Mortes… pour l'instant. Elle surveille la chambre par laquelle tu es entré pour la première fois dans les Nations Mortes."~ */
  IF ~~ THEN REPLY #19858 /* ~"Parle-moi des Calamités."~ */ GOTO 8
  IF ~~ THEN REPLY #19859 /* ~"Je voudrais te questionner sur quelqu'un d'autre…"~ */ GOTO 21
  IF ~~ THEN REPLY #19860 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19861 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
