// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37249 /* ~Tu aperçois un vieil homme vêtu de vêtements simples. Sa peau pâle et jaunâtre est marquée par l'âge. Il te regarde d'un air las alors que tu approches.~ */
  IF ~~ THEN REPLY #37260 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37261 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37250 /* ~"Salut à toi aussi, jeunot. Qu'est-ce que j'peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #37262 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37263 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37251 /* ~Il fronce les sourcils et son visage disparaît presque entièrement sous les rides. "J'ai l'temps pour une question ou deux, mais rapides."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37264 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37265 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37266 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37267 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37252 /* ~"Lothar… Reconnais  pas c'nom. Peux pas t'aider. Demande aux alentours, quelqu'un doit forcément savoir."~ */
  IF ~~ THEN REPLY #37268 /* ~"Je vois. Tu sais qui pourrait m'aider ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37269 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37253 /* ~Il secoue la tête. "Nan. Nous les gens simples, on fourre pas not' nez dans ces choses." Il te regarde d'un air las.~ */
  IF ~~ THEN REPLY #37270 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37271 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37254 /* ~"Perdu un crâne…" Il s'esclaffe. "Eh ben, j'peux pas dire que j'ai déjà entendu celle-là. Sais pas quoi t'dire."~ */
  IF ~~ THEN REPLY #37273 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #37272 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37255 /* ~Il soupire et de regarde d'un air fatigué. "Écoute, jeunot. J'suis ici pour faire mes achats, et t'es pas un marchand. Tu m'suis ? Non ? Alors fiche le camp !"~ */
  IF ~~ THEN REPLY #37274 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #37275 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37256 /* ~"Ben, j'ai pas de réponses. Bonne journée à toi." Il se détourne.~ */
  IF ~~ THEN REPLY #37276 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37257 /* ~Tu aperçois un vieil homme vêtu de vêtements simples. Sa peau pâle et jaunâtre est marquée par l'âge. Il te regarde d'un air las à ton approche. "Encore toi ? Va-t'en !" Il se détourne.~ */
  IF ~~ THEN REPLY #37258 /* ~Pars.~ */ EXIT
END
