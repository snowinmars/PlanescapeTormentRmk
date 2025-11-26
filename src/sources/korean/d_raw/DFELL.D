// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFELL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 4 3 1 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3013 /* ~당신이 다가오자 휄은 고개를 돌려 당신을 마주본다. 당신 옆에 서 있던 안나는 휄을 보자마자 경직된다. ~ */
  IF ~~ THEN REPLY #23037 /* ~"안녕하시오, 휄."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23038 /* ~"안나... 뭐가 잘못되었소?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23039 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Fell","GLOBAL",0)
Global("Know_Dabus","GLOBAL",1)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #21094 /* ~한 다버스가 당신 시야에 들어온다... 하지만 그는 뭔가 이상한 것 같다. 그는 다른 다버스와 마찬가지로 하얀 머리, 초록빛 피부, 한 쌍의 큰 뿔을 가지고 있다... 그러나 갑자기 당신은 그가 떠다니지 않고 땅 위를 걷고 있다는 사실을 깨닫는다. 어떤 이유에서인지는 알 수 없으나 그것은 당신을 불안하게 한다... 그것은 안나 역시 불안하게 하는 듯, 그녀는 그 다버스를 보자 거칠게 숨을 들이쉰다. ~ */
  IF ~~ THEN REPLY #23040 /* ~"어... 안녕하시오."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23041 /* ~"안나... 뭐가 잘못되었소?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23042 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 11
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21096 /* ~당신이 다가오자 휄은 고개를 돌려 당신을 마주본다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23043 /* ~대화를 시도하여 당신이 휄이 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23044 /* ~대화를 시도하여 당신이 휄이 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23045 /* ~대화를 시도하여 당신이 휄이 하는 말을 이해할 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #23046 /* ~"당신이 파는 문신들을 볼 수 있겠소, 휄?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23047 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23048 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23049 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23050 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23051 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23052 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23053 /* ~"안나, 날 위해서 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23054 /* ~"다콘, 날 위해서 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23055 /* ~"훨-후럼-그레이스, 날 위해서 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23056 /* ~"그럼 관두시오. 방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Know_Dabus","GLOBAL",1)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #21101 /* ~한 다버스가 당신 시야에 들어온다... 하지만 그는 뭔가 이상한 것 같다. 그는 다른 다버스와 마찬가지로 하얀 머리, 초록빛 피부, 한 쌍의 큰 뿔을 가지고 있다... 그러나 갑자기 당신은 그가 떠다니지 않고 땅 위를 걷고 있다는 사실을 깨닫는다. 어떤 이유에서인지는 알 수 없으나 그것은 당신을 불안하게 한다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23057 /* ~대화를 시도하여 당신이 그 생물이 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23058 /* ~대화를 시도하여 당신이 그가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23059 /* ~대화를 시도하여 당신이 그가 하는 말을 이해할 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23060 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23061 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23062 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23063 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23064 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23065 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23066 /* ~"안나, 날 위해서 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23067 /* ~"다콘, 날 위해서 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23068 /* ~"훨-후럼-그레이스, 날 위해서 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23069 /* ~다버스를 무시하고 스튜디오를 둘러본다.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Know_Dabus","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #21498 /* ~마치 번개를 맞은 것 같은 하얀 머리를 한 키가 큰 생명체가 보인다. 그의 피부에는 초록빛이 감돌고 있으며, 그의 이마에는 염소뿔이 한 쌍 달려 있다. 그는 흐르는 듯한 긴 법복을 입고 있다. ~ */
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #23070 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #23071 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN REPLY #23072 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ GOTO 6
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",1)
~ THEN REPLY #23073 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #23074 /* ~그를 무시하고 스튜디오를 둘러본다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21499 /* ~그의 머리 위에서 일련의 심벌들이 실체화한다. 심벌들은 약간 빛나고 있으며... 그들은 그 곳에 그냥 떠 있다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 211
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.3
  SAY #21500 /* ~그의 머리 위에서 일련의 심벌들이 실체화한다. 심벌들은 약간 빛나고 있으며... 그들은 그 곳에 그냥 떠 있다.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 118
END

