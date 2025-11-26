// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~Cette jeune femme en proie à la panique court vers toi, le souffle court, des larmes ruisselant sur son visage. "Pitié, m'sieur ! Aide-moi à les arrêter ! Ils vont *s'entre-tuer*, ils vont s'entre-tuer !"~ */
  IF ~~ THEN REPLY #33509 /* ~"Qu'est-ce qui se passe ?"~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~"Excuse-moi, ce n'est pas mon problème. Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~"C'est mon frère et mon amant… Ils se battent ! Ils s'insultent pour l'instant, mais j'sais qu'ils vont s'saigner d'une minute à l'autre ! Aide-moi à les arrêter, j't'en supplie !"~ */
  IF ~~ THEN REPLY #33511 /* ~"Je vais aller leur parler tout de suite…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~"Je veux bien aller leur parler, mais je ne travaille pas gratuitement…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~"Excuse-moi, ce n'est pas mon problème. Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~"Mille mercis, affranchi ! Ils sont juste là-bas !"~ */
  IF ~~ THEN REPLY #33514 /* ~"Je reviendrai dès que leur aurai parlé."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~"J'peux te donner du jonc, affranchi… au moins une centaine de communs… mais arrête-les !"~ */
  IF ~~ THEN REPLY #33515 /* ~"Je reviendrai dès que leur aurai parlé."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~"Finalement, ça ne me regarde pas. Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~"Merci, matois, merci d'avoir arrêté ce combat. J'avais si peur qu'ils s'entretuent, et ce serait terrible de perdre mon frère ou mon cher Maeth."~ */
  IF ~~ THEN REPLY #33517 /* ~"Pas de problème. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~"Une marque de gratitude serait la bienvenue, alors…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~Le visage de la femme s'assombrit immédiatement. "Où est-ce que tu crois que tu es, matois ? Dans le Quartier d'la Dame ? Si j'avais du jonc, j'le dépenserais en nourriture ! Désolée, j'peux pas te *récompenser*… j'ai qu'ma gratitude à t'offrir." La femme grogne et cesse de te regarder.~ */
  IF ~~ THEN REPLY #33519 /* ~Pars.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~"S'il te plaît, matois! Arrête-les !"~ */
  IF ~~ THEN REPLY #33520 /* ~"Je vais essayer…"~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~"En fait, je trouve que ça ne me regarde pas. Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~"Merci, matois, merci d'avoir arrêté ce combat. J'avais si peur qu'ils s'entretuent, et ce serait terrible de perdre mon frère ou mon cher Maeth."~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~"Ça m'a fait plaisir de t'aider. Au revoir."~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~"Une marque de gratitude serait la bienvenue, alors…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~"Bien sûr. Donne-moi ma récompense maintenant…"~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~Elle fait un signe de tête et extirpe un bracelet en argent des plis de ses vêtements. "Tiens, matois… c'est mon seul trésor. Mais, leurs deux vies m'étaient chères…" La femme soupire tristement.~ */
  IF ~~ THEN REPLY #33525 /* ~"Attends… Tiens, reprends-le. Garde ton bracelet."~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~Les yeux de la femme s'éclairent. "Merci, matois ! Que l'ombre de la Dame t'épargne !"~ */
  IF ~~ THEN REPLY #33527 /* ~"Il n'y a pas de quoi… Au revoir."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~"Encore merci d'avoir arrêté ce combat, matois."~ */
  IF ~~ THEN REPLY #33528 /* ~"Pas de problème. Au revoir."~ */ EXIT
END
