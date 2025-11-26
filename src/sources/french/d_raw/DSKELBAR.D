// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2565 /* ~Le squelette se tourne vers toi, en traînant les pieds. Plusieurs de ses os sont maintenus par des bandes de cuir, et une tunique verte tachée tombe de ses épaules.~ */
  IF ~~ THEN REPLY #2567 /* ~"Belle tunique. Vraiment."~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2568 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  Global("Skeleton_Examine","GLOBAL",0)
~ THEN REPLY #2569 /* ~Examine le squelette.~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2566 /* ~Examine le squelette.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #7072 /* ~"Que penses-tu de ce squelette, Morte ? Est-ce qu'on pourrait s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 127
  IF ~~ THEN REPLY #7073 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2570 /* ~Le squelette ne répond pas.~ */
  IF ~~ THEN REPLY #2571 /* ~"C'était sympa de parler avec toi, tas d'os. Prends soin de toi."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2572 /* ~Ce squelette ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #2573 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #7069 /* ~Quelqu'un a pris soin d'attacher les os de ce squelette à l'aide de lanières de cuir cousues dans le corps de telle façon qu'elles ressemblent à des muscles et des tendons. Les lanières sont fixées à des boulons enfoncés dans les articulations. Ce squelette est en bon état ; ses os, fraîchement enduis de chaux, ne portent plus aucune trace du corps d'origine.~ */
  IF ~~ THEN REPLY #7074 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #7070 /* ~Il ressemble aux squelettes de la Morgue. Quelqu'un a pris soin d'attacher les os de ce squelette à l'aide de lanières de cuir cousues dans le corps de telle façon qu'on dirait des muscles et des tendons. Contrairement aux squelettes de la Morgue, les articulations ne comportent ici aucune attache… On voit clairement comment les articulations sont connectées. Dans l'ensemble, ce squelette est en bon état ; ses os, fraîchement enduis de chaux, ne portent plus aucune trace du corps d'origine.~ */
  IF ~~ THEN REPLY #7075 /* ~Laisse le squelette tranquille.~ */ EXIT
END