IF ~~ THEN BEGIN 7 // from:
  SAY #21501 /* ~'휄'은 고개를 숙여 답례한다. 그의 머리 위에 심벌이 하나 나타난다. 그것은 처음에는 희미하나, 곧 타원을 검은색 번개가 가로지르는 모양으로 변화한다. 당신은 왠지 모르게 이 생명체를 *알고* 있다는 생각이 든다. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 121
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.4 4.1
  SAY #21502 /* ~다버스는 손을 소매에 넣고 인내심 있게 기다린다. 그의 머리 위에는 일련이 심벌들이 나타난다, 그리고 그것들이 사라진 후 질문 부호가 나타난다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23075 /* ~대화를 시도하여 당신이 다버스가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23076 /* ~대화를 시도하여 당신이 다버스가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23077 /* ~대화를 시도하여 당신이 다버스가 하는 말을 이해할 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23078 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23079 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23080 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23081 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23082 /* ~"모트, 날 위해서 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23083 /* ~"안나, 날 위해서 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23084 /* ~"다콘, 날 위해서 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23085 /* ~"훨-후럼-그레이스, 날 위해서 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23086 /* ~"미안하오. 하지만 난 당신이 하는 말을 이해할 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~~ THEN REPLY #23087 /* ~"어... 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.0 2.1 3.0 3.1 8.0 8.1
  SAY #21503 /* ~당신은 다버스에게 여러 가지 질문을 하고 그의 머리 위에 나타나는 그림들에 대한 감을 잡으려고 노력한다. 그는 당신과의 대화를 매우 끈기 있게 진행하며, 당신이 번역하기 쉽도록 가능한 한 쉬운 표현을 쓰려고 노력한다. 몇 분이 지난 후 당신은 그것을 이해하기 시작한다... 당신에게는 자신이 전에도 이런 일을 해본 적이 있다는 생각이 든다.~ */
  IF ~~ THEN REPLY #23088 /* ~"아마 당신이 날 도울 수 있을지도 모르오..."~ */ GOTO 13
  IF ~~ THEN REPLY #23089 /* ~"내 그림놀이 실력을 향상시키려고 했을 뿐이오. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.2 3.2 8.2
  SAY #21504 /* ~당신은 다버스에게 여러 가지 질문을 하고 그의 머리 위에 나타나는 그림들에 대한 감을 잡으려고 노력한다. 그는 당신과의 대화를 매우 끈기 있게 진행하나 당신은 도저히 이해할 수가 없다. 결국 그는 심벌들을 표시하는 것을 멈추고 그냥 기다린다.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23090 /* ~"모트, 날 위해 그가 하는 말을 통역해 줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23091 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23092 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23093 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23094 /* ~"안나, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23095 /* ~"다콘, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23096 /* ~"훨-후럼-그레이스, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23097 /* ~"미안하오. 난 당신 말을 이해할 수가 없소."~ */ GOTO 12
  IF ~~ THEN REPLY #23098 /* ~"어... 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.2 8.12 9.1 10.8
  SAY #21505 /* ~다버스는 가볍게 고개를 숙인다. 그의 머리 위에서는 심벌들이 소용돌이친다. 그리고 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #23099 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.11 10.7
  SAY #21506 /* ~일련의 심벌들이 다버스의 머리 위에 나타난다. 다버스는 가볍게 고개를 숙인 후 고개를 돌린다.~ */
  IF ~~ THEN REPLY #23100 /* ~"어... 안녕히 계시오."~ */ JOURNAL #21863 /* ~나는 기묘한 가게 안에서 어떤 다버스를 만났으나 그가 하는 말을 이해할 수가 없었다. 통역을 해줄 토박이를 찾아야겠다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.4 3.3 8.3 9.0 15.4 16.4 18.4 19.4 21.4 22.4 24.4 25.4 27.3 28.4 30.0 32.7 33.7 35.7 36.7 38.7 39.7 41.6 42.6 44.6 45.6 47.3 48.3 50.3 51.3 53.4 54.5 56.2 57.1 61.3 63.4 65.3 66.4 68.4 70.3 72.4 73.4 75.4 76.4 78.0 79.0 81.4 82.4 84.4 85.4 87.4 88.4 90.4 91.4 93.4 94.7 95.7 100.3 101.3 102.3 106.4 107.3
  SAY #21507 /* ~다버스는 기다린다.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23101 /* ~"당신은 누구요?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23102 /* ~"당신은 누구요?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23103 /* ~"이 곳은 어떤 곳이오?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23104 /* ~"이 곳은 어떤 곳이오?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 19
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23105 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23106 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23107 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~FloatRebus(Myself)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23108 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64390 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64391 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64392 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64393 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23109 /* ~"당신은 우리가 전에 만난 적이 있다고 했소, 휄... 당신은 내가 어떻게 죽었는지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 72
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23110 /* ~"당신은 우리가 전에 만난 적이 있다고 했소, 휄... 당신은 내가 어떻게 죽었는지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 73
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23111 /* ~"휄, 당신은 래벌에 대해 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 32
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23112 /* ~"휄, 당신은 래벌에 대해 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 33
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23113 /* ~"당신이 내가 발견한 이 잘라진 팔에 문신을 새겼소, 휄?"~ */ DO ~FloatRebus(Myself)
~ GOTO 53
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23114 /* ~"당신이 내가 발견한 이 잘라진 팔에 문신을 새겼소, 휄?"~ */ DO ~FloatRebus(Myself)
~ GOTO 54
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23115 /* ~"내 몸에 새겨진 이러한 문신들에 대해 내게 얘기를 해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 65
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23116 /* ~"내 몸에 새겨진 이러한 문신들에 대해 내게 얘기를 해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 66
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23117 /* ~"당신 파는 문신들을 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23118 /* ~"당신 파는 문신들을 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23119 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #21508 /* ~다버스는 머리를 약간 숙인다, 그러자 그의 머리 위에 심벌이 하나 나타난다. 그것은 처음에는 희미하나, 곧 타원을 검은색 번개가 가로지르는 모양으로 변화한다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23120 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23121 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23122 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #21509 /* ~다버스는 머리를 약간 숙인다, 그러자 그의 머리 위에 심벌이 하나 나타난다. 그것은 처음에는 희미하나, 곧 타원을 검은색 번개가 가로지르는 모양으로 변화한다. 어째서인지 당신은 그 다버스에게는 이름이 있다는 걸 안다... 그의 이름은 '휄'이다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23123 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23124 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23125 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23126 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23127 /* ~"당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23128 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #21510 /* ~질문을 하려고 하자 갑자기 당신 머리에 당신의 그 다버스의 이름을 이미 알고 있다는 사실이 떠오른다 -- 그의 이름은 '휄'이다. 다버스는 대답이라도 하듯 머리를 약간 숙인다, 그러자 그의 머리 위에 심벌이 하나 나타난다. 그것은 처음에는 희미하나, 곧 타원을 검은색 번개가 가로지르는 모양으로 변화한다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23129 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23130 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23131 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23132 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23133 /* ~"당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23134 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #21511 /* ~휄의 머리에서 한 줄의 심벌들이 서서히 실체화한다... 심벌들이 구체적인 모양을 갖추기까지는 다소의 시간이 걸리는데, 처음에는 단순한 선으로 시작하나 나중에는 놀랄 정도로 아름다운 색채를 띠게 된다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23135 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23136 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23137 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY #21512 /* ~휄의 머리에서 한 줄의 심벌들이 서서히 실체화한다... 심벌들이 구체적인 모양을 갖추기까지는 다소의 시간이 걸리는데, 처음에는 단순한 선으로 시작하나 나중에는 놀랄 정도로 아름다운 색채를 띠게 된다. 심벌들로부터 짐작하건대 그는 예술가이며... 이 곳은 문신 가게인 듯하다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23138 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23139 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23140 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23141 /* ~"당신 파는 문신들을 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23142 /* ~"당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23143 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY #21513 /* ~휄의 머리에서 한 줄의 심벌들이 서서히 실체화한다... 심벌들이 구체적인 모양을 갖추기까지는 다소의 시간이 걸리는데, 처음에는 단순한 선으로 시작하나 나중에는 놀랄 정도로 아름다운 색채를 띠게 된다. (이 곳은 내가 살과 뼈에 색과 삶으로 문신을 새기는 곳입니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23144 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23145 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23146 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23147 /* ~"당신 파는 문신들을 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23148 /* ~"당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23149 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #21514 /* ~휄은 공손하게 머리를 숙인다, 그리고 그의 머리 위에서 일련의 심벌들이 소용돌이치는데, 처음에는 시계 방향으로 회전했다가 그 다음에는 시계 반대 방향으로 회전한다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23150 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23151 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23152 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
END

IF ~~ THEN BEGIN 21 // from: 13.4 13.6 15.3
  SAY #21515 /* ~휄은 공손하게 머리를 숙인다, 그리고 그의 머리 위에서 일련의 심벌들이 소용돌이치는데, 처음에는 시계 방향으로 회전했다가 그 다음에는 시계 반대 방향으로 회전한다. 심벌들로부터 짐작하건대 그는 내가 이 곳에 온 것이 이번이 처음은 아니라고 말하는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23153 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23154 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23155 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23156 /* ~"당신은 내가 누군지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23157 /* ~"알겠소. 당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23158 /* ~"더 이상 듣고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.5 13.7 16.3 54.4
  SAY #21516 /* ~휄은 공손하게 머리를 숙인다, 그리고 그의 머리 위에서 일련의 심벌들이 소용돌이치는데, 처음에는 시계 방향으로 회전했다가 그 다음에는 시계 반대 방향으로 회전한다. (당신이 이 곳에 온 것은 이번이 처음이자 처음이 아닙니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23284 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23288 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23853 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23854 /* ~"당신은 내가 누군지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23855 /* ~"알겠소. 당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23856 /* ~"더 이상 듣고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #21517 /* ~또 다른 일련의 심벌들이 휄의 머리 위에서 빠르고 명확하게 실체화한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24255 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24256 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24257 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY #21518 /* ~또 다른 일련의 심벌들이 휄의 머리 위에서 빠르고 명확하게 실체화한다. 이 심벌들은 다른 것들처럼 어렵지 않다. 당신 생각에 그는 당신을 알고 있으나 그 이상은 말할 수가 없다고 한 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24258 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24259 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24260 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24261 /* ~"그건 왜요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24262 /* ~"알겠소. 당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24263 /* ~"관두시오. 더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY #21519 /* ~또 다른 일련의 심벌들이 휄의 머리 위에서 빠르고 명확하게 실체화한다. 당신은 심벌들 그 자체만큼이나 빠르고 명확하게 그 뜻을 이해할 수가 있다... 마치 전에도 당신이 똑같은 심벌들을 여러 차례 해독한 적이 있는 것처럼. (그렇습니다. 그러나 내가 당신 얘기를 하는 것은 허용되지 않습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24264 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24265 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24266 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24267 /* ~"그건 왜요?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ GOTO 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24268 /* ~"그럼 날 위해 다른 질문에 대답해주시오..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24269 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #21520 /* ~잠시 동안 휄은 아무 대답도 하지 않는다. 그러더니 그림들이 흐르는 물줄기처럼 나타나는데, 그것들은 마치 휄의 정신으로부터 직접 흘러나오는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24271 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24272 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24273 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DGRACE~ 20
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY #21521 /* ~잠시 동안 휄은 아무 대답도 하지 않는다. 그러더니 그림들이 흐르는 물줄기처럼 나타나는데, 그것들은 마치 휄의 정신으로부터 직접 흘러나오는 것 같다. 당신 생각에 그는 미안하다고 말한 것 같다... 하지만 나머지 부분은 해독할 수가 없다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24275 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24276 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24277 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24278 /* ~"알겠소. 당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~~ THEN REPLY #24279 /* ~"관두시오. 더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #21522 /* ~잠시 동안 휄은 아무 대답도 하지 않는다. 그러더니 그림들이 흐르는 물줄기처럼 나타나는데, 그것들은 마치 휄의 정신으로부터 직접 흘러나오는 것 같다. (죄송합니다, 그럴 수가 없습니다. 나는 인간의 본성을 바꿀 수가 없습니다.) 이유는 알 수가 없으나 그의 마지막 문장은 당신으로 하여금 머릿속에서 뭔가가 기어다니는 것과 같은 느낌을 받게 한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24280 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24281 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24282 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24283 /* ~"'인간의 본성?' 그것의 뜻은 무엇이오?~ */ DO ~FloatRebus(Myself)
~ GOTO 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24284 /* ~"알겠소. 당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24285 /* ~"더 이상 듣고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #21523 /* ~일련의 종이처럼 얇은 심벌들이 휄 옆에 질서정연한 열로 나타난다, 그리고 잠시 후 빛나는 점이 되어 사라진다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24286 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24287 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24288 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY #21524 /* ~휄 위에 나타난 심벌들은 전에 나타난 것들과 흡사하다. (미안합니다. 말할 수가 없습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24289 /* ~"알겠소. 당신에게 할 다른 질문이 있소, 휄."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24290 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #21525 /* ~시각적 침묵은 오랫동안 계속된다... 어찌나 오래 계속되는지 당신은 휄이 당신 말을 듣기는 했는지 의심이 갈 정도이다. 그러다가 휄의 머리 위에서 기묘한 회색의 심벌 몇 개가 느릿느릿 나타나기 시작한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24291 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24292 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24293 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
END

IF ~~ THEN BEGIN 32 // from: 13.14
  SAY #21526 /* ~시각적 침묵은 오랫동안 계속된다... 어찌나 오래 계속되는지 당신은 휄이 당신 말을 듣기는 했는지 의심이 갈 정도이다. 그러다가 휄의 머리 위에서 기묘한 회색의 심벌 몇 개가 느릿느릿 나타나기 시작한다. 그는 그녀가... 단순한 '전설' 속의 인물이 아니라고 말하는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24294 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24295 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24296 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24297 /* ~"그녀는 어디 있소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24298 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24299 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24300 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24301 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24302 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 13.15
  SAY #21527 /* ~시각적 침묵은 오랫동안 계속된다... 어찌나 오래 계속되는지 당신은 휄이 당신 말을 듣기는 했는지 의심이 갈 정도이다. 그러다가 휄의 머리 위에서 기묘한 회색의 심벌 몇 개가 느릿느릿 나타나기 시작한다. (그녀는 단순한 전설 속의 인물이 아닙니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24303 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24304 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24305 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24306 /* ~"그녀는 어디 있소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24307 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24308 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24309 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24310 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24311 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #21528 /* ~일련의 회색 심벌들이 천천히 움직이는 소용돌이처럼 휄의 머리 위에서 소용돌이친다, 그리고 잠시 후 기묘하고 뒤틀린 패턴으로 납작해진다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24312 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24313 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24314 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
END

IF ~~ THEN BEGIN 35 // from: 32.3 41.3
  SAY #21529 /* ~일련의 회색 심벌들이 천천히 움직이는 소용돌이처럼 휄의 머리 위에서 소용돌이친다, 그리고 잠시 후 기묘하고 뒤틀린 패턴으로 납작해진다. 당신 생각에 그는 미로에 대해 뭐라고 말하고 있다... 하지만 그는 미로란 말을 동사적 용법으로 쓰는 듯하다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24315 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24316 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24317 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24318 /* ~"미로에 갇히다?"~ */ DO ~FloatRebus(Myself)
