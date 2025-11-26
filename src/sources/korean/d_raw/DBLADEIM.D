// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~이것은 당신 팔에 새겨진 심벌들 중 하나의 모양을 본떠 만든 추하게 생긴 무기이다. 금속 표면에는 검은색 결이 꿈틀거리며, 칼날은 어찌나 무딘지 따뜻한 버터조차 자르지 못할 정도다. 만지면 약간 따뜻하다. ~ */
  IF ~~ THEN REPLY #55071 /* ~칼을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~이것은 당신 팔에 새겨진 심벌들 중 하나의 모양을 본떠 만든 추하게 생긴 무기이다. 처음 만졌을 때는 아무런 반응도 없었으나, 이제는 표면에 검은 결들이 마치 작은 물줄기들처럼 흐른다, 그리고 칼날은 극도로 날카로워졌다. 칼은 마치 병에 걸린 심장처럼 당신 손 안에서 숨가쁘게 고동치고 있다.~ */
  IF ~~ THEN REPLY #63969 /* ~그 무기로 당신 목을 벤다.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~무기를 칼집에 넣는다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~당신이 칼날로 목을 긋자 칼날은 당신 목으로 파고든다...~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~어둠 속으로 빠져든다...~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~어둠 속으로 빠져든다...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
