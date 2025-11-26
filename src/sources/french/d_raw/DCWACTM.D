// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~Cet homme regarde attentivement deux acteurs.~ */
  IF ~~ THEN REPLY #28178 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~Laisse l'homme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~L'homme se tourne vers toi, mais son attention est encore retenue par les acteurs. Il parle d'une voix étouffée : "Bonjour. Alors, qu'en penses-tu ? Celui de droite n'est pas si mauvais, mais son partenaire aurait bien besoin de cours, tu ne trouves pas ?"~ */
  IF ~~ THEN REPLY #28180 /* ~"Je ne sais pas vraiment."~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~"Oui, c'est un mauvais comédien."~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~"Non, en fait, je trouve que c'est un bon comédien."~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~"Peu importe… J'ai quelques questions…"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~"Hmmm." L'homme se concentre de nouveau sur les acteurs.~ */
  IF ~~ THEN REPLY #28182 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~Il se renfrogne et te parle à voix basse : "Pas maintenant, je les regarde jouer. Au revoir."~ */
  IF ~~ THEN REPLY #28184 /* ~"Juste quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~Il continue, toujours à voix basse, mais sur un ton plus menaçant : "Non. Laisse-moi ou je vais être obligé de demander aux gardes de t'emmener."~ */
  IF ~~ THEN REPLY #28186 /* ~"Bien, appelle-les."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~L'homme te salue, mais te fait signe de te taire.~ */
  IF ~~ THEN REPLY #28195 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~Pars.~ */ EXIT
END
