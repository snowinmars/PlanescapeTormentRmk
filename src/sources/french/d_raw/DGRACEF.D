// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~"Ainsi, tu es l'araignée au centre de tout cela !"~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~"J'ai de nombreuses questions auxquelles tu pourrais répondre. Tes objectifs dans cette affaire ne sont pas très clairs."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~"Mon cœur n'est pas noir et je ne crains pas non plus pour ma vie."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~"Quelqu'un qui m'est précieux se trouve dans ta forteresse. Je ne partirai pas tant que nous ne serons pas réunis et qu'il n'aura pas résolu cette affaire de manière satisfaisante."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~"Mon cœur n'est pas noir et je ne crains pas non plus pour ma vie."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~"Mes compagnons, mes amis, sont ici dans ta forteresse. Je ne partirai pas tant que nous ne serons pas réunis et que l'homme que nous servons n'aura pas résolu cette affaire de manière satisfaisante."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~"Aussi courtoise que ton offre puisse être, je refuse d'abandonner mes amis."~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~"Quant à ce modeste prix qu'il lui faut te payer, cela signifie la mort pour lui. Cela fait quelque temps que je voyage avec cet homme et il y a de nombreuses choses que j'aimerais qu'il n'oublie pas."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~"C'est *ton* jugement."~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~"Le fait est que je ne souhaite pas qu'il m'oublie ni tout ce qu'il a enduré pour atteindre cet endroit."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~"Il a beaucoup souffert et il m'est plus sympathique que la créature arrogante qui se tient devant moi et qui se bat comme les lâches, préférant tuer à distance pour que ses adversaires ne puissent l'atteindre."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~"Tu ne le tourmenteras plus."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
