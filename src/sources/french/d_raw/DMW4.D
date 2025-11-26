// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47991 /* ~Tu vois un homme d'un certain âge s'affairant autour de caisses. Il hoche la tête en te voyant approcher.~ */
  IF ~~ THEN REPLY #47992 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #47993 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47994 /* ~Il sourit et s'essuie le front. "Bonjour, matois."~ */
  IF ~~ THEN REPLY #47995 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47996 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.1 6.0 7.1 8.1 9.0 10.0
  SAY #47997 /* ~Il hoche la tête. "Très bien…"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47998 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47999 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 4
  IF ~~ THEN REPLY #48000 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #48001 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 7
  IF ~~ THEN REPLY #48002 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48003 /* ~Il secoue la tête. "Jamais entendu parler. Je vais me renseigner, il y a peut-être quelqu'un qui peut t'aider."~ */
  IF ~~ THEN REPLY #48004 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48005 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #48006 /* ~Il te regarde sans expression. "Tu cherches un crâne… ? Je, euh…" Il hausse les épaules. "Désolé, je ne sais rien…" On dirait qu'il veut te demander quelque chose mais qu'il hésite.~ */
  IF ~~ THEN REPLY #48007 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48008 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #48009 /* ~Il se concentre un moment comme s'il essayait de comprendre ta question. "Eh bien… des armes ? Je ne sais pas… Je suppose qu'il y a bien un marchand ici qui en vend. Mais ce n'est pas le genre de chose qu'un citoyen moyen achète."~ */
  IF ~~ THEN REPLY #48010 /* ~"Sans arme, comment vous vous défendez ?"~ */ GOTO 6
  IF ~~ THEN REPLY #48011 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48012 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48013 /* ~Il te regarde d'un air incrédule. "L'Harmonium… Ce sont eux qui nous protègent, nous les citoyens. Ils font respecter la loi, punissent les coupables, ce genre de choses, quoi. Les citoyens n'ont pas à se soucier de leur protection." Il te regarde sans expression.~ */
  IF ~~ THEN REPLY #48014 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48015 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #48016 /* ~"De la magie ? Je…." Il tord son visage de confusion. "Je ne sais pas. Peut-être un des marchands présents ici, mais la magie n'est pas très répandue ici… si ?" Il attend ta réponse.~ */
  IF ~~ THEN REPLY #48017 /* ~"Tu n'en as aucune idée, hein ?"~ */ GOTO 8
  IF ~~ THEN REPLY #48018 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48019 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48020 /* ~Il te regarde d'un air choqué. "Eh bien, non… Je veux dire si… euh, eh bien… peut-être que non." Il hausse les épaules. "On dit que je suis naïf, mais je ne le crois pas. C'est juste que j'ai moins *d'expérience* que certains, voilà tout."~ */
  IF ~~ THEN REPLY #48021 /* ~"De quelle couleur est le ciel dans ton monde…"~ */ GOTO 9
  IF ~~ THEN REPLY #48022 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48023 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #48024 /* ~Il regarde dehors et montre le ciel du doigt. "Il est jaune… à cause de toute la fumée qui s'échappe des usines."~ */
  IF ~~ THEN REPLY #48025 /* ~"Peu importe. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48026 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #48027 /* ~L'ouvrier lève les yeux pour te regarder. "Rebonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #48028 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48029 /* ~"Peu importe, au revoir."~ */ EXIT
END
