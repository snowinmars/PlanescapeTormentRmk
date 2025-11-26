// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : TRELON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~TRELON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51289 /* ~Diese Urne sieht aus, als habe sie ein Jahrhundert zu lange in irgendeinem Keller zugebracht. Sie scheint eine große Anzahl unterschiedlicher Aschen zu enthalten. Es finden sich allerdings keine Hinweise darauf, wo diese herkommen könnten.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #51291 /* ~Streu etwas Asche in die Luft.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
IncrementGlobal("Pabulum","Global",1)
~ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #51292 /* ~Streu etwas Asche in die Luft.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
DestroyPartyItem("Trelon",TRUE)
~ EXIT
  IF ~~ THEN REPLY #51293 /* ~Stell die Asche weg.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64965 /* ~Die Urne sieht aus, als hätte sie hundert Jahre zu lange im Keller gelegen. Sie scheint große Mengen Asche zu enthalten, doch es steht nichts außen auf der Urne, was darauf hindeutet, woher diese Asche stammt.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64966 /* ~Zerstreu etwas von der Asche in der Luft.~ */ DO ~IncrementGlobal("Pabulum","Global",1)
~ GOTO 2
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64967 /* ~Zerstreu etwas von der Asche in der Luft.~ */ GOTO 2
  IF ~~ THEN REPLY #64968 /* ~Stell die Asche weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64969 /* ~Die Asche rieselt langsam zu Boden, wie Neuschnee, aber ansonsten geschieht nichts.~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64970 /* ~Tu die Asche weg.~ */ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64971 /* ~Stell die leere Urne ab.~ */ DO ~DestroyPartyItem("Trelon",TRUE)
~ EXIT
END
