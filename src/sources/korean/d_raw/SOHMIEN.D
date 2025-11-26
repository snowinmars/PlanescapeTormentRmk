// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~SOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~이 추악한 덩어리는 부드러운 촉감을 지녔으며, 그럴 리는 없을 텐데 왠지 사악한 느낌이 든다. 때때로 회색 안개가 이 심장으로부터 나와 공기 속으로 퍼진다.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~당신 적들의 죽음을 기원한다.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~당신 적들의 죽음을 기원한다.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~역겨운 덩어리를 치운다.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~이 추악한 덩어리는 부드러운 촉감을 지녔으며, 그럴 리는 없을 텐데 왠지 사악한 느낌이 든다. 때때로 회색 안개가 이 심장으로부터 나와 공기 속으로 퍼진다.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~당신 적들의 죽음을 기원한다.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~당신 적들의 죽음을 기원한다.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~역겨운 덩어리를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~심장에서 회색 연기가 나오기는 하나 아무 일도 일어나지 않는다. ~ */
  IF ~~ THEN REPLY #64977 /* ~역겨운 덩어리를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~삼장은 고동치듯 수축과 팽창을 반복한다. 갑자기 그것은 고동을 멈추고 당신 손 안에서 먼지로 변한다.~ */
  IF ~~ THEN REPLY #64979 /* ~재를 땅에 떨군다.~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
