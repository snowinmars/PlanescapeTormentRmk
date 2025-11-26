// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAILCII.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAILCII~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2919 /* ~이 뛰어난 기스양키 전사는 당신이 다가오는 동안 당신을 유심히 살피고 있었다. 당신이 가까이 오자 그는 갑자기 칼을 뽑아서 공격한다!~ */
  IF ~~ THEN REPLY #45139 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45140 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45141 /* ~남자는 노란 피부에 야윈 얼굴을 하고 있다. 문신과 흉터가 그의 몸을 뒤덮고 있으며, 가슴에는 긴 칼을 매고 있다. 그의 눈은 두 개의 작고 검은 돌들과 같다. 당신이 다가가자 그는 고개를 숙인다. "안녕하시오, 칼을 울리는 자여. 나는 당신이 알려 준 적시의 정보에 대해 들어 *알고* 있소. 원하는 바를 말하시오."~ */
  IF ~~ THEN REPLY #45142 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #45143 /* ~"내 파티에 참가할 수 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #45144 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #45145 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45148 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45149 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.1 9.0 21.1 22.1
  SAY #45150 /* ~"그럴 수 없소. 내게는 동포들에 대한 책무가 있소."~ */
  IF ~~ THEN REPLY #45151 /* ~"그 임무는 무엇이오?"~ */ GOTO 47
  IF ~~ THEN REPLY #45152 /* ~"그럼 당신에게 질문을 더 하고 싶소."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 6.1 7.0 8.0 12.0 13.1 14.0 14.1 15.2 16.1 17.1 18.3 19.0 19.1 20.0 23.0 24.0 26.0 40.2 47.0
  SAY #45153 /* ~"질문을 하시오, 하지만 아크'알리의 익사처럼 하지는 마시오. 요점만 직설적으로 말하시오."~ */
  IF ~~ THEN REPLY #45154 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #45155 /* ~"내 파티에 참가할 수 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #45156 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #45157 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45158 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45159 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45160 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45161 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.2 9.1 21.2 22.2 25.1
  SAY #45162 /* ~그는 경건한 몸짓으로 두 팔을 들어 얼굴 있는 데까지 올리더니 가슴까지 내린다. "내 얼굴의 흉터는 일센신(일리티드의 주신)의 전당에서 벌어진 전투에서 얻은 것이오. 그 때 내 르라크마 부대는 비열한 *일리티드*에 의해 거의 잡아먹힐 뻔했소. 내 동체 위쪽의 흉터는 기스양키가 힘없이 찌른 칼에 의한 것이오." 그는 고개를 끄덕여 당신의 흉터들을 가리킨다. "당신 흉터들의 내력을 얘기하시오."~ */
  IF ~~ THEN REPLY #45163 /* ~"나는 대부분의 흉터들을 어떻게 얻었는지 모르오."~ */ GOTO 11
  IF ~~ THEN REPLY #45164 /* ~"그들은 내가 참가한 무수한 전투들에서 얻은 것으로, 이야기를 하자면 너무나도 길 것이오." ~ */ GOTO 19
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45165 /* ~"그들은 그냥 흉터들이오. 그 밖에도 물어보고 싶은 것들이 있소..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45166 /* ~"그들은 그냥 흉터들이오. 그 밖에도 물어보고 싶은 것들이 있소..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3 3.3 9.2 21.3 22.3 25.2
  SAY #45167 /* ~"내 문신들은 내 일족의 역사에 대해 얘기하고 있으며, 내게 그들의 힘과 지혜를 주고 있소. 실 섬의 아자'록에 의해 새겨진 문신은 슈라크'아트'로의 성벽에서 적들을 격퇴한 지'리'카이의 무용담을 얘기해주고 있소. 그리고 여기 새겨진 이 문신은 걷는 다버스휄이 새긴 것으로, 로'지가 마침내 여덟 번째 슬래디에게 목숨을 잃기 전에 그와 내가 일곱 마리의 슬래디를 상대로 림보에서 벌였던 혈투에 대해 말해주고 있소." 그는 고개를 끄덕여 당신의 문신들을 가리킨다. "당신 문신들의 내력을 얘기하시오."~ */
  IF ~~ THEN REPLY #45168 /* ~"그들은 내가 성취하고자 하는 것에 대해 말해주고 있소."~ */ GOTO 13
  IF ~~ THEN REPLY #45169 /* ~"그들은 내가 잊지 않도록 내가 극복한 장애물들과 내 과거의 이야기들을 말해주고 있소."~ */ GOTO 14
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45170 /* ~"그들은 그냥 문신들이오. 휄에 대해 얘기해주시오."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 15
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45171 /* ~"그것들은 그냥 문신들이오. 휄에 대해 얘기해주시오."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45172 /* ~"그것들은 그냥 문신들이오. 그 밖에도 물어보고 싶은 것들이 있소."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45173 /* ~"그것들은 그냥 문신들이오. 그 밖에도 물어보고 싶은 것들이 있소."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4 1.5 3.4 3.5 9.3 9.4 18.0 18.1 21.4 21.5 22.4 22.5 25.3 25.4
  SAY #45174 /* ~그는 눈을 가늘게 뜨고 침을 뱉는다. "그들은 거짓말과 도둑질을 밥먹듯이 하는 음흉한 개들로 어떤 경우에도 놈들을 믿어서는 안 되오. 만약 놈들을 만나게 되면 셀칸트의 심장과 빌콰의 눈을 기억하시오 - 그리고 기스양키는 그들보다 세 배는 더 악독하다는 사실도."~ */
  IF ~~ THEN REPLY #45175 /* ~"그러한 교훈들은 어떤 것들이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #45176 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 3
  IF ~~ THEN REPLY #45177 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 3.6 9.5 18.2 21.6 22.6 25.5
  SAY #45178 /* ~그는 당신에게 가볍게 머리를 숙인다. "동포들에 대한 내 의무만 아니었다면 기꺼이 그렇게 했을 것이오. 하지만 토릭의 테이블에 앉은 손님처럼 내 쟁반은 가득 찼소. 다른 사람을 찾아보는 것이...".~ */
  IF ~~ THEN REPLY #45179 /* ~"어쨌든 고맙소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45180 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45181 /* ~"셀칸트와 빌콰는 잔인함과 음흉함으로 악명이 높은 자들이오 - 그리고 그들은 기스저라이였소. 하지만 그들의 악행조차 은색 바다 사상 가장 잔악무도한 해충들인 기스양키에 비하면 조족지혈이오.~ */
  IF ~~ THEN REPLY #45182 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45183 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.4 11.0
  SAY #45184 /* ~그는 잠시 멈춘다, 그리고 당신은 그가 당신 대답에 찬성하지 않고 있다고 느낀다. "아크'알리의 익사. 그럼 질문을 하시오."~ */
  IF ~~ THEN REPLY #45185 /* ~"내 파티에 참가할 수 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #45186 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #45187 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45188 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45191 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45192 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45194 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Hail_Mad","GLOBAL",4)
