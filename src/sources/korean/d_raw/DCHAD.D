// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHAD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23954 /* ~꺼칠꺼칠한 머리를 한 이 수집자의 시체는 심하게 물린 자국으로 뒤덮여 있다. 그의 목은 아직도 꿈틀거리고 있는데, 마치 동체로부터 떨어져 나가려고 하는 것 같다. ~ */
  IF ~~ THEN REPLY #23967 /* ~"그건... 흥미롭군."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",3)
~ THEN BEGIN 1 // from:
  SAY #23968 /* ~채드의 시체는 마치 자갈을 긁는 듯한 목소리로 말한다: "뭘 원하시오, 친구?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23969 /* ~"유리병이 어디 있는지 다시 말해주겠소?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23970 /* ~"당신이 얘기한 아이템이 어디 있는지 알고 싶소."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #23971 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #23972 /* ~"다른 수집자들에 대해 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #23973 /* ~"지하 묘지에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23974 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0 4.1 5.0 6.1 7.0 8.0 14.1
  SAY #23975 /* ~"아, 이보시오." 그는 잠시 멈춘다. "뭘 원하시오?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23976 /* ~"유리병이 어디 있는지 다시 말해주겠소?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23977 /* ~"당신이 얘기한 아이템이 어디 있는지 알고 싶소."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #23978 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #23979 /* ~"다른 수집자들에 대해 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #23980 /* ~"지하 묘지에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23981 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0
  SAY #23982 /* ~"쥐나 언데드를 피해 익사한 왕국으로 잠입하시오. 일단 거기 도착하면 주 통로를 따라서 입구로부터 당신 왼쪽으로 네 번째에 있는 문으로 들어가시오. 당신이 찾는 물건은 그것의 뒤쪽 벽 바로 근처의 아치에 있소. 나는 그것의 명령어까지는 알지 못하오... 하지만 그래도 물 몇 방울 정도는 나올 거요. 내 말을 다 알아들었소, 친구?"~ */
  IF ~~ THEN REPLY #23983 /* ~"그런 것 같소. 하지만 그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #23984 /* ~"그런 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 14.0
  SAY #23985 /* ~"좋소, 말하리다. 그 곳이 익사한 왕국이라고 불리는 데는 이유가 있소. 익사한 왕국 지하 묘지에는 물이 끊임없이 흘러나오는 마법의 유리병의 감추어져 있소. 그것만 손에 넣으면 언제든지 원하는 만큼의 신선한 물을 얻을 수가 있소."~ */
  IF ~~ THEN REPLY #23986 /* ~"좋소. 그건 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #23987 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #23988 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2
  SAY #23989 /* ~"나? 나는 채드요. 한 때는 예술가였소. 돈, 명예, 존경, 여자... 이 모든 것들을 가지고 있었으나 어느 한 순간 몰락하고 말았소. 그래서 나는 파로드와 한패가 되었고, 최고의 지하 묘지 도굴꾼들 중 하나가 되었소. 내 솜씨는 굴의 여왕의 코 앞에서 물건을 빼내 올 수 있을 정도였소. 그러다가... 나는 자만에 빠졌소. 돌로 된 성들 중 하나의 도면을 입수하고는 도굴하려고 가다가 그만 바구일 먹이가 되고 말았소. 참고로 돌로 된 성이란 내가 털 것이 많은 지하 묘지를 부를 때 쓰는 호칭이오. 나도 바구일이 될 뻔 했으나. 정신력 하나만으로 내 목이 떨어져 나가지 않도록 버티고 있었소. 당신이 온 건 정말 다행한 일이오." ~ */
  IF ~~ THEN REPLY #23990 /* ~"알겠소. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #23991 /* ~"정말 다행한 일이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #23992 /* ~"헤... 우리들의 수는 많소. 나를 제외하고는 그리스의 솜씨가 제일 뛰어났소."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #23993 /* ~"그리스도 죽었소."~ */ GOTO 7
  IF ~~ THEN REPLY #23994 /* ~"그럼 다른 질문을 좀 하고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #23995 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23996 /* ~"그렇소?" 그의 목소리가 눈에 띄게 밝아진다. "그럼 적어도 놈이 자기가 나보다 잘났다고 좋아서 떠들어대는 일은 없겠군."~ */
  IF ~~ THEN REPLY #23997 /* ~"그래, 아마 그러지는 못할 거요. 다른 질문에도 대답해주겠소?~ */ GOTO 2
  IF ~~ THEN REPLY #23998 /* ~"그래, 아마 그러지는 못할 거요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.4
  SAY #23999 /* ~"내가 당신에게 이 지하 묘지에 대해 무슨 얘기를 해줄 수 있느냐고? 여긴 괴물들로 득실거리고 있으며, 똑똑한 사람이라면 여기서 시간을 허비하지는 않을 거요. 일단 필요한 물건을 찾아낸 다음에는 여기서 즉시 나가시오. 이 곳에는 함정들이 너무 많고, 많은 무덤들은 차마 눈뜨고는 못 볼 것들의 소굴이 되었소. 내가 당신에게 해주는 충고는 여기서 아직 나갈 수 있을 때 나가라는 거요."~ */
  IF ~~ THEN REPLY #24000 /* ~"내 질문들에 좀 대답을 해주시오..."~ */ GOTO 2
  IF ~~ THEN REPLY #24001 /* ~"생각해 보겠소."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #24002 /* ~당신이 다가가자 시체의 목이 꿈틀거린다. 시체는 묻는다. "아직 날 이 꼴로 만든 놈을 찾지 못했소?"~ */
  IF ~~ THEN REPLY #24003 /* ~"아직 아니오. 노력 중이오. 먼저 내 질문에 대답을 해주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #24004 /* ~"아직 아니오. 노력 중이오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #24005 /* ~"빨리 하시오! 내 목이 얼마나 더 버틸 수 있을지 모르겠소..."~ */
  IF ~~ THEN REPLY #24006 /* ~"이 일의 대가로 당신이 내게 뭘 줄 건지 말하시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24007 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #24008 /* ~"이 지하 묘지에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #24009 /* ~"내가 어떤 일을 해주기를 바라는지 다시 말해주겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #24010 /* ~"좋소, 좋아. 그렇게 흥분할 필요는 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24011 /* ~"나는 당신에게... 매우 유용할... 마법의 아이템을 찾을 방법을 가르쳐 주겠다고 했소..."~ */
  IF ~~ THEN REPLY #24012 /* ~"좋소. 내 질문에 좀 대답해주시오..."~ */ GOTO 10
  IF ~~ THEN REPLY #24013 /* ~"노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",1)
