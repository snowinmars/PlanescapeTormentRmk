// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~Le jeune acteur a l'air trop accaparé par son rôle pour s'entretenir avec toi. À ses pieds gît une casquette en feutre contenant quelques pièces de cuivre. De temps en temps, un passant lui jette une pièce ou deux.~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~Jette une pièce dans la casquette.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~Vole le contenu de la casquette quand personne ne regarde.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~Vole le contenu de la casquette quand personne ne regarde.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~Ta pièce tombe dans la casquette avec un joli cliquetis. Sans s'interrompre pour autant, l'acteur te remercie d'un petit signe de tête.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~Vole le contenu de la casquette quand personne ne regarde.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~Vole le contenu de la casquette quand personne ne regarde.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~Au moment où l'acteur est pleinement accaparé par son rôle, tu t'empares de la douzaine de pièces que contient sa casquette.~ */
  IF ~~ THEN REPLY #46149 /* ~Pars discrètement.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~On t'a vu essayer de voler les pièces et quelqu'un appelle la garde.~ */
  IF ~~ THEN REPLY #46151 /* ~Pars.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~Ce jeune acteur est bien trop accaparé par son rôle pour prendre le temps de te parler.~ */
  IF ~~ THEN REPLY #46153 /* ~Pars.~ */ EXIT
END
