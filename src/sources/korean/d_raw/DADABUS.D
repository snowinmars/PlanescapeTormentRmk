// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADABUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50108 /* ~당신 눈에 벼락 맞은 것 같은 머리를 한 키가 크고 머리색이 하얀 생물이 들어온다. 그의 피부는 녹색 빛을 띠고 있으며 이마에는 두 개의 염소 뿔이 나 있다. 그는 흐르는 듯한 긴 법복을 입고 있으며, 지면에서 약간 떠있는 듯 하다.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50109 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #50303 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50318 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50330 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50110 /* ~그는 돌아서서 당신을 마주본다, 그리고 일련의 심벌들이 그의 머리 주위에 나타난다. 심벌들은 약간 빛나고 있으며, 그것들은 그냥... 그 곳에 떠 있다.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 235
END

IF ~~ THEN BEGIN 2 // from:
  SAY #50119 /* ~다버스는 손을 소매에 넣고 인내심 있게 기다린다. 그의 머리 위에는 일련이 심벌들이 나타난다, 그리고 그것들이 사라진 후 질문 부호가 나타난다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50120 /* ~대화를 시도하여 당신이 다버스가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50259 /* ~대화를 시도하여 당신이 다버스가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50260 /* ~다버스에게 말을 걸어 당신이 그가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50290 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50291 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50292 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50293 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50294 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50295 /* ~"안나, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50296 /* ~"다콘, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50297 /* ~"훨-후럼-그레이스, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50298 /* ~"미안하오. 난 당신이 하는 말을 알아들을 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~~ THEN REPLY #50299 /* ~"어... 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 20.0 20.1
  SAY #50121 /* ~당신은 다버스에게 여러 가지 질문을 하고 그의 머리 위에 나타나는 그림들에 대한 감을 잡으려고 노력한다. 그는 당신과의 대화를 매우 끈기 있게 진행하며, 당신이 번역하기 쉽도록 가능한 한 쉬운 표현을 쓰려고 노력한다. 몇 분이 지난 후 당신은 그것을 이해하기 시작한다... 당신에게는 자신이 전에도 이런 일을 해본 적이 있다는 생각이 든다.~ */
  IF ~~ THEN REPLY #50122 /* ~"아마 당신이 날 도울 수 있을지도..."~ */ GOTO 4
  IF ~~ THEN REPLY #50258 /* ~"내 그림놀이 실력을 향상시키려고 했을 뿐이오. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.3 3.0 5.0 7.0 8.0 9.0 10.2 20.3
  SAY #50123 /* ~다버스는 기다린다.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50124 /* ~"당신은 누구요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50130 /* ~"뭘 하고 있는 거요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50135 /* ~"당신은 누구요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50139 /* ~"뭘 하고 있는 거요?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #50144 /* ~"내게 레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #50256 /* ~"내게 휄에 대해 얘기해줄 수 있겠소?"~ */ DO ~FloatRebus(Myself)
