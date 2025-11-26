// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHERYL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHERYL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64681 /* ~Tu vois une charmante jeune femme vêtue de haillons. Elle fait les cent pas et semble être préoccupée. Elle ne t'a pas remarqué.~ */
  IF ~~ THEN REPLY #64682 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #64683 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64684 /* ~Elle sursaute quand tu lui adresses la parole et se tourne vers toi. Tu remarques que son regard s'égare sur tes nombreuses cicatrices. Elle semble encore plus inquiète. "Euh… Bonjour, matois. Puis-je t'être utile ?" ~ */
  IF ~~ THEN REPLY #64685 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64686 /* ~"Tu as l'air en colère. Quelque chose ne va pas ?"~ */ GOTO 13
  IF ~~ THEN REPLY #64687 /* ~"Non, pas vraiment. Je crois que je vais y aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.2 8.2 11.1 12.1 13.1 20.0 23.0 29.1 30.1 31.0
  SAY #64688 /* ~"Des questions… je peux peut-être t'aider." Elle attend que tu parles.~ */
  IF ~~ THEN REPLY #64689 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #64690 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #64691 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #64692 /* ~"Tu as l'air en colère. Quelque chose ne va pas ?"~ */ GOTO 13
  IF ~  Global("Mention_Catacombs","GLOBAL",1)
