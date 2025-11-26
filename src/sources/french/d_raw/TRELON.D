// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : TRELON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~TRELON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51289 /* ~Cette urne semble être restée enfermée dans une cave un bon siècle de trop. Apparemment, elle contient beaucoup de cendres, mais rien n'indique leur provenance.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #51291 /* ~Disperse un peu de cendres dans l'air.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
IncrementGlobal("Pabulum","Global",1)
~ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #51292 /* ~Disperse un peu de cendres dans l'air.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
DestroyPartyItem("Trelon",TRUE)
~ EXIT
  IF ~~ THEN REPLY #51293 /* ~Range les cendres.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64965 /* ~Il semble que cette urne ait séjourné dans une cave pendant un siècle de trop. Apparemment, elle contient des cendres mais rien sur l'urne n'indique d'où elles proviennent.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64966 /* ~Disperse des cendres dans l'air.~ */ DO ~IncrementGlobal("Pabulum","Global",1)
~ GOTO 2
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64967 /* ~Disperse des cendres dans l'air.~ */ GOTO 2
  IF ~~ THEN REPLY #64968 /* ~Range les cendres.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64969 /* ~Les cendres tourbillonnent lentement avant de toucher le sol, comme des flocons de neige fraîche, mais rien d'autre ne se produit. ~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64970 /* ~Vide les cendres.~ */ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64971 /* ~Débarrasse-toi de l'urne vide.~ */ DO ~DestroyPartyItem("Trelon",TRUE)
~ EXIT
END
