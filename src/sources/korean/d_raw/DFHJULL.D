// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~"당신 때문에 난 모든 걸 잃었소! 그들은 끊임없이 올 거요... 난 당신에게 고통을 가할 거요... 악... 날 용서하시오. 내가 성급하게 말을 했소."~ */
  IF ~~ THEN REPLY #2914 /* ~"좋소. 당신 공급품이 좀 필요하오. 어떤 물건들을 가지고 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~"그러길 바라오. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~"안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~"당신으로부터는 배신의 냄새가 물씬 풍기는군. 나를 베이터로 끌고 가려는 내 동포들의 발걸음 소리가 지금이라도 들릴 것 같소... 꺼져버리시오, 맹세를 깨트린 이 배신자! 난 이미 당신에게 내가 줄 수 있는 건 다 줬소! 더 이상 줄 것이 없소!"~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~"정말 더 이상 줄 것이 없소?"~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~"당신에게 몇 가지만 더 물어보겠소..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~마족의 몸이 굳는다. "어... 값나가는 것은 아니오. 당신이 원할지도 모르는 하찮은 부적... 만약 꼭 필요하다면, 좋소, 가져 가시오 .."~ */
  IF ~~ THEN REPLY #54890 /* ~"어떤 것들을 가지고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~"관두시오, 날 위해 몇 가지 질문에나 답해주시오."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~"흥! 염병할 인간 같으니! 넌 그 디바가 영원히 죽지 않기를 기도나 해야 할 거다, 그렇지 않다면 난 너에게 내가 준 대로 돌려받겠다, 하지만 내가 원하는 건 마법이 아냐... 억... 어어... 아니, 무슨 악의가 있었던 건 아니오... 내 경솔한 말을 취소하리다. 악의는 없었소..."~ */
  IF ~~ THEN REPLY #54896 /* ~"좋소. 내게 그걸 넘기시오. 지금 당장."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~"갈라진-혀, 만약 당신에 필요가 없다면 내가 쓰도록 하겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~"관두시오, 갈라진-혀. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~"염병할, 기회나 노리는..... 물론 내 물건을 보실 수가 있소. 뭘 보고 싶으시오?~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~녹색 강철로 만든 나이프를 살펴본다: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~녹색 대거를 살펴본다 : "이건 무엇이오?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~꿈틀거리는 벌레들을 살펴본다 : "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~"악! 내겐 이러한 아이템들이 필요하오! 특히 당신이 분별 없이 내 문 앞까지 안내한 마족들을 상대하기 위해서!"~ */
  IF ~~ THEN REPLY #54915 /* ~"안됐군. 그럼 그것들을 내게 넘겨주시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~"그럼 그것들은 당신이 계속 지니고 있도록 하시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~"흥! 당신의 관대함은 염병할 엘뤼시온의 디바들에 필적하는군. 이 불쌍한 흐줄로부터 뭘 더 원하시오?"~ */
  IF ~~ THEN REPLY #54918 /* ~"생각해 보니... 당신 물건들을 좀 구경해야겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~"질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~그는 이를 간다. "내가 더 어떻게 봉사하면 되겠소?"~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~"어떻게 하면 이 분화구에서 떠날 수 있소?"~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~갈라진 혀는 내게 이 탄공으로부터 커스트로 돌아갈 수 있는 전이문은 거대한 해골의 꼬리뼈 아래에 있다고 말해주었다. 그는 내가 그 엉덩이 부분으로 지나가야 하는 것이 몹시 유쾌한 듯했다. ~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~"떠나는 방법을 다시 말해주겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~"그래 왜 바테주가 당신을 추적하는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~"나와 나누고자 하는 물건은 없소?"~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~"당신은 왜 이 분화구에서 은신하고 있는 거요?"~ */ JOURNAL #66807 /* ~갈라진 혀는 내게 그가 해골이 있는 곳에서 숨어 지내는 이유를 말해주었는데, 그것은 울-고리스의 뼈가 일체의 탐지 마법을 무력화 시키는 탓에 자신를 해치려는 사람으로부터 숨을 수가 있기 때문이었다. ~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~"지금은 아무런 도움도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~"지금은 아무런 도움도 필요없소. 안녕히 계시오."~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~"지금은 아무런 도움도 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~"바! 다음 번에는 또 무슨 구실로 올까? 당신같은 족속들은 늘 돌아온다니까... 흥!"~ */
  IF ~~ THEN REPLY #54934 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~"흥... 그럼 당신은 내가 고독을 즐기도록 내버려 두고 떠나 주겠다는 거요? 그럼 나는 기쁜 마음으로 전이문이 이 괴물의 엉덩이 뼈 부근에 있다고 선언하리다. 그 문은 당신을 당신이 온 그 돼지우리 같은 커스트로 돌려보내 줄 거요. 당신같은 자가 여행하기에는 아주 어울리는 방법이오." ~ */
  IF ~~ THEN REPLY #54936 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~"그 음흉한 가짜 빛의 자녀 같으니! 그 경멸할 만한... 아... 나는 그나 그의 법을 존중할 줄도 모르는 음흉하고 부정직한 방식에 대해 아무런 악의도 없소! 흥! 그는 사기꾼이오, 인간, 그리고 그는 절대로 믿어서는 안 되오, 이건 정말이오, 물론 호의에서..." 흐줄은 바닥에 침을 뱉는다. "그의 속임수에 넘어가 나는 영원토록 고통받게 되었소... 그가 죽지 않는 한은." 그의 싱긋 웃음에는 놀라울 정도의 희망이 담겨져 있다. ~ */
  IF ~~ THEN REPLY #54941 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~"흥... 그들은 장부 정리를 하고, 잘못된 점들을 수정하며, 모든 것이 다 제 위치에 있는 확인하려는 거요. 내가 그들의 감시로부터 벗어나 존재하는 것은 그들이 추구하는 완벽한 악에 있어 오점이 되오."~ */
  IF ~~ THEN REPLY #54946 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~"이것은 고리스트로들의 선조인 울-고리스의 뼈요. 고리스트로는 곰처럼 생긴 살아 있는 공성탑으로, 거의 멈출 수가 없는 거대한 괴물이오. 마법에 높은 내성을 지니고 있소... 그리고 울-고리스가 죽은 분화구에 있는 그의 뼈는 다량의 에너지를 방출하는 탓에 탐지 마법을 방해하오. 흥!"~ */
  IF ~~ THEN REPLY #54951 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~"흥... 그건 증오의 선물이오, 당신같은 사람에게 어울리는 무기지." 그는 혼자서 낄낄 웃는다. "나는 당신이 그걸 원하리라고는 생각하지 않소... 저주에 걸린 물건이니까. 아마 재고하는 것이..."~ */
  IF ~~ THEN REPLY #54956 /* ~"어쨌든 가져가겠소."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~"그 낡은 것? 흥! 고디우스의 매듭이오. 그걸 자르면 당신은 전보다 두 배는 뛰어난 지도자가 될 것이오. 헤, 헤. 물론 그것에는 대가가 따르오, 그리고 정말 기쁘게도 나로선 제지할 수도 없소."~ */
  IF ~~ THEN REPLY #54968 /* ~"어쨌든 가져가겠소."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~그는 한숨을 쉰다. "살무사의 눈물이오. 그걸 입에 넣으면 살무사처럼 맹독과 증오로 가득 찬 키스를 할 수 있소."~ */
  IF ~~ THEN REPLY #54980 /* ~"그걸 사겠소."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~"내가 베이터에 있었을 때의 추억거리요. 세상에서 가장 강한 물질 중 하나인 베이터의 초록색 강철로 만든 나이프요. 흥! 내 추억을 가지고 어서 가시오!"~ */
  IF ~~ THEN REPLY #54992 /* ~"그걸 가져가겠소. 하지만 내 용무는 아직 끝나지 않았소."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~"그 낡은 것? 베이터의 초록색 강철로 만든 대거요. 꽤 날카롭소. 당신이 원할 만한 물건은 아니오."~ */
  IF ~~ THEN REPLY #55004 /* ~"어쨌든 가져가겠소."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~"그것들? 그것들은 *캇섹*으로 당신 뇌 속에 자리잡고는 당신 정신 에너지를 먹는 기생충이오. 별다른 혜택도... 흥! 염병할 계약! 그들은 일시적으로 당신의 정신력을 향상시키오, 매우 유용하게 쓸 수 있는 거요!" 가져가! 가져가라고!~ */
  IF ~~ THEN REPLY #55019 /* ~"그러리다."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~"흥! 물론이오! 이 *미천한* 종에게 달리 원하는 거라도 있소?"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~"혹시 주문은 없소?"~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~"아무것도 필요없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~"흥! 날 아주 벌거숭이로 만들 생각이군! 주문을 원하오? 흥! 이것들이 내가 가진 주문들이오, 이 흡혈귀 같으니!" 그는 주문 목록을 재빨리 읽는다.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~"멋진 저주 해제의 두루마리는 어떻겠소?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~"저주 해제의 두루마리를 하나 더 주시오"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~"무적의 구체가 유용할 것 같소. 그걸 주시오."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~"무적의 구체의 두루마리는 더 없소?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~"연쇄 번개 폭풍의 두루마리는 어떻겠소?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~"연쇄 번개 폭풍의 두루마리가 하나 더 있으면 좋을 듯하오..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~"산의 폭풍이라... 무시무시할 것 같군. 그걸 내게 주시오."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~"산의 폭풍. 그걸 내게 주시오."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~"칼날의 폭풍? 인상적인 이름이군. 난 그걸 원하오."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~"칼날의 폭풍을 하나 더 주시오."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~"스티지아의 얼음 폭풍? 당신이 지니고 있도록 하기에는 너무 위험할 것처럼 들리는군... 당신으로부터 그걸 빼앗아야겠어."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~"스티지아의 얼음 폭풍? 마음에 들어."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~"당신이 말한 목록에는 아무 것도 없소."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~"관두시오. 질문할 것들이 있소."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~그가 기묘한 공간/비공간에 손을 넣자 그의 손의 사라진 것처럼 보인다. 그는 사람의 피부로 만든 듯한 두루마리를 꺼내더니 당신에게 내민다. "흥! 가져가 뒈지... 가져 가시오!"~ */
  IF ~~ THEN REPLY #55064 /* ~"고맙소... 또 어떤 주문들을 가지고 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~"그 물건들을 다시 봅시다."~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~"관두시오. 질문할 것들이 있소."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~그는 이를 드러내며 얼굴을 찡그린다. "당신에게 이미 당신이 그 특정한 주문을 내게서 하나도 남김없이 가져갔다고 말하게 되어 한없이 기쁘오. 흥!"~ */
  IF ~~ THEN REPLY #55073 /* ~"또 어떤 주문들을 가지고 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~"그 물건들을 다시 봅시다."~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~"관두시오. 질문할 것들이 있소."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~갈라진-혀는 당신에게 으르렁거린다. "당신은 다원 우주에서 가장 독특한 주문들의 컬렉션을 파괴하고 고갈시켰소... 그래 봐야 당신에게 아무런 쓸모도 없을 텐데. 나는 더 이상 당신에게 줄 주문이 없소."~ */
  IF ~~ THEN REPLY #55082 /* ~"그 물건들을 다시 봅시다."~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~"그럼 관두시오. 대신 질문에나 답하시오..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~"그럼 안녕히 계시오."~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~"흥! 돌아왔군! 그래, 기둥이 뭐라고 말했소? 그것이 당신의 김빠지는 질문에 대답해주었소?"~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~"질문할 것들이 몇 가지 있소..."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~"악! 뭐요? 뭐?"~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~"흥! 역겨운 타나리의 악취! 십 리 밖에서도 냄새맡을 수 있을 정도로군! 내 집에 대해 예의를 좀 갖추시오! 산성 증기로 당신의 악취를 좀 제거할 수는 없겠소? 흥! 이 곳에서 타나리 냄새를 다 제거하기는 불가능할 것 같군. 아마 온 우주에서 바테주들을 불러올 거야."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~"오, 그냥 타나리도 아니고 타나리 창녀가 내 집에 왕림하셨군... 이보다 더 나쁠 순 없군. 들어오시오, 들어오라고! 내 집이 곧 당신 집이오!" 그는 절망적인 표정으로 손을 흔든다. "왜 다른 어비스의 하피들도 깡그리 불러다가 날 고문하지는 않소?" ~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~"흥! 역겨운 타나리의 악취! 십 리 밖에서도 냄새맡을 수 있을 정도로군! 내 집에 대해 예의를 좀 갖추시오! 산성 증기로 당신의 악취를 좀 제거할 수는 없겠소? 흥! 이 곳에서 타나리 냄새를 다 제거하기는 불가능할 것 같군. 아마 온 우주에서 바테주들을 불러올 거야."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~"날 죽이러 왔나? 날 고문하러 왔나? 그렇다면 내게는 아직도 적지 않은 힘이 있다는 것을 알라!"~ */
  IF ~~ THEN REPLY #55100 /* ~"난 당신을 죽이러 오지 않았소."~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~"난 당신을 괴롭히러 오지 않았소."~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~"난 몇 가지 질문에 대한 답을 원할 뿐이오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~"타나리의 악취로 계속 내 집을 더럽혀야 하겠소? 질문을 하고 꺼지시오!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~"당신 날개는 어떻게 해서 그런 꼴이 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~"이 곳은 어디요?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~"뭘 하고 있는 거요?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~"나는 도움을 필요로 하오."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~"기둥과 그 곳으로 가는 방법에 대해 다시 말해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~"다시 만나 반갑소. 당신이 뒈진다면 그 또한 반갑겠소."~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~"당신 날개는 어떻게 해서 그런 꼴이 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~"이 곳은 어디요?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~"뭘 하고 있는 거요?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~"나는 도움을 필요로 하오."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~"기둥과 그 곳으로 가는 방법에 대해 다시 말해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~"이번에는 내게 뭘 원하오?"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~"당신 날개는 어떻게 해서 그런 꼴이 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~"이 곳은 어디요?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~"뭘 하고 있는 거요?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~"나는 도움을 필요로 하오."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~"기둥과 그 곳으로 가는 방법에 대해 다시 말해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~"흥! 거기 누구지? 날 죽이러 왔나? 날 고문하러 왔나? 그렇다면 내게는 아직도 적지 않은 힘이 있다는 것을 알라!"~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~"당신이 갈라진-혀의 흐줄이오?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~"흥! 달리 누구겠나! 무한히 넓은 아웃랜즈에 널린 무수한 괴물 해골들 중에 여길 찾아온 걸 보면 알고 있는 게... 아니면 소가 뒷걸음질하다가 파리 잡듯이 여기 오게 된 거요?" 그는 갑자기 어떤 생각이 든 것 같다. "당신은 내가 여기 있다는 사실을 누구에게도 얘기하지 않겠다고 맹세해야 하오!"~ */
  IF ~~ THEN REPLY #55554 /* ~진실: "맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~"하지 않겠소."~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~거짓말: "맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~그는 눈에 띄게 안도한다. "그래, 대체 여길 어떻게 찾았소?"~ */
  IF ~~ THEN REPLY #55558 /* ~"디바 트리어스는 당신이 내 질문에 답해줄 수 있을 거라고 했소."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~"그럼 엿이나 먹으라고! 내가 알 바가 아니니까! 어떻게 이 곳을 찾은 거요?"~ */
  IF ~~ THEN REPLY #55562 /* ~"디바 트리어스는 당신이 내 질문에 답해줄 수 있을 거라고 했소."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~그의 태도가 경직된다. "트리어스? *배신자* 트리어스가 당신을 보냈소?" 그는 날카로운 손톱이 달린 자신의 손을 쥐었다 폈다 한다. "이건 정말 최악의 모욕이군! 그 독선적인 개새끼! 놈을 죽이면 내가 가지고 있는 것 전부를 주겠소! 내가 망토로 걸칠 수 있도록 그의 피부를 벗겨 오시오... 억!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~"내 말은... 아니... 디바를 해치지 마시오. 그런 건 잘못된 일이오... 내가 말을 실수했소..."~ */
  IF ~~ THEN REPLY #55567 /* ~"트리어스가 당신에게 무슨 짓을 했소?"~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~"그건 재미있기는 했지만 내게는 당신으로부터 답을 들어야할 질문들이 있소."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~"흥! 지옥의 변호사로 그토록 오래 일했는데! 난 정말 세심하고 조직적으로 일을 처리했소. 나는 결코 내 상사들의 명령에 이의를 제기하지 않았소. 나는 시키는 일만 했소. 부하들이 실패하면 난 가장 잔혹하고 창의적인 방법으로 그들을 처벌했소." ~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~"그러나... 단 한 번의 실수로 모든 것이 끝장났소! 모두 다 우연, 무작위성, 혼돈 때문이오. 그런데도 열등한 종족들은 왜 바테주가 다원 우주를 질서 정연한 곳으로 만들려고 하는지 이해를 못하니 웃기는 일이오." 그는 잠시 멈추고 분노한다. "그 디바는 *거짓말*을 했소. 배신자 트리어스는 내가 계약서에 서명을 하도록 속였소. 나는 그를 생포할 수 있다는 가능성에 눈이 멀어 그의 함정에 속절없이 빠지고 말았소."~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~"만약 그가 죽으면 계약은 종료되오... 하지만 난 그를 찾을 수가 없었소, 그리고 설령 그를 찾더라도 내가 그를 어떻게 해칠 수가 있겠소? 이러한 음흉한 생각을 하는 것만으로도 내 정신은 격렬한 고통에 시달리오. 나는 내가 그 독선의 화신을 다 잡았다고 확신을 했소. 그러나 바로 그 근시안적인 욕심 때문에 난 이 선의의 하수구에 갇히는 처량한 신세가 되었소. 젠장."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~나는 자선을 베푸는 마족인 갈라진 혀의 흐줄을 찾아냈다. 그는 그가 배신자 트리어스라고 부르는 트리어스와의 계약에 의하여 구속을 받는 것 같다. 그는 이제 선행을 하고 도움을 필요로 하는 자를 도와야 하는 신세가 되었다. 물론 그는 그 일에 대해 달가워하지 않는다. ~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~나는 자선을 베푸는 마족인 갈라진 혀의 흐줄을 찾아냈다. 그는 그가 배신자 트리어스라고 부르는 트리어스와의 계약에 의하여 구속을 받는 것 같다. 그는 이제 선행을 하고 도움을 필요로 하는 자를 도와야 하는 신세가 되었다. 물론 그는 그 일에 대해 달가워하지 않는다. ~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~"그리고 이제 나는 도움을 필요로 하는 사람을 돕는 선행을 하도록 저주받았소. 흥! 트리어스에게 영원한 저주가 내리길! 그의 축복받은 도움이 염병이나 걸리길! 말라도미니(베이터의 제7층)의 모든 똥들이 그의 머리 위에 비처럼 쏟아지길!

