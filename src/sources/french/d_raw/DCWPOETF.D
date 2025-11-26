// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~Cette jeune femme séduisante regarde attentivement un poète d'un certain âge réciter des vers.~ */
  IF ~~ THEN REPLY #28197 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~Laisse la femme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~La femme se tourne vers toi, mais le poète retient encore son attention. Elle parle d'une voix étouffée : "Je te demanderais de baisser la voix." Elle désigne le poète. "Pas très classique, certes, mais le vieux bonhomme *a* de l'avenir."~ */
  IF ~~ THEN REPLY #28199 /* ~"Je ne sais pas vraiment."~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~"Oui, c'est un mauvais poète."~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~"Non, en fait, je trouve que c'est un bon poète."~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~"Peu importe… J'ai quelques questions…"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~La femme acquiesce lentement, les yeux toujours rivés sur le poète.~ */
  IF ~~ THEN REPLY #28201 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~Elle se renfrogne en baissant la voix : "Ce n'est pas le moment. Respecte le poète et tais-toi… Au revoir."~ */
  IF ~~ THEN REPLY #28203 /* ~"Juste quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~Elle continue, toujours à voix basse, mais sur un ton plus menaçant : "Ce n'est ni l'heure ni le lieu pour des questions. Laisse-moi ou j'appelle la garde."~ */
  IF ~~ THEN REPLY #28205 /* ~"Bien, appelle-les."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~La femme te salue, mais te fait signe de rester silencieux.~ */
  IF ~~ THEN REPLY #28656 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~Pars.~ */ EXIT
END
