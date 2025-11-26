// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~Ces personnes semblent agacées par le fait que tu les empêches d'observer en paix le jugement et l'exécution qui vont avoir lieu. "Ouais ?"~ */
  IF ~~ THEN REPLY #57408 /* ~"Que se passe-t-il ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~"Une superbe exécution bien sanglante, si on réussit à faire comme *on* veut." Ils sourient et haussent les sourcils.~ */
  IF ~~ THEN REPLY #57411 /* ~"Qu'a fait l'accusé ?"~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~Ils haussent les épaules. "Et après ? Coupable, coupable, coupable, c'est tout. C'est le seul moyen de voir un peu de sang !" Ils se frottent les mains avec impatience.~ */
  IF ~~ THEN REPLY #57414 /* ~"Vous condamnez un homme à mort pour vous *amuser* ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~Ils écarquillent les yeux. "Je ne condamne *personne* bige - c'est le travail du juge. Si ça te pose des problèmes, va lui en parler. Fiche-moi la paix."~ */
  IF ~~ THEN REPLY #57417 /* ~Pars.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~Cette personne te jette à peine un coup d'œil. "Fiche-moi la paix, d'accord ? Je répondrai pas à tes questions, alors va-t'en."~ */
  IF ~~ THEN REPLY #57419 /* ~Pars.~ */ EXIT
END