~ GOTO 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24319 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24320 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24321 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24322 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24323 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3 42.3
  SAY #21530 /* ~일련의 회색 심벌들이 천천히 움직이는 소용돌이처럼 휄의 머리 위에서 소용돌이친다, 그리고 잠시 후 기묘하고 뒤틀린 패턴으로 납작해진다. (그녀는 레이디의 미로들 중 한 곳에 있습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24324 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24325 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24326 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24327 /* ~"미로?"~ */ DO ~FloatRebus(Myself)
~ GOTO 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24328 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24329 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24330 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24331 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24332 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #21531 /* ~다음 심벌들은 무거운 짐을 지고 가는 노예들의 행렬처럼 나타난다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24333 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24334 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24335 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #21532 /* ~다음 심벌들은 무거운 짐을 지고 가는 노예들의 행렬처럼 나타난다. 당신 생각에 그는 '감금'과 '벌'에 대해 얘기하고 있는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24336 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24337 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24338 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24339 /* ~"그녀는 감금되었소? 당신은 어떻게 하면 그녀가 있는 곳에 갈 수 있는지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24340 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24341 /* ~"충분히 이해할 것 같소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24342 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24343 /* ~"충분히 이해할 것 같소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24344 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #21533 /* ~다음 심벌들은 무거운 짐을 지고 가는 노예들의 행렬처럼 나타난다. (그녀의 생각은 레이디의 생각과 달랐습니다. 래벌은 벌을 받아 미로에 갇히게 되었습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24345 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24346 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24347 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24348 /* ~"래벌은 무슨 짓을 했소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24349 /* ~"당신은 어떻게 하면 이 미로에 갈 수 있는지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 45
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24350 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24351 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24352 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24353 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #21534 /* ~하얀 타원이 휄 옆에 난타난다, 그리고 그것은 날카롭게 금이 간다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24354 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24355 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24356 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
END

