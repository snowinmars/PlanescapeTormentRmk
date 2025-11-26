// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK2~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64234 /* ~On dirait que cette énorme horloge s'est en partie amalgamée à la pierre noire qui l'entoure… en l'observant, tu sens soudain des picotements à l'arrière de ton crâne - tu as déjà vu une horloge comme celle-ci, mais ce n'était pas la même. Elle est importante mais tu ignores pourquoi.~ */
  IF ~~ THEN REPLY #64236 /* ~Laisse l'horloge.~ */ JOURNAL #64240 /* ~J'ai découvert une grande horloge détruite à l'intérieur de la forteresse. En l'apercevant, j'ai eu la sensation qu'il y avait quelque chose à *voir* dessus, mais j'ignore de quoi il s'agit. Peut-être ai-je vu une horloge similaire de par le passé.~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #64235 /* ~On dirait que cette énorme horloge s'est en partie amalgamée à la pierre noire qui l'entoure… contrairement à l'autre horloge avec le message, celle-ci ne porte aucune inscription. Apparemment, ta précédente incarnation n'a jamais découvert cette horloge.~ */
  IF ~~ THEN REPLY #64237 /* ~Laisse l'horloge.~ */ EXIT
END
