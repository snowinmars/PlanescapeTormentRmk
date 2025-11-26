// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~Cette jeune femme séduisante regarde avec attention deux acteurs en train de jouer.~ */
  IF ~~ THEN REPLY #28164 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~Laisse la femme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~La femme se tourne vers toi, mais les acteurs retiennent toujours son attention. Elle parle d'une voix étouffée : "Bonjour monsieur. Tu regardes depuis longtemps ? Celui de gauche n'est pas mauvais, mais son partenaire aurait bien besoin de cours, tu ne trouves pas ?"~ */
  IF ~~ THEN REPLY #28166 /* ~"Je ne sais pas vraiment."~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~"Oui, c'est un mauvais comédien."~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~"Non, en fait, je trouve que c'est un bon comédien."~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~"Peu importe… J'ai quelques questions…"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~La femme acquiesce pour toute réponse et se remet à regarder attentivement les acteurs.~ */
  IF ~~ THEN REPLY #28170 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~Elle se renfrogne et parle à voix basse : "S'il te plaît, sois plus poli : j'aime regarder le spectacle. Au revoir."~ */
  IF ~~ THEN REPLY #28172 /* ~"Juste quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~Elle continue, toujours à voix basse, mais sur un ton plus menaçant : "Je te demande de te taire ou de quitter les lieux, ou tu vas m'obliger à appeler les gardes."~ */
  IF ~~ THEN REPLY #28174 /* ~"Bien, appelle-les."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~La femme te salue, mais te fait signe de rester silencieux.~ */
  IF ~~ THEN REPLY #28176 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~Pars.~ */ EXIT
END
