// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~당신이 다가가자 대문 위의 썩은 해골들이 당신에게 얘기를 하기 시작한다. 그들은 서로 단어를 주고받음으로서 논리성 있는 문장을 만들어 낸다. "사라졌소. 배신자에 의해 광명을 잃었소."~ */
  IF ~~ THEN REPLY #47033 /* ~"도시에 무슨 일이 일어난 거요?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~"당신에게 대체 어떤 일이 일어난 거요?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~"새로운 소식을 알려주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~"사악의 파도에 밀려 바람과 함께 사라졌소. 관문을 통해 사라졌소. 도시는 스스로의 증오에 빠져 사라진 거요. 관문을 통해 붉은 감옥, 감옥 차원 카케리로..."~ */
  IF ~~ THEN REPLY #47037 /* ~"카케리? 내게 카케리에 대해 얘기해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~"당신은 보통으로 얘기할 수가 없소?"~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~"당신에게 대체 어떤 일이 일어난 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~"당신은 그 곳으로 가는 방법이나 그 곳을 다시 여기로 끌어오는 방법에 대해 혹시 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~"배신당하고, 경멸당하고, 누명을 써... 본보기가 되도록 벌로 처형당했소. 적들에 의해 이 곳에 효수되었소. 죽었소, 죽었소, 죽었소."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~"내가 이상한 건가, 아니면 요즘은 몸통에서 떨어진 말하는 해골들이 너무 많은 건가?"~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~"내가 이상한 건가, 아니면 요즘은 몸통에서 떨어진 말하는 해골들이 너무 많은 건가?"~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~"모두들 어디로 사라졌소?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~머리들은 잠시 얘기를 중단한다. 그들은 잠시 서로를 바라보더니 다시 당신 쪽으로 시선을 돌린다. 그들은 관문 위에 부끄러운 듯 매달려 있다.~ */
  IF ~~ THEN REPLY #47047 /* ~"좋소, 커스트는 어떻게 되었소?"~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~"관문을 통해 감옥으로... 감옥에서는 돌아올 수가 없소. 관문을 통해, 관문을 통해 그 곳으로 가시오... 당신 운명이 거기서 기다리고 있소.",~ */
  IF ~~ THEN REPLY #47050 /* ~"당신은 내 운명에 대해 무엇을 아시오?"~ */ JOURNAL #39483 /* ~카케리로 통하는 문 위의 해골들은 내게 커스트가 악의 길로 빠진 탓에 문을 통하여 커스트로 빨려 들어갔다고 말해주었다. 그들에 의하면 내 운명은 문 반대편에서 기다린다고 한다.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~"디바가 당신을 기다리고 있소." 머리들은 입을 다물고 당신 질문에 더 이상 아무런 반응을 보이지 않는다. ~ */
  IF ~~ THEN REPLY #47053 /* ~"그럼 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~"베일 너머에는 모든 것들이 그늘져 있고 또 비추어져 있소. 아무 것도 해석할 수가 없소. 아무 것도 쉽지가 않소."~ */
  IF ~~ THEN REPLY #47055 /* ~"그럼 좋소, 당신에게 무슨 일이 일어난 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~"당신은 그 도시로 가는 방법이나 그 도시를 다시 여기로 끌어오는 방법에 대해 혹시 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~"그럼 좋소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~머리들은 처음에는 조용하다, 그러나 작은 속삭임으로부터 시작해 대화를 제대로 나눌 수 있을 정도로 그 소리가 커진다.~ */
  IF ~~ THEN REPLY #47059 /* ~"커스트는 어떻게 되었소?"~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~"당신에게 대체 무슨 일이 일어난 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~당신이 관문에 다가가자 날카로운 덩굴로 뒤덮인 아치를 장식하고 있는 썩은 머리들이 당신에게 말하기 시작한다. 그들의 목소리는 마치 쓰레기 때문이 물이 제대로 흐르지 못하는 강처럼 흘러 나온다. "카케리... 감옥 차원으로... 배신당하는 자와 배신하는 자, 그리고 배반자와 희생자의 대지로. 이 관문은 현재... 닫혀 있소."~ */
  IF ~~ THEN REPLY #47063 /* ~"문은 언제 다시 열리오?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~"카케리에 대해 내게 어떤 얘기를 들려줄 수 있겠소?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~"당신에게 대체 무슨 일이 일어난 거요?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~"관문은 아직... 닫혀 있소. 통과할 수가 없소."~ */
  IF ~~ THEN REPLY #47068 /* ~"문은 언제 다시 열리오?"~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~"카케리에 대해 내게 어떤 얘기를 들려줄 수 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~"당신에게 대체 무슨 일이 일어난 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~"역병이 지나가면. 병이 완전히 물러가면. 죽음이 사라지면."~ */
  IF ~~ THEN REPLY #47076 /* ~"카케리에 대해 내게 어떤 얘기를 들려줄 수 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~"당신에게 대체 무슨 일이 일어난 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~"감옥 차원... 혼돈, 악... 공중에 사악한 진주들처럼 매달린 세계 안의 세계, 구 안의 구... 붉은 감옥, 타이탄족과 신들의 감옥."~ */
  IF ~~ THEN REPLY #47082 /* ~"언제 그 문은 열리오?"~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~"당신에게 대체 어떤 일이 일어난 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~"안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~"배신당하고, 경멸당하고, 누명을 서... 본보기가 되도록 벌로 처형당했소. 적들에 의해 이 곳에 효수되었소. 죽었소, 죽었소, 죽었소."~ */
  IF ~~ THEN REPLY #47086 /* ~"언제 그 문은 열리오?"~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~"카케리에 대해 내게 어떤 얘기를 들려줄 수 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~"안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~"감옥 차원... 혼돈, 악... 공중에 사악한 진주들처럼 매달린 세계 안의 세계, 구 안의 구... 붉은 감옥, 타이탄족과 신들의 감옥."~ */
  IF ~~ THEN REPLY #47090 /* ~"당신은 보통으로 얘기할 수가 없소?"~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~"당신에게 대체 어떤 일이 일어난 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~"당신은 그 곳으로 가는 방법이나 그 곳을 다시 여기로 끌어오는 방법에 대해 혹시 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
