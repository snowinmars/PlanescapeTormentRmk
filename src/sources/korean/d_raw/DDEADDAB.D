// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEADDAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEADDAB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #61682 /* ~죽은 다버스의 시체가 보인다. 시체가 썩는 냄새는 가히 압도적이며, 시체의 부자연스러운 자세로 미루어 볼 때 사후 경직이 일어난지 오래된 것 같다. 하지만 왠지 당신은 이 광경에 자극을 받는다. ~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61683 /* ~시체에 당신의 '뼈들이 해주는 이야기' 능력을 사용한다.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61684 /* ~시체를 살펴 무엇이 그것을 죽였는지를 추측해본다.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61685 /* ~떠난다.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ EXIT
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61686 /* ~시체에 당신의 '뼈들이 해주는 이야기' 능력을 사용한다.~ */ GOTO 2
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61687 /* ~시체를 살펴 무엇이 그것을 죽였는지를 추측해본다.~ */ GOTO 1
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61688 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.4
  SAY #61689 /* ~시체를 만지자 갑작스런 충격이 당신 몸을 꿰뚫고 지나간다, 그리고 마치 바람이 건물 안에 들어왔다가 나가려고 발버둥을 치고 있는 것처럼 주변의 공기가 꿈틀거린다. 당신은 누가 당신 머리를 안쪽으로부터 망치로 마구 때리는 것 같은 격통을 느낀다.~ */
  IF ~~ THEN REPLY #61690 /* ~집중하려고 노력한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61691 /* ~영향을 떨쳐버리고, 시체로부터 멀리 떨어진다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.3
  SAY #61692 /* ~당신이 손을 힘껏 내밀자, 공기가 약간 흔들리면서 다버스의 시체가 잠시 흐릿하게 보인다. 당신은 누가 당신 머리를 안쪽으로부터 망치로 마구 때리는 것 같은 격통을 느낀다.~ */
  IF ~~ THEN REPLY #61693 /* ~집중하려고 노력한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61694 /* ~영향을 떨쳐버리고, 시체로부터 멀리 떨어진다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #61695 /* ~당신의 시야가 잠사 어두워진다. 망치로 내려치는 것 같은 고통은 사라지기 시작해, 망치 소리가 당신 머리 밖에서 들려 오는 것처럼 느껴질 때가 되서는 고통이 완전히 사라진다. 시야는 다시 밝아지고, 건물 밖에서 망치질하는 소리가 들린다. 건물 전체가 마치 안개를 통해 보듯이 흐릿해진다.~ */
  IF ~~ THEN REPLY #61696 /* ~영상에 계속 집중한다...~ */ GOTO 4
  IF ~~ THEN REPLY #61697 /* ~영향을 떨쳐버리고, 시체로부터 멀리 떨어진다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61698 /* ~망치 소리는 멈추고, 갑자기 다버스의 유령판이 건물 안으로 들어오는 것이 보인다. 그러자 창과 문들이 물처럼 변하더니 그가 들어온 입구를 갑자기 봉해 버린다. 다버스는 돌아서서 잠시 멈춘 후, 방 안을 돌며 망치로 각 벽을 한 번씩 두들겨 본다.~ */
  IF ~~ THEN REPLY #61699 /* ~영상에 계속 집중한다...~ */ GOTO 5
  IF ~~ THEN REPLY #61700 /* ~영향을 떨쳐버리고, 시체로부터 멀리 떨어진다. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61701 /* ~다버스는 방 안을 한 바퀴 돈 후 자신이 들어왔던 *문* 앞에 멈추어 선다. 그는 망치로 돌을 깨트리나, 그가 내려칠 때마다 벽은 스스로 수리한다. 시야는 다시 어두워지나, 망치질은 계속된다. 처음에는 일정한 간격으로 유지되나 점차 느려진다...~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61702 /* ~영상에 계속 집중한다...~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61703 /* ~영상에 계속 집중한다...~ */ GOTO 6
  IF ~~ THEN REPLY #61704 /* ~영향을 떨쳐버리고, 시체로부터 멀리 떨어진다. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #61705 /* ~망치질이 끝나자 당신의 시야는 다시 뚜렷해진다, 그리고 당신은 다시 다버스의 시체 옆에 있다... 그는 건물 안에 갇혀서 말라 죽은 것 같다.~ */
  IF ~~ THEN REPLY #61706 /* ~다버스의 시체를 떠난다.~ */ EXIT
END
