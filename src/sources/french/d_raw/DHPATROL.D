// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHPATROL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHPATROL~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27619 /* ~Ce grand personnage vêtu d'une armure rouge reste immobile, en examinant attentivement les passants. Tu te souviens vaguement que cette armure ornée est l'attribut des officiers de l'Harmonium, qui font respecter l'ordre dans la cité.~ */
  IF ~~ THEN REPLY #27632 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #27620 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27621 /* ~Tandis qu'il te parle, il observe les habitants du Quartier : "Circule."~ */
  IF ~~ THEN REPLY #27633 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #27634 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27622 /* ~Toujours absorbé dans la contemplation des passants, il prend malgré tout un moment pour te regarder dans les yeux. "J'ai rien à te dire. Circule."~ */
  IF ~~ THEN REPLY #27635 /* ~"J'ai juste besoin de quelques réponses…"~ */ GOTO 3
  IF ~~ THEN REPLY #27636 /* ~"J'ai besoin de ton aide…"~ */ GOTO 4
  IF ~~ THEN REPLY #27637 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27638 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27623 /* ~Il secoue la tête. "Parle plutôt à un citoyen. J'ai du travail, moi… et pas question de le négliger pour parler à l'un ou à l'autre. Allez, circule maintenant."~ */
  IF ~~ THEN REPLY #27639 /* ~"Mais j'ai besoin de ton aide…"~ */ GOTO 4
  IF ~~ THEN REPLY #27640 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27641 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #27624 /* ~Il soupèse son arme. "Tu veux de l'aide ? Un crime a été commis ?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27642 /* ~"Eh bien… non. J'ai juste quelques questions."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27643 /* ~"Eh bien… non. J'ai juste quelques questions."~ */ GOTO 6
  IF ~~ THEN REPLY #27644 /* ~"Non, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27625 /* ~Il soupire. "Je comprends que tu aies des questions, et dans d'autres circonstances, je t'aurais volontiers aidé. Mais-." Il s'interrompt pour dévisager avec suspicion un passant, puis son attention revient vers toi. "pas maintenant en tout cas, alors… circule. De suite."~ */
  IF ~~ THEN REPLY #27645 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27646 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27626 /* ~"Écoute, bige, j'ai un -" Il s'interrompt pour dévisager avec suspicion un passant, puis son attention revient vers toi. "J'ai certaines tâches à accomplir et ce n'est pas en parlant à un bougre enfumé qui recherche quelqu'un ou qui veut qu'on lui explique comment aller je ne sais où que je vais les accomplir. Circule."~ */
  IF ~~ THEN REPLY #27647 /* ~"Et si j'ai envie de rester ici ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27648 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0
  SAY #27627 /* ~Il hausse les épaules, le mouvement faisant tinter son armure. "T'es libre de rester ici, mais pas de harceler un représentant de la loi. Je te suggère de partir, avant qu'il ne t'arrive des… ennuis. Au revoir."~ */
  IF ~~ THEN REPLY #27649 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27628 /* ~Cet officier de l'Harmonium surveille les rues et les passants des environs et guette tout signe de troubles. Tu penses l'avoir déjà rencontré, mais c'est difficile à dire avec le heaume et l'uniforme de l'Harmonium.~ */
  IF ~~ THEN REPLY #27650 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #27651 /* ~Laisse l'officier tranquille.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27629 /* ~Tu es sûr que cet homme est un membre de l'Harmonium, une faction qui était récemment à ta recherche. Il ne semble pas t'avoir remarqué.~ */
  IF ~~ THEN REPLY #27631 /* ~"Bonjour…"~ */ GOTO 10
  IF ~~ THEN REPLY #27652 /* ~Pars avant qu'il te voie.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27630 /* ~Les yeux de l'homme s'écarquillent à travers les fentes de son heaume. "C'est lui !" Il se prépare à charger, en hurlant : "Attrapez cet homme, mort ou vif !"~ */
  IF ~~ THEN REPLY #27653 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
