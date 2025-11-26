// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORP~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51205 /* ~이 거대한 생물의 키는 2.70 m가 넘는다. 물결치는 듯한 근육이 그의 거대한 몸을 지탱하고 있다. 당신이 다가가자 그는 당신을 흘긋 보고는 웃는다.~ */
  IF ~~ THEN REPLY #51206 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #51207 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51208 /* ~그는 당신을 내려다보며 친절한 미소를 짓는다. "뭘 원하지, 꼬마?"~ */
  IF ~~ THEN REPLY #51209 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51210 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0 6.1 7.1 8.1 9.1 10.1 11.1 12.0 14.0 23.0
  SAY #51211 /* ~"당신 질문할 것 있고 토프는 대답이 있을지도 몰라." 그는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #51212 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #51213 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #51214 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 13
  IF ~  GlobalGT("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51215 /* ~"당신이 어떤 아비샤이와 싸울 거라고 말했소?"~ */ GOTO 15
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51216 /* ~"나는 이미 잔씨아와 얘기했소. 그녀 말로는 당신이 어떤 아비샤이와 대결할 거라고 하던데?~ */ GOTO 15
  IF ~~ THEN REPLY #68262 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51217 /* ~그는 자기 가슴을 주먹으로 세게 내려친다. "토프." 그는 팔을 머리 위로 들고는 하늘에다 대고 주먹을 휘두른다. "토프는 강대한 전사야, 모든 토콜라는 강대한 전사야," 구는 두 주먹을 엉덩이에 갖다 대고는 당신을 노려본다. "당신은 누구지?"~ */
  IF ~~ THEN REPLY #51219 /* ~거짓말: "난 아단이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALThorp_Adahn","GLOBALAdahn",1)
IncrementGlobalOnceEx("GLOBALChaotic_Thorp_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #51220 /* ~"난 내 이름을 기억하지 못하오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51221 /* ~그는 잠시 생각하더니 고개를 끄덕인다. "꼬마에게 좋은 이름이야. 듣기가 좋아. 토프 마음에 들어."~ */
  IF ~~ THEN REPLY #51222 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51223 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51224 /* ~그는 당신의 흉터를 살펴보면서 고개를 끄덕인다. "당신 큰 흉터 많아. 당신 위대한 전사가 틀림없어... 토프처럼! 그는 얼굴을 찌푸리고 현명하게 고개를 끄덕인다. "당신 머리 너무 여러 번 맞았어. 그래서 이름 기억 못해. 언젠가는 돌아 올 거야."~ */
  IF ~~ THEN REPLY #51225 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51226 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 13.0
  SAY #51227 /* ~그는 크게 웃고는 당신에게 미소를 짓는다. "토프는 친구들과 함께 있어." 그는 근처에 있는 토콜라들을 가리킨다. "우린 날아다니는 도마뱀을 두들길 거야." 그는 포효하며 사람 넓적다리만한 주먹으로 자기 가슴을 마구 치기 시작한다.~ */
  IF ~~ THEN REPLY #51228 /* ~"어... 날아다니는 도마뱀?"~ */ GOTO 7
  IF ~~ THEN REPLY #51229 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51230 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51231 /* ~그는 고개를 끄덕이더니 기어가는 시늉을 한다. "도마뱀... 하지만 그놈은 날 수가 있어." 그는 보기 흉한 새처럼 팔을 퍼덕거린다. 마침내 그는 진정을 하고 기대하는 눈빛으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #51232 /* ~"드래곤을 말하는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #51233 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51234 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51235 /* ~그는 코를 씨근거리며 꼿꼿이 선다. "토프 잘 싸워, 하지만 그렇게 강하진 않아. 언젠가는 드래곤도 때려눕히고 싶어..." 그는 갈망하는 눈빛으로 먼 곳을 바라본다, 그리고 한숨을 쉰다. "하지만 오늘은 그 날이 아냐."~ */
  IF ~~ THEN REPLY #51236 /* ~"당신이 말하는 놈이 드래곤이 아니라면 대체 뭐요?"~ */ GOTO 9
  IF ~~ THEN REPLY #51237 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51239 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51240 /* ~"잔시아가 뭐라고 했는지 토프는 기억이 나지 않아..." 그는 잠시 멈추고 생각한다. "그거 도마뱀, 토프만큼 키가 크고. 뒷다리로 걷고... 날개가 있고... 발톱이 있고... 빨간색이야. 아마 그녀가 그걸 이렇게 불렀을 거야... 애비-사위?". 그는 잠시 멈춘 후 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #51241 /* ~"나는 아비샤이란 괴물에 대해 들은 적이 있소. 당신이 말하는 것이 그놈이오?"~ */ DO ~SetGlobal("Barsh_Abishai","GLOBAL",1)
~ JOURNAL #67299 /* ~토프라는 이름의 토콜라와 그의 두 토콜라 친구들은 한 아비샤이와 싸울 것이라고 한다. 토콜라는 별로 똑똑한 종족은 아니나, 그들은 무척 강해 보인다. 그들이라면 해낼 수 있을지도 모른다. ~ */ GOTO 10
  IF ~~ THEN REPLY #51242 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51243 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51245 /* ~그의 눈빛이 밝아진다, 그리고 그는 고개를 끄덕이면서 가쁜 듯 미소를 짓는다. "그래! 아비샤이... 나는 도마뱀. 토프와 친구들이 박살을 낼 거야. 그럼 토프는 뛰어난 전사야. 잔시아 사과 받아 줄 거야..."~ */
  IF ~~ THEN REPLY #51246 /* ~"잔씨아와 그녀에 대한 사과는 대체 무슨 얘기오?"~ */ GOTO 11
  IF ~~ THEN REPLY #51247 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51248 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51249 /* ~"토프는 어젯밤 친구들과 술 마시러 갔어. 토프 너무 취해서 잔시아의 테이블에 엎어졌어. 잔시아 온몸에 술 흘렸어." 그는 부끄러워하는 것 같다. "잔시아는 토프는 뛰어난 전사 아니면 사과 안 받겠다고 했어..."~ */
  IF ~~ THEN REPLY #51250 /* ~"그래, 아비샤이를 죽이면 당신은 영예를 얻게 된다는 거요?"~ */ JOURNAL #67300 /* ~토프와 그의 친구들은 술집에서 만취하여 어떤 귀부인의 옷에 온통 술을 엎지르는 바람에 그녀에게 심한 모욕을 준 모양이다. 그 잔씨아란 귀부인은 토프가 그가 뛰어난 전사라는 것을 입증하기 전에는 그의 사과를 받지 않겠다고 한다. 이를 위해서 그는 아비샤이를 한 마리 죽여야만 한다.~ */ GOTO 12
  IF ~~ THEN REPLY #51251 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51252 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51253 /* ~그는 어깨를 으쓱한다. "잔시아가 그렇게 말했어. 토프는 몰라."~ */
  IF ~~ THEN REPLY #51254 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51255 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #51256 /* ~그는 당신을 잠시 쳐다보더니 어깨를 으쓱한다. "토프 몰라. 토프 여기 새로 욌어." 그는 어린아이처럼 웃는다. "토프 여기 놀러 왔어!"~ */
  IF ~  Global("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51257 /* ~"어떻게 즐기려고?"~ */ GOTO 6
  IF ~  Global("Barsh_Abishai","GLOBAL",1)
~ THEN REPLY #51258 /* ~"그래, 그래서 아비샤이와 대결하겠다는 거군."~ */ GOTO 14
  IF ~  Global("Barsh_Abishai","GLOBAL",2)
~ THEN REPLY #63237 /* ~"그래, 당신은 아비샤이와 싸울 거군."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #51259 /* ~그는 미소를 지으며 힘차게 고개를 끄덕인다. "맞아! 토프와 친구들이 두들길 거야!"~ */
  IF ~~ THEN REPLY #51260 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51261 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.3 2.4 13.2
  SAY #51262 /* ~그는 미소를 지으며 힘차게 고개를 끄덕인다. "맞아! 토프와 친구들이 두들길 거야!"~ */
  IF ~  !Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51263 /* ~"그럼 즐겁게 지내도록 하시오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51264 /* ~토프에게 경고한다. "나는 아비샤이에게는 마법의 무기로만 상처를 입힐 수 있다는 사실을 알게 되었소."~ */ DO ~AddexperienceParty(6000)
IncrementGlobalOnceEx("GLOBALGood_Thorp_1","GLOBALGood",1)
SetGlobal("Barsh_Abishai","GLOBAL",4)
~ JOURNAL #67301 /* ~나는 토프에게 아비샤이는 마법의 무기나 마법으로만 해칠 수가 있다고 경고했다. 그것은 잘한 일이다, 아니면 그와 그의 친구들은 죽임을 당했을 테니까. ~ */ GOTO 16
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51265 /* ~토프에게 경고하지 않는다. "그럼 즐겁게 지내도록 하시오. 당신이 틀림없이 승리할 거요. 안녕히 계시오."~ */ DO ~AddexperienceParty(1500)
IncrementGlobalOnceEx("GLOBALEvil_Thorp_1","GLOBALGood",-1)
SetGlobal("Barsh_Abishai","GLOBAL",3)
~ JOURNAL #67302 /* ~토프는 아비샤이는 마법의 무기나 마법으로만 해칠 수가 있다는 사실을 모르는 것 같다. 나는 그에게 경고를 해줄 수도 있었다... 하지만 뭐 나하곤 상관없는 일이다. 재미있는 싸움이 될지도 모르겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #51266 /* ~그는 우려하는 표정으로 당신을 쳐다본다. "마법 필요해? 어떻게 알아?"~ */
  IF ~~ THEN REPLY #51267 /* ~"여러 사람들에게 물어보았소, 토프. 그리고 그것이 내가 그들로부터 들은 말이오."~ */ GOTO 17
  IF ~~ THEN REPLY #51268 /* ~"나는 잔씨아와 얘기를 했소. 그녀가 내게 말해주었소."~ */ GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51269 /* ~"토프 마법없어. 친구들도 마법없어. 아비샤이랑 싸우면 우리 죽어..," 그는 한숨을 쉰다. 토프는 뛰어난 전사 아냐. 잔시아 사과 안 받아 줄 거야..."~ */
  IF ~~ THEN REPLY #51270 /* ~"당신은 귀부인의 명예를 위해 목숨을 내걸 각오를 했소, 토프. 오직 뛰어난 전사만이 그런 일을 할 수가 있소.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51271 /* ~그는 잠시 당신을 멍하니 쳐다보더니 환하게 웃는다. "정말? 토프와 친구들은 이제 뛰어난 전사야?~ */
  IF ~~ THEN REPLY #51272 /* ~"그렇소. 잔씨아의 명예에 대한 문제는 해결되었으며 사과는 받아들여졌다고 생각해도 좋소."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 22.0
  SAY #51273 /* ~"토프는 감사해. 당신 토프 목숨 구했어. 친구들 목숨 구했어." 그는 다른 토콜라들에게로 돌아서서 급하게 얘기를 한다. 잠시 후 세 토콜라 모두 당신에게 고개를 숙이고 각각 동전이 담긴 작은 주머니 하나씩을 당신에게 준다.~ */
  IF ~~ THEN REPLY #51274 /* ~"고맙소."~ */ DO ~GiveGoldForce(600)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51275 /* ~그는 미소짓는다. "당신 좋은 친구. 당신 자격 있어."~ */
  IF ~~ THEN REPLY #51277 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY #51278 /* ~그는 처음에는 혼란스러워하나 차츰 상황을 파악한다. "잔시아는 토프를 속이려고 했어... 그녀는 거짓말 했어, 토프와 친구들 죽이려고..."~ */
  IF ~~ THEN REPLY #51279 /* ~"불행히도 그런 것 같소, 토프."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #51280 /* ~그는 고개를 끄덕인다. "잔시아 사과받을 자격 없어. 이제 토프 그녀에게 진 빚 없어."~ */
  IF ~~ THEN REPLY #51281 /* ~"그렇소, 당신에게는 이제 아무런 빚도 없소."~ */ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #51282 /* ~토콜라 토프가 보인다. 당신이 다가가자 그는 친근하게 웃는다. "작은 친구가 돌아왔어! 토프에게 뭘 원하지?"~ */
  IF ~~ THEN REPLY #51283 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51284 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #51285 /* ~토콜라 토프가 보인다. 당신이 다가가자 그는 친근하게 웃는다. "작은 친구가 돌아왔어! 뭘 원하지?"~ */
  IF ~~ THEN REPLY #66163 /* ~"아무 것도 아니오. 당신과 아비샤이 사이의 영광스런 전투를 기다리고 있을 뿐이오."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #63465 /* ~토프는 우레 같은 웃음소리를 내며 자기 가슴을 주먹으로 치기 시작한다. "토프 강한 전사! 토프 곧 탁월한 전사." 그는 진정하고는 삼각한 표정으로 당신을 본다. "그럼 귀부인 토프 실수 용서해 줄 거야."~ */
  IF ~~ THEN REPLY #63466 /* ~"안녕히 계시오, 토프."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 26 // from:
  SAY #63467 /* ~토콜라 토프가 보인다. 당신이 다가가자 그는 친근하게 웃는다. "작은 친구가 돌아왔어! 토프에게 뭘 원하지?"그는 따뜻한 미소를 짓는다. "토프는 당신이 내 목숨 구해준 것 잊지 않아."~ */
  IF ~~ THEN REPLY #66164 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Kill_Special_Abashai_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #66165 /* ~토콜라 토프가 보인다. 당신이 다가가자 그는 친근하게 웃는다. "토프 작은 친구에게 감사해! 당신 토프 도왔어!"~ */
  IF ~~ THEN REPLY #66166 /* ~"천만의 말씀이오, 토프. 안녕히 계시오."~ */ JOURNAL #67303 /* ~때때로 난 내 자신에 대해 놀란다. 나는 토프와 그의 친구들을 동정하여 그들이 아비샤이를 죽이는 것을 도와주었다. 뭐라고 해야 할까... 잠시 약점을 드러낸 것인가?~ */ EXIT
END
