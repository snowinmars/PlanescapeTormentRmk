// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~이 스켈레톤은 혼잣말을 하다가 가끔씩 멈추고 머리를 긁는다. 매우 오래된 해골이라 뼈에 살은 전혀 남아 있지 않다... 단지 염색한 넝마 몇 조각을 걸치고 있을 뿐이다. ~ */
  IF ~~ THEN REPLY #20296 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~그는 고개를 끄덕여 답례하나 대답은 하지 않는다. ~ */
  IF ~~ THEN REPLY #20298 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~스켈레톤은 당신을 올려다보며 크게 낭패한 듯 투덜거린다. "지금은 곤란하오! 미안하오. 지금 나는 가장 끔찍한 수수께끼를 풀려고 하고 있으나 도저히 풀 수가 없소 !"~ */
  IF ~~ THEN REPLY #20300 /* ~"어떤 수수께끼요?"~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~그는 놀란 것 같다. "오? 한 번 해볼 생각이오?"~ */
  IF ~~ THEN REPLY #20302 /* ~"그래, 말해보시오."~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~"좋소. 이 수수께끼는 이 근처에 있는 익살광대 같은 놈이 낸 거요. 놈은 내게 답을 가르켜 주지 않으려 하고 있고, 때문에 난 *죽을* 지경이오."~ */
  IF ~~ THEN REPLY #20304 /* ~"그럼 말해 보시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~그는 고개를 끄덕인다. "영어에서 '-GRY'로 끝나는 단어들을 생각해보시오. 그 중 둘은 'angry'와 'hungry'요. 공용어(the Common Tongue)에는 세 단어만 있소... 세 번째 단어는 무엇이오? 그 단어는 일상적으로 쓰이는 단어요. 답은 내가 한 말 중에 있으니 귀를 기울여 들었다면 맞출 수 있을 것이오."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~"물론 답은 그 문장 안에 있소. 그건 'tongue'요."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~"그건... 어... 흠."~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~그는 놀란 듯하다. "뭐라고? 하지만..."~ */
  IF ~~ THEN REPLY #20308 /* ~"처음 두 문장은 아무런 관계도 없소. 당신을 속이기 위해 있을 뿐이오. 기억하시오, 영어에서 공용어(the-Common-Tongue)란 말은 세 단어로 구성되어 있소 . 세 번째 단어는 'tongue'요."~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~한바탕 웃고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~"그건... 그건... 오! 정말 악랄한 속임수로군! 뭐, 내겐 혀(tongue)도 없으니까!" 그는 잠시 멈추었다가 다시 웃는다. 그러자 그의 삐걱거리는 턱에서는 먼지가 소용돌이치듯 나온다. "그것 정말 멋지군. 고맙소!"~ */
  IF ~~ THEN REPLY #20310 /* ~"천만에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~"그대도 막힌 모양이군. 만약 답을 찾게 되면 내게도 가르켜 주시오... 그리고 그대가 내게 그 문제를 낸 잘난 체하는 얼간이로부터 답을 얻어낼 생각이라면 건투를 빌겠소!"~ */
  IF ~~ THEN REPLY #20311 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~스켈레톤은 당신을 올려다본다. ~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~"그렇소. 그건 'tongue'요."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~"그렇소, 하지만 당신에게는 답을 가르쳐 주지 않겠소."~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~거짓말: "어... 아니오. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~"아니오. 내게 그 수수께끼를 다시 들려주시오."~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~"그 수수께끼를 풀어준 데 대해 그대에게 다시 한 번 감사하오! 아마 내 '친구'는 그 일로 상당히 화가 나 있을 거요!" 그는 실컷 웃는다. ~ */
  IF ~~ THEN REPLY #20317 /* ~"천만에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~"하지만... 하지만 왜? 자! 제발 말해주시오!"~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~"좋소. 그건 'tongue'요."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~"좋소. 그건 'tongue'요."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~"난 말을 하지 않겠다고 약속했소."~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~"내가 그래야 할 이유라도 있소? 안녕히 계시오."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~그는 좌절감과 분노로 이를 간다. "흥! 그... 그... 머릿속에 든 거라고는 먼지뿐인 그 수다쟁이와 마찬가지로군! 그리고 *그대!* 내가 그대에게 감사할 것이라곤 아무 것도 없소!"~ */
  IF ~~ THEN REPLY #20322 /* ~"좋소. 그건 'tongue'요."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~"미안하오. 안녕히 계시오."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~스켈레톤은 팔짱을 끼고 한 마디도 하려고 하지 않는다. ~ */
  IF ~~ THEN REPLY #68087 /* ~떠난다.~ */ EXIT
END
