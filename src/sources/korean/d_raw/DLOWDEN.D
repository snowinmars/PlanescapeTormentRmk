// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOWDEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOWDEN~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Lowden","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2883 /* ~당신이 접근하자 엉망이 된 로우덴의 시체가 거북하게 움직인다. "무얼 원하시오?"~ */
  IF ~~ THEN REPLY #2884 /* ~"몇 가지 질문에 대한 답을 원할 뿐이오, 로우덴."~ */ GOTO 1
  IF ~~ THEN REPLY #20821 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.1 4.1 5.0 6.0 7.0
  SAY #20822 /* ~"대답을 할 수도... 안 할 수도 있소... 질문을 하시오..."~ */
  IF ~  Global("Know_Lowden","GLOBAL",0)
~ THEN REPLY #20823 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Lowden","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20824 /* ~"당신 자신에 대해 다시 얘기해주시오."~ */ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20825 /* ~"그리스는 어떻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #20826 /* ~"당신은 어떻게 죽었소?"~ */ GOTO 3
  IF ~~ THEN REPLY #20827 /* ~"지하 묘지에 대해서 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #20828 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20829 /* ~"로우덴이오. 나와 버트는 지하 묘지의 왕이나 마찬가지였소. 때로는 그리스도 끼기는 했지만 놈은 두목 행세나 하는 개자식이었소. 우리가 마지막으로 이 곳에 내려왔을 때 그도 함께 왔었소. 버트가 어디 있는지는 모르겠소. 아마 죽었을 거요."~ */
  IF ~~ THEN REPLY #20830 /* ~"당신에게 대체 무슨 일이 일어난 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #20831 /* ~"그리스는 어떻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #20832 /* ~"안됐군. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20833 /* ~"아마도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0
  SAY #20834 /* ~"우리가 그리스를 버린 곳에서 도망칠 때 난 방향을 잘못 트는 바람에 여기 들어오게 되었고, 나는 내 실수를 미처 깨닫기도 전에 그야말로 난도질을 당했소. 내 잔해는 격자에 짓눌렷고 이제는... 더스티조차 내 시체에 대해선 돈을 지불하려 하지 않을 것이오." 그는 축축하게 웃는데, 마치 늪지대의 가스와 같은 냄새가 난다.~ */
  IF ~~ THEN REPLY #20835 /* ~"그리스는 어떻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #20836 /* ~"아, 얄궂군. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20837 /* ~"그건 꽤 웃기는군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #20838 /* ~"헤. 그 자체로 하나의 이야깃거리요. 대부분은 내 아이디어였고, 버트는 내가 무슨 일을 하려고 하는지 전혀 알지 못했소. 처음에는 계획한 대로 잘 되었소. 우리는 돌아다니다가 굴이 자리를 잡은 무덤을 발견했고, 그리스를 그 곳에 데려갈 음모를 꾸미게 되었소. 그런데 알고 보니 그 사이 굴은 자신의 동족을 증식시켰고, 덕분에 우리는 거의 죽을 뻔했소. 우리는 그리스를 안에 처넣고 마치 레이디가 우리 뒤를 따라오기라도 하는 것처럼 열나게 도망쳤소. 그리스가 틀림없이 죽었을 것이라고 생각하며."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #20839 /* ~"그렇소."~ */ GOTO 5
  IF ~~ THEN REPLY #20840 /* ~"아마도. 그 밖에도 질문할 것들이 있소."~ */ GOTO 1
  IF ~~ THEN REPLY #20841 /* ~"당신은 아주 철저했던 것 같군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20842 /* ~"안됐다고 말하고 싶지만 그럴 마음이 생기질 않소. 놈은 벌레의 심장에 독사의 영혼을 지닌 놈이오, 그리고 사람들이 그를 대머리수리라고 하는 데는 다 이유가 있소. 난 죽었지만 그도 죽었다는 사실이 기쁘오."~ */
  IF ~~ THEN REPLY #20843 /* ~"멋지군. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20844 /* ~"멋지군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #20845 /* ~"눈물을 흘리는 돌이라는 이름은 천장에서 떨어지는 물과 벽에 새겨진 우는 얼굴들 때문에 붙여진 이름이오. 이 곳에는 무덤이 많이 있고, 우리는 많은 무덤을 털었소. 우리가 이런 꼴이 된 건 유감스러운 일이지만 언젠가는 이렇게 될 줄 알고 있었소. 난 이 지역을 내 손바닥 보듯 환히 알고 있었지만... 이제는 다 지나간 일이오.,,"~ */
  IF ~~ THEN REPLY #20846 /* ~"몇 가지 질문에 더 대답해주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #20847 /* ~"그럼 어둠 속에 묻히시오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #20848 /* ~이 시체는 심하게 훼손되었다. 그것은 불에 타고, 찔리고, 베이고, 구타당하고, 그리고 격자에 짓눌린 것처럼 보인다. 그것은 두 쪽이 나 있으며, 오래되어 굳은 피의 웅덩이 속에 잠겨 있다. 그것으로부터 나오는 목소리는 유쾌한 듯하나, 약간의 광기를 띠고 있다. "그래, 친구, 뭘 원하오?"~ */
  IF ~~ THEN REPLY #20849 /* ~"몇 가지 질문에 대한 답..."~ */ GOTO 1
  IF ~~ THEN REPLY #20850 /* ~"아무 것도 아니오."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #20851 /* ~이 시체는 심하게 훼손되었다. 그것은 불에 타고, 찔리고, 베이고, 구타당하고, 그리고 격자에 짓눌린 것처럼 보인다. 그것은 두 쪽이 나 있으며, 오래되어 굳은 피의 웅덩이 속에 잠겨 있다. ~ */
  IF ~~ THEN REPLY #20852 /* ~"아무 것도 아니라? 이런."~ */ EXIT
END