~ THEN BEGIN 10 // from: 4.3 5.3 5.5 11.1
  SAY #45197 /* ~그는 증오로 이글거리는 눈으로 당신을 보며 머리를 숙인다. "당신은 말을 함으로서 스스로에게 아무런 영예도 가져오지 않소. 나 역시 당신 말을 들음으로서 아무런 영예도 얻지 못하오. 나는 더 이상 당신과 이야기하지 않겠소." 그는 잠시 눈을 감더니 당신을 무시하고 저편을 바라본다. ~ */
  IF ~~ THEN REPLY #45198 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ EXIT
  IF ~~ THEN REPLY #45199 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45200 /* ~그를 친다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY #45201 /* ~그의 표정이 약간 변한다 - 그것이 당황해서인지 아니면 당신을 경멸해서인지 당신으로서는 알 수가 없다. "어떻게 흉터에 아무런 내력도 없을 수가 있소?"~ */
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45202 /* ~"그것들은 그냥 흉터들이오. 누구나 얻을 수 있는."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45203 /* ~"그것들은 그냥 흉터들이오. 누구나 얻을 수 있는."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #45204 /* ~"나는 그것들과 나 자신의 과거에 대한 기억을 잃어버렸소."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #45205 /* ~그는 잠시 멈추더니 이해를 하고 다시 입을 연다. "그럼 트'카의 통곡이오. 나는 당신이 기억과 역사를 잃은 것을 애통하게 생각하오."~ */
  IF ~~ THEN REPLY #45206 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45207 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY #45208 /* ~그는 잠시 기다리더니 다시 눈을 감고 다시 머리를 숙인다. "당신의 문신들은 과거와 미래를 현재로 가져와 초점을 주고 있소. 그러한 문신들에는 아나크의 지혜가 담겨 있소. 당신의 이야기는 마음 속에 새겨 두겠소."~ */
  IF ~~ THEN REPLY #45209 /* ~"고맙소. 당신은 휄에 대해 얘기했소?"~ */ GOTO 15
  IF ~~ THEN REPLY #45210 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 3
  IF ~~ THEN REPLY #45211 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY #45212 /* ~그는 눈을 감고 머리를 숙인다. "당신의 이야기는 마음 속에 새겨 두겠소, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45213 /* ~"당신 이야기도 마찬가지요. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45214 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45215 /* ~"당신 이야기도 마찬가지요.. 안녕히 계시오."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45216 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.2 13.0
  SAY #45217 /* ~"걷는 다버스 휄은 문신의 달인이오. 어떤 문신들은 이야기를 담고 있으며, 또 다른 문신들에는 영혼이 담겨 있소. 휄이 피부에 새기는 문신은 그 바탕이 되는 이야기에 따라 몸과 마음의 힘을 빌려주오."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45218 /* ~"휄은 어디 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #45219 /* ~"어떤 종류의 힘 말이오?"~ */ GOTO 17
  IF ~~ THEN REPLY #45220 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 3
  IF ~~ THEN REPLY #45221 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0 40.0
  SAY #45222 /* ~"그는 벌통 남동쪽 지역의 북쪽에 있소. 이 도시의 표지판은 매우 알아보기가 어렵소 - 그것은 마치 자신을 *알지* 못하는 아나크의 헛소리를 따라서 행동하는 것과 같소."~ */
  IF ~~ THEN REPLY #45223 /* ~"그의 문신들은 착용자에게 어떤 힘을 부여하오?"~ */ GOTO 17
  IF ~~ THEN REPLY #45224 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45225 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0 40.1
  SAY #45226 /* ~"일곱 마리의 슬래디의 숨통을 끊은 로'지의 문신은 내가 사면초가의 위기에 몰렸을 때 내게 힘을 주오. 문신이 빌려주는 힘은 경험에 달려 있소. 휄에게 당신 이야기를 하시오, 그러면 당신 피부에 새겨진 후 문신은 그 힘을 발휘하게 될 것이오."~ */
  IF ~~ THEN REPLY #45227 /* ~"그는 어디 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #45228 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 3
  IF ~~ THEN REPLY #45229 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0 3.0 21.0 22.0 25.0
  SAY #45230 /* ~그는 당신에게 머리를 숙인다. "나는 기스저라이 전사 헤일시이'인이오. 나는 물자를 확보하기 위해 이 곳에 왔소. 나는 이 도시가 트라이'이그'오의 보석과 같다는 사실을 발견했소. 즉, 외화내빈이라는 뜻이오."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45231 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45232 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45233 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45234 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45235 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY #45236 /* ~그는 당신에게 머리를 숙인다. "당신의 기량은 탁월하오, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45237 /* ~"당신 이야기도 마찬가지요. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45238 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45239 /* ~"당신 이야기도 마찬가지요.. 안녕히 계시오."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45240 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #45241 /* ~헤일시이'인은 당신에게 고개를 숙여 인사한다. "안녕하시오, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45242 /* ~"안녕하시오. 물어볼 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45247 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #45248 /* ~남자는 노란 피부에 야윈 얼굴을 하고 있다. 문신과 흉터가 그의 몸을 뒤덮고 있으며, 가슴에는 긴 칼을 매고 있다. 그의 눈은 두 개의 작고 검은 돌들과 같다. 당신이 다가가자 그는 고개를 숙인다. "안녕하시오, 칼을 울리는 자여. 나는 당신이 알려 준 적시의 정보에 대해 들어 *알고* 있소. 원하는 바를 말하시오."~ */
  IF ~~ THEN REPLY #45249 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #45250 /* ~"내 파티에 참가할 수 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #45251 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #45252 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45253 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #45254 /* ~남자는 노란 피부에 야윈 얼굴을 하고 있다. 문신과 흉터가 그의 몸을 뒤덮고 있으며, 가슴에는 긴 칼을 매고 있다. 그의 눈은 두 개의 작고 검은 돌들과 같다. 당신이 다가가자 그는 고개를 숙인다. "안녕하시오, 칼을 울리는 자여. 나는 당신이 알려 준 적시의 정보에 대해 들어 *알고* 있소. 원하는 바를 말하시오."~ */
  IF ~~ THEN REPLY #45255 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #45256 /* ~"내 파티에 참가할 수 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #45257 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #45258 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45259 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45260 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45262 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #45263 /* ~헤일시이'인은 당신에게 고개를 숙여 인사한다. "안녕하시오, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45264 /* ~"안녕하시오. 물어볼 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45265 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #45266 /* ~헤일시이'인은 당신에게 고개를 숙여 인사한다. "안녕하시오, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45267 /* ~"안녕하시오. 물어볼 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45268 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #45269 /* ~남자는 노란 피부에 야윈 얼굴을 하고 있다. 문신과 흉터가 그의 몸을 뒤덮고 있으며, 가슴에는 긴 칼을 매고 있다. 그의 눈은 두 개의 작고 검은 돌들과 같다. 그는 당신이 다가오는 것을 지켜보며 당신이 입을 열기를 기다린다. "나는 당신을 *알지* 못하오... 하지만 당신과 얘기를 하겠소."~ */
  IF ~~ THEN REPLY #45270 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #45271 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #45272 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45273 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45274 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45275 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #45276 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #45277 /* ~헤일시이'인은 당신이 다가오는 것을 조용히 지켜본다, 그리고 당신에게 간결하게 인사를 한다. "안녕하시오, 여행자."~ */
  IF ~~ THEN REPLY #45278 /* ~"안녕하시오. 물어볼 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45279 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 27 // from:
  SAY #45280 /* ~남자는 노란 피부에 야윈 얼굴을 하고 있다. 문신과 흉터가 그의 몸을 뒤덮고 있으며, 가슴에는 긴 칼을 매고 있다. 그의 눈은 두 개의 작고 검은 돌들과 같다. 당신이 다가가자 그는 다콘에게 고개를 숙인다. "감사하오. *저스.*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 160
