// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOX~

IF ~  Global("Pox","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #8004 /* ~고깔 달린 겉옷을 입은 자가 시체안치소 정문 옆에 서 있다. 그의 얼굴은 두건의 그림자에 가려 잘 보이지 않는다... 그나마 드러난 부분은 그의 턱으로, 그것은 짧은 수염과 역겨운 녹색과 자주색 발진으로 뒤덮여 있다.~ */
  IF ~~ THEN REPLY #8005 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #8037 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #8006 /* ~그는 움직이지 않는다... 잠시 정적이 흐른다, 그리고 그는 남자보다는 열 살짜리 소녀에게 어울릴 날카로운 목소리로 대답한다. "뭐요?"~ */
  IF ~~ THEN REPLY #8038 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #8039 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.1 5.2 6.3 7.2 8.2 9.1 10.0 11.0 12.5 13.1 14.2 15.2 16.1 17.1 18.1 19.1 20.3 22.2 23.0 24.2 25.1 26.1 27.1 28.1 29.2 30.0 31.3
  SAY #8007 /* ~"뭐요?"~ */
  IF ~  Global("Pox","GLOBAL",0)
~ THEN REPLY #8040 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8041 /* ~"어떻게 곰보라는 이름을 얻게 된 거요?"~ */ GOTO 10
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8042 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8043 /* ~"파로드란 사람을 혹시 아시오?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8044 /* ~"나는 일지를 잃어버렸소... 혹시 일지를 본 적이 있소?~ */ GOTO 23
  IF ~  Global("Pox_Smuggle","GLOBAL",1)
~ THEN REPLY #8045 /* ~"나를 시체안치소 안으로 몰래 들여보내 줄 수 있겠소?"~ */ GOTO 31
  IF ~  GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8046 /* ~"내가 죽은 시늉을 하면 날 몰래 들여보내 줄 수 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #8047 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #8008 /* ~"나는 곰보요, 그렇소."~ */
  IF ~~ THEN REPLY #8048 /* ~"어... 곰보?"~ */ GOTO 10
  IF ~~ THEN REPLY #8049 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8050 /* ~"파로드란 사람을 혹시 아시오?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8051 /* ~"나는 일지를 잃어버렸소... 혹시 일지를 본 적이 있소?~ */ GOTO 23
  IF ~~ THEN REPLY #8052 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #8009 /* ~"기다리고 있소, 죽은 자를, 그렇소."~ */
  IF ~~ THEN REPLY #8053 /* ~"'사자?' 시체? 왜?"~ */ GOTO 5
  IF ~~ THEN REPLY #8054 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8055 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #8010 /* ~"죽은 자를 찾아, 정문 안으로 가지고 들어가, 돈을 받소, 그리고 다시 기다리오, 그렇소."~ */
  IF ~~ THEN REPLY #8056 /* ~"문을 통해? 왜?"~ */ GOTO 6
  IF ~~ THEN REPLY #8057 /* ~"정문이 시체안치소로 들어갈 수 있는 유일한 입구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #8058 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8059 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #8011 /* ~"더스트맨에게 있어 시체는 수집자에게 있어 동전이나 마찬가지요. 그들에게 시체를 가져가면 정문에서 돈을 주오, 그렇소."~ */
  IF ~~ THEN REPLY #8060 /* ~"왜 더스트맨은 시체를 사는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #8061 /* ~"수집자? 그게 뭐요?"~ */ GOTO 22
  IF ~~ THEN REPLY #8062 /* ~"정문이 시체안치소로 들어갈 수 있는 유일한 입구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #8063 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8064 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 22.0
  SAY #8012 /* ~"거리는 깨끗하고, 시체는 제대로 매장되고, 거리에선 냄새가 나지 않고, 시체는 없어지지 않고, 시체안치소 안에 보관되고, 모두 행복하오, 그렇소."~ */
  IF ~~ THEN REPLY #8065 /* ~"더스트맨은 그들이 산 시체들을 가지고 무엇을 하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #8066 /* ~"정문이 시체안치소로 들어갈 수 있는 유일한 입구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #8067 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8068 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #8013 /* ~"시체들을 안으로 가지고 들어가 철판 위에 올려 놓고 해부한 후 매장하거나 다시 걷도록 만든다오, 그렇소."~ */
  IF ~~ THEN REPLY #8069 /* ~"그들이 걸어다니도록 만든다?"~ */ GOTO 9
  IF ~~ THEN REPLY #8070 /* ~"정문이 시체안치소로 들어갈 수 있는 유일한 입구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #8071 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8072 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #8014 /* ~"그렇소. 죽은 자가 더스트맨에게 허락을 했으면 다시 일어나게 만드오, 그러면 시체는 좀비나 스켈레톤이 되오."~ */
  IF ~~ THEN REPLY #8073 /* ~"정문이 시체안치소의 유일한 입구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #8074 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8075 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.0
  SAY #8015 /* ~"내 부모가 지은 이름이오, 첫 아이가 천연두에 걸리길 원했소, 그냥 악담이었는데 현실이 되었소, 그렇소." 당신 눈은 다시 그의 턱과 목을 덮고 있는 자주색 빛을 띤 녹색 발진으로 향한다.~ */
  IF ~~ THEN REPLY #8076 /* ~"오... 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8077 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #8016 /* ~곰보는 시체안치소 정문 옆에 서 있다. 그는... 당신과 지난번에 얘기한 이래 조금도 움직이지 않은 것 같다.~ */
  IF ~~ THEN REPLY #8078 /* ~"곰보, 당신에게 물어볼 것들이 조금 더 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8079 /* ~곰보를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6 20.2 31.2
  SAY #8017 /* ~"당신이 시체 시늉을 하는 걸 봅시다. 연기를 잘하면 데리고 들어가겠소, 그렇소."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #8080 /* ~죽은 척 한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8081 /* ~죽은 척 한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  False()
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8082 /* ~죽은 척 한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8083 /* ~죽은 척 한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~  False()
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8084 /* ~죽은 척 한다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~~ THEN REPLY #8085 /* ~"지금은 아니오. 먼저 물어보고 싶은 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8086 /* ~"괸두시오. 아마 다른 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8018 /* ~곰보는 아무런 소리도 내지 않고 당신의 연기를 지켜본다. 당신이 일어나자 그가 말한다. "더스트맨은 당신이 시체라고 믿지 않을 거요. 더스트맨은 늘 시체가 정말 시체인지 확인하오. 만약 시체가 숨을 쉬면 그들은 받아들이지 않소, 그렇소."~ */
  IF ~~ THEN REPLY #8087 /* ~"만약 내가 정말로 죽었다면 어떻게 하겠소? 내 속을 빼내고 시체를 팔 수 있겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #8088 /* ~"그건 문제군. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8089 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.2 12.3 12.4
  SAY #8019 /* ~곰보는 아무런 소리도 내지 않고 당신의 연기를 지켜본다. 당신이 일어나자 그가 말한다. "그래, 곰보는 당신을 팔겠소. 지금 팔리고 싶소?"~ */
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",2)
~ THEN REPLY #8090 /* ~"그렇소."~ */ DO ~TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",1)
~ THEN REPLY #8091 /* ~"그렇소."~ */ DO ~AddexperienceParty(500)
TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~~ THEN REPLY #8094 /* ~"지금은 아니오. 먼저 물어보고 싶은 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8095 /* ~"아마 다른 기회에. 어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #8020 /* ~곰보는 그 질문에 당황하는 기색이 없다. "그래, 지난번처럼 하겠소. 좋소?"~ */
  IF ~~ THEN REPLY #8096 /* ~"그렇소."~ */ GOTO 21
  IF ~~ THEN REPLY #8097 /* ~"어... '지난 번?'"~ */ GOTO 16
  IF ~~ THEN REPLY #8098 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8099 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 31.0
  SAY #8021 /* ~"그렇소. 몇 번이든 당신이 부탁만 하면 언제라도 하겠소."~ */
  IF ~~ THEN REPLY #8100 /* ~"어... 정확히 몇 번이오?"~ */ GOTO 17
  IF ~~ THEN REPLY #8101 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8102 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #8022 /* ~"여러 번, 그렇소."~ */
  IF ~~ THEN REPLY #8103 /* ~"그래... 우린 전에 만난 적이 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #8104 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8105 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #8023 /* ~"그렇소."~ */
  IF ~~ THEN REPLY #8106 /* ~"나에 대해 어떤 것을 아시오?"~ */ GOTO 19
  IF ~~ THEN REPLY #8107 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8108 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8024 /* ~"당신은 오래 죽지 않는 죽은 자요, 그렇소. 내게는 좋은 거래요, 그렇소."~ */
  IF ~~ THEN REPLY #8109 /* ~"그 밖에도 나에 대해 무엇을 아시오?"~ */ GOTO 20
  IF ~~ THEN REPLY #8110 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8111 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 20.0
  SAY #8025 /* ~"당신은 오래 죽지 않는 죽은 자요, 그렇소. 내게는 좋은 거래요, 그렇소."~ */
  IF ~~ THEN REPLY #8112 /* ~"어... 그것 말고도 아는 것이 있소?~ */ GOTO 20
  IF ~~ THEN REPLY #8113 /* ~"그럼 날 죽이시오. 나는 시체안치소 안에 들어가고 싶소."~ */ GOTO 21
  IF ~~ THEN REPLY #8114 /* ~"어, 그럼 좋소. 난 죽은 시늉을 할 테니까 그 사이 날 몰래 들여보내 주는 건 어떻겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #8115 /* ~"흠... 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8116 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0 20.1 31.1
  SAY #8026 /* ~곰보는 법복에서 팔을 꺼낸다, 그리고 그의 발진투성이인 양 손에는 녹슨 대거가 각각 하나씩 쥐어져 있다. 그는 빠른 동작으로 당신의 목을 두 번 벤다, 그리고 당신의 시야는 암흑으로 뒤덮인다...~ */
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",0)
~ THEN REPLY #8117 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",1)
~ THEN REPLY #8118 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.1
  SAY #8027 /* ~"그렇소, 수집자. 시체를 모아 돈을 받으러 정문에 있는 더스트맨에게 가져가오."~ */
  IF ~~ THEN REPLY #8119 /* ~"더스트맨은 죽은 사람들을 가지고 뭘 하려는 거요."~ */ GOTO 7
  IF ~~ THEN REPLY #8120 /* ~"정문이 시체안치소로 들어갈 수 있는 유일한 입구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #8121 /* ~"알겠소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8122 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.4 3.3
  SAY #8028 /* ~"아니, 일-지를 본 적이 없소. 벌통에서는 물건을 잃어버리기 쉽소, 그리고 다시는 찾지 못하는 경우가 많소. 아마 일-지도 그렇게 된 모양이오." ~ */
  IF ~~ THEN REPLY #8123 /* ~"알겠소. 자, 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8124 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3 3.2
  SAY #8029 /* ~"그렇소, 파로드. 수집자로, 큰 세력을 지니고 있소, 그렇소."~ */
  IF ~~ THEN REPLY #8125 /* ~"수집자?"~ */ GOTO 25
  IF ~~ THEN REPLY #8126 /* ~"어디 가면 그를 만날 수 있는지 혹시 아시오?"~ */ GOTO 26
  IF ~~ THEN REPLY #8127 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8128 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #8030 /* ~"그렇소, 수집자. 시체를 모아 더스트맨에게 가져가 돈을 받소."~ */
  IF ~~ THEN REPLY #8129 /* ~"어디 가면 그를 만날 수 있는지 혹시 아시오?"~ */ GOTO 26
  IF ~~ THEN REPLY #8130 /* ~"아. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8131 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #8031 /* ~"그렇소, 여기 벌통에 있소. 어딘가에. 그렇소."~ */
  IF ~~ THEN REPLY #8132 /* ~"보다 구체적으로 말해줄 순 없소?"~ */ GOTO 27
  IF ~~ THEN REPLY #8133 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8134 /* ~"그렇다면 내 스스로 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #8032 /* ~"그렇소, 벌통 어딘가에 그는 있소. 파로드는 숨어 있소. 그는 찾기가 어렵소. 하지만 찾을 가치는 없소."~ */
  IF ~~ THEN REPLY #8135 /* ~"'찾을 가치가 없다?' 그게 무슨 뜻이오?"~ */ GOTO 28
  IF ~~ THEN REPLY #8136 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8137 /* ~"그렇다면 내 스스로 그를 찾아보도록 하겠소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #8033 /* ~"그렇소, 많은 이들이 그를 싫어하오, 심지어는 다른 수집자들도. 쉐어그레이브는 그를 싫어하오, 전혀 좋아하지 않소, 그렇소."~ */
  IF ~~ THEN REPLY #8138 /* ~"쉐어그레이브?"~ */ GOTO 29
  IF ~~ THEN REPLY #8139 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8140 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8034 /* ~"그렇소, 쉐어그레이브는 큰 세력과 영향력을 지니고 있소. 그는 내게 명령을 하오, 그렇소."~ */
  IF ~  Global("Pox","GLOBAL",2)
~ THEN REPLY #8141 /* ~"당신 보스라는 이 쉐어그레이브란 사람은... 파로드가 어디 있는지 알고 있을 것 같소?"~ */ JOURNAL #66542 /* ~나는 시체안치소 정문 근처에서 "곰보"라는 이름의 병든 수집자를 만났다. 그는 파로드를 알고 있었으나, 그가 어디에 있는지는 알지 못했다. 그는 내게 시체안치소에서 서쪽으로 몇 블록 가면 있는 구역인 넝마주이 광장으로 가서 쉐어그레이브란 사람을 만나라고 했다. 그의 말에 의하면 쉐어그레이브는 파로드를 증오하며, 아마 파로드가 어디 있는지도 알고 있을 것이라고 한다. ~ */ GOTO 30
  IF ~  GlobalLT("Pox","GLOBAL",2)
~ THEN REPLY #8142 /* ~"당신 보스라는 이 쉐어그레이브란 사람은... 파로드가 어디 있는지 알고 있을 것 같소?"~ */ DO ~SetGlobal("Pox","GLOBAL",2)
~ JOURNAL #66542 /* ~나는 시체안치소 정문 근처에서 "곰보"라는 이름의 병든 수집자를 만났다. 그는 파로드를 알고 있었으나, 그가 어디에 있는지는 알지 못했다. 그는 내게 시체안치소에서 서쪽으로 몇 블록 가면 있는 구역인 넝마주이 광장으로 가서 쉐어그레이브란 사람을 만나라고 했다. 그의 말에 의하면 쉐어그레이브는 파로드를 증오하며, 아마 파로드가 어디 있는지도 알고 있을 것이라고 한다. ~ */ GOTO 30
  IF ~~ THEN REPLY #8143 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8144 /* ~"내가 알고 싶었던 건 그것이 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #8035 /* ~"그렇소, 쉐어그레이브는 비밀을 아오, 그렇소. 그는 파로드가 어디 숨었는지도 아오. 쉐어그레이브는 여기서 서쪽으로 여러 블록 떨어진 넝마주이 광장에 있소, 그렇소. 쉐어그레이브에게 내가 소개했다고 하시오, 그에게 말하시오, 쉐어그레이브(무덤을 공유)는 곰보와 쉐어카퍼(돈을 공유)가 될 거요, 그렇소."~ */
  IF ~~ THEN REPLY #8145 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #8146 /* ~"이 곳 서쪽의 넝마주이 광장? 알았소. 그럼 그 곳으로 이 쉐어그레이브란 사람을 찾아가도록 하겠소.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5 5.1 6.2 7.1 8.1 9.0 22.1
  SAY #8036 /* ~"그렇소, 오직 시체와 더스트맨만 정문 안으로 들어갈 수 있소, 그렇소. 당신은 내가 또 당신을 시체로 만들길 바라오?"~ */
  IF ~~ THEN REPLY #8147 /* ~"어... 또?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #8148 /* ~"그래, 날 죽이시오. 나는 시체안치소 안에 들어가야 하오."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #8149 /* ~"그냥 죽은 시늉을 하는 건 어떻겠소? 그런 방법으로도 날 몰래 들여보내 줄 수 있겠소?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #8150 /* ~"아니, 아니오... 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #8151 /* ~"아마 다른 기회에. 어쨌든 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ EXIT
END
