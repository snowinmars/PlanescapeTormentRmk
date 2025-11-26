// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MODMITE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~MODMITE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64181 /* ~Ce sceptre magique permet à son possesseur de convoquer une à trois constructions modrone pour combattre ses ennemis. Les constructions combattent jusqu'à la mort sans aucune peur. ~ */
  IF ~~ THEN REPLY #64182 /* ~Utilise le.~ */ DO ~CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64183 /* ~Mets-le de côté.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 1 // from:
  SAY #64184 /* ~Ce sceptre magique permet à son possesseur de convoquer une à trois constructions modrone pour combattre ses ennemis. Les constructions combattent jusqu'à la mort sans aucune peur. ~ */
  IF ~~ THEN REPLY #64185 /* ~Utilise le.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64186 /* ~Mets-le de côté.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY #64188 /* ~Ce sceptre magique permet à son possesseur de convoquer une à trois constructions modrone pour combattre ses ennemis. Les constructions combattent jusqu'à la mort sans aucune peur. ~ */
  IF ~~ THEN REPLY #64189 /* ~Utilise le.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64191 /* ~Mets-le de côté.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 3 // from:
  SAY #67150 /* ~Le sceptre est froid et sans vie dans ta main. Peut-être ne fonctionne-t-il pas là où tu te trouves.~ */
  IF ~~ THEN REPLY #67151 /* ~Range-le.~ */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 4 // from:
  SAY #67152 /* ~Le sceptre est froid et sans vie dans ta main. Peut-être ne fonctionne-t-il pas là où tu te trouves.~ */
  IF ~~ THEN REPLY #67153 /* ~Range-le.~ */ EXIT
END
