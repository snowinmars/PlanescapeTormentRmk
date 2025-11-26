// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~Ce devrait être impossible mais cette masse répugnante, douce au toucher, IRRADIE le mal. De temps à autre, un filet de brume grise s'élève du cœur et se dissipe. ~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~Souhaite la mort de tes ennemis.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~Souhaite la mort de tes ennemis.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~Range la masse immonde.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~Cette masse immonde est molle au toucher, et de façon étrange, SEMBLE maléfique. De temps à autre, une bouffée de fumée grise s'en échappe pour s'évanouir dans l'air.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~Souhaite la mort de tes ennemis.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~Souhaite la mort de tes ennemis.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~Écarte l'immonde masse.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~Une bouffée de fumée grise s'échappe du cœur, puis, plus rien. ~ */
  IF ~~ THEN REPLY #64977 /* ~Range la masse immonde.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~Le cœur se dilate et se contracte rapidement, comme s'il battait. Tout à coup, les pulsations s'arrêtent et le cœur se change en poussière dans tes mains. ~ */
  IF ~~ THEN REPLY #64979 /* ~Répands les cendres sur le sol. ~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