IF ~~ THEN BEGIN 41 // from: 32.4 33.4 35.4 38.4 44.3
  SAY #21535 /* ~하얀 타원이 휄 옆에 난타난다, 그리고 그것은 날카롭게 금이 간다. 당신 생각에 그는 '감옥/도시를 부수어 여는' 것에 대해 얘기하는 것 같으나... 확신할 수는 없다. 래벌은 이 도시를 부수어 열려고 했는가?~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24357 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24358 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24359 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24360 /* ~"당신은 그녀가 어디 있는지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24361 /* ~"충분히 이해할 것 같소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24362 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24363 /* ~"충분히 이해할 것 같소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24364 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.4 39.3 45.3
  SAY #21536 /* ~하얀 타원이 휄 옆에 난타난다, 그리고 그것은 날카롭게 금이 간다. 당신은 본능적으로 그 타원이 이 도시 - 시길을 나타낸다는 것을 깨닫는다. (그녀는 감옥을 부수어 열려고 했습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24365 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24366 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24367 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24368 /* ~"당신은 그녀가 어디 있는지 아시오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24369 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24370 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24371 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24372 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21537 /* ~휄로부터 또 한 줄의 그림문자들이 서서히 나타난다. 하지만 이들은 마치 무거운 짐이라도 진 듯 낮게 떠 있다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24373 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24374 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24375 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
END

IF ~~ THEN BEGIN 44 // from: 38.3
  SAY #21538 /* ~휄로부터 또 한 줄의 그림문자들이 서서히 나타난다. 하지만 이들은 마치 무거운 짐이라도 진 듯 낮게 떠 있다. 당신이 추측하기에는 휄은 그녀를 만날 수 있는 방법을 모르는 듯하다... 그리고 그녀를 찾으려 해서는 안 된다고 말하는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24376 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24377 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24378 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24379 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24380 /* ~"충분히 이해할 것 같소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24381 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24382 /* ~"충분히 이해할 것 같소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24383 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.4
  SAY #21539 /* ~휄로부터 또 한 줄의 그림문자들이 서서히 나타난다. 하지만 이들은 마치 무거운 짐이라도 진 듯 낮게 떠 있다. (나는 어떻게 하면 그녀를 찾을 수 있는지 모릅니다. 그녀를 찾으려 해서는 안 됩니다. 그녀는 레이디의 관리하에 있습니다.) 그의 마지막 문장의 심벌들은 대거의 칼날을 연상시키는 날카로움을 지니고 있다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24384 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24385 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24386 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24387 /* ~"내게 그녀에 대해 어떤 것을 얘기해줄 수 있겠소?'~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24388 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24389 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24390 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24391 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21540 /* ~당신이 화제를 바꾸기도 전에 휄 주위에 일련의 새로운 심벌들이 나타난다. 그것들은 'X' 자 형태를 이루고 있으며 약한 심박처럼 뛰고 있다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24392 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24393 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24394 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 47 // from: 32.5 35.5 38.5 41.4 44.4
  SAY #21541 /* ~당신이 화제를 바꾸기도 전에 휄 주위에 일련의 새로운 심벌들이 나타난다. 그것들은 'X' 자 형태를 이루고 있으며 약한 심박처럼 뛰고 있다. 당신 생각에 그는 래벌을 그냥 내버려두라고 경고하고 있는 듯하다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24395 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24396 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24397 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24398 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24399 /* ~"여하튼 나는 그녀를 찾아야만 하오, 휄. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 33.5 36.5 39.5 42.4 45.4
  SAY #21542 /* ~당신이 화제를 바꾸기도 전에 휄 주위에 일련의 새로운 심벌들이 나타난다. 그것들은 'X' 자 형태를 이루고 있으며 약한 심박처럼 뛰고 있다. (그녀를 찾으려 하지 마십시오. 그녀 안에서는 사악한 심장이 고동치고 있습니다. 그녀는 자신이 지닌 힘을 모두 동원해 당신을 해치려 할 것입니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24400 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24401 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24402 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24403 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24404 /* ~"여하튼 나는 그녀를 찾아야만 하오, 휄. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #21543 /* ~당신이 떠나려고 하자 휄 주위에 일련의 새로운 심벌들이 나타난다. 그것들은 'X' 자 형태를 이루고 있으며 약한 심박처럼 뛰고 있다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24405 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24406 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24407 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 50 // from: 32.6 35.6 38.6 41.5 44.5
  SAY #21544 /* ~당신이 떠나려고 하자 휄 주위에 일련의 새로운 심벌들이 나타난다. 그것들은 'X' 자 형태를 이루고 있으며 약한 심박처럼 뛰고 있다. 당신 생각에 그는 래벌을 그냥 내버려두라고 경고하고 있는 듯하다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24408 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24409 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24410 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24411 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24412 /* ~"여하튼 나는 그녀를 찾아야만 하오, 휄. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 33.6 36.6 39.6 42.5 45.5
  SAY #21545 /* ~당신이 떠나려고 하자 휄 주위에 일련의 새로운 심벌들이 나타난다. 그것들은 'X' 자 형태를 이루고 있으며 약한 심박처럼 뛰고 있다. (그녀를 찾으려 하지 마십시오. 그녀 안에서는 사악한 심장이 고동치고 있습니다. 그녀는 자신이 지닌 힘을 모두 동원해 당신을 해치려 할 것입니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24413 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24414 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24415 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24416 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24417 /* ~"여하튼 나는 그녀를 찾아야만 하오, 휄. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #21546 /* ~휄은 손가락으로 문신의 패턴을 더듬어 가며 그 팔을 잠시 살펴본다. 그리고 나서 그가 고개를 들자 일련의 그림문자들이 나타나는데, 처음에는 흐릿하나 곧 명확한 형태를 이룬다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24418 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24419 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24420 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
