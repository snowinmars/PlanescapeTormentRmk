// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~Tu aperçois un vieil homme à l'air sévère. Son visage est un mélange de rides et de lignes créées lorsqu'il se renfrogne. Il paraît porter autant d'attention à ses clients qu'à la personne travaillant au fourneau, à côté.~ */
  IF ~~ THEN REPLY #33884 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~Il te fait une rapide et rigide révérence. "Oh, bien le bonjour à toi aussi. Je m'appelle Anze. Qu'est-ce que ce s'ra ?"~ */
  IF ~~ THEN REPLY #33887 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~Il te fait un grand sourire édenté. "J'crois qu'il est temps que je t'donne la chanson. Qu'est-ce que tu veux savoir ?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~"À quoi sert ce fourneau ?"~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~"Je voudrais acheter des armes."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~"Je voudrais acheter des objets magiques."~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~"J'peux pas dire qu'j'aie déjà entendu parler d'Lothar…" Il plisse les yeux en réfléchissant. "Mais ces *Os*, ouais, j'ai entendu parler d'eux. La chanson dit qu'il vaut mieux pas tomber sur eux. Un matois puissant, qui fréquente les morts et l'reste."~ */
  IF ~~ THEN REPLY #33897 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~"Qu'est-ce que tu peux me dire sur lui ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~Il hausse les épaules. "J'sais pas. Un matois comme ça peut poser sa guitoune partout où il veut. Y'a pas d'bige qui va l'en empêcher, ça c'est sûr."~ */
  IF ~~ THEN REPLY #33901 /* ~"Qu'est-ce que tu peux me dire sur lui ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~Il rit. "T'as tout entendu, matois. J'sais rien d'autre sur eux."~ */
  IF ~~ THEN REPLY #33905 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~Il essaie de paraître inquiet, mais échoue lamentablement. "Désolé d'entendre ça, matois. Si tu crois qu'ça a été volé, tu devrais en parler à l'Harmonium."~ */
  IF ~~ THEN REPLY #33909 /* ~"L'Harmonium ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~"Merci, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~Il sourit. "La loi, matois. Les lascars de l'Harmonium font la loi, ici, sur Sigil. Si ce qui t'appartient a disparu, alors c'est à eux qu'il faut en parler."~ */
  IF ~~ THEN REPLY #33913 /* ~"Tu crois que l'Harmonium pourra retrouver le crâne ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~Il commence à dire quelque chose, puis s'arrête pour réfléchir. Après un instant, il glousse. "Nan, matois. J'crois pas. C'est pas grave."~ */
  IF ~~ THEN REPLY #33914 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~"Tu peux aller parler à Aalek, à côté. Il a p't'être c'que tu cherches." Il indique le comptoir sur sa gauche.~ */
  IF ~~ THEN REPLY #33918 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~Il jette un œil au fourneau et au garçon qui s'en occupe, puis se met à parler plus bas. "Le fourneau sert à rien d'autre qu'à apprendre les responsabilités à ce fainéant. Ce garçon est tout l'temps en train de déblatérer et d'parler. Il se prend pour un érudit et sait pas ce qu'est un vrai travail. Si t'as des questions sérieuses, il vaut p't'être mieux les lui poser."~ */
  IF ~~ THEN REPLY #33921 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~Nœud nul~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~Anze t'offre son habituel sourire édenté. "Rebonjour, matois. De quoi t'as besoin aujourd'hui ?"~ */
  IF ~~ THEN REPLY #34245 /* ~"Je voudrais voir tes marchandises."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~"J'vais pleurer mon gars Lazlo. J'vais pas ouvrir boutique pendant… j'sais pas combien d'temps…"~ */
  IF ~~ THEN REPLY #34249 /* ~Pars.~ */ EXIT
END
