// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~Cette pierre d'un blanc grisâtre - retenue dans un filet de bandes d'argent gravées - bat en émettant une lumière. Sur la partie inférieure était inscrit quelque chose, mais l'écriture a été effacée.~ */
  IF ~~ THEN REPLY #54102 /* ~Pars.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~J'ai découvert une salle secrète sous la Maison de tolérance. À l'intérieur, il y avait un total de dix pierres luisantes, dont une était 'vide'. Quelque chose avait été noté à sa base, mais l'inscription avait été effacée.~ */ EXIT
END
