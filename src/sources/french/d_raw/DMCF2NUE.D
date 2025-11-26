// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37137 /* ~Tu aperçois une vieille femme, vêtue de simples habits. Sa peau, pâle et jaunâtre, est abîmée par le temps. Elle te regarde d'un air las alors que tu approches.~ */
  IF ~~ THEN REPLY #37146 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37147 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37138 /* ~"Salut à toi aussi, jeunot. Que veux-tu à la vieille Belle ?"~ */
  IF ~~ THEN REPLY #37148 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37149 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37139 /* ~Elle fronce les sourcils et son visage disparaît presque sous les rides. "J'ai l'temps pour une ou deux, mais rapides."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37150 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37151 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37152 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37153 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37140 /* ~"Lothar… Connais pas c'nom. Peux pas t'aider."~ */
  IF ~~ THEN REPLY #37154 /* ~"Je vois. Tu sais qui pourrait m'aider ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37155 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37141 /* ~Elle secoue la tête. "Nan." Elle te regarde d'un air las.~ */
  IF ~~ THEN REPLY #37156 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37157 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37142 /* ~"Crâne perdu…" Elle s'esclaffe. "Eh ben, j'peux pas dire qu'j'ai déjà entendu celle-là. Sais pas quoi t'dire."~ */
  IF ~~ THEN REPLY #37158 /* ~"Je vois. Tu sais qui pourrait m'aider ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37159 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37143 /* ~Elle soupire. "Écoute, jeunot. J'suis ici pour faire mes achats, et t'es pas un marchand. Tu m'suis ?"~ */
  IF ~~ THEN REPLY #37160 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #37161 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37144 /* ~"Ben, j'ai pas d'réponses. Bonne journée à toi." Elle se détourne.~ */
  IF ~~ THEN REPLY #37162 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37145 /* ~Tu aperçois une vieille femme, vêtue de simples habits. Sa peau, pâle et jaunâtre, est abîmée par le temps. Elle te regarde d'un air las alors que tu approches. "Pourquoi est-ce que tu viens encore m'ennuyer ? Va-t'en !" Elle se détourne.~ */
  IF ~~ THEN REPLY #37163 /* ~Pars.~ */ EXIT
END