END

IF ~~ THEN BEGIN 53 // from: 13.16
  SAY #21547 /* ~휄은 손가락으로 문신의 패턴을 더듬어 가며 그 팔을 잠시 살펴본다. 그리고 나서 그가 고개를 들자 일련의 그림문자들이 나타나는데, 처음에는 흐릿하나 곧 명확한 형태를 이룬다. 당신 생각에 그는 그 팔이 당신 것이며, 문신은 당신과 '다른' 네 사람에 대해 얘기하고 있다고 말한 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24421 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24422 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24423 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24424 /* ~"그 밖의 넷이라니 그게 뭐요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 56
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24425 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24426 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 13.17
  SAY #21548 /* ~휄은 손가락으로 문신의 패턴을 더듬어 가며 그 팔을 잠시 살펴본다. 그리고 나서 그가 고개를 들자 일련의 그림문자들이 나타나는데, 처음에는 흐릿하나 곧 명확한 형태를 이룬다. (이 팔은 당신 것입니다, 그리고 문신은 내가 새긴 것입니다. 그 중 한 문신은 당신이 다른 네 사람과 당신의 길을 공유했던 때에 대해 말해주고 있습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24427 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24428 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24429 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24430 /* ~"그 밖의 넷이라니 그게 뭐요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 57
  IF ~  Global("Translate_Dabus","GLOBAL",0)
GlobalLT("Fell","GLOBAL",2)
~ THEN REPLY #24431 /* ~"그 문신들은 당신 작품이오? 우린 전에 만난 적이 있소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24432 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24433 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #21549 /* ~휄의 머리 위에서 네 줄의 심벌들이 소용돌이치는데, 그것들은 잘라진 팔에 새겨진 문신의 패턴에 대응되고 있다. 네 줄은 잠시 동안 각기 독립적으로 떠 있다가 서로 연결되기 시작해 결국에는 사슬 모양으로 융합된다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24434 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24435 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY #21550 /* ~휄의 머리 위에서 네 줄의 심벌들이 소용돌이치는데, 그것들은 잘라진 팔에 새겨진 문신의 패턴에 대응되고 있다. 심벌들은 번역하기가 어려우며, 결국 당신은 자신이 번역한 내용이 옳은지 확신할 수가 없다. 당신 생각에 그는 '사랑하는 사랑받지 못한 자,' "보는 자,' '종복,' 그리고 '사슬에 매인 자'라고 말한 듯하다. 당신이 번역을 마치자 네 줄의 심벌들은 서로 연결되기 시작해 결국에는 사슬 모양으로 융합된다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24436 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24437 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24438 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24439 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.3
  SAY #21551 /* ~휄의 머리 위에서 네 줄의 심벌들이 소용돌이치는데, 그것들은 잘라진 팔에 새겨진 문신의 패턴에 대응되고 있다. (그것들은 네 사람에 대해 얘기하고 있습니다. 그들의 마음에 대해 얘기해 드릴까요?)~ */
  IF ~~ THEN REPLY #24440 /* ~"그렇소."~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24274 /* ~휄은 나를 위해 내 옛 팔에 새겨진 룬을 번역해주었다... 그는 나와 동행했던 네 사람에 대하여 말했다. 그 네 사람은 '사랑하지 않는 자를 사랑한  자를 사랑하지 않은 자', '남이 보는 것을 보지 못하고 남이 보지 못하는 것을 보는 자', '친숙하며 의무에 의해 묶인 자', 그리고 '노예이며 그를 묶는 사슬은 말인 자'이다. 그들 역시 모두 나처럼 고통받고 있으며, 내 고통이 동료들을 불러들인다고 한다.~ */ GOTO 59
  IF ~~ THEN REPLY #24441 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 13
  IF ~~ THEN REPLY #24442 /* ~"더 이상 알고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #21552 /* ~휄은 고개를 끄덕인다, 그리고 그의 주변에 심벌들이 개똥벌레들처럼 나타난다. 추측하건대 그는 당신 등 뒤에 새겨진 문신이 손으로 조심스럽게 새겨진 일종의 지시 사항이라고 말하는 것 같다. 당신 어깨에 새겨진 문신은 '고문' 또는 '고통'을 나타내고 있다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24444 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24445 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24446 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #21553 /* ~심벌들은 당신 앞에서 소용돌이친다, 그리고 당신의 그것들이 지닌 의미를 해독한다. 

(사랑하지 않는 자를 사랑하는 사랑받지 못한 자.)

(다른 사람이 보는 것을 보지 못하고 다른 사람이 보지 못하는 것을 보는 자.)

(종복이며 의무에 의해 묶인 자.)

(노예이며 약속이라는 사슬에 묶인 자.)

