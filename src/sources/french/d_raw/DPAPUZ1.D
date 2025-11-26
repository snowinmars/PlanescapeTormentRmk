// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~On dirait que le dabus a essayé de détruire cette ancienne structure. Plusieurs planches de la charpente du bâtiment sont chancelantes, les clous ont été enlevés.~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~Utilise le marteau pour reclouer les planches.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~Tu remets avec soin les planches à leur place. En reculant pour examiner ton travail, tu remarques que, curieusement, le bâtiment n'a plus l'air aussi vieux qu'au premier coup d'œil.~ */
  IF ~~ THEN REPLY #49602 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~Cette maison branlante semble être là depuis des siècles. Ses murs en bois sont en piteux état, usés par le temps. Certaines planches semblent avoir été soulevées récemment de ce côté-ci.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~Examine la structure.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~Grâce à ces planches bien reclouées, ce vieux bâtiment a retrouvé un peu de son charme d'antan.~ */
  IF ~~ THEN REPLY #59108 /* ~Pars.~ */ EXIT
END