~ THEN REPLY #64693 /* ~"Tu as mentionné les Catacombes de la Pierre Pleureuse. Que peux-tu me dire à leur sujet ?"~ */ GOTO 29
  IF ~~ THEN REPLY #64694 /* ~"Aucune importance, Je dois y aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64695 /* ~"Sheryl…" Elle semble distraite. "Je m'appelle Sheryl."~ */
  IF ~~ THEN REPLY #64696 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64697 /* ~"Je vois. Je dois y aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #64698 /* ~Elle hésite avant de répondre. "Rien… Ce n'est vraiment rien. J'ai juste…" Elle hausse les épaules et se détourne de toi. Tu penses qu'elle te cache quelque chose.~ */
  IF ~~ THEN REPLY #64699 /* ~"Hmm. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64700 /* ~"Bien, je vais y aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #64701 /* ~"T'es nouveau ici ?" Elle t'adresse un regard narquois puis soupire. "Naturellement, tu es… Je suis désolée, que veux-tu savoir ?"~ */
  IF ~~ THEN REPLY #64702 /* ~"Je cherche un certain Pharod. Sais-tu où je peux le trouver ?"~ */ GOTO 6
  IF ~~ THEN REPLY #64703 /* ~"Y a-t-il des choses que tu puisses me dire sur cet endroit ?"~ */ GOTO 12
  IF ~~ THEN REPLY #64704 /* ~"Hmm. Aucune importance, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64705 /* ~"Aucune importance, je dois y aller. Au revoir.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #64706 /* ~"Pharod…" À l'énoncé de ce nom elle se crispe un instant mais se reprend très rapidement "Je le connais… Es-tu un de ses amis ?"~ */
  IF ~~ THEN REPLY #64707 /* ~"Oui, nous revenons de loin."~ */ GOTO 7
  IF ~~ THEN REPLY #64708 /* ~"Non, je veux juste… lui *parler*."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64709 /* ~Elle fronce les sourcils et acquiesce. "Eh ! bien, tu peux trouver ton *ami* vers le nord. Je dois partir maintenant. À bientôt." Elle ignore toute autre tentative pour lui parler.~ */
  IF ~~ THEN REPLY #64710 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64711 /* ~Elle te regarde avec insistance puis sourit. "Je vois… Eh bien, il se trouve au nord. Cherche un passage gardé par deux brutes. Je pense que tu le trouveras là-bas."~ */
  IF ~~ THEN REPLY #64712 /* ~"J'ai l'impression que tu ne l'apprécies pas beaucoup."~ */ GOTO 9
  IF ~~ THEN REPLY #64713 /* ~"Y a-t-il autre chose que tu saches sur cet endroit ?"~ */ GOTO 12
  IF ~~ THEN REPLY #64714 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64715 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64716 /* ~"Oh ! non." Elle s'interrompt quelques instants et soupire. "Ici, il se fait passer pour une sorte de *baron*. Tout le monde fait ce qu'il dit; tout le monde lui paie un tribut. Si tu ne le fais pas…" Elle hausse les épaules.~ */
  IF ~~ THEN REPLY #64717 /* ~"Un tribut ? Quel genre de tribut ?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64718 /* ~Elle regarde nerveusement aux alentours puis se rapproche pour te murmurer. "Au sud-est se trouvent les Catacombes de la Pierre Pleureuse. Pharod y dépêche ses récupérateurs pour voler les trésors des morts. Il prend une bonne part de tout ce qu'on y trouve…" Elle se redresse et marque une pause.~ */
  IF ~~ THEN REPLY #64719 /* ~"Continue."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64720 /* ~Elle hausse les épaules. "Pharod devient de plus en plus riche, alors que ses récupérateurs s'en sortent… à peine. Où que tu ailles, c'est toujours la même histoire. Les riches deviennent plus riches et les pauvres encore plus pauvres."~ */
  IF ~~ THEN REPLY #64721 /* ~"Y a-t-il autre chose que tu puisses me dire sur cet endroit ?"~ */ GOTO 12
  IF ~~ THEN REPLY #64722 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64723 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 8.1 11.0
  SAY #64724 /* ~"Pas vraiment. Fais juste attention à ce que tu fais. Prends garde à ceux que tu crois être tes amis. C'est tout."~ */
  IF ~~ THEN REPLY #64725 /* ~"Je cherche un certain Pharod. Sais-tu où je peux le trouver ?"~ */ GOTO 6
  IF ~~ THEN REPLY #64726 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64727 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.3
  SAY #64728 /* ~Elle semble tout d'abord hésiter à te parler puis lâche d'un trait. "Mon père, Arkin… Il a disparu et je ne sais pas quoi faire. Je suis désespérée."~ */
  IF ~~ THEN REPLY #64729 /* ~"Dis-moi ce qui s'est passé, peut-être puis-je t'aider."~ */ DO ~SetGlobal("Mention_Catacombs","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #64730 /* ~"Hmm. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64731 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 24.1 25.1
  SAY #64732 /* ~" Au sud-est se trouvent les Catacombes de la Pierre Pleureuse. Un grand nombre de récupérateurs, comme mon père, s'y rendent pour…" Elle semble embarrassée. "Ils y cherchent les trésors des morts. Au cours d'une de ses expéditions, mon père a découvert un journal, ou quelque chose de ce genre, qui parlait de cryptes auxquelles on ne pouvait accéder que par des portails…." Elle marque une pause.~ */
  IF ~~ THEN REPLY #64733 /* ~"Continue."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64734 /* ~"Mon père pensait que ces cryptes étaient réservées à une catégorie de gens… Les riches, ou les nobles, ou… je ne sais qui d'autre. Pourquoi, sinon, ne seraient-elles accessibles que par des portails ? Quoi qu'il en soit, les cryptes sont aussi un piège pour les voleurs…"~ */
  IF ~~ THEN REPLY #64735 /* ~"Un piège ? C'est-à-dire ?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64736 /* ~"On ne peut y accéder que par un portail, donc le seul moyen d'en sortir est un portail. Même si quelqu'un trouve la clef pour ouvrir le portail d'entrée, il y serait emprisonné s'il n'a pas la clef pour le portail de sortie…" Elle marque un temps d'arrêt.~ */
  IF ~~ THEN REPLY #64737 /* ~"Tu penses donc que ton père peut être pris au piège dans l'une de ces cryptes ?"~ */ GOTO 17
  IF ~~ THEN REPLY #64738 /* ~"Ton père a-t-il trouvé les clefs ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64739 /* ~Elle s'interrompt et se frotte le front en signe de réflexion. "Je n'en suis pas certaine, mais c'est possible. Il était très excité à l'idée de ce qu'il pouvait trouver dans ces cryptes. Il cherchait les clefs des portails."~ */
  IF ~~ THEN REPLY #64740 /* ~"A-t-il trouvé les clefs ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #64741 /* ~"C'est possible. Il m'a dit qu'il allait voir une sorcière nommée Ulthéra, dans cette ville. Il voulait lui demander si elle pouvait *découvrir* ce qu'étaient les clefs d'entrée et de sortie pour l'un des portails…"~ */
  IF ~~ THEN REPLY #64742 /* ~"Est-ce possible ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64743 /* ~Elle soupire. "Je ne sais pas. Ce n'est pas vraiment mon problème. J'ai peur que cette Ulthéra ne lui ait indiqué la bonne clef d'entrée… mais pas la bonne clef de sortie. Elle a pu ainsi prendre son argent et ne pas craindre qu'il revienne pour être remboursé. Elle peut aussi attendre qu'il meure et explorer elle-même la crypte."~ */
  IF ~~ THEN REPLY #64744 /* ~"Lui as-tu parlé de tout cela ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64745 /* ~Embarrassée, elle se détourne de toi. "Eh bien… oui. Je crains de ne pas avoir été très diplomate sur le sujet et de l'avoir contrariée. Elle refuse de me parler de nouveau." Elle t'adresse un regard plein d'espoir. "Accepterais-tu d'aller la rencontrer et de lui parler pour moi ?"~ */
  IF ~~ THEN REPLY #64746 /* ~"Hmm. Je vais y réfléchir, laisse-moi te poser une autre question…"~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #64747 /* ~"Non, je ne veux pas m'en mêler."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #64748 /* ~"Oui, je t'aiderai. Dis-moi juste où je peux la trouver."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Une jeune femme du nom de Sheryl s'inquiète pour son père, qui a disparu. Elle redoute qu'il soit enfermé dans une crypte à laquelle on ne peut accéder que par le biais d'un portail. Elle souhaite que j'aille voir une sorcière dénommée Ulthéra, qui aurait donné la clé du portail à son père. J'ai accepté de l'aider.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #64749 /* ~Elle fronce les sourcils. "Je vois. Eh bien, merci de m'avoir écoutée. C'était agréable d'avoir quelqu'un à qui parler. Pardonne-moi, mais je dois y aller."~ */
  IF ~~ THEN REPLY #64750 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 25.2
  SAY #64751 /* ~Elle est visiblement soulagée et te sourit. "Merci beaucoup, tu ne peux pas savoir ce que cela représente pour moi… La sorcière Ulthéra se déplace en ville. À ma connaissance, elle n'a pas de demeure fixe. S'il te plaît, trouve-la et interroge-la sur mon père."~ */
  IF ~~ THEN REPLY #64752 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #64753 /* ~Tu vois Sheryl. Elle fait les cent pas, l'air inquiet. Elle te sourit quand tu approches. "Re-bonjour, matois. Quoi de neuf ?"~ */
  IF ~~ THEN REPLY #64754 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64755 /* ~"Rien, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 25 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #64756 /* ~Tu vois Sheryl. Elle fait les cent pas, l'air inquiet. Elle te sourit quand tu approches. "Re-bonjour, matois. As-tu réfléchi et m'aideras-tu à trouver mon père ?"~ */
  IF ~~ THEN REPLY #64757 /* ~"Non, j'y réfléchis encore. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #64758 /* ~"Quel était ton problème déjà ? Je ne m'en souviens plus."~ */ GOTO 14
  IF ~~ THEN REPLY #64759 /* ~"Oui, j'ai bien réfléchi et je vais essayer de t'aider."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Une jeune femme du nom de Sheryl s'inquiète pour son père, qui a disparu. Elle redoute qu'il soit enfermé dans une crypte à laquelle on ne peut accéder que par le biais d'un portail. Elle souhaite que j'aille voir une sorcière dénommée Ulthéra, qui aurait donné la clé du portail à son père. J'ai accepté de l'aider.~ */ GOTO 22
