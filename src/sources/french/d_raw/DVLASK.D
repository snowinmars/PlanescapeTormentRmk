// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~Contrairement aux autres Récupérateurs que tu connais, celui-ci porte une robe de belle qualité. "Ah, un autre mort qui vient nous rendre visite. Je te prie d'excuser la pagaille ; mes collègues n'ont pas eu le temps de ranger."~ */
  IF ~~ THEN REPLY #45718 /* ~"Il n'existe aucune issue."~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~Vlask ricane doucement. "Encore toi ? Il est rare que nos clients reviennent nous voir, mes amis et moi. Je serai bref : le prix de la clé est passé à deux cents pièces de cuivre."~ */
  IF ~~ THEN REPLY #45720 /* ~"Je suis revenu pour te tuer."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~"Prends l'argent."~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~"Je n'en ai pas assez."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~"Bien sûr, oui. La porte est juste là. Mais tu as besoin d'une bille de ce type pour activer le portail." Ce disant, il sort ce qui ressemble à une bille de verre. "Bon, si on discutait du prix ?"~ */
  IF ~~ THEN REPLY #45725 /* ~"Je crois que je vais me contenter de te tuer."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~"Je t'écoute…"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~"C'est simple : tu nous verses cent pièces de cuivre, à mes camarades et à moi, et je te donne la clé du portail."~ */
  IF ~~ THEN REPLY #45728 /* ~"Et si je refuse de payer ?"~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~"Voilà ton argent. Donne-moi la clé."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~"Je n'en ai pas assez."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~"Dans ce cas, mes amis et moi-même n'aurons d'autre choix que de vendre ta dépouille aux Hommes-Poussière. D'une manière ou d'une autre, nous serons payés."~ */
  IF ~~ THEN REPLY #45735 /* ~"Je crois que je vais me contenter de te tuer."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~"Voilà ton argent. Donne-moi la clé."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~"Je n'en ai pas assez."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~"Mes camarades et moi sommes heureux d'avoir fait affaire avec toi. Tu n'as qu'à broyer la bille pour activer le portail."~ */
  IF ~~ THEN REPLY #45739 /* ~"Au revoir."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~"C'est bien dommage ! Préparez-le pour les Hommes-Poussière, mes petits !"~ */
  IF ~~ THEN REPLY #45741 /* ~"Prépare-toi à mourir…"~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
