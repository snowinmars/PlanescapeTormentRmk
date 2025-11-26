// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37845 /* ~Tu vois un homme jeune et élancé avec des traits de rat. Il semble jauger les gens qui l'entourent. Il te remarque et te lance un regard sans expression.~ */
  IF ~~ THEN REPLY #37869 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37870 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37846 /* ~Il continue à te fixer pendant un moment alors que ses yeux te dévisagent des pieds à la tête. Finalement, son regard croise le tien. "Oui, bonjour."~ */
  IF ~~ THEN REPLY #37871 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37872 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 6.1 7.0 8.1 9.0 10.0 11.0 12.0 15.0 16.2 17.2 18.0
  SAY #37847 /* ~Il te lance un sourire dénué d'émotions. "Oui ?"~ */
  IF ~~ THEN REPLY #37873 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 3
  IF ~~ THEN REPLY #37874 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 9
  IF ~~ THEN REPLY #37875 /* ~"Tu peux me parler des autres quartiers ?"~ */ GOTO 10
  IF ~~ THEN REPLY #37876 /* ~"Qu'est-ce que tu peux me dire sur la cité de Sigil ?"~ */ GOTO 11
  IF ~~ THEN REPLY #37877 /* ~"Est-ce qu'il y a quelque chose d'intéressant à voir par ici ?"~ */ GOTO 12
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37878 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 13
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37879 /* ~"J'ai perdu un crâne… Tu ne connais pas quelqu'un que ça pourrait intéresser ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #37880 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37848 /* ~Il te regarde dans le vide pendant un moment. "C'est la vente aux enchères. Les esclaves sont vendus ici."~ */
  IF ~~ THEN REPLY #37881 /* ~"Pourquoi est-ce que tu es vendu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37882 /* ~"Je ne savais pas que l'esclavage existait à Sigil."~ */ GOTO 5
  IF ~~ THEN REPLY #37883 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37884 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37852 /* ~Il te fixe sans afficher la moindre émotion sur son visage. "Je dois de l'argent que je ne peux pas rembourser. Je vais être vendu pour payer ma dette."~ */
  IF ~~ THEN REPLY #37885 /* ~"Je ne savais pas que l'esclavage existait à Sigil."~ */ GOTO 5
  IF ~~ THEN REPLY #37886 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37887 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37853 /* ~Il hésite avant de répondre. "L'esclavage est omniprésent, mais la plupart des gens ne le réalisent pas. Nous sommes esclaves de nos émotions, nous avons besoin de manger, de respirer, d'excréter, même les lois par lesquelles nous nous gouvernons…" Il hausse les épaules. "Nous sommes des esclaves."~ */
  IF ~~ THEN REPLY #37888 /* ~"Je comprends ton point de vue."~ */ GOTO 6
  IF ~~ THEN REPLY #37889 /* ~"Je ne suis pas d'accord avec toi."~ */ GOTO 8
  IF ~~ THEN REPLY #37890 /* ~"Je vois. J'ai quelques questions…~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37855 /* ~Il fait un signe de la tête. "En reconnaissant ton esclavage envers un multivers indifférent, tu peux te libérer."~ */
  IF ~~ THEN REPLY #37891 /* ~"Comment ?"~ */ GOTO 7
  IF ~~ THEN REPLY #37892 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37893 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37856 /* ~Il secoue la tête. "Toi seul peux répondre à cette question. Tu dois chercher en toi…" Il se tait et continue à te fixer d'un regard vide.~ */
  IF ~~ THEN REPLY #37894 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37895 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #37857 /* ~Il hausse les épaules. "Alors, tu es l'esclave de ta propre ignorance. Une fois que tu l'as compris, tu peux faire le nécessaire pour te libérer."~ */
  IF ~~ THEN REPLY #37896 /* ~"Comment ?"~ */ GOTO 7
  IF ~~ THEN REPLY #37897 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37898 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY #37858 /* ~Il te fixe. "C'est le Bas Quartier où vivent les gens heureux, ceux qui ne vivent pas dans les taudis de la Ruche. C'est là que vivent les malchanceux, ceux qui n'ont pas les moyens de s'offrir la grandeur du Quartier de La Dame. C'est là que vivent les gens pleins d'espoir, ceux qui envisagent plus pour eux-mêmes. C'est là que vivent les gens sans espoir, ceux qui ne parviennent pas à voir au-delà de leur propre désespoir…" Il hausse les épaules.~ */
  IF ~~ THEN REPLY #37899 /* ~"Euh… Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37900 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37859 /* ~Il hausse les épaules. "Les quartiers ressemblent à une scène remplie d'acteurs. Le décor change en fonction des scènes, mais les gens qui s'y trouvent restent les mêmes. Tu peux parcourir Sigil de long en large, tu te rendras compte que c'est vrai." Il te regarde d'un regard vide.~ */
  IF ~~ THEN REPLY #37901 /* ~"Oui… Et bien… J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37902 /* ~"Je crois qu'il vaut mieux que je m'en aille, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY #37860 /* ~Il fixe ce qui l'entoure d'un œil calculateur et calme. "Sigil est ce que tu perçois. Pour certains, c'est le centre de tout et pour d'autres, le cœur de rien. Pour certains, c'est le commencement de tous les voyages et pour d'autres, c'est la fin." Il te lance un regard froid. "Qu'est-ce que c'est pour toi ?"~ */
  IF ~~ THEN REPLY #37903 /* ~"Je ne suis pas sûr… J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37904 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #37862 /* ~Il ouvre les bras comme pour embrasser le monde et te lance un regard vide. "Tout a de la valeur, tout est sans valeur. Tout vaut le coup d'être vu." Il baisse les bras. "Nous regardons le monde en tant qu'individus et en tant qu'individus, nous attribuons la valeur. Ce qui a de la valeur pour moi peut en être dépourvu pour toi. Par conséquent, tout vaut le coup d'être vu et ce, pour nous permettre de construire l'univers dans lequel nous décidons de vivre."~ */
  IF ~~ THEN REPLY #37905 /* ~"Euh… J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37906 /* ~"Il faut vraiment que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.5
  SAY #37863 /* ~Il penche la tête et hésite avant de répondre. "Le Maître des Os n'aime pas les visiteurs. S'il voulait te voir, il t'enverrait chercher."~ */
  IF ~~ THEN REPLY #37907 /* ~"Que peux-tu me dire sur lui ?"~ */ GOTO 14
  IF ~~ THEN REPLY #37908 /* ~"Tu sais où je peux le trouver ?"~ */ GOTO 15
  IF ~~ THEN REPLY #37909 /* ~"Il m'a envoyé chercher, il m'a volé quelque chose qui m'appartient."~ */ GOTO 16
  IF ~~ THEN REPLY #37910 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0
  SAY #37864 /* ~"C'est un Grand-prêtre de la mort et en tant que tel, il est immortel. Il a le pouvoir de vie ou de mort et il l'exerce avec conviction." Il réfléchit un moment. "C'est un personnage puissant à Sigil et son temps est précieux."~ */
  IF ~~ THEN REPLY #37911 /* ~"Tu sais où je peux le trouver ?"~ */ GOTO 15
  IF ~~ THEN REPLY #37912 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0 16.0 17.1
  SAY #37865 /* ~Il se détourne de toi et regarde au loin. "Il est chez lui, aux Os de la Nuit. Ce n'est pas loin, mais je ne sais pas où exactement." Il te lance un regard dénué de vie. "Poursuis ta quête. Tu le trouveras ou il te trouvera. Deux chemins vers la même destination."~ */
  IF ~~ THEN REPLY #37913 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37914 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #37866 /* ~Il secoue la tête. "Les possessions vont et viennent. Félicite-toi de ce que tu as encore."~ */
  IF ~~ THEN REPLY #37915 /* ~"Sais-tu où je peux le trouver ?"~ */ GOTO 15
  IF ~~ THEN REPLY #37916 /* ~"Que peux-tu me dire sur lui ?"~ */ GOTO 14
  IF ~~ THEN REPLY #37917 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37918 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #37867 /* ~Il fait lentement un signe de la tête. "Oui, j'aurais pensé que c'était le travail de Lothar, le Maître des Os."~ */
  IF ~~ THEN REPLY #37919 /* ~"Qu'est-ce que tu peux me dire sur lui ?"~ */ GOTO 14
  IF ~~ THEN REPLY #37920 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 15
  IF ~~ THEN REPLY #37921 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37922 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37868 /* ~Tu vois le jeune homme élancé aux traits de rat. Il te remarque et te lance un regard vide. "Nos chemins se croisent de nouveau."~ */
  IF ~~ THEN REPLY #37923 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37924 /* ~"Peu importe. Au revoir."~ */ EXIT
END