당신이 번역을 마치자 네 줄의 심벌들은 서로 연결되기 시작해 결국에는 사슬 모양으로 융합된다... 사슬은 구부러져 특정한 심벌의 형태를 취하는데, 당신은 자신이 그 심벌을 알고 있다고 느낀다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24447 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24448 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24449 /* ~"그 심벌... 그건 뭐요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21554 /* ~심벌은 점점 날카로워져 눈으로 보기가 고통스러울 정도가 된다. 그것이 공중에 떠 있는 동안 휄은 고개를 끄덕여 당신의 왼쪽 팔과 어깨를 가리킨다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24450 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24451 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY #21555 /* ~심벌은 점점 날카로워져 눈으로 보기가 고통스러울 정도가 된다. (그것은 고통입니다. 그것은 모든 고통 받는 영혼들을 당신에게로 인도합니다.) 그것이 공중에 떠 있는 동안 휄은 고개를 끄덕여 당신의 왼쪽 팔과 어깨를 가리킨다. (정신은 잊었을 지라도 육체는 고통을 기억하고 있습니다. 그리고 당신은 그 룬을 늘 몸에 지니고 있습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24452 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24453 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24454 /* ~"당신은 그 팔에는 다른 문신들도 있다고 했소? 어떤 것들 말이오?" ~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24455 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24456 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #21556 /* ~휄은 색이 바랜 다른 문신들을 더듬으며 당신 팔을 다시 한 번 살펴본다. 그러는 동안 각 문신은 그의 머리 위에 하나의 심벌로 나타나는데, 처음에는 흐릿하나 차츰 뚜렷해진다. 그는 당신을 쳐다보며 기다린다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24457 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24458 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24459 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 63 // from: 61.2
  SAY #21557 /* ~휄은 색이 바랜 다른 문신들을 더듬으며 당신 팔을 다시 한 번 살펴본다. 그러는 동안 각 문신은 그의 머리 위에 하나의 심벌로 나타나는데, 처음에는 흐릿하나 차츰 뚜렷해진다. 그는 당신을 쳐다보며 기다린다. (한때는 잊혀졌던 것들이나 이제는 기억이 되살아났습니다. 만약 원하신다면 다시 착용할 수도 있습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24460 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24461 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24462 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24463 /* ~"나는 이러한 문신들이 어떤 것들인지 보고 싶소... 당신이 파는 문신들을 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24464 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24465 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #21558 /* ~그는 당신의 주위를 돌며 당신의 몸을 잠시 살핀다. 그는 심벌들을 살펴보면서 그것들을 그대로 그림문자로 표현한다, 그리고 걸어 돌아와 당신을 마주본다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24466 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24467 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24468 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
END

IF ~~ THEN BEGIN 65 // from: 13.18
  SAY #21559 /* ~그는 당신의 주위를 돌며 당신의 몸을 잠시 살핀다. 그는 심벌들을 살펴보면서 그것들을 그대로 그림문자로 표현한다, 그리고 돌아와 당신을 마주본다. 떠 있는 심벌들로 미루어 추측하건대 그는 그 문신들이 자신의 것이 아니라고 하는 듯하다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24469 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24470 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24471 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24472 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24473 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 13.19
  SAY #21560 /* ~그는 당신의 주위를 돌며 당신의 몸을 잠시 살핀다. 그는 심벌들을 살펴보면서 그것들을 그대로 그림문자로 표현한다, 그리고 걸어 돌아와 당신을 마주본다. (나는 그것들을 알고 있습니다. 그것들은 내가 새긴 것이 아닙니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24474 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24475 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24476 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24477 /* ~"그들 중 일부에 대해 내게 얘기해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 68
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24478 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24479 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #21561 /* ~휄은 고개를 끄덕인다, 그리고 그의 주변에 심벌들이 개똥벌레들처럼 나타난다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24480 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24481 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24482 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 68 // from: 66.3
  SAY #21562 /* ~휄은 고개를 끄덕인다, 그리고 그의 주변에 심벌들이 개똥벌레들처럼 나타난다. (당신 등 뒤에 새겨진 문신들은 손으로 조심스럽게 새겨졌으며, 그 자신을 잊어버리는 정신을 위한 지시 사항입니다. 당신 어깨에 새겨진 문신은 '고통'의 낙인입니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24483 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24484 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24485 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24486 /* ~"토먼트?"~ */ DO ~FloatRebus(Myself)
~ GOTO 70
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24487 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24488 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21563 /* ~심벌은 점점 날카로워져 눈으로 보기가 고통스러울 정도가 된다. 휄은 고개를 끄덕여 당신의 왼쪽 팔과 어깨를 가리킨다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24489 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24490 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24491 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY #21564 /* ~심벌은 점점 날카로워져 눈으로 보기가 고통스러울 정도가 된다. (그것은 *고통*입니다. 그것은 모든 고통 받는 영혼들을 당신에게로 인도합니다.) 휄은 고개를 끄덕여 당신의 왼쪽 팔과 어깨를 가리킨다. (정신은 잊었을 지라도 육체는 고통을 기억하고 있습니다. 그리고 당신은 그 룬을 늘 몸에 지니고 있습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24492 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24493 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24494 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24495 /* ~"명심하리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24496 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21565 /* ~휄은 잠시 대답을 하지 않는다... 그러더니 그의 머리 위에 세 개의 심벌이 천천히, 그리고 위협적으로 실체화한다. 그것들은 모두 긴 그림자를 드리우고 있다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24497 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24498 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24499 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
END

IF ~~ THEN BEGIN 72 // from: 13.12
  SAY #21566 /* ~휄은 잠시 대답을 하지 않는다... 그러더니 그의 머리 위에 세 개의 심벌이 천천히, 그리고 위협적으로 실체화한다. 그것들은 모두 긴 그림자를 드리우고 있다. 당신 생각에 그는 그는 그림자에 대해 뭐라고 얘기하는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24500 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24501 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24502 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24503 /* ~"그림자들?"~ */ DO ~FloatRebus(Myself)
~ GOTO 75
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24504 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24505 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 13.13
  SAY #21567 /* ~휄은 잠시 대답을 하지 않는다... 그러더니 그의 머리 위에 세 개의 심벌이 천천히, 그리고 위협적으로 실체화한다. 그것들은 모두 긴 그림자를 드리우고 있다. (그림자들.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24506 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24507 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24508 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24509 /* ~"그림자들?"~ */ DO ~FloatRebus(Myself)
~ GOTO 76
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24510 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24511 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #21568 /* ~세 심벌들은 희미한 검은 자취를 남기며 소용돌이친다. 심벌들에게는 이빨과 야수의 발톱처럼 생긴 날들이 돋아난다, 그리고 심벌들은 *증식*한다. 하나가 셋으로 갈라지고 그 갈라진 하나하나가 다시 셋으로 갈라져 방 전체가 그림자들의 무리로 가득 찰 때까지 계속 증식한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24512 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24513 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24514 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
END

IF ~~ THEN BEGIN 75 // from: 72.3
  SAY #21569 /* ~세 심벌들은 희미한 검은 자취를 남기며 소용돌이친다. 심벌들에게는 이빨과 야수의 발톱처럼 생긴 날들이 돋아난다, 그리고 심벌들은 *증식*한다. 하나가 셋으로 갈라지고 그 갈라진 하나하나가 다시 셋으로 갈라져 방 전체가 그림자들의 무리로 가득 찰 때까지 계속 증식한다. 그는 당신이 많은 그림자들에 의해 살해당했다고 말하고 있는 듯하다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24515 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24516 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24517 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24518 /* ~"누구?"~ */ DO ~FloatRebus(Myself)