~ THEN BEGIN 12 // from: 10.1 10.2 17.1 17.2 17.3
  SAY #24014 /* ~"이보시오... 내 머리는 당장이라도 떨어져 나갈 지경이오... 지금 내겐 얘기할 *시간*이 없소... 나중에 물어보시오..."~ */
  IF ~  Global("Revenge_V","GLOBAL",1)
~ THEN REPLY #24015 /* ~"내가 어떤 일을 해주기를 바라는지 다시 말해주겠소?"~ */ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24016 /* ~"당신은 내게 뭘 원하오?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24017 /* ~"당신이 내게 원하는 건 대체 뭐요?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.3 12.0 12.1 12.2 17.0 17.4
  SAY #24018 /* ~"이... 목이... 보이시오?" 그것은 토피처럼 늘어났다가 줄어들고 있다. "염병할 바구일이 날 물었소. 난 죽었고... 그 저주받을 괴물들의 일원이 되지 않으려면... 난 내 목이 떨어지지 않도록 붙들고 있어야만 하오." 그는 안간힘을 쓰며 얘기를 하고 있다. "날 구하려면 당신이 이 통로 아래쪽에 있는 바구일들을 죽여야만 하오..."~ */
  IF ~~ THEN REPLY #24019 /* ~"그 대가로 내게 무엇을 줄 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Chad_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #24020 /* ~"좋소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Chad_1","GLOBALGood",1)
~ GOTO 15
END

IF WEIGHT #2 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #24021 /* ~채드의 목의 상태가 훨씬 나아진 것 같다... 그것은 더 이상 동체로부터 떨어져 나오려고 꿈틀거리지 않는다. "고맙소, 친구... 적어도 이제 난 바구일이 되어 영생을 보낼 걱정은 하지 않게 되었소... 지금 당장 당신 노고에 대한 대가를 받겠소?"~ */
  IF ~~ THEN REPLY #24022 /* ~"말해주시오."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #24023 /* ~"아니오. 날 위해 그 밖의 질문에 좀 대답해주사오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.0 13.1
  SAY #24024 /* ~"그 대가로... 나는 강력한 마법의 아이템이 있는 곳을... 알려주겠소... 내 감이 당신에게는 그것이 필요하다는 걸... 알려주고 있소..."~ */
  IF ~~ THEN REPLY #24025 /* ~"그건 무엇이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #24026 /* ~"가는 중이오."~ */ EXIT
  IF ~~ THEN REPLY #24027 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #24028 /* ~"놈들을 찾아 해치우면... 말해주겠소. 그 전에는 곤란하오."~ */
  IF ~~ THEN REPLY #24029 /* ~"좋소. 떠나리다."~ */ EXIT
  IF ~~ THEN REPLY #24030 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #24031 /* ~꺼칠꺼칠한 머리를 한 이 수집자의 시체는 심하게 물린 자국으로 뒤덮여 있다. 그의 목은 아직도 꿈틀거리고 있는데, 마치 동체로부터 떨어져 나가려고 하는 것 같다. "이보시오, 난 채드요... 당신 도움이 필요하오."~ */
  IF ~~ THEN REPLY #24032 /* ~"뭐가 문제요?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #24033 /* ~"이 지하 묘지에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24034 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24035 /* ~"이 곳은 어디요?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24036 /* ~"아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END
