// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DN1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DN1201~

IF ~  True()
~ THEN BEGIN 0 // from: 1.6 3.0
  SAY #44993 /* ~이 악취가 나는 쪽지에 적힌 글 밑에는 기묘하게 생긴 도표가 그려져 있다. 그것은 당신에게 쪽지의 구석이 중심을 향하도록 접으라고 지시하고 있는 듯하다. 각 구석에는 일련의 기묘한 부호들이 그려져 있다. 우측 상단에는 하나, 우측 하단에는 두 개, 좌측 하단에는 세 개, 그리고 좌측 상단에는 네 개의 부호들이 각각 그려져 있다. ~ */
  IF ~~ THEN REPLY #44994 /* ~우측 상단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44995 /* ~우측 하단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44996 /* ~좌측 하단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44997 /* ~좌측 상단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44998 /* ~쪽지를 그냥 내버려 둔다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
  SAY #44999 /* ~당신은 모서리가 중심에 닿도록 쪽지의 구석을 안쪽으로 접는다.~ */
  IF ~  Global("UR_1201","GLOBAL",0)
~ THEN REPLY #45000 /* ~우측 상단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45001 /* ~우측 하단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("1201_Note","GLOBAL",2)
SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45002 /* ~우측 하단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("LL_1201","GLOBAL",0)
~ THEN REPLY #45003 /* ~좌측 하단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45004 /* ~좌측 상단이 중심에 닿도록 접는다.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45005 /* ~좌측 상단이 중심에 닿도록 접는다.~ */ GOTO 2
  IF ~~ THEN REPLY #45006 /* ~쪽지를 펼쳐 새로 시작한다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 0
  IF ~~ THEN REPLY #45008 /* ~쪽지를 펼친 후 그냥 내버려 둔다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY #45015 /* ~당신이 왼쪽 상단 구석을 중심 쪽으로 접자 오른쪽 상단 구석이 펼쳐져 원래 위치로 돌아간다.~ */
  IF ~~ THEN REPLY #45016 /* ~우측 상단이 중심에 닿도록 다시 접는다.~ */ GOTO 4
  IF ~~ THEN REPLY #45017 /* ~좌측 하단의 모서리를 안쪽으로 접는다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 3
  IF ~~ THEN REPLY #45018 /* ~쪽지를 펼친 후 그냥 내버려 둔다.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45019 /* ~당신이 왼쪽 하단 구석을 안쪽으로 접자 잠시 후 다른 두 구석들이 바깥쪽으로 펼쳐진다. 아무 일도 일어나지 않는다. ~ */
  IF ~~ THEN REPLY #45020 /* ~쪽지를 다시 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #45021 /* ~쪽지를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #45022 /* ~당신이 오른쪽 상단 구석을 다시 중심 쪽으로 접자, 왼쪽 하단 구석이 그 동작을 그대로 따라 하고, 다른 구석들도 연달아 안쪽으로 접힌다. 당신은 그 광경을 잠시 지켜본다, 그리고 종이의 각 구석들이 일어서서 쪽지를 작은 4면 피라미드로 만든다.~ */
  IF ~~ THEN REPLY #45023 /* ~피라미드의 측면을 연다.~ */ DO ~AddexperienceParty(250)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45024 /* ~당신이 피라미드의 면을 벗기자 종이는 먼지가 되어 사라진다. 그 안에는 작은 삼각형 모양의 귀걸이가 들어 있다. 그것은 빛을 받아 밝게 반짝인다.~ */
  IF ~~ THEN REPLY #45025 /* ~삼각 귀걸이를 취한다...~ */ DO ~GiveItemCreate("TEarring",Protagonist,3,0,0)
DestroyPartyItem("N1201",TRUE)
~ EXIT
END
