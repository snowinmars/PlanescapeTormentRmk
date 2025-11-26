// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37727 /* ~Tu vois un homme ordinaire. Il ressemble aux autres clients du marché. Il se promène parmi les autres clients ayant l'air de s'ennuyer.~ */
  IF ~~ THEN REPLY #37737 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37738 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37728 /* ~Il se retourne alors que tu lui dis bonjour et son air ennuyé s'intensifie. "Oui…"~ */
  IF ~~ THEN REPLY #37739 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37740 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37729 /* ~Il te lance un regard légèrement agacé. "D'accord…"~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37741 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37742 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37743 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37744 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37745 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37746 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37730 /* ~"Jamais entendu parlé de lui. Je me serais souvenu de ce titre de *Maître des Os*. On n'oublie pas un nom pareil." Il semble toujours agacé.~ */
  IF ~~ THEN REPLY #37747 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37748 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37731 /* ~Il te regarde un moment. " Tu as perdu un crâne… Eh bien, en voilà un autre. Les voleurs de Sigil pourraient s'intéresser à des choses plus précieuses. Je ne sais pas quoi te dire." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #37749 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37750 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37732 /* ~Il te regarde d'un air morne, puis se tourne vers le marché. "Ici même, matois. Prends le temps de demander aux marchands. Je suis sûr que tu trouveras ce que tu cherches."~ */
  IF ~~ THEN REPLY #37751 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37752 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37733 /* ~Il soupire. "Ce n'est pas grand-chose… mais c'est le seul foyer que j'aie jamais connu. Je crois que je vais devoir apprendre à l'aimer, parce que je ne partirai pas."~ */
  IF ~~ THEN REPLY #37753 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37754 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37734 /* ~Il se retourne à ton approche et fronce les sourcils. "Je t'ai déjà accordé pas mal de temps. Je n'en ai plus à te donner, matois." Il te tourne le dos.~ */
  IF ~~ THEN REPLY #37735 /* ~Pars.~ */ EXIT
END