~ GOTO 78
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24519 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24520 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 73.3
  SAY #21570 /* ~세 심벌들은 희미한 검은 자취를 남기며 소용돌이친다. 심벌들에게는 이빨과 야수의 발톱처럼 생긴 날들이 돋아난다, 그리고 심벌들은 *증식*한다. 하나가 셋으로 갈라지고 그 갈라진 하나하나가 다시 셋으로 갈라져 방 전체가 그림자들의 무리로 가득 찰 때까지 계속 증식한다. (많은 그림자들. 그들은 어둠 속으로부터 몰려나와 당신을 벌떼처럼 덮쳤으며, 당신이 죽도록 내버려 두고 떠났습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24521 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24522 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24523 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24524 /* ~"누구?"~ */ DO ~FloatRebus(Myself)
~ GOTO 79
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24525 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24526 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #21571 /* ~휄은 색이 바랜 다른 문신들을 더듬으며 당신 팔을 다시 한 번 살펴본다. 그러는 동안 각 문신은 그의 머리 위에 하나의 심벌로 나타나는데, 처음에는 흐릿하나 차츰 뚜렷해진다. 그는 당신을 쳐다보며 기다린다. 만약 당신의 번역이 옳다면, 그는 한때는 이 문신들에 대해 잊어버렸으나 이제는 기억할 수가 있다고 하는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24527 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24528 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24529 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY #21572 /* ~그늘진 심벌들이 소용돌이치며 하나로 뭉친 후 사라져버린다. 그리고 간단한 심벌이 대신 나타난다. 휄도 그 이유를 모르는 것 같다. ~ */
  IF ~~ THEN REPLY #24530 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #24531 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.3
  SAY #21573 /* ~그늘진 심벌들이 소용돌이치며 하나로 뭉친 후 사라져버린다. 그리고 간단한 심벌이 대신 나타난다. (모릅니다.)~ */
  IF ~~ THEN REPLY #24532 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #24533 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #21574 /* ~일련의 심벌들이 휄 주위에서 천천히 하나씩 실체화하기 시작한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24534 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24535 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24536 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
END

IF ~~ THEN BEGIN 81 // from: 13.8 13.10
  SAY #21575 /* ~일련의 심벌들이 휄 주위에서 하나씩 천천히 실체화하기 시작한다. 당신 생각에 그는 그것이 일종의 갤러리...'당신'의 갤러리라고 하는 것 같다. 다음 부분은 해석하기가 어려우나 추측하건대 휄은 당신 때문에... 슬프다고 하는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24537 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24538 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24539 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24540 /* ~"슬프다? 왜?"~ */ DO ~FloatRebus(Myself)
~ GOTO 84
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24541 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24542 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 13.9 13.11
  SAY #21576 /* ~일련의 심벌들이 휄 주위에서 하나씩 천천히 실체화하기 시작한다. (그것은 내 갤러리입니다. 당신이 버린 피부가 바로 내 캔버스입니다. 나는 당신에게 경의를 표합니다. 나는 당신 때문에 슬픕니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24543 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24544 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24545 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24546 /* ~"나 때문에 슬프다? 왜?"~ */ DO ~FloatRebus(Myself)
~ GOTO 85
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24547 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24548 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #21577 /* ~또 다른 일련의 심벌들이 휄 주변에서 실체화하는데, 이번에는 하나의 원을 형성한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24549 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24550 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24551 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
END

IF ~~ THEN BEGIN 84 // from: 81.3
  SAY #21578 /* ~또 다른 일련의 심벌들이 휄 주변에서 실체화하는데, 이번에는 하나의 원을 형성한다. 그는 당신이 '낙인'찍히고 고통받았다고 말하는 듯하다. 그 다음 부분은 해석할 수가 없으나 마지막 부분은 당신이 고통을 견뎌내는 것에 대해 말하고 있는 것 같다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24552 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24553 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24554 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24555 /* ~"무슨 뜻이오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 87
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24556 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24557 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 82.3
  SAY #21579 /* ~또 다른 일련의 심벌들이 휄 주변에서 실체화하는데, 이번에는 하나의 원을 형성한다. (당신의 육신에는 고통의 낙인이 찍혀 있습니다, 토대 위에 돌을 쌓듯이 비극과 상실이 그것을 토대로 하여 쌓였습니다. 당신은 엄청난 고통을 견뎌냈습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24558 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24559 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24560 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24561 /* ~"무슨 뜻이오?"~ */ DO ~FloatRebus(Myself)
~ GOTO 88
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24562 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24563 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21580 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것은 그의 팔을 수갑처럼 둘러싼다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24586 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24587 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24588 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
END

IF ~~ THEN BEGIN 87 // from: 84.3
  SAY #21581 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것은 그의 팔을 수갑처럼 둘러싼다. 그는 당신이 상실과 고통을 건뎌낸 데 대해 경의를 표한다는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24589 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24590 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24591 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24592 /* ~"계속하시오..."~ */ DO ~FloatRebus(Myself)
~ GOTO 90
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24593 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24594 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.3
  SAY #21582 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것은 그의 팔을 수갑처럼 둘러싼다. (당신은 지금 이 순간도 당신을 무겁게 짓누르고 있는 이러한 상실과 고통에 결코 굴복한 적이 없으며, 그래서 나는 당신에게 경의를 표합니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24595 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24596 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24597 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24598 /* ~"계속하시오..."~ */ DO ~FloatRebus(Myself)