그는 잠시 더 소란을 떤다, 그리고 당신 쪽으로 돌아서서 이를 갈면서 이야기한다. "디바와의 계약 때문에 이제 내가 당신에게 어떤 도움을 줄 수 있는지 물어봐야 하오. 당신은 날 고문하러 왔소? 아니면 죽이려고?"~ */
  IF ~~ THEN REPLY #55590 /* ~"나는 지식을 얻고자 왔을 뿐이오."~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~"난 당신을 괴롭히러 오지 않았소."~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~"난 당신을 죽이러 오지 않았소."~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~"아니오. 사실 난 떠나려 하고 있었소."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~"오, 멋지군."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~"당신 날개는 어떻게 해서 그런 꼴이 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~"이 곳은 어디요?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~"뭘 하고 있는 거요?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~"나는 도움을 필요로 하오."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~"기둥과 그 곳으로 가는 방법에 대해 다시 말해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~"흥! 어디 두고 보자고! 만약 당신에게 날 죽이거나 해칠 의도가 없다면, 그건 더 미묘한 방법으로 고문을 하려는 것이 틀림없소... 그런 것들이야말로 정말 고통스러우니까."~ */
  IF ~~ THEN REPLY #55615 /* ~"난 몇 가지 질문에 대한 답을 원할 뿐이오."~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~"좋소, 관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~"흥! 그래 주면 고맙겠군. 그럼 이 사는 것 같지 않은 삶에 종지부를 찍어 줄 수 있겠군!"~ */
  IF ~~ THEN REPLY #55622 /* ~"난 몇 가지 질문에 대한 답을 원할 뿐이오."~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~"무엇이 이 삶을 그토록 비참하게 하는 것이오?"~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~"어떻게 정박아가 그렇게 많은 얘기를 할 수 있지?" 그는 손을 젓는다. "말하시오, 말하라고. 흥!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~"당신 날개는 어떻게 해서 그런 꼴이 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~"이 곳은 어디요?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~"뭘 하고 있는 거요?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~"나는 도움을 필요로 하오."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~"기둥과 그 곳으로 가는 방법에 대해 다시 말해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~"흥. 말하시오, 하고 싶은 말을 하시오."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~"당신 날개는 어떻게 해서 그런 꼴이 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~"이 곳은 어디요?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~"나는 당신이 내 죽음에 대해 알고 있을 것이라는 얘기를 들었소. 나는 죽음을 빼앗겼소."~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~"뭘 하고 있는 거요?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~"나는 도움을 필요로 하오."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~"기둥과 그 곳으로 가는 방법에 대해 다시 말해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~그는 눈알을 부라린다. "만약 당신이 베이터의 어두운 궁전의 회랑을 걷고, 시끄러운 매연 아래 숨겨진 비명 지르는 강철의 도시를 방문하여, 그 영광스러운 모습을 두 눈으로 똑바로 보았다면 그런 질문은 하지 않았을 거요. 흥!~ */
  IF ~~ THEN REPLY #55672 /* ~"좋소, 내 질문에 답해주시오."~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~"오, 그래. 아름답지 않소..? 흥! 내가 추방당할 때 제일 먼저 빼앗긴 것이 저것들이오. 내가 동족들의 불타는 홀에서 도망치지 않을 수 없게 되기 바로 전에 내 날개들은 블러드 워에서 군기로 쓰일 목적으로 미천한 *아비샤이*에 의해 찢겨졌소. 내 뿔들은 내 해골로부터 잘려져 나갔으며, 그 중 하나는 전에 내 주군이었던 저주받을 벨을 위한 술잔을 만드는 데 사용되었소."~ */
  IF ~~ THEN REPLY #55677 /* ~"왜 그런 일이 일어났소?"~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~"블러드 워에 대해 어떤 얘기를 들려줄 수 있소?"~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~"고맙소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~"흥! 아웃랜즈에 있는 저주받을 분화구로 내 삶의 공허함을 그대로 투영하고 있소. 흥! 난 별로 필요한 게 없소. 괴물의 골수가 내게 먹을 것을 제공해주고. 이 곳의 특수한 에너지가 탐지 마법을 이용해 날 찾으려는 얼간이들의 시도를 봉쇄하오... 하지만 그래도 백치들이 날 찾을 수는 있는 모양이오."~ */
  IF ~~ THEN REPLY #55684 /* ~"이 생명체는 무엇이오?"~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~"무엇이 당신 삶을 그토록 공허하게 하오?"~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~그는 처음으로 당신을 자세히 살펴본다. "기억은 내 정신 속에서 마치 황량한 계곡처럼 펼쳐지고 있소, 반인. 나는 오랜 세월을 살며 많은 생명체를 만났지만... 당신을 만난 적은 없는 것 같소."~ */
  IF ~~ THEN REPLY #55695 /* ~"계속하시오."~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~"난 당신이 초대도 받지 않고 내 분화구에 오기 전까지는 통감조차 마비시키는 비극적인 고독 속에서 소박한 생활을 하고 있었소. 이 분화구는 내 삶, 내 존재의 암유와도 같소 - 그것은 내가 지니고 있던 저택의 창백한 그림자나 마찬가지요.~ */
  IF ~~ THEN REPLY #55701 /* ~"당신에게 대체 무슨 일이 일어난 거요?"~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~"이런, 자아도취에 빠진 장광설이군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~그는 목졸린 사람처럼 쉰 소리를 낸다. "내게는... 내가 오랫동안 모은 아이템들이 조금 있소. 그것들은... 내게 소중하지만...만약 당신이 필요로 한다면..."~ */
  IF ~~ THEN REPLY #55705 /* ~"물론 필요하오. 당신이 뭘 가지고 있는지 좀 봅시다."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 그럼 잘 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~"뭘 알고 싶으시오? 그 곳에 가는 법? 뭐요? 뭐?!"~ */
  IF ~~ THEN REPLY #55709 /* ~"그것이 무엇인지 말해주시오."~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~"어떻게 그 곳에 갈 수 있는지 말해주시오."~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~"일단 그 곳에 간 다음에는 어떻게 하면 돌아올 수 있소?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~"해골들의 기둥으로부터는 어떻게 하면 돌아올 수 있소?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~"흥! 나는 그 배신자에 대해 내가 하고 싶은 말은 다 했소! 나를 이 꼴로 만든 건 바로 그 자고, 창자를 뽑아서 천상계의 하프처럼 새벽의 문에 대롱대롱 매달아야 할 그놈은... 아니오... 아니오... 디바를 해칠 순 없소. 제기랄!"~ */
  IF ~~ THEN REPLY #55724 /* ~"그럼 다른 질문들에 대해 답해주시오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~"알겠소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~"나는 베이터에서도 가장 뛰어난 지옥의 변호사들 중 하나였소... 그러다가 엄청난 좌절을 겪게 되었소. 행운의 절정에서 나락으로 떨어지게 된 거요. 그런 일들은 나로 하여금 다원 우주의 우연과 혼돈을 더욱 증오하게 하오."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~"당신에게 대체 어떤 일이 일어난 거요?"~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~"당신에게 대체 어떤 일이 일어난 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~"왜 당신은 떠나야만 했소?"~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~갈라진-혀는 어깨를 으쓱한다. "당신들은 모두 내게는 엇비슷하게 보이오... 그러나 당신처럼 온몸에 흉터투성이인 인간이라면 기억할 수는 있었을 거요... 당신의 피부는 베이터에 있는 벨의 피부 갤러리에 전시된 숨쉬는 그림과도 같소, 다만 붓놀림이 덜 우아하고 더 열정적이오." ~ */
  IF ~~ THEN REPLY #55747 /* ~"흉터 얘기는 그만하고 다시 내 죽음에 대해 얘기합시다."~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~"계속하시오..."~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~"폭력은 가히 견딜 수 없을 정도의 엄청난 수준이나, 흉터는 수혜자의 고통을 최대화하겠다는 목적 의식도 없이, 타나리들이 하듯이 매우 조잡하게 만들어졌소. 바테주 예술가라면 전신의 고통을 극대화하는 데 세심한 정성을 기울였을 거요. 당신 상처들 중 일부는 매우 예리하고 치명적인 공격에 의한 자국이나, 또 다른 일부는 백정이 스테이크를 썬 것처럼 보이오."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~"뭐...?"~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~"흥. 인간들의 예술은 때로 날 역겹게 하오. 참으로 한심한 재능과 정력의 낭비요."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~"흥. 인간들의 예술은 때로 날 역겹게 하오. 참으로 한심한 재능과 정력의 낭비요."~ */
  IF ~~ THEN REPLY #55755 /* ~"흉터 얘기는 그만하고 다시 내 죽음에 대해 얘기합시다."~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~"흥! 타나리를 보고 조잡하다고 하는 것은 조잡함에 대한 모독이오. 혼돈을 즐기며 그 정체된 파도가 가라는 대로 움직이면서 스스로를 '악'이라 부르는 하등 종족은 '종족'도 아니오. 그들은 짐승들이오."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~"흥, 흥 흥! 짐승 같은 타나리들은 악으로부터 법과 질서를 말살하려고 하고 있소! 용서할 수 없소! 견딜 수 없소! 나는 --"~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~"흥! 그건 네가 다름 아닌... 너이기 때문이다." 그는 그녀를 보며 눈살을 찌푸린다. 그는 저리로 가라는 듯 손을 흔든다. "내게도 비꼬는 것 정도는 허용되는 모양이군."~ */
  IF ~~ THEN REPLY #55761 /* ~"멋지군. 흉터 대신 다시 내 죽음에 대해 얘기합시다."~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~"답을 듣고 싶은 다른 질문들이 있소..."~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~"좋소, 좋소." 그는 머리를 긁는다. "그 염병할 디바 때문에 기억력이 감퇴되긴 했지만, 내 기억이 틀리지 않는다면 당신과 비슷한 경우에 대해 들은 적이 있소. 그것은 당신을 불사신으로 만들고 있소, 그렇지 않소?"~ */
  IF ~~ THEN REPLY #55765 /* ~"그렇소"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~"그렇다면 죽음 그 자체가 더 이상 신성한 존재가 아니오. 흥. 내 전성기에는 인간들이 주제 파악을 하고 얌전히 제자리를 지켰는데... 이제는 개나 소나 할 것 없이 영원한 지루함이라는 병에 걸린 모양이군. 다원 우주에 사는 인간이란 인간은 모조리 모아서는 그들에게 불사 계약서를 내밀어야 겠군... 그러면 부지런한 우리 바테주들의 수고를 대폭 덜 수 있을 테니까. 흥."~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~"만약 모두가 다 불사신이라면, 청원자 체계가 깡그리 똥통 속으로 들어가게 될 거요. 흥. 불사성이란 당신같은 철없는 아이에게 줄 하찮은 장난감이 아니오."~ */
  IF ~~ THEN REPLY #55768 /* ~"그건 그렇다고 하고 내 죽음에 대해서 당신이 아는 것이나 말해주시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~"흥... 내가 말했듯이, 나는 후회의 요새란 곳에 대해서 들어본 적이 있소." 그는 잠시 생각한다. "그래... 그래, 바로 그거야~ */
  IF ~~ THEN REPLY #55770 /* ~"어떻게 하면 그 곳에 갈 수 있소?"~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~그는 환하게 미소를 짓는다. "나는 당신에게 나는 모른다고 말해주게 되어 한량없이 기쁘오. 전혀 모르오! 난 당신이 그 곳에 가도록 도와줄 수가 없소, 그리고 그 사실은 내 가슴을 기쁨으로 전율시키고 있소. 아니. 난. 당신을. 도울 수가. 없소. 아, 얼마나 그 말을 하고 싶었던가? 정말 너무나도 감미-"~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~"그럼 날 도울 수 있는 사람은 아시오?"~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~"그럼 날 도울 수 있는 사람은 아시오?"~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~"에? 당신의 반대 신문은 그만 집어치우시오! 그래, 그래, 나는 알지도 모르는 *자*를 알고 있소... 베이터에는 배신자, 사기꾼... 그리고 현자들로 만들어진 기둥이 있소. 성질은 더럽지만 그들의 지식은 상당하오. 그들이라면 이 후회의 요새를 찾을 수 있는 방법을 알지도 모르오."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~"베이터에는 어떻게 하면 갈 수 있소?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~갈라진 혀는 내게 현자, 거짓말쟁이, 그리고 배신자로 만들어진 기둥이 내가 얻고자 하는 잃어버린 죽음에 대한 답을 알고 있을 것이라고 말했다. 베이터로 가기 위한 전이문은 이 곳에 있는 거대한 유골의 왼쪽 팔 아래쪽에 있다.~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~"베이터에는 어떻게 하면 갈 수 있소?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~"내 집 밖에 전이문이 있소. 그것은 이 거대한 괴물의 손 부근에 있소. 괴물의 왼쪽 팔에 의해 만들어진 아치로 들어가면 해골들의 기둥에 도착할 거요. 당신을 위해 전이문을 작동시켜 놓았소." ~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~"그리고 어떻게 하면 돌아올 수 있소?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~그 마족은 내게 기둥으로부터 돌아오는 방법도 알려주었다. 그 차원의 환경에서 공통점을 찾으면 그것이 날 되돌려 보내줄 것이다. ~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~"해골들의 기둥으로부터는 어떻게 하면 돌아올 수 있소?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~그 마족은 내게 기둥으로부터 돌아오는 방법도 알려주었다. 그 차원의 환경에서 공통점을 찾으면 그것이 날 되돌려 보내줄 것이다. ~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~"해골들의 기둥으로부터는 어떻게 하면 돌아올 수 있소?"~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~"에? 돌아와? 그것에 대해선 미처 생각하지 못했군. 베이터에서 돌아오려면 지식과, 울퉁불퉁한 흑요석을 입 안에 넣어 혀를 베는 행위가 필요하오. 지식은 기둥으로부터 얻게 될 것이오. 하지만 당신이 이 곳에 돌아올 이유는 없소. 그리고 난 당신을 보고 싶지도 않소."~ */
  IF ~~ THEN REPLY #55783 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~그는 으르렁거린다. "나는 당신을 목 졸라서 죽인 후 그 시체를 트렐론에게 먹일 생각은 하고 있지 않소."~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~"흥... 그건 증오의 선물이오, 당신같은 사람에게 어울리는 무기지." 그는 혼자서 낄낄 웃는다. "나는 당신이 그걸 원하리라고는 생각하지 않소... 저주에 걸린 물건이니까. 아마 재고하는 것이..."~ */
  IF ~~ THEN REPLY #55796 /* ~"어쨌든 가져가겠소."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~"그 낡은 것? 흥! 고디우스의 매듭이오. 그걸 자르면 당신은 전보다 두 배는 뛰어난 지도자가 될 것이오. 헤, 헤. 물론 그것에는 대가가 따르오, 그리고 정말 기쁘게도 나로선 제지할 수도 없소."~ */
  IF ~~ THEN REPLY #55806 /* ~"어쨌든 가져가겠소."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~그는 한숨을 쉰다. "살무사의 눈물이오. 그걸 입에 넣으면 살무사처럼 맹독과 증오로 가득 찬 키스를 할 수 있소."~ */
  IF ~~ THEN REPLY #55816 /* ~"그걸 가져가겠소."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~"내가 베이터에 있었을 때의 추억거리요. 세상에서 가장 강한 물질 중 하나인 베이터의 초록색 강철로 만든 나이프요. 흥! 내 추억을 가지고 어서 가시오!"~ */
  IF ~~ THEN REPLY #55826 /* ~"그걸 가져가겠소. 하지만 내 용무는 아직 끝나지 않았소."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~"그 낡은 것? 베이터의 초록색 강철로 만든 대거요. 꽤 날카롭소. 당신이 원할 만한 물건은 아니오."~ */
  IF ~~ THEN REPLY #55852 /* ~"어쨌든 가져가겠소."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~"그것들? 그것들은 *캇섹*으로 당신 뇌 속에 자리잡고는 당신 정신 에너지를 먹는 기생충이오. 별다른 혜택도... 흥! 염병할 계약! 그들은 일시적으로 당신의 정신력을 향상시키오, 매우 유용하게 쓸 수 있는 거요!" 가져가! 가져가라고!~ */
  IF ~~ THEN REPLY #55874 /* ~"그렇게 하겠소."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~"흥! 물론이오! 이 *미천한* 종에게 달리 원하는 거라도 있소?"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~잔혹하게 생긴 도끼를 살펴본다: "이건 무엇이오?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~매듭지어진 줄을 살펴본다: "이건 무엇이오?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~녹색 마름모꼴을 살펴본다: "이건 무엇이오?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~녹색 강철로 만든 나이프를 살펴본다:: "이건 무엇이오?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~녹색 대거를 살펴본다: "이건 무엇이오?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~꿈틀거리는 벌레들을 살펴본다: "이건 무엇이오?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~"혹시 주문은 없소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~"관두시오. 대신 질문에나 답해주시오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~"흥! 날 아주 벌거숭이로 만들 생각이군! 주문을 원하오? 흥! 이것들이 내가 가진 주문들이오, 이 흡혈귀 같으니!" 그는 주문 목록을 재빨리 읽는다.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~"멋진 저주 해제의 주문은 어떻겠소?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~"멋진 저주 해제의 주문은 어떻겠소?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~"무적의 구체가 유용할 것 같소. 그걸 주시오."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~"무적의 구체의 두루마리는 더 없소?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~"연쇄 번개 폭풍의 두루마리는 어떻겠소?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~"연쇄 번개 폭풍의 두루마리는 어떻겠소?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~"산의 폭풍이라... 무시무시할 것 같군. 그걸 내게 주시오."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~"산의 폭풍. 그걸 내게 주시오."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~"칼날의 폭풍? 인상적인 이름이군. 난 그걸 원하오."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~"칼날의 폭풍을 하나 더 주시오."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~"스티지아의 얼음 폭풍? 당신이 지니고 있도록 하기에는 너무 위험할 것처럼 들리는군... 당신으로부터 그걸 빼앗아야겠어."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~"스티지아의 얼음 폭풍? 마음에 들어."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~"당신이 말한 목록에는 아무 것도 없소."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~"관두시오. 질문할 것들이 있소."~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~그가 기묘한 공간/비공간에 손을 넣자 그의 손의 사라진 것처럼 보인다. 그는 사람의 피부로 만든 듯한 두루마리를 꺼내더니 당신에게 내민다. "흥! 가져가 뒈지... 가져 가시오!"~ */
  IF ~~ THEN REPLY #55955 /* ~"고맙소... 또 어떤 주문들을 가지고 있소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~"그 물건들을 다시 봅시다."~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~"관두시오. 질문할 것들이 있소."~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~그는 이를 드러내며 얼굴을 찡그린다. "당신에게 이미 당신이 그 특정한 주문을 내게서 하나도 남김없이 가져갔다고 말하게 되어 한없이 기쁘오. 흥!"~ */
  IF ~~ THEN REPLY #55960 /* ~"또 어떤 주문들을 가지고 있소?"~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~"그 물건들을 다시 봅시다."~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~"관두시오. 질문할 것들이 있소."~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~갈라진-혀는 당신에게 으르렁거린다. "당신은 다원 우주에서 가장 독특한 주문들의 컬렉션을 파괴하고 고갈시켰소... 그래 봐야 당신에게 아무런 쓸모도 없을 텐데. 나는 더 이상 당신에게 줄 주문이 없소."~ */
  IF ~~ THEN REPLY #55965 /* ~"그 물건들을 다시 봅시다."~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~"그럼 관두시오. 대신 질문에나 답하시오..."~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~"흥! 당신은 무지의 산에서 떨어지는 모든 바위와 박치기라도 한 거요? 마계에서는 블러드 워가 맹위를 떨치고 있소. 이 분쟁에 의해 영향을 받고 있지 않는 차원은 없소. 당신이 상상할 수 있는 가장 끔찍한 전쟁을 생각하시오. 그리고 그것을 그 규모와 기간 면에서 10억 배 해보시오, 그러나 그래 봐야 그건 블러드 워가 벌어지고 있는 전장의 극히 일부에 불과하오. 그것은 다원 우주의 가장 기본적인 개념들 중 하나를 정의하기 위한 이데올로기(이념) 전쟁이오!"~ */
  IF ~~ THEN REPLY #55970 /* ~"계속하시오."~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~"관두시오. 질문할 것들이 더 있소."~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~"이것은 고리스트로들의 선조인 울-고리스의 뼈요. 고리스트로는 곰처럼 생긴 살아 있는 공성탑으로, 거의 멈출 수가 없는 거대한 혼돈의 괴물이오. 마법에 높은 내성을 지니고 있소... 그리고 울-고리스가 죽은 분화구에 있는 그의 뼈는 다량의 마력을 방출하는 탓에 탐지 마법을 방해하오. 덕분에 나는 이 비참한 목숨을 몇 년이나마 더 연장할 수 있는 거요. 흥!"~ */
  IF ~~ THEN REPLY #55978 /* ~"알았소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~"알았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~"만약 당신에게 디스(베이터의 제2층)의 불타는 거리를 걸으며 불타는 살의 달콤한 향기를 냄새맡고, 스티지아(베이터의 제5층)의 부빙에서 나오는 독성 증기를 깊이 들이쉬며, 밤에 불이 환하게 켜진 베이터의 궁전들을 대군을 이끌고 지나간 적이 있다면 그런 질문은 하지 못할 거요, 반인."~ */
  IF ~~ THEN REPLY #55983 /* ~"그래 당신은 대체 어떤 일을 당한 거요."~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~"바로 그 염병할 디바가 내가 당한 일이오! 나는 너무나도 철저히 확신을... 흥! 난 내 힘을 완전히 빼앗겨 힘없는 애송이와 다를 바가 없게 되었소. 베이터의 수많은 장수들이 날 찾아내려고 하는 것도 무리가 아니오."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~"트리어스에 대해 말해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~"질문할 것들이 몇 가지 더 있소..."~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~"알았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~"흥! 이미 당신에게 내 계약의 특성에 대해서는 말했잖소! 나는 이 정보를 감출 수가 없소. 기둥은... 당신의 유일한 희망이오."~ */
  IF ~~ THEN REPLY #55997 /* ~"모트, 왜 그 곳에 가기 싫어하는 건가?"~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~"좋소. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~"흥... 그건 거짓말로 타인을 죽음에 이르게 한 자들의 머리들로 만들어진 거대한 기둥이오. 그것은 사기꾼들과 현자들이 짬뽕처럼 한 데 모인 것으로, 다원 우주에 대해 매우 폭넓은 지식을 지니고 있소."~ */
  IF ~~ THEN REPLY #56003 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~"흥! 내가 당신의 무지를 깨우쳐 주겠소. 내가 자선을 강제당하고 있는 한, 내가 있고 싶은 곳에서는 내가 있을 자리가 없소. 적어도 여기서는 그 잔인한 계약으로부터 비교적 안전하게 피해 있을 수가 있소. 그 디바의 마음은 마족의 그것과 다를 바가 없소."~ */
  IF ~~ THEN REPLY #56007 /* ~"그럼 내 질문들에 대해 좀더 답해주시오..."~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~"알았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~"그것은 연구에 활력을 불어 넣소... 블러드 워 덕분에 많은 끔찍한 것들이 창조되었소. 왜? 왜냐하면 그것은 고통이자 죽음이자 악이기 때문이오. 타나리는 혼돈과 악... 야만적인 힘과 갑작스런 충동과 증오에 의한 악을 위해 싸우고 있소. 그들의 '악'은 야수들의 무리와 같은 악이며, 소용돌이치는 악의 군중 심리요. 그들은 죽이고 약탈하오."~ */
  IF ~~ THEN REPLY #56010 /* ~"그리고 다른 편은?"~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~"바테주는 철저하게 통제된 악만을 원하오, 따라서 정확하고 질서 정연한 방법으로 악의 대의를 위해 행동하고 있소. 타나리는 학살하고, 바테주는 착취하오. 양쪽은 서로를 말살하려고 작심을 했소."~ */
  IF ~~ THEN REPLY #56014 /* ~"계속하시오."~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~"관두시오. 대신 내 질문에 답을 해주시오."~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~"내 일들 중 하나는... 전쟁에서 대포밥 및 최전선의 병사로 활용하기 위해 다른 차원들로부터 전사와 메이지들을 모집하는 일이었소. 말해 두겠는데 나는 그 일에 있어서 최고의 실적을 자랑했었소. 들리는 얘기로는 군주 벨조차도 내게 주목을 했다고 하오. 그조차도 내 가치를 인정한 거요! 흥! 하지만 이제 나는 씻을 수 없는 굴욕을 맛보았소."~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~"나를 기억하오?"~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~"나를 기억하오?"~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~"좋소. 그럼 다른 질문들에 답해주시오."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~"그렇겠소. 안녕히 계시오."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~"그렇겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~"이 이야기는 전에 이미 하지 않았소? 흥! 어리석은 인간들!"~ */
  IF ~~ THEN REPLY #56024 /* ~"그럼 다른 질문들에 답해주시오."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~"고맙소. 안녕히 계시오."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~날개가 부러진 마족이 보인다. 부러지지 않은 날개도 해어진 데다가 흉터투성이다. 그는 이를 악물고 말하는 듯 그의 목소리는 분노와 절망으로 가득 차 있다. "내 집에 타나리라니! 견딜 수 없는 모욕이군! 아예 네 역겨운 동족들을 모조리 불러오지 그래?"~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~날개가 부러진 마족이 보인다. 부러지지 않은 날개도 해어진 데다가 흉터투성이다. 그는 이를 악물고 말하는 듯 그의 목소리는 분노와 절망으로 가득 차 있다. "내 집에 타나리라니! 견딜 수 없는 모욕이군! 아예 네 역겨운 동족들을 모조리 불러오지 그래?"~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~"방문객을 피하려면 아예 죽어서 땅 속에 누워야겠군."~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~"멋지군. 한층 향기롭군."~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~"흥! 저주받을 자 같으니! 그토록 내가 경고하고 맹세를 받았는데도 내 집으로 베이터의 군대를 불러오다니! 사기꾼! 배신자! 나... 흠... 바로 이것이... 그 느낌이군..."~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~"여기서 뭘 하는 거요?" 마족은 돌아서서 바닥에 침을 뱉는다.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~"뭐?" 당신의 체재를 더 참아야 한다는 거요? 이 고통은 끝도 없는가? 흥! 좋아, 그럼 좋아. 내 창고를 약탈하고, 내 실험을 망치고, 뭐든지 원하는 대로 하시오. 난 그냥 여기서 분통만 터트릴 테니까." 그는 맹렬한 기세로 자리를 뜬다.~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~"고맙소."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~"고맙소."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~"고맙소."~ */ EXIT
END