END

IF WEIGHT #2 /* Triggers after states #: 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #64760 /* ~Tu vois Sheryl. Elle fait les cent pas, l'air inquiet. Elle te sourit quand tu approches. "Re-bonjour, matois. Je sais que tu as refusé de m'aider mais accepterais-tu de reconsidérer la question et de m'aider à retrouver mon père ?"~ */
  IF ~~ THEN REPLY #64761 /* ~"Non, je ne veux pas m'en mêler. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #64762 /* ~"Quel était ton problème déjà ? Je ne m'en souviens plus."~ */ GOTO 14
  IF ~~ THEN REPLY #64763 /* ~"Oui, j'ai bien réfléchi et je vais essayer de t'aider."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Une jeune femme du nom de Sheryl s'inquiète pour son père, qui a disparu. Elle redoute qu'il soit enfermé dans une crypte à laquelle on ne peut accéder que par le biais d'un portail. Elle souhaite que j'aille voir une sorcière dénommée Ulthéra, qui aurait donné la clé du portail à son père. J'ai accepté de l'aider.~ */ GOTO 22
END

IF WEIGHT #1 /* Triggers after states #: 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #64764 /* ~Tu vois Sheryl. Elle fait les cent pas, l'air inquiet. Elle te sourit quand tu approches et parle avec anxiété. "Re-bonjour, matois. As-tu des nouvelles de mon père ?"~ */
  IF ~  !PartyHasItem("Arkring")