~ GOTO 91
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24599 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24600 /* ~"얘기는 충분할 만큼 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #21583 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것들은 떨어지면서 휄의 몸을 마치 망토처럼 감싼다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24601 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24602 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24603 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
END

IF ~~ THEN BEGIN 90 // from: 87.3
  SAY #21584 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것들은 떨어지면서 휄의 몸을 마치 망토처럼 감싼다. 그는 이러한 상실과 고통이 당신의 삶과 당신의 '다른 삶들'을 덮고 있다고 말하고 있는 것 같다. 하지만 이 메시지의 다른 심벌들의 의미는 확실하게 알 수가 없다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24604 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24605 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24606 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24607 /* ~"어... 그 밖에 내게 얘기해줄 수 있는 건 없소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24608 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24609 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 88.3
  SAY #21585 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것들은 떨어지면서 휄의 몸을 마치 망토처럼 감싼다. (이러한 상실과 고통은 당신의 현생과 전생을 뒤덮고 있습니다. 당신은 삶을 마치 뱀이 허물을 벗듯이 벗어 던져버립니다. 당신은 삶의 무수한 갈림길들을 방황하고 있습니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24610 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24611 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24612 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24613 /* ~"더 자세히 말해주시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 93
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24614 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24615 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #21586 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것들은 갑자기 바닥으로 떨어지면서 마치 그림자처럼 휄의 뒤를 따른다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24616 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24617 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24618 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
END

IF ~~ THEN BEGIN 93 // from: 91.3
  SAY #21587 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것들은 갑자기 바닥으로 떨어지면서 마치 그림자처럼 휄의 뒤를 따른다. (이 경고를 잊지 마십시오. 당신의 각 삶은 존재에 그림자를 드리웁니다. 당신은 이러한 그림자들이 미쳐버렸고 후회가 대지에 상처를 남긴 곳으로 가지 않으면 안 됩니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24619 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24620 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24621 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24622 /* ~"그 밖에 내게 얘기해줄 수 있는 건 없소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 95
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24623 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24624 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 90.3 106.3
  SAY #21588 /* ~종이처럼 얇은 일련의 심벌들이 휄 옆에 횡렬로 질서정연하게 나타난다, 그리고 곧 빛나는 점이 되어 사라진다. 당신 생각에 그는 당신에게 여행 중에 그 어떤 것에도 '서명'하지 말라고 하는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24625 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24626 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24627 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24628 /* ~"알겠소."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24629 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24630 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24631 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24632 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24633 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.3
  SAY #21589 /* ~종이처럼 얇은 일련의 심벌들이 휄 옆에 횡렬로 질서정연하게 나타난다, 그리고 곧 빛나는 점이 되어 사라진다. (그 어떤 것에도 서명하지 마십시오.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24634 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24635 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24636 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24637 /* ~"알겠소."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24638 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24639 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24640 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24641 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24642 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #21590 /* ~또 다른 일련의 심벌들이 휄 주변에서 나타나는데, 이번에는 나선형이 된다. 그것은 질문하는 형식을 지니고 있다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24643 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24644 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24645 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
END

IF ~~ THEN BEGIN 97 // from: 94.3 94.4 94.5 94.6
  SAY #21591 /* ~또 다른 일련의 심벌들이 휄 주변에서 나타나는데, 이번에는 나선형이 된다. 그것은 질문하는 형식을 지니고 있다. 그는 당신에게 스스로가 '온전한' 존재라고 느끼느냐고 질문한 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24646 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24647 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24648 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24649 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 100
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24650 /* ~"당신과는 상관없는 일이오."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24651 /* ~거짓말: "나는 온전하오. 그건 왜 물으시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24652 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 95.3 95.4 95.5 95.6
  SAY #21592 /* ~또 다른 일련의 심벌들이 휄 주변에서 나타나는데, 이번에는 나선형이 된다. 그것은 질문하는 형식을 지니고 있다. (당신은 자신이 온전하다고 생각하십니까?)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24653 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24654 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24655 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24656 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 101
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24657 /* ~"당신과는 상관없는 일이오."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24658 /* ~거짓말: "나는 온전하오. 그건 왜 물으시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24659 /* ~"이 일에 대해 더 이상 얘기를 하고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #21593 /* ~휄은 고개를 끄덕인다, 그리고 일련의 심벌들이 마치 후광처럼 그의 주위에서 실체화한다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24660 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24661 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24662 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
END

IF ~~ THEN BEGIN 100 // from: 97.3
  SAY #21594 /* ~휄은 고개를 끄덕인다, 그리고 일련의 심벌들이 마치 후광처럼 그의 주위에서 실체화한다. 그는 당신에게 강인해지고 믿음을 가지라고 말하고 있는 듯하다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24663 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24664 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24665 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24666 /* ~"노력해 보겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #24667 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.3
  SAY #21595 /* ~휄은 고개를 끄덕인다, 그리고 일련의 심벌들이 마치 후광처럼 그의 주위에서 실체화한다. (당신은 강한 사람입니다. 믿음을 가지십시오, 그럼 당신은 다시 온전한 존재가 될 것입니다.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24668 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24669 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24670 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24671 /* ~"노력해 보겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24672 /* ~"고맙소, 휄. 질문할 게 생기면 다시 오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 97.4 97.5 98.4 98.5
  SAY #21596 /* ~휄은 아무런 대답도 하지 않는다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24673 /* ~"좋소, 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ EXTERN ~DANNAH~ 131
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24674 /* ~"좋소, 그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ EXTERN ~DDAKKON~ 77
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24675 /* ~"좋소, 그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ EXTERN ~DGRACE~ 15
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24676 /* ~"좋소, 그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24677 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24678 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 103
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24679 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 104
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24680 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 105
END

IF ~~ THEN BEGIN 103 // from: 102.5
  SAY #21597 /* ~갑자기 휄은 안나 쪽으로 돌아선다, 그리고 그의 왼쪽 어깨 위에 그림문자의 열이 짤막하게 실체화한다. ~ */
  IF ~~ THEN REPLY #24681 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 104 // from: 102.6
  SAY #21598 /* ~갑자기 휄은 안나 쪽으로 돌아선다, 그리고 그의 왼쪽 어깨 위에 짤막한 그림문자의 열이 실체화한다. 당신은 그것들을 간신히 알아볼 수 있다... 당신 생각에 그는 안나와 마음에 대해 말하고 있는 듯하다, 하지만 정확히 어떤 얘기를 하고 있는지는 알 수가 없다... 그 심벌들은 잠시 나타났다가 사라진다. ~ */
  IF ~~ THEN REPLY #24682 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 105 // from: 102.7
  SAY #21599 /* ~갑자기 휄은 안나 쪽으로 돌아선다, 그리고 그의 왼쪽 어깨 위에 짤막한 그림문자의 열이 실체화한다. 당신은 그것들을 간신히 알아볼 수 있다. (당신의 마음을 저버리지 마십시오.)~ */
  IF ~~ THEN REPLY #24683 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 106 // from:
  SAY #21600 /* ~휄의 머리 위에 그림문자들의 긴 열이 나타난다, 그리고 그것들은 갑자기 바닥으로 떨어지면서 마치 그림자처럼 휄의 뒤를 따른다. 당신 생각에 그는... 그림자에 대해 경고하고 있는 것 같다. 후회의 장소에 대해서도 뭐라고 하는 듯하나 심벌들의 의미가 명확하지 않다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24684 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24685 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24686 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24687 /* ~"그 밖에 내게 얘기해줄 수 있는 건 없소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24688 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24689 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #21601 /* ~심벌은 점점 날카로워져 눈으로 보기가 고통스러울 정도가 된다. 휄은 고개를 끄덕여 당신의 왼쪽 팔과 어깨를 가리킨다. 추측하건대 그는 당신 어깨의 낙인이 "고통"이라고 하는 것 같다. 그 다음의 심벌들은 잊어버려도 고통은 계속된다고 암시하는 듯하다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24690 /* ~"안나, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24691 /* ~"다콘, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24692 /* ~"그레이스, 그가 뭐라고 말했소?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24693 /* ~"알겠소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24694 /* ~"더 나은 통역을 찾으면 다시 돌아오겠소. 안녕히 계시오."~ */ EXIT
END
