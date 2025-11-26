// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~Это мерзкая масса, мягкая на ощупь, и хотя для этого и нет повода, в ней ОЩУЩАЕТСЯ зло. Время от времени сердце оставляет за собой струйку серого тумана, который рассеивается в воздухе.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~Пожелать смерти твоим врагам.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~Пожелать смерти твоим врагам.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~Спрятать мерзкую массу.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~Это мерзкая масса, мягкая на ощупь, и хотя для этого и нет повода, в ней ОЩУЩАЕТСЯ зло. Время от времени сердце оставляет за собой струйку серого тумана, который рассеивается в воздухе.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~Пожелать смерти твоим врагам.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~Пожелать смерти твоим врагам.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~Спрятать мерзкую массу.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~Из сердца вырывается струйка серого дыма, и больше ничего.~ */
  IF ~~ THEN REPLY #64977 /* ~Спрятать мерзкую массу.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~Сердце быстро расширяется и сокращается, как будто бьется. Внезапно оно останавливается и рассыпается в прах в твоих руках.~ */
  IF ~~ THEN REPLY #64979 /* ~Бросить пепел на землю.~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
