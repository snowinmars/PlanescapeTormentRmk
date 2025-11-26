// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~방 구석의 그늘에 숨은 사람이 보인다. 당신이 가까이 가자 그 곳에서 젊은 여자가 걸어나와 모습을 드러낸다. 그녀는 헐렁한 튜닉을 입고 있으며, 머리도 짧고 몸도 마른 탓에 소년처럼 보인다. "내가 당신이라면 그 안에는 들어가지 않겠어요." 그녀는 남쪽 벽에 있는 문을 가리킨다. ~ */
  IF ~~ THEN REPLY #36189 /* ~"왜? 문 저편에는 무엇이 있소?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~"당신은 누구요?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~소녀를 무시하고 가던 길을 간다.~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~당신이 목소리를 듣자 그녀는 몸을 움츠린다, 그리고 입술에 손가락을 가져다 대 조용하라고 신호를 한다. 그녀는 잠시 동작을 멈춘다, 그리고 잠시 후 낮은 목소리로 말한다. "울부짖는 미치광이들이 득실거리고 있어요. 그들은 무슨 집회를 갖고 있는 것 같아요. 그들이 모두 사라지기 전에는 골목으로 갈 수가 없어요."~ */
  IF ~~ THEN REPLY #36192 /* ~"울부짖는 미치광이들?"~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~"내 이름은 시빌이에요." 그녀는 조용히 속삭인다, 그리고 자신의 손바닥에 침을 뱉더니 악수를 하려고 손을 내민다. ~ */
  IF ~~ THEN REPLY #36195 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~"경고를 해주어 고맙소, 시빌. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~"메아리 소리가 들리죠? 울부짖는 미치광이들이에요. 그들은 벌통의 이 지역에서 창궐하고 있는 카오시텍츠 산하의 미치광이 깡패 집단인 굶주려 짖는 개들 소속이에요."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~"카오시텍츠? 난 그 당파의 일원이오. 그들은 나라면 통과시켜 줄 거요."~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~"그 안에는 놈들이 몇 명이나 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~"이해를 못하는군요. 그 개들은 보통 카오스맨보다도 더 미쳤어요. 당원이든 아니든 그 안에 들어가면 당신은 확실히 시체가 될 거예요."~ */
  IF ~~ THEN REPLY #36200 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~"그 안에는 놈들이 몇 명이나 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~"내가 세보니까 12 명 정도 되는 것 같아요. 하지만 문의 틈새로 엿보면서 센 거니까 네댓 명 정도의 오차는 있을지도 몰라요."~ */
  IF ~~ THEN REPLY #36203 /* ~"열 두 명 정도? 그 정도로는 내 상대도 되지 않소."~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~"어무래도 싸워서 길을 여는 수밖에 없는 것 같소."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~"골목으로 통하는 다른 길은 없소?"~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~"이봐요, 영웅 노릇을 하는 건 당신 자유지만 난 좀 빼줘요. 난 여기서 가만히 있겠어요. 만약 당신이 기적적으로 저 안의 동물들에게 내장발림을 당하지 않는다면 그 때 다시 보도록 하지요." 그녀는 돌아서서 구석의 그림자 속에 다시 숨는다. ~ */
  IF ~~ THEN REPLY #36207 /* ~"다시 생각해 보니... 그 안에 들어가지 않는 편이 좋을 것 같소."~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~"저 동물들과 싸우지 않고서도 지나갈 수 있는 방법이 있을지도 몰라요. 그 곳으로 통하는 문이 하나 더 있어요. 내가 본 바로는 그 다른 문이 있는 벽에는 나무상자들이 쌓여 있어요. 그 문으로 들어가 방의 다른 쪽에 있는 출구로 몰래 나갈 수 있을지도 몰라요. 하지만 문제가 딱 하나 있어요..."~ */
  IF ~~ THEN REPLY #36209 /* ~"그건 무엇이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~"문제는 항상 있는 법이오... 그렇지 않으면 재미가 없으니까."~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~"관두시오. 나 자신의 문제만 가지고도 머리가 아플 지경이오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~"그 문은 잠겨 있어요. 나도 시도는 해봤어요. 내가 추측하기에 열쇠는 위층에 있는 깡패들 중 한 사람이 가지고 있을 것 같아요. 하지만 난 그 곳에 올라가서 열쇠를 찾을 정도로 미치지는 않았어요." 그녀는 팔짱을 끼고 기대하는 눈초리로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #36212 /* ~"만약 열쇠가 위층에 있다면 내가 찾도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~나는 깡패들의 아파트에서 시빌이라는 소녀를 만났다. 그녀는 머뭇거리는 탄식의 골목으로 통하는 문이 있는 방에서 집회를 가지고 있는 카오시텍츠의 무리에 의하여 아파트 안에 갇힌 것 같다. 그녀는 싸움을 하지 않고도 깡패들 몰래 빠져나갈 수 있게 해줄지도 모르는 또 다른 문이 그 방에 있다고 내게 말해주었다. 나는 아파트의 위층에 있는 깡패들이 가지고 있다는 이 문의 열쇠를 찾아오기로 약속했다. ~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~"관두시오. 나는 미치광이들과 결판을 내겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~"내가 뭘 하고 있는 것처럼 보이나요? 숨고 있어요. 난... 먹을 것을 찾아 이 곳에 왔어요." 당신은 그녀가 얘기를 하고 있을 때도 그녀의 손이 허리에 차고 있는 주머니 쪽으로 본능적으로 움직이고 있다는 사실을 눈치챈다. "그런데 옆방에 있는 울부짖는 얼간이들이 나타나 출구 앞에서 파티를 벌이는 게 아니겠어요. 이제 나는 이 곳에 갇혀 나갈 수가 없어요."~ */
  IF ~~ THEN REPLY #36214 /* ~"짖어대는 얼간이들?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~"당신은 먹을 걸 찾고 있소? 주머니 안에는 뭐가 들어있소?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~"당신은 거짓말을 하는군. 당신은 도둑이오."~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~"메아리 소리가 들리죠? 울부짖는 얼간이들이에요. 그들은 벌통의 이 지역에서 창궐하고 있는 카오시텍츠 산하의 미치광이 깡패 집단인 굶주려 짖는 개들 소속이에요."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~"카오시텍츠? 난 그 당파의 일원이오. 그들은 나라면 통과시켜 줄 거요."~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~"그 안에는 놈들이 몇 명이나 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~"이해를 못하는군요. 그 개들은 보통 카오스맨보다도 더 미쳤어요. 당원이든 아니든 그 안에 들어가면 당신은 확실히 시체가 될 거예요."~ */
  IF ~~ THEN REPLY #36221 /* ~"그 안에는 놈들이 몇 명이나 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~"경고를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~그녀는 뭐라고 대답을 하려다가 멈춘다. 그녀는 당신을 잠시 쳐다보더니 어깨를 으쓱한다. "좋아요, 좋아... 나는 도둑이에요. 나도 먹고 살아야 하잖아요. 그래서 어떻다는 거죠? 당신은 분명히 하모니움은 아니고, 그렇다고 해서 이 곳의 야만인들과 한 패거리도 아닌 것 같군요."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~"당신이 옳소... 나도 이 곳 사람은 아니오. 골목으로 갈 수 있는 다른 길을 혹시 아시오?"~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~"당신을 깡패들에게 넘기는 방법도 있소... 아마 그들은 그 보답으로 날 통과시켜 줄지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~"그 안에는 놈들이 몇 명이나 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~"하! 그런 생각은 안 하는 게 좋을 걸요. 저 야수들은 당신을 쳐다보기도 전에 당신 해골부터 부수려고 할 거예요. 그리고... 나는 당신을 도울 수가 있어요."~ */
  IF ~~ THEN REPLY #36227 /* ~"날 도와? 어떻게?"~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~"나는 너 같은 좀도둑 쓰레기로부터 도움을 받을 생각은 없다. 난 너를 깡패들에게 넘기겠다."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~"관두시오. 나는 미치광이들과 결판을 내겠소."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~"또 당신이에요?" 그녀는 짜증스러워 하는 것 같다, 하지만 동시에 당신을 다시 보게 되어 안도하는 것 같다. "젠장! 좀 조용히 걸을 순 없어요? 당신이 걸어오는 소리가 복도 저편에서부터 들렸다고요!"~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~"문 저편에는 무엇이 있소?"~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~"당신이 말한 열쇠가 이 거요?"~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~"나는 출구를 막고 있던 깡패들을 처치했소. 당신은 이제 안전히 떠날 수가 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~"내가 어떻게 알겠어요? 당신이 직접 가서 그걸로 문을 열어 보지 그래요? 나는 여기 이 문의 틈새를 통해 지켜보고 있을 게요. 만약 당신이 무사히 골목으로 빠져나간다면 나도 곧 뒤를 따르겠어요."~ */
  IF ~~ THEN REPLY #36235 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~"정말 감탄했어요. 나는 그 동물들이 당신을 요절낼 거라고 생각했었어요. 어쨌든 당신에게 감사해야겠군요." 그녀는 잠시 말을 멈춘다, 그리고 주머니에 손을 넣어 녹색의 작은 보석을 꺼낸다. "여기 있어요. 그 개들을 처치해 준 대가예요. 또 봐요." ~ */
  IF ~~ THEN REPLY #36236 /* ~"안녕히 계시오, 시빌."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~내 노력 덕분에 시빌은 깡패들의 아파트로부터 무사히 탈출할 수 있었다. 하지만 난 어째서인지 그녀가 머지않아 다시 곤경에 처할 거라는 생각이 든다. ~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~"만약에 당신이 살아서 열쇠를 손에 넣는다면, 그 문은 남동쪽에 있는 방에 있어요. 나는 그림자 속에서 지켜보고 있겠어요. 만약 당신이 문을 열고 골목까지 무사히 나간다면, 나도 당신 뒤를 따르겠어요."~ */
  IF ~~ THEN REPLY #50009 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~"정말 감탄했어요. 나는 그 동물들이 당신을 요절낼 거라고 생각했었어요. 어쨌든 당신에게 감사해야겠군요." 그녀는 잠시 말을 멈춘다, 그리고 주머니에 손을 넣어 녹색의 작은 보석을 꺼낸다. "여기 있어요. 그 개들을 처치해 준 대가예요. 또 봐요."~ */
  IF ~~ THEN REPLY #50011 /* ~"안녕히 계시오, 시빌."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
