// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~Tu vois un type maigre comme un clou, l'air épuisé. Ses habits empestent la sueur et la crasse. Il paraît à bout de souffle. Tu as beau t'approcher, il t'ignore. On dirait un manoeuvrier comme on en voit sur la place du marché.~ */
  IF ~~ THEN REPLY #9349 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~Cet homme lève la tête alors que tu approches… c'est l'un des hommes avec lesquels tu travaillais lorsque tu remplaçais Jhelai. "Salut, bienv'nue… sympa d'se r'voir." Il se met à parler plus bas. "Fais pas d'histoires et fais gaffe à Craddock… s'met rapidement en colère, tu sais."~ */
  IF ~~ THEN REPLY #22652 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END