~ GOTO 17
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #50257 /* ~"안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #50125 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. 그는 자신이 다버스라고 하는 것 같다.~ */
  IF ~~ THEN REPLY #50126 /* ~"당신에게 할 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #50127 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.12 3.1 4.8 5.1 7.1 7.2 8.1 9.1 9.2 10.3 18.10 20.16
  SAY #50128 /* ~다버스는 가볍게 고개를 숙인다. 그의 머리 위에서는 심벌들이 소용돌이친다. 그리고 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #50129 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #50131 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. 그는 자신이 직무를 수행 중이라고 하는 것 같다.~ */
  IF ~~ THEN REPLY #50132 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #50133 /* ~"참으로 자세하군, 고맙소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50134 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #50136 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. (나는 다버스요.)~ */
  IF ~~ THEN REPLY #50137 /* ~"당신에게 할 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #50138 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #50140 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. (나는 내 직무를 수행 중이오.)~ */
  IF ~~ THEN REPLY #50141 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #50142 /* ~"참으로 자세하군, 고맙소. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50143 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY #50145 /* ~하나의 심벌이 다버스의 머리 위에 나타난다. 이것은 사방에서 칼날이 튀어나오고 있는 금속제 여자 가면을 보여주고 있다. 그 유령같은 이미지는 보고만 있어도 마음이 거북해진다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50146 /* ~"어... 내가 기대하던 답이 아니군."~ */ EXTERN ~DGRACE~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50253 /* ~"어... 알겠소. 다콘, 그에게 또 다른 질문을 할 수 있겠소?"~ */ EXTERN ~DDAKKON~ 165
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50254 /* ~"어... 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #50255 /* ~"어... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #50151 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50152 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50236 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50237 /* ~"그가 뭐라고 했소, 다콘?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50238 /* ~"그가 뭐라고 했소, 그레이스?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50158 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. 그는 자신이 다버스라고 하는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50159 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50160 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50167 /* ~"그가 뭐라고 했소, 다콘?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50212 /* ~"그가 뭐라고 했소, 그레이스?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50174 /* ~다버스는 고개를 약간 기울인다, 그리고 그의 머리 위에서는 일련의 심벌들이 나타난다. (나는 다버스요.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50175 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50176 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50177 /* ~"그가 뭐라고 했소, 다콘?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50178 /* ~"그가 뭐라고 했소, 그레이스?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50183 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50184 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50188 /* ~"그가 뭐라고 했소, 다콘?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50192 /* ~"그가 뭐라고 했소, 그레이스?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50197 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. 그는 자신이 직무를 수행 중이라고 하는 것 같다.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50198 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50199 /* ~"그가 뭐라고 했소, 다콘?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50200 /* ~"그가 뭐라고 했소, 그레이스?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 16 // from:
  SAY #50202 /* ~한 무리의 심벌들이 다버스의 머리 위에 나타난다. (나는 내 직무를 수행 중이오.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50203 /* ~"그가 뭐라고 했소, 안나?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50204 /* ~"그가 뭐라고 했소, 다콘?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50205 /* ~"그가 뭐라고 했소, 그레이스?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 17 // from: 4.5
  SAY #50208 /* ~하나의 심벌이 다버스의 머리 위에 나타난다. 그것은 검은색 번개에 의해 갈라진 달걀 모양의 물체이다. 다버스는 그 심벌을 잠시 표시한 후, 고개를 돌리고 당신을 무시한다.~ */
  IF ~~ THEN REPLY #50209 /* ~"어... 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2 20.2
  SAY #50261 /* ~당신은 다버스에게 여러 가지 질문을 하고 그의 머리 위에 나타나는 그림들에 대한 감을 잡으려고 노력한다. 그는 당신과의 대화를 매우 끈기 있게 진행하나 당신은 도저히 이해할 수가 없다. 결국 그는 심벌들을 표시하는 것을 멈추고 그냥 기다린다.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50262 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50265 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50268 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50271 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50274 /* ~"안나, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50284 /* ~"다콘, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50285 /* ~"훨-후럼-그레이스, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50286 /* ~"미안하오. 난 당신이 하는 말을 알아들을 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #50289 /* ~"어... 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 2.11 18.7 20.6
  SAY #50287 /* ~일련의 심벌들이 다버스의 머리 위에 나타난다. 다버스는 가볍게 고개를 숙인 후 고개를 돌린다.~ */
  IF ~~ THEN REPLY #50288 /* ~"어... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.1 22.0
  SAY #50304 /* ~그는 돌아서서 당신을 마주본다, 그리고 일련의 심벌들이 그의 머리 주위에 나타난다. 심벌들은 약간 빛나고 있으며, 그것들은 그냥... 그 곳에 떠 있다.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50305 /* ~대화를 시도하여 당신이 그가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50306 /* ~대화를 시도하여 당신이 그가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50307 /* ~그에게 말을 걸어 당신이 그가 하는 말을 알아들을 수 있는지 본다.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50308 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50309 /* ~"미안하오. 난 당신이 하는 말을 알아들을 수가 없소."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50310 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50311 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50312 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50313 /* ~"모트, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠나?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50314 /* ~"안나, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50315 /* ~"다콘, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50316 /* ~"훨-후럼-그레이스, 날 위해서 그가 뭐라고 말하고 있는지 통역해줄 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50317 /* ~"그럼 관두시오. 귀찮게 해서 미안하오. 안녕히 계시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY #50319 /* ~그 생명체는 당신을 마주보기 위하여 돌아선다, 그리고 그의 머리 주변에는 일련의 기호들이 나타나다. 기호들은 약간 빛나고 있으며, 그냥 그 자리에... 떠있다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 496
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY #50331 /* ~다버스가 보인다. 그는 길고 흐르는 듯한 법복을 입고 있으며 지면에서 약간 떠 있다.~ */
  IF ~~ THEN REPLY #50332 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #50333 /* ~다버스를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Pregnant_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #50334 /* ~다버스가 보인다. 그는 길고 흐르는 듯한 법복을 입고 있으며 지면에서 약간 떠 있다.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50340 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50341 /* ~"안녕하시오."~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~~ THEN REPLY #50342 /* ~다버스를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #50335 /* ~그는 돌아서서 당신을 마주본다, 그리고 일련의 심벌들이 그의 머리 주위에 나타난다. (나는 내 할 일을 해야만 하오. 얘기할 시간이 없소.)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50343 /* ~"이해하오. 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61176 /* ~"이해하오. 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #61177 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.6 4.7 20.4 20.5 24.0 24.1
  SAY #50336 /* ~다버스는 머리를 한쪽으로 기울인다. 그의 머리 위에 일련의 심벌들이 나타나는데, 그것들은 대부분 단어들보다는 경악과 우려의 감정을 나타내고 있는 것 같다. (죽었다고? 어디서?)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50345 /* ~진실: "그것은 여기서 멀지 않은 버려진 건물 안에 있소. 그것은 어떤 함정에 의해 그 안에 갇히게 되었던 듯했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50346 /* ~거짓말: "그것은 여기서 멀지 않은 버려진 건물 안에 있소. 나는 그가 어떻게 죽었는지 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61178 /* ~"그의 시체는 여기서 멀지 않은 벼려진 건물 안에 있소. 난 그가 어떻게 죽었는지 모르오."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2 28.0 28.1 28.2
  SAY #50337 /* ~다버스는 당신을 잠시 쳐다보더니 고개를 가볍게 숙인다, 그리고 버려진 건물 쪽으로 떠서 간다. ~ */
  IF ~~ THEN REPLY #50347 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Dabus_Trap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #50338 /* ~그는 돌아서서 당신을 마주본다, 그리고 일련의 심벌들이 그의 머리 주위에 나타난다. 심벌들은 약간 빛나고 있으며, 그것들은 그냥... 그 곳에 떠 있다.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61165 /* ~"어... 난 당신이 내가 이 골목에서 어떤 다버스의 시체를 발견했다는 사실을 알아야 한다고 생각했을 뿐이오."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #61169 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.8 18.9 20.7 20.8 27.0 27.1
  SAY #50339 /* ~다버스는 머리를 한쪽으로 기울인다. 그의 머리 위에 일련의 심벌들이 나타난다. 그가 뭐라고 말하고 있는지는 알 수 없으나, 그의 메시지는 밝게 빛나는 질문 부호로 끝나고 있다."~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50350 /* ~진실: "그것은 여기서 멀지 않은 버려진 건물 안에 있소. 그것은 어떤 함정에 의해 그 안에 갇히게 되었던 듯했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50351 /* ~거짓말: "그것은 여기서 멀지 않은 버려진 건물 안에 있소. 나는 그가 어떻게 죽었는지 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61172 /* ~"그의 시체는 여기서 멀지 않은 벼려진 건물 안에 있소. 난 그가 어떻게 죽었는지 모르오."~ */ GOTO 26
END