END

IF ~~ THEN BEGIN 28 // from:
  SAY #45281 /* ~"나는 그의 말을 *아오,* *저스여.* 하지만 나는 그의 행동은 알지 못하오. 그의 그림자는 무수한 전투에서 적대하는 모든 자를 쓰러뜨린 자에 대해 말하고 있소. 내 눈이 부동의 원 너머를 보지 못하고 있는 것이오?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 161
END

IF ~~ THEN BEGIN 29 // from:
  SAY #45282 /* ~"그위 말에 귀를 기울이리다, *저스여.*" 그는 당신 쪽으로 돌아선다. "질문을 하시오. 당신의 마음이 가리키는 대로."~ */
  IF ~~ THEN REPLY #45283 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #45284 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 32
  IF ~~ THEN REPLY #45285 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45286 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 43
  IF ~~ THEN REPLY #45287 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 31.0 34.0 35.0 36.0 38.1 39.1 41.1 42.1 43.0 45.0 46.0 48.1 49.0
  SAY #45288 /* ~"그럼 질문을 하시오."~ */
  IF ~~ THEN REPLY #45289 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #45290 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 32
  IF ~~ THEN REPLY #45291 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45292 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 43
  IF ~~ THEN REPLY #45293 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 44.0
  SAY #45294 /* ~그는 당신에게 머리를 숙인다. "나는 기스저라이 전사 헤일시이'인이오. 나는 물자를 확보하기 위해 이 곳에 왔소. 나는 이 도시가 트라이'이그'오의 보석과 같다는 사실을 발견했소. 즉, 외화내빈이라는 뜻이오. 이 곳의 공기는 '사람들'에게는 좋지 않소, 그리고 그 안에 사는 자들은 자신들을 *알지* 못하오. 그들은 빈 껍질들이오."~ */
  IF ~~ THEN REPLY #45295 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45296 /* ~"동감이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 44.1
  SAY #45297 /* ~그는 경건한 몸짓으로 두 팔을 들어 얼굴 있는 데까지 올리더니 가슴까지 내린다. "내 얼굴의 흉터는 일센신(일리티드의 주신)의 전당에서 벌어진 전투에서 얻은 것이오. 그 때 내 르라크마 부대는 비열한 *일리티드*에 의해 거의 잡아먹힐 뻔했소. 내 동체 위쪽의 흉터는 기스양키가 힘없이 찌른 칼에 의한 것이오." 그는 고개를 끄덕여 당신의 흉터들을 가리킨다. "당신 흉터들의 내력을 얘기하시오."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 162
