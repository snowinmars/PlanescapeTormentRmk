// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRELON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRELON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51289 /* ~This urn looks like it has been kept in a basement for one century too many. It seems to contain a large number of ashes, but there's no marks on the outside of the urn that says where these ashes may have come from.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #51291 /* ~Scatter some ashes into the air.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
IncrementGlobal("Pabulum","Global",1)
~ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #51292 /* ~Scatter some ashes into the air.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
DestroyPartyItem("Trelon",TRUE)
~ EXIT
  IF ~~ THEN REPLY #51293 /* ~Put the ashes away.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64965 /* ~This urn looks like it has been kept in a basement for one century too many. It seems to contain a large number of ashes, but there's no marks on the outside of urn that says where these ashes may have come from.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64966 /* ~Scatter some ashes into the air.~ */ DO ~IncrementGlobal("Pabulum","Global",1)
~ GOTO 2
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64967 /* ~Scatter some ashes into the air.~ */ GOTO 2
  IF ~~ THEN REPLY #64968 /* ~Put the ashes away.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64969 /* ~The ashes float gently to the ground like new fallen snow, but otherwise nothing happens.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64970 /* ~Put the ashes away.~ */ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64971 /* ~Discard the now empty urn.~ */ DO ~DestroyPartyItem("Trelon",TRUE)
~ EXIT
END
