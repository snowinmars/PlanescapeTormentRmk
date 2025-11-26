// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRELON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRELON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51289 /* ~Urna vypadá, že se ji někdo držel ve sklepě hezkých pár století. Vypadá to, že obsahuje spoustu popela, ale na urně není žádná značka, která by určila, odkud popel pochází.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #51291 /* ~Hoď do vzduchu trochu popela.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
IncrementGlobal("Pabulum","Global",1)
~ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #51292 /* ~Hoď do vzduchu trochu popela.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
DestroyPartyItem("Trelon",TRUE)
~ EXIT
  IF ~~ THEN REPLY #51293 /* ~Hoď do vzduchu trochu popela.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64965 /* ~Tahle urna vypadá, jako kdyby byla v tomhle století ve sklepení příliš dlouho. Vypadá, jako kdyby byla plná popela, ale není tu žádné označení odkud se ten popel vzal.  ~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64966 /* ~Rozpraš trochu popela do vzduchu.~ */ DO ~IncrementGlobal("Pabulum","Global",1)
~ GOTO 2
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64967 /* ~Rozpraš trochu popela do vzduchu.~ */ GOTO 2
  IF ~~ THEN REPLY #64968 /* ~Dej popel pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64969 /* ~Popel jemně dopadal na zem jako čerstvý sníh, ale jinak nic se nestalo.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64970 /* ~Dej popel pryč.~ */ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64971 /* ~Odlož teď prázdnou urnu.~ */ DO ~DestroyPartyItem("Trelon",TRUE)
~ EXIT
END