~ THEN REPLY #64765 /* ~"Non, mais j'y travaille. Au revoir."~ */ EXIT
  IF ~  PartyHasItem("Arkring")
~ THEN REPLY #64766 /* ~"J'ai trouvé cet anneau sur un cadavre, dans une crypte qu'on ne pouvait atteindre que par un portail. Il se peut qu'il s'agisse de ton père…"~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",4)
DestroyItemObject("Arkring",Protagonist,TRUE)
~ JOURNAL #64786 /* ~J'ai découvert un anneau sur un corps dans une crypte que l'on ne pouvait atteindre que par un portail. J'ai donné l'anneau à Sheryl ; elle m'a dit qu'il appartenait à son père.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #64767 /* ~Sheryl prend l'anneau et ses yeux s'emplissent de larmes. Elle les essuie et se force à sourire. "L'anneau de mon père… Merci, matois. Je n'aurais pas pu vivre en ne sachant pas ce qui lui était arrivé. Au moins, maintenant, je peux en faire le deuil. Je n'ai rien d'autre à te donner que ma gratitude, pour te récompenser de ta gentillesse."~ */
  IF ~~ THEN REPLY #64768 /* ~"Ta gratitude me suffit Sheryl, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sheryl_Quest","GLOBAL",4)
~ THEN BEGIN 28 // from:
  SAY #64769 /* ~Tu vois Sheryl. Elle te regarde approcher en souriant. "Bonjour, matois. Que puis-je faire pour toi ?~ */
  IF ~~ THEN REPLY #64770 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.4
  SAY #64771 /* ~"Les catacombes… Méfie-toi si tu y descends. Je n'y suis jamais allée moi-même, mais on m'a dit que d'étranges créatures rodaient dans les cryptes."~ */
  IF ~~ THEN REPLY #64772 /* ~"Quel genre d'étranges créatures ?"~ */ GOTO 30
  IF ~~ THEN REPLY #64773 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64774 /* ~"Je vais y aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64775 /* ~"Eh bien, il y a des morts-vivants. Principalement des zombis et des squelettes. Il y a des lézards cornus. Des combattants redoutables, d'après ce qu'on m'a dit. Fais attention à eux. Oh, et les têtes volantes. Méfie-toi d'elles."~ */
  IF ~~ THEN REPLY #64776 /* ~"Des têtes volantes ?"~ */ GOTO 31
  IF ~~ THEN REPLY #64777 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64778 /* ~"Je vais y aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64780 /* ~Elle hausse les épaules. "Je sais, ça paraît dingue. Comme je te l'ai déjà dit, je n'en ai jamais vus moi-même, mais j'ai discuté avec des Récupérateurs qui en ont aperçus. L'un d'eux m'a parlé des têtes volantes."~ */
  IF ~~ THEN REPLY #64781 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64782 /* ~"Je vais y aller maintenant. Au revoir."~ */ EXIT
END
