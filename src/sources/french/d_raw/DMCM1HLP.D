// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37212 /* ~Tu aperçois un jeune homme à la peau pâle et jaunâtre. Il examine des marchandises dans un cageot.~ */
  IF ~~ THEN REPLY #37226 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37227 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37213 /* ~Il te regarde par-dessus son épaule, puis se retourne pour te faire face. "Ouais, et à toi aussi. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #37225 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37228 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37214 /* ~Il paraît agacé, mais te fait un sourire amical. "J't'aiderai si je l'peux. Qu'est-ce que tu veux savoir ?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37229 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37230 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37231 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 7
  IF ~~ THEN REPLY #37232 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 8
  IF ~~ THEN REPLY #37233 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 9
  IF ~~ THEN REPLY #37234 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37215 /* ~Ses yeux s'élargissent subitement et il dessine un demi-cercle au dessus de son cœur. "J'peux t'aider ?. L'rumeur veut qu'il s'trouve dans l'coin mais j'sais pas où."~ */
  IF ~~ THEN REPLY #37235 /* ~"Tu sais à qui je pourrais m'adresser ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37236 /* ~"Très bien. J'ai d'autres questions…"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37216 /* ~Il paraît préoccupé. "Nan, matois. La plupart des gens essaient d'éviter les ennuis, ne va pas les chercher."~ */
  IF ~~ THEN REPLY #37237 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37238 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37217 /* ~Il fronce les sourcils pendant un instant, puis te regarde d'un air inquiet. "Ouais, j'ai entendu dire qu'il y en avait qui aimaient ça, mais j'peux pas t'aider."~ */
  IF ~~ THEN REPLY #37239 /* ~"Tu connais quelqu'un qui pourrait m'aider ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37240 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37218 /* ~Il réfléchit pendant un moment puis hausse les épaules. "Demande à Lazlo, à côté du fourneau. Il aime discuter avec les gens. P't'être qu'il a entendu quelqu'chose."~ */
  IF ~~ THEN REPLY #37241 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37242 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37219 /* ~Il indique vaguement les étals. "Anze en vend. C'est à lui que tu devrais parler."~ */
  IF ~~ THEN REPLY #37244 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37220 /* ~Il indique vaguement les étals. "Aalek verse là-dedans. Tu devrais lui parler."~ */
  IF ~~ THEN REPLY #37245 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37246 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #37221 /* ~Il fronce les sourcils. "Écoute, matois, je veux pas être impoli, mais j'ai pas l'temps d'parler comme ça. Demande à Lazlo, à côté du fourneau. Il parle toujours aux étrangers."~ */
  IF ~~ THEN REPLY #37247 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37222 /* ~Il se retourne pour te regarder et sourit. "Salut à nouveau, matois. Qu'est-ce qu'ce sera ?"~ */
  IF ~~ THEN REPLY #37223 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37248 /* ~"Au revoir."~ */ EXIT
END
