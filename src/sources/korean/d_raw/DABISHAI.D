// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #58136 /* ~적색 아비샤이가 보인다. 이 생물은 뱀과 흡사한 동체와 날카로운 발톱이 달린 사지, 가죽질의 날개, 그리고 용처럼 생긴 머리를 한 파충류형 생물이다. 그의 신체를 뒤덮고 있는 비늘은 흐릿한 적색이다. 그는 뒷다리로 서 있으며 유연한 꼬리로 균형을 유지하고 있다. 당신이 다가가자 그는 눈을 가늘게 뜨고 쉿 소리를 내기 시작한다.~ */
  IF ~~ THEN REPLY #58137 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58138 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58139 /* ~아비샤이는 당신을 노려보면서 쉰 소리를 낸다. 그의 뒤에서 응답이 들려 오자 당신은 그가 당신에게 얘기를 한 게 아니라는 사실을 비로소 깨닫는다. 잠시 후 그는 고개를 옆으로 기울이면서 당신에게 쉿 소리를 낸다. "뭘 원해?"~ */
  IF ~~ THEN REPLY #58140 /* ~"질문할 것들이 있소..."~ */ DO ~SetGlobal("Talk_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58141 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58142 /* ~아비샤이는 일련의 쉿 소리를 내자, 미지의 목소리가 그것에 대해 대답을 한다. "아니... 너 테크'엘락하고 말해." 그는 자기 뒤를 대강 가리킨다. "그가 너와 얘기 하겠대..."~ */
  IF ~~ THEN REPLY #58143 /* ~"왜 내 질문에 대답할 수 없는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #58144 /* ~"알겠소. 그럼 가서 테크'엘락과 이야기를 하겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #58145 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58146 /* ~아비샤이는 대답을 하기 전에 잠시 당신을 노려본다. "테크'엘락이 너하고 말하고 싶어해. 나 아냐. 너 가."~ */
  IF ~~ THEN REPLY #58147 /* ~"알겠소. 그럼 가서 테크'엘락과 이야기를 하겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #58148 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58149 /* ~당신은 아비샤이가 가까이 다가와 당신과 얘기를 하려고 하자 그로부터 열기가 발산되는 것을 느낀다. "너 공손하게 해... 조심해... 내가 보고 있어. 잘못 하면 죽여." 그는 사악하게 싱긋 웃으며 날카로운 이빨을 드러낸다. "알았어?"~ */
  IF ~~ THEN REPLY #58150 /* ~"그래 알겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #58151 /* ~"아니, 난 바보요. 내게 이유를 설명해주지 않겠소?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58152 /* ~아비샤이는 쉿 소리를 내며 근처에 있는 벽을 향해 손을 내민다. 그는 계속 당신을 노려보면서 일격으로 벽에 깊은 구멍을 낸다. "이젠 알겠지? 아니면 직접 몸에다 시범을 보여줄까?"~ */
  IF ~~ THEN REPLY #58153 /* ~"물론 잘 알겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #58154 /* ~아비샤이를 공격한다: "어디 당신이 진짜 적수를 만나 얼마나 잘 싸우는지 봅시다."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Talk_Tek","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #58155 /* ~아비샤이는 화가 난 듯 쉿 소리를 낸다. "테크'엘락하고 얘기 하랬잖아... 가!"~ */
  IF ~~ THEN REPLY #58156 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