END

IF ~~ THEN BEGIN 33 // from:
  SAY #45298 /* ~그의 표정이 약간 변한다 - 그것이 당황해서인지 아니면 당신을 경멸해서인지 당신으로서는 알 수가 없다. "어떻게 흉터에 아무런 내력도 없을 수가 있소?"~ */
  IF ~~ THEN REPLY #45299 /* ~"그것들은 그냥 흉터들이오. 누구나 얻을 수 있는."~ */ GOTO 34
  IF ~~ THEN REPLY #45300 /* ~"나는 그것들과 나 자신의 과거에 대한 기억을 잃어버렸소."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0 37.2
  SAY #45301 /* ~그는 읽을 수 없는 표정을 하고 다콘을 본다. 당신은 자신이 일종의 시험에서 실패했다는 인상을 받는다. "더 *알고* 싶은 것이 있소?"~ */
  IF ~~ THEN REPLY #45302 /* ~"그렇소."~ */ GOTO 30
  IF ~~ THEN REPLY #45309 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #45311 /* ~그는 잠시 멈추더니 이해를 하고 다시 입을 연다. "그럼 트'카의 통곡이오. 나는 당신이 기억과 역사를 잃은 것을 애통하게 생각하오."~ */
  IF ~~ THEN REPLY #45312 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45314 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45315 /* ~그는 당신에게 머리를 숙인다. "당신의 기량은 탁월하오, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45317 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45318 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 29.2 30.2 44.2
  SAY #45319 /* ~"내 문신들은 내 일족의 역사에 대해 얘기하고 있으며, 내게 그들의 힘과 지혜를 주고 있소. 실 섬의 아자'록에 의해 새겨진 문신은 슈라크'아트'로의 성벽에서 적들을 격퇴한 지'리'카이의 무용담을 얘기해주고 있소. 그리고 여기 새겨진 이 문신은 걷는 다버스휄이 새긴 것으로, 로'지가 마침내 여덟 번째 슬래디에게 목숨을 잃기 전에 그와 내가 일곱 마리의 슬래디를 상대로 림보에서 벌였던 혈투에 대해 말해주고 있소." 그는 고개를 끄덕여 당신의 문신들을 가리킨다. "당신 문신들의 내력을 얘기하시오."~ */
  IF ~~ THEN REPLY #45320 /* ~"그들은 내가 성취하고자 하는 것에 대해 말해주고 있소."~ */ GOTO 38
  IF ~~ THEN REPLY #45321 /* ~"그들은 내가 잊지 않도록 내가 극복한 장애물들과 내 과거의 이야기들을 말해주고 있소."~ */ GOTO 39
  IF ~~ THEN REPLY #45322 /* ~"그것들은 그냥 문신들이오. 그 밖에도 물어보고 싶은 것들이 있소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45323 /* ~그는 잠시 기다리더니 다시 눈을 감고 다시 머리를 숙인다. "당신의 문신들은 과거와 미래를 현재로 가져와 초점을 주고 있소. 그러한 문신들에는 아나크의 지혜가 담겨 있소. 당신의 이야기는 마음 속에 새겨 두겠소."~ */
  IF ~~ THEN REPLY #45324 /* ~"고맙소. 당신은 휄에 대해 얘기했소?"~ */ GOTO 40
  IF ~~ THEN REPLY #45325 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 30
  IF ~~ THEN REPLY #45326 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #45327 /* ~그는 눈을 감고 머리를 숙인다. "당신의 이야기는 마음 속에 새겨 두겠소, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #45328 /* ~"고맙소. 당신은 휄에 대해 얘기했소?"~ */ GOTO 40
  IF ~~ THEN REPLY #45329 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45330 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #45331 /* ~"걷는 다버스 휄은 문신의 달인이오. 어떤 문신들은 이야기를 담고 있으며, 또 다른 문신들에는 영혼이 담겨 있소. 휄이 피부에 새기는 문신은 그 바탕이 되는 이야기에 따라 몸과 마음의 힘을 빌려주오."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45332 /* ~"휄은 어디 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #45333 /* ~"어떤 종류의 힘 말이오?"~ */ GOTO 17
  IF ~~ THEN REPLY #45334 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #45335 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.0
  SAY #45336 /* ~"그는 벌통 남동쪽 지역의 북쪽에 있소. 이 도시의 표지판은 매우 알아보기가 어렵소 - 그것은 마치 자신을 *알지* 못하는 아나크의 헛소리를 따라서 행동하는 것과 같소."~ */
  IF ~~ THEN REPLY #45337 /* ~"그의 문신들은 착용자에게 어떤 힘을 부여하오?"~ */ GOTO 42
  IF ~~ THEN REPLY #45338 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45339 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #45340 /* ~"일곱 마리의 슬래디의 숨통을 끊은 로'지의 문신은 내가 사면초가의 위기에 몰렸을 때 내게 힘을 주오. 문신이 빌려주는 힘은 경험에 달려 있소. 휄에게 당신 이야기를 하시오, 그러면 당신 피부에 새겨진 후 문신은 그 힘을 발휘하게 될 것이오."~ */
  IF ~~ THEN REPLY #45341 /* ~"그는 어디 있소?"~ */ GOTO 41
  IF ~~ THEN REPLY #45342 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 30
  IF ~~ THEN REPLY #45343 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.5 30.5 44.5
  SAY #45344 /* ~그는 머리를 약간 숙인다. "당신은 우리 언어의 견줄 자가 없는 달인과 함께 여행을 하고 있소. 그에게 부탁하시오, 그러면 그가 당신에게 가르쳐 줄지도 모르오."~ */
  IF ~~ THEN REPLY #45345 /* ~"어쨌든 고맙소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45346 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #45347 /* ~"나는 그의 말을 *아오,* *저스여,* 그리고 우리 요새와 관련된 그의 적시한 행동도. 나는 그의 말에 귀를 기울이리다."~ */
  IF ~~ THEN REPLY #45348 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~~ THEN REPLY #45349 /* ~"당신은 어떻게 해서 그러한 흉터들을 얻게 되었소?"~ */ GOTO 32
  IF ~~ THEN REPLY #45350 /* ~"당신은 문신을 어디에서 새겼소?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"기스저라이와 기스양키의 차이는 무엇이오?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45351 /* ~"당신 민족의 언어로 말하는 법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 43
  IF ~~ THEN REPLY #45352 /* ~"지금 내게 필요한 건 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #45353 /* ~당신이 다가가자 헤일시이'인은 고개를 숙인다. "당신이 나를 다시 찾아 주셔서 영광이오."~ */
  IF ~~ THEN REPLY #45354 /* ~"고맙소. 몇 가지 물어볼 것들이 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45355 /* ~"고맙소, 하지만 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #45356 /* ~"당신의 인간과 함께 돌아오셨군, *저스.* 더 *아시고* 싶은 것이 있소?"~ */
  IF ~~ THEN REPLY #45357 /* ~"그렇소."~ */ GOTO 30
  IF ~~ THEN REPLY #45358 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY #45359 /* ~"나는 물자를 확보하고 증원을 부르기 위해 이 곳에 왔소. 기스양키는 날이 갈수록 대담해지고 있소. 우리는 혈전에 대비하고 있소."~ */
  IF ~~ THEN REPLY #45360 /* ~"신날 것 같소. 당신에게 질문을 더 하고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #45361 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 29.4 30.3 30.4 44.3 44.4
  SAY #45174 /* ~그는 눈을 가늘게 뜨고 침을 뱉는다. "그들은 거짓말과 도둑질을 밥먹듯이 하는 음흉한 개들로 어떤 경우에도 놈들을 믿어서는 안 되오. 만약 놈들을 만나게 되면 셀칸트의 심장과 빌콰의 눈을 기억하시오 - 그리고 기스양키는 그들보다 세 배는 더 악독하다는 사실도."~ */
  IF ~~ THEN REPLY #45175 /* ~"그러한 교훈들은 어떤 것들이오?"~ */ GOTO 49
  IF ~~ THEN REPLY #45176 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 30
  IF ~~ THEN REPLY #45177 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #45181 /* ~"셀칸트와 빌콰는 잔인함과 음흉함으로 악명이 높은 자들이오 - 그리고 그들은 기스저라이였소. 하지만 그들의 악행조차 은색 바다 사상 가장 잔악무도한 해충들인 기스양키에 비하면 조족지혈이오.~ */
  IF ~~ THEN REPLY #45182 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #45183 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END
