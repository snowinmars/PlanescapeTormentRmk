// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~"Par les Abysses, qui es-tu ? Va voir William le Véreux - s'il aime pas tes réponses, il te zigouillera. Si tu vas pas lui parler, on te zigouillera. Maintenant, pars !"~ */
  IF ~~ THEN REPLY #3550 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~"Par les Puissances ! Je t'avais dit d'aller voir William le Véreux ! Bige, pauvre imbécile ! SHIVS DE SOMBRALLÉE ! À L'ATTAQUE !"~ */
  IF ~~ THEN REPLY #3552 /* ~Sauve-toi.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~Attaque.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~"Tu as tué ce vigile ? Bien. Il était vraiment gênant. Va voir William - il te donnera quelque chose."~ */
  IF ~~ THEN REPLY #3555 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~"Arrête de me parler et élimine cette saleté de vigile ! Nos vies sont en danger, bougre !"~ */
  IF ~~ THEN REPLY #3557 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~"Je savais que cette sainte nitouche y passait aussi de temps à autre. Va voir William le Véreux. Il a quelque chose à te dire."~ */
  IF ~~ THEN REPLY #3559 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~"Tu n'as pas un autre endroit où tu peux aller te fourrer ?"~ */
  IF ~~ THEN REPLY #3561 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~"Meurs ! SHIVS DE SOMBRALLÉE ! À L'ATTAQUE !"~ */
  IF ~~ THEN REPLY #3563 /* ~Attaque.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~Sauve-toi.~ */ EXIT
END
