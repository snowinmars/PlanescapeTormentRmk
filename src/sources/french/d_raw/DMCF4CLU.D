// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~Tu aperçois une femme quelconque. Il semble qu'elle ne soit rien d'autre qu'une cliente du marché.~ */
  IF ~~ THEN REPLY #37193 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~Elle se retourne lorsque tu la salues. "Oui…"~ */
  IF ~~ THEN REPLY #37195 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~Elle a l'air de s'ennuyer. "D'accord…"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~"Jamais entendu parler de lui. Je me souviendrais de ce titre de *Maître des Os*, autrement. On n'oublie pas une telle chose." Elle paraît toujours s'ennuyer.~ */
  IF ~~ THEN REPLY #37203 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~Elle te fixe pendant quelques instants. "Perdu un crâne… Eh bien, on n'entend pas ça tous les jours. Je ne sais pas quoi te dire." Elle hausse les épaules.~ */
  IF ~~ THEN REPLY #37205 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~Elle te regarde d'un air morne, puis se tourne vers le marché. "Ici même, matois. Prends le temps de demander aux marchands. Je suis sûre que tu trouveras ce que tu cherches."~ */
  IF ~~ THEN REPLY #37207 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~Elle soupire. "C'est pas beaucoup… mais c'est le seul endroit que moi, et peut-être tous ceux qui sont ici, connaîtrons jamais. Apprends à l'apprécier, parce que tu n'en partiras pas."~ */
  IF ~~ THEN REPLY #37209 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~Elle se retourne à ton approche et fronce les sourcils. "Je t'ai déjà accordé pas mal de temps. Je n'en ai plus à te donner, matois." Elle te tourne le dos.~ */
  IF ~~ THEN REPLY #37211 /* ~Pars.~ */ EXIT
END
