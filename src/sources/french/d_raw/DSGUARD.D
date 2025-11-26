// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~"Désolé, monsieur. Personne n'a le droit d'entrer avant le retour du régisseur Sandoz. Je ne puis te laisser passer."~ */
  IF ~~ THEN REPLY #46768 /* ~"Qu'est-ce que tu peux me dire sur lui ?"~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~"C'est un croyant, monsieur, un vrai croyant. Mais il lui arrive parfois de déprimer et tous les voyages qu'il effectue finissent par peser. À trop se déplacer dans le multivers, on en vient à perdre son sens des perspectives, soit dans un sens, soit dans l'autre - de toute façon, ça n'a rien de bon. J'espère qu'il nous reviendra en bon état."~ */
  IF ~~ THEN REPLY #46908 /* ~"On verra bien. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~"Bonjour. Est-ce Keldor qui t'envoie ? Depuis que Sandoz est rentré, on l'entend bougonner derrière la porte. J'espère que tu pourras faire quelque chose pour lui."~ */
  IF ~~ THEN REPLY #46910 /* ~"On verra bien." Puis tu cries à travers la porte : "Sandoz ! Il faut que je te parle !"~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~"Tu veux lui parler ? Bonne chance…"~ */
  IF ~~ THEN REPLY #46912 /* ~"Merci." Puis tu cries à travers la porte : "Sandoz ! Il faut qu'on parle !"~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~"Monsieur." Le garde ne paraît pas disposé à en dire plus.~ */
  IF ~~ THEN REPLY #46914 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~Le garde te regarde avec amertume. "Il est déjà mort. Es-tu content de toi ? Descends et parle à Keldor."~ */
  IF ~~ THEN REPLY #63355 /* ~"Bien. Au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~"Monsieur." Le garde ne paraît pas disposé à en dire plus.~ */
  IF ~~ THEN REPLY #64647 /* ~"Au revoir."~ */ EXIT
END
