// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~"Les puissances soient louées - te voilà, chef. Fais-moi sortir d'ici.~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~"Qu'est-ce que tu fais là-haut ?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~"Pourquoi ?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~"C'est ce que je fais, Morte. C'est ce que je fais."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~"Cette vermine de rat-garou m'a volé dans l'allée et m'a amené ici ! Allez, chef… il faut qu'on sorte d'ici ! Cet endroit est mauvais !"~ */
  IF ~~ THEN REPLY #28722 /* ~"Tu ne peux pas descendre en flottant ?"~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~"Je ne sais pas, tu as l'air bien au chaud au milieu de tous ces crânes…"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~"Je ne peux pas ! J'ai essayé ! Allez, fais-moi descendre de là…"~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~"Arrête de blaguer, chef… il faut qu'on sorte d'ici avant…"~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~"Oh… non." Morte te chuchote furieusement. "Ne vexe PAS cet affranchi, chef… il aurait vite fait de t'inscrire dans le livre des morts."~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~Morte parle plus fort. Sa voix a l'air triste, effrayé et respectueux. Il est évident pour Morte qu'il ne faut pas plaisanter avec le caractère de Lothar. "C'est pas des paroles en l'air. Écoutez, monsieur, laissez-moi partir et on en parle plus. De l'eau sous les ponts, hein ?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~Morte parle plus fort. "C'est pas des paroles en l'air. Écoutez, monsieur, laissez-moi partir et on en parle plus. De l'eau sous les ponts, hein ?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~"Ça me va, chef et c'est moi qui suis coincé ici. Laisse tomber, d'accord ? Va chercher le crâne et reviens me chercher."~ */
  IF ~~ THEN REPLY #28724 /* ~"Bien. Lothar, je reviendrai le chercher. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~"MOI, ça ne va pas, Morte. Je me battrai avec toi pour le récupérer, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~"Chef, non ! Il va t'exterminer !" Morte a l'air absolument terrifié. "C'est un des plus grands grossiums de toute cette foutue Cage !"~ */
  IF ~~ THEN REPLY #28726 /* ~"Dommage. Rends-le-moi, Lothar."~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~"Bien. Je reviendrai le chercher, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~"Chef, ne le pousse pas ! Laisse tomber !"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~Il s'agit d'une étagère sans poussière avec un espace vide - de la taille d'un crâne - entre deux crânes grimaçants.~ */
  IF ~~ THEN REPLY #54292 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~C'est une armoire dépoussiérée avec un espace libre, de la taille d'un crâne, entre deux crânes grimaçants.~ */
  IF ~~ THEN REPLY #54291 /* ~Laisse-le tranquille.~ */ EXIT
END
