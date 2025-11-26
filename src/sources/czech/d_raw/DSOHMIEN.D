// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~Odporná masa je měkká na dotek, a i když by neměla, je CÍTIT zlem. Občas z ní unikne obláček šedé mlhy a rozptýlí se do vzduchu.
~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~Přej si smrt svých nepřátel.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~Přej si smrt svých nepřátel.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~Odlož to.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~Tohle páchnoucí maso je jemné na dotyk a ačkoli se to zdá nemožné, CÍTÍ to zlo. Občas se závoj šedé mlhy vyvalí z tohohle srdce a rozptýlí se ve vzduchu.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~Přej si smrt svých nepřátel.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~Přej si smrt svých nepřátel.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~Odlož páchnoucí maso.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~Chuchvalec šedého dýmu se vyvalil ze srdce a nic se nestalo.~ */
  IF ~~ THEN REPLY #64977 /* ~Odlož páchnoucí maso.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~Srdce se rychle roztahuje a pak smršťuje jako by tlouklo. Náhle však přestalo a rozpadlo ve tvých rukou na prach.~ */
  IF ~~ THEN REPLY #64979 /* ~Polož popel na zem.~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
