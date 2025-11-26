// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~Cet homme regarde attentivement un poète d'un certain âge réciter des vers.~ */
  IF ~~ THEN REPLY #28211 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~Laisse-le tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~L'homme se tourne vers toi, mais le poète retient encore son attention. Il parle d'une voix étouffée : "Bienvenue." Il s'interrompt un moment, puis chuchote : "Ce n'est pas ce que j'ai entendu de mieux, mais il y a pire, hein ?"~ */
  IF ~~ THEN REPLY #28214 /* ~"Je ne sais pas vraiment."~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~"Oui, c'est un mauvais poète."~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~"Non, en fait, je trouve que c'est un bon poète."~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~"Peu importe… J'ai quelques questions…"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~"Hmmm." L'homme acquiesce et continue de regarder le vieux poète.~ */
  IF ~~ THEN REPLY #28219 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~Il se renfrogne et parle à voix basse : "Non, monsieur, pas maintenant. J'écoute les vers de cet homme. Au revoir."~ */
  IF ~~ THEN REPLY #28222 /* ~"Juste quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~Il continue, toujours à voix basse, mais sur un ton plus menaçant : "Tais-toi ou va-t'en, sinon j'appelle les gardes."~ */
  IF ~~ THEN REPLY #28225 /* ~"Bien, appelle-les."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~L'homme te salue, mais te fait signe de te taire.~ */
  IF ~~ THEN REPLY #28228 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~Pars.~ */ EXIT
END
