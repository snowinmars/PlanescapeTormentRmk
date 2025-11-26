// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~Cuchnąca masa jest miękka w dotyku, i choć tak nie powinno być, czuć bijące od niej zło. Czasami, z jej środka wydobywa się wiązka szarej mgiełki, która rozprasza się w powietrzu.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~Życz śmierci swoim wrogom.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~Życz śmierci swoim wrogom.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~Odłóż ją.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~Cuchnąca masa jest miękka w dotyku, i choć tak nie powinno być, czuć bijące od niej zło. Czasami, z jej środka wydobywa się wiązka szarej mgiełki, która rozprasza się w powietrzu.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~Życz śmierci swoim wrogom.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~Życz śmierci swoim wrogom.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~Odłóż ją.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~Z jej środka wydobywa się wiązka szarej mgiełki. Nie dzieje się nic więcej.~ */
  IF ~~ THEN REPLY #64977 /* ~Odłóż ją.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~Serce kurczy się i rozkurcza gwałtownie, jak gdyby biło. Nagle zamiera i rozpada się w pył.~ */
  IF ~~ THEN REPLY #64979 /* ~Wyrzuć pył na ziemię.~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
