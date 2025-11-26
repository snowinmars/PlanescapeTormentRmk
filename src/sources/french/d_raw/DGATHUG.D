// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~"Hé, voyageur ! Tu es maintenant sur le territoire des Anges Rasoirs… va parler à Krystall, notre chef. Elle a quelque chose à te dire."~ */
  IF ~~ THEN REPLY #3365 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~"Écoute-moi bien : ne me parle pas. Va voir Krystall. Va voir Krystall. Va voir Krystall. Compris ?"~ */
  IF ~~ THEN REPLY #3566 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~"Hé, mon pote… merci d'avoir éliminé le vigile. Je parle au nom de tous : nous te sommes reconnaissants. Krystall doit être contente, elle aussi."~ */
  IF ~~ THEN REPLY #3568 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~"Merci pour ton aide. Merci d'avoir éliminé le vigile. Bonne chance !"~ */
  IF ~~ THEN REPLY #3570 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~"Cela fera fuir les Shivs de Sombrallée ! L'allée est à nous !"~ */
  IF ~~ THEN REPLY #3572 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~"Donne une bonne leçon à ces Shivs de Sombrallée !"~ */
  IF ~~ THEN REPLY #3574 /* ~Pars.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~"Tu oses montrer ton visage ici ? Crève, démon !"~ */
  IF ~~ THEN REPLY #3576 /* ~Pars.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END
