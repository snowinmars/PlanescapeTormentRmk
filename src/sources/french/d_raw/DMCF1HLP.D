// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37100 /* ~Tu aperçois une jeune femme à la peau pâle, jaunâtre. Elle semble occupée à examiner des marchandises dans un cageot.~ */
  IF ~~ THEN REPLY #37111 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37112 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37101 /* ~Elle te regarde par-dessus l'épaule, puis se retourne pour te faire face. "Salut, à toi aussi. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #37113 /* ~"J'ai quelques questions…~ */ GOTO 2
  IF ~~ THEN REPLY #37114 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37102 /* ~Elle paraît un peu agacée, mais te fait un sourire amical. "J't'aiderai si je peux. Qu'est-ce que tu veux ?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37115 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37116 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37117 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 7
  IF ~~ THEN REPLY #37118 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 8
  IF ~~ THEN REPLY #37119 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37103 /* ~Elle ouvre des yeux surpris et fait rapidement un signe de demi-cercle sur son cœur. "J'peux pas t'aider. La chanson dit qu'il est dans l'Quartier, mais je n'sais pas où."~ */
  IF ~~ THEN REPLY #37120 /* ~"Tu sais à qui je pourrais m'adresser ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37121 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37122 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37104 /* ~Elle paraît préoccupée. "Nan, matois. Les gens évitent d'habitude les problèmes, n'essaie pas d'les chercher."~ */
  IF ~~ THEN REPLY #37123 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37124 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37105 /* ~Elle fronce les sourcils pendant un instant, puis te jette un regard préoccupé. "Ouais, J'ai entendu parler d'gens qui aiment ça, mais j'peux pas t'aider."~ */
  IF ~~ THEN REPLY #37125 /* ~"Tu connais quelqu'un qui pourrait m'aider ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37126 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37127 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37106 /* ~Elle réfléchit un instant, puis hausse les épaules. "Demande au gars près du fourneau. Il aime beaucoup parler aux gens. P't'être qu'il a entendu quelqu'chose."~ */
  IF ~~ THEN REPLY #37128 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37129 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37107 /* ~Elle indique les étals. "Anze en vend. C'est à lui que tu d'vrais parler."~ */
  IF ~~ THEN REPLY #37130 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37131 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37108 /* ~Elle indique les étals. "Aalek verse là-dedans. Tu d'vrais lui en parler."~ */
  IF ~~ THEN REPLY #37132 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37133 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #37109 /* ~Elle fronce les sourcils. "J'veux pas être mal polie, mais j'ai pas l'temps d'parler comme ça. Demande au gars près du fourneau. L'est toujours en train d'parler aux étrangers."~ */
  IF ~~ THEN REPLY #37134 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37110 /* ~Elle se retourne pour te regarder, puis sourit. "Bonjour, matois. Qu'est-ce qu'ce sera ?"~ */
  IF ~~ THEN REPLY #37135 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37136 /* ~"Au revoir."~ */ EXIT
END
