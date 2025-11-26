// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRELON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRELON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51289 /* ~이 항아리는 지하실에 너무 오랫동안 보관해 놓은 듯하다. 그 안에는 다량의 재가 들어 있으나 그 출처나 유래에 대해서는 아무런 표시가 없다. ~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #51291 /* ~재의 일부를 대기 중에 뿌린다.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
IncrementGlobal("Pabulum","Global",1)
~ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #51292 /* ~재의 일부를 대기 중에 뿌린다.~ */ DO ~CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
CreateCreatureAtFeet("BTrelon")
DestroyPartyItem("Trelon",TRUE)
~ EXIT
  IF ~~ THEN REPLY #51293 /* ~재를 치운다.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64965 /* ~이 항아리는 지하실에 너무 오랫동안 보관해 놓은 듯하다. 그 안에는 다량의 재가 들어 있으나 그 출처나 유래에 대해서는 아무런 표시가 없다. ~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64966 /* ~재를 대기 중에 조금 뿌린다.~ */ DO ~IncrementGlobal("Pabulum","Global",1)
~ GOTO 2
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64967 /* ~재를 대기 중에 조금 뿌린다.~ */ GOTO 2
  IF ~~ THEN REPLY #64968 /* ~재를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64969 /* ~재는 눈처럼 천천히 바닥에 떨어진다, 하지만 아무런 일도 일어나지 않는다. ~ */
  IF ~  GlobalLT("Pabulum","Global",3)
~ THEN REPLY #64970 /* ~재를 치운다.~ */ EXIT
  IF ~  Global("Pabulum","Global",3)
~ THEN REPLY #64971 /* ~이제는 버어버린 항아리를 버린다.. ~ */ DO ~DestroyPartyItem("Trelon",TRUE)
~ EXIT
END
