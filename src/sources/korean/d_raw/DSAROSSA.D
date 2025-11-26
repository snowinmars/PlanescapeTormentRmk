// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~"당신은 나를 위협하고 아무런 대가도 치르지 않을 거라고 생각하나요? 얼간이 같으니!" 그녀는 세 음절의 비밀스러운 주문을 외운다, 그러자 당신은 당신 가슴의 일부가 찢겨져 나간 듯한 느낌을 받는다. 그리고 그녀는 소리를 지른다. "경비병! 경비병!"~ */
  IF ~~ THEN REPLY #8416 /* ~그녀를 공격한다.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~떠난다.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~"떠나는 것이 좋을 거예요. 우리 경비병들과 싸운다고 해서 당신에게 도움이 될 건 없으니까. 떠나세요."~ */
  IF ~~ THEN REPLY #8419 /* ~"내 질문에 좀 대답해주었으면 하오."~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~"내 질문에 대답하지 않으면 그 대가를 치를 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~"경비병들이 당신을 찾고 있는데 당신의 질문에 대답해줄 수는 없어요. 그게 전부예요."~ */
  IF ~~ THEN REPLY #8423 /* ~"내 질문에 대답하지 않으면 그 대가를 치를 거다, 이 계집아."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~"그래, 내게 사과를 하러 왔나요, 아니면 계속 불쾌한 행동을 취할 건가요?"~ */
  IF ~~ THEN REPLY #8426 /* ~"난 당신을 죽이러 왔소."~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~"난 당신에게 사과하러 왔소, 사롯사."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~"난 당신에게 사과하러 왔소, 사롯사."~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~"난 당신에게 사과하러 왔소, 사롯사."~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~"어느 쪽도 아니오. 지금은 이만 실례하겠소."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~"내 동생이 형장의 이슬로 사라질 날만을 기다리게 만들어 놓고 감히 내게 말을 걸다니! 난 당신이 우리 가족에게 준 고통의 대가로 당신 영혼으로부터 의지를 빼앗아 가겠어요."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~"사로스가 당신 동생이었소?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~"미안하오, 사롯사. 그는 유죄였고 어떠한 혈연관계도 그것을 바꿀 순 없소."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~"사로스가 당신 동생이었소?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~"미안하오, 사롯사. 그는 유죄였고 어떠한 혈연관계도 그것을 바꿀 순 없소."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~"그와 틸돈은 모두 유죄였소, 비록 그 죄목은 서로 달랐지만. 두 사람 모두 법의 심판을 받아야 했소."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~"그는 내 동생이에요. 만약 당신이 그 사실을 알았다면 다르게 행동했겠어요?"~ */
  IF ~~ THEN REPLY #8439 /* ~진실: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~"아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~"당신은 정말로 그렇게 생각하는군요, 그렇지 않나요? 나는 내 동생을 사랑해요, 하지만 당신은 자기 자신에게 정직하군요. 나도 그걸 탓할 수는 없어요."~ */
  IF ~~ THEN REPLY #8443 /* ~"좋소. 그럼 내 질문에 좀 대답해주겠소?"~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~"그럼 당신이 훔친 내 일부를 돌려주겠소?"~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~"그럼 당신이 훔친 내 일부를 돌려주겠소?"~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~"그럼 당신이 훔친 내 일부를 돌려주겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~진실: "당신에게 고통을 준 데 대해 사과하오, 부인."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~거짓말: "당신에게 고통을 준 데 대해 사과하오, 부인."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~거짓말: "당신에게 고통을 준 데 대해 사과하오, 부인."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~거짓말: "당신에게 고통을 준 데 대해 사과하오, 부인."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~거짓말: "당신에게 고통을 준 데 대해 사과하오, 부인."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~"당신은 정말로 자신이 다른 사람의 마음을 읽을 수 있는 자를 속일 수 있다고 생각하나요? 어리석군요." 그녀는 당신 주변의 공기를 뒤틀리게 만드는 듯한 한 음절의 주문을 외운다, 그리고 그것은 당신의 일부를 떼어내 에테르 속으로 던져 넣는다. "꺼져요, 흉터투성이 육신 같으니. 그리고 다시는 내게 말을 걸지 말아요."~ */
  IF ~~ THEN REPLY #8451 /* ~"다시 오겠소. 당신은 그 짓에 대한 대가를 치르게 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~"잘 있으시오, 사롯사. 나는 이 일을 결코 잊지 않을 것이오."~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~그녀는 꿈꾸는 것 같은 눈으로 당신의 오감을 초월한 무언가를 보는 듯하다. "당신을 용서하겠어요. 하지만 당신이 하는 모든 행동에는 당신이 알건 모르건 그에 상응하는 결과가 따르며, 당신도 모르는 사이에 남에게 고통을 줄 수가 있다는 사실을 잊지 마세요. 내 말을 명심하도록 하세요."~ */
  IF ~~ THEN REPLY #8454 /* ~"고맙소. 내 질문에 좀 대답해줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~"그는 내 동생이었어요, 그리고 이제 내 아버지도 죽으려고 하고 있어요.나는 당신의 가슴이 그것이 세상에 그토록 심한 고통을 초래한다는 사실을 알고도 견딜 수 있기를 바래요. "~ */
  IF ~~ THEN REPLY #8457 /* ~"단 한 사람 때문에 법에 대한 내 믿음을 저버릴 순 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~"물론 그럴 수 있소. 난 전에 한 적이 있고 다시 하게 될 가능성도 높소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~"만약 그가 당신 동생인 걸 알았다면 아마 그를 연루시키지 않았을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~"나도 그런 생각에 마음이 끄리는 건 아니지만, 그러한 고통은 세상을 보다 나은 곳으로 만들기 위해 종종 필요하오. 그것이 가져다 주는 혜택을 즉시 느킬 수는 없으나, 일단 고통이 가시고 나면 그 진가를 알 수 있게 되오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~"그럼 사과하세요."~ */
  IF ~~ THEN REPLY #8462 /* ~진실: "내겐 당신에게 그런 식으로 말할 권리가 없었소. 내 말과 행동은 성급했고 생각이 모자랐소. 앞으로는 자제를 하도록 노력을 기울이겠소."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~거짓말: "내겐 당신에게 그런 식으로 말할 권리가 없었소. 내 말과 행동은 성급했고 생각이 모자랐소. 앞으로는 자제를 하도록 노력을 기울이겠소."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~"아니."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~"내게 거짓말을 할 생각은 말아요, 반인, 아니면 내가 당신 육신으로부터 삶 그 자체를 박탈할 테니." 그녀는 또 한 음절의 뒤틀린 주문을 내뱉는다, 그리고 당신의 당신 영혼의 또 다른 일부가 뜯겨 나감에 따라 비틀거린다. "이제 떠나세요. 당신과는 얘기하고 싶지 않아요."~ */
  IF ~~ THEN REPLY #8466 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~"만약 당신이 아무런 후회도 하지 않는다면 나도 마찬가지예요. 당장 꺼져요."~ */
  IF ~~ THEN REPLY #8469 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~"그럼 사과하세요."~ */
  IF ~~ THEN REPLY #8472 /* ~진실: "내겐 당신에게 그런 식으로 말할 권리가 없었소. 내 말과 행동은 성급했고 생각이 모자랐소. 앞으로는 자제를 하도록 노력을 기울이겠소."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~거짓말: "내겐 당신에게 그런 식으로 말할 권리가 없었소. 내 말과 행동은 성급했고 생각이 모자랐소. 앞으로는 자제를 하도록 노력을 기울이겠소."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~"아니."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~"그럼 사과하세요."~ */
  IF ~~ THEN REPLY #8476 /* ~진실: "내겐 당신에게 그런 식으로 말할 권리가 없었소. 내 말과 행동은 성급했고 생각이 모자랐소. 앞으로는 자제를 하도록 노력을 기울이겠소."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~거짓말: "내겐 당신에게 그런 식으로 말할 권리가 없었소. 내 말과 행동은 성급했고 생각이 모자랐소. 앞으로는 자제를 하도록 노력을 기울이겠소."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~"아니."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~그녀의 다시 그러한 음절들을 영창한다. 그러자 당신은 다시 온전해짐을 느낀다 - 마치 누가 당신의 본질적 존재에 구성 요소들을 더한 것처럼. 당신의 "당신은 이제 해방되었어요, 반인. 내게 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #8480 /* ~"왜 나를 계속 반인이라고 부르는 거요?"~ */ JOURNAL #67281 /* ~대 주조소에 있는 사로사라는 마녀는 나를 반인이라고 불렀는데, 이는 그녀가 내 영혼을 볼 수 없었기 때문이었다. 내게는 아예 영혼이 없는 것인지, 아니면 내가 그런 것을 초월한 경지에 이르렀는지는 그녀도 알지를 못하나, 여하튼 그녀는 나를 반인이라 부를 것이다. ~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~"나는 내 질문들에 대한 답을 원할 뿐이오."~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~"당신 동생은 내게 당신에게는 특수한 재능이 있다고 말했소."~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~"당신은 자기 자신말고는 누구에게도 경의를 표할 줄 모르는군요? 나는 아무리 재능있는 사람이라 할지라도 그런 태도를 취하는 건 견딜 수 없어요. 잘 가세요, 반인. 경비병!"~ */
  IF ~~ THEN REPLY #8489 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~떠난다.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~"내가 당신을 반인이라 부르는 건 내게 당신 영혼이 보이지 않기 때문이에요. 내가 지금까지 만난 인간들의 영혼은 내게 빛나는 불꽃이나 그을린 재로 보여요. 하지만 당신으로부터는 아무 것도 볼 수가 없어요. 내가 당신을 반인이라 부르는 건 다른 사람들과는 달리 당신 영혼이 내게 보이지 않기 때문이에요. 이것이 당신에게 영원이 없기 때문인지, 아니면 당신이 초월자이기 때문인지는 나도 알 수가 없어요. 어쨌든 당신은 반인이에요. 당신에게 없는 나머지 반이 무엇인지는 나도 몰라요."~ */
  IF ~~ THEN REPLY #8492 /* ~"알겠소. 그럼 내 다른 질문들에도 좀 대답을 해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~"어떤 답을 원하나요, 반인?"~ */
  IF ~~ THEN REPLY #8495 /* ~"왜 나를 반인이라고 부르는 거요?"~ */ JOURNAL #67281 /* ~대 주조소에 있는 사로사라는 마녀는 나를 반인이라고 불렀는데, 이는 그녀가 내 영혼을 볼 수 없었기 때문이었다. 내게는 아예 영혼이 없는 것인지, 아니면 내가 그런 것을 초월한 경지에 이르렀는지는 그녀도 알지를 못하나, 여하튼 그녀는 나를 반인이라 부를 것이다. ~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~"나는 당신과 당신 아버지에 대해 얘기해야만 하오."~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~"당신은 누구요?"~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~"당신 가족에 대해 얘기해주시오."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~"당신 동생은 내게 당신에게는 특수한 재능이 있다고 말했소."~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~"내 동생 사로스는 어릴 적부터 주조소에서 자랐지만, 불행히도 그는 근원의 신봉자의 철학을 진심으로 받아들이지 않은 것 같아요. 내 아버지는 이 곳의 간부예요, 그리고 그는 보통 사람들은 상상조차 할 수 없는 장소들까지도 여행을 했어요."~ */
  IF ~~ THEN REPLY #8505 /* ~"당신 동생에 대해 더 얘기해주시오."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~"알겠소. 내 질문에 더 대답해줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~그녀의 목소리에서 비통함이 느껴진다. "내 동생은 당신도 알다시피 형장의 이슬로 사라질 날만 기다리고 있어요. 그리고 당신이 내 아버지에 대해서 아는지는 모르겠으나, 그는 다원 우주의 여러 장소들을 여행하며 대부분의 인간들은 감히 이해할 수조차 없는 의미를 추구하고 있어요."~ */
  IF ~~ THEN REPLY #8512 /* ~"당신 동생에 대해 더 얘기해주시오."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~"알겠소. 내 질문에 더 대답해줄 수 있겠소?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~"내 동생 사로스가 경험에 비해서는 현명한 청년이었으면 좋겠어요. 내 아버지는 이 곳의 간부예요, 그리고 그는 보통 사람들은 상상조차 할 수 없는 장소들까지도 여행을 했어요."~ */
  IF ~~ THEN REPLY #8518 /* ~"당신 동생에 대해 더 얘기해주시오."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~"당신 아버지에 대해 더 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~"알겠소. 내 질문에 더 대답해줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~"나도 내가 어떻게 그런 능력을 얻게 되었는지는 몰라요. 그 능력은 늘 나의 일부였어요. 난 내 전생과 현생에 대한 믿음이 내게 인간의 본질에 대한 특별한 통찰력을 주었을 거라고 짐작할 뿐이에요. 내게는 모든 존재 안에 내재된 가능성의 일부를 볼 수 있는 능력이 있어요. 나는 어떤 인간의 본질을 나타내는 진정한 이름을 읽고, 또 그것을 약간 잘못 발음함으로서 그 가능성의 특성을 바꿀 수가 있고, 결과적으로 그의 본질조차 바꿀 수가 있어요."~ */
  IF ~~ THEN REPLY #8525 /* ~"내게 이 능력을 가르쳐 줄 수 있겠소?"~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~"당신을 날 변화시킬 수 있소?"~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~"흥미롭군. 다른 질문들도 좀 대답해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~"우주에는 정말 기이한 일도 많소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~"사로스는 경솔하고 충동적인 청년이에요. 그는 늘 자신이 세상의 다른 누구보다 못하지 않다는 것을 입증하지 못해 안절부절하고 있고, 젊은 혈기로 넘치고 있어요. 내 생각에 그는 자신이 갓즈맨보다는 센세이트라고 느끼고 있는 것 같아요, 그리고 이는 센세이트가 시길의 모든 당파들 중에서 가장 철없는 당파라는 내 믿음을 입증해 주고 있어요."~ */
  IF ~~ THEN REPLY #8530 /* ~"왜 그들이 가장 미숙하다는 거요?"~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~"당신 아버지에 대해 얘기해주시오."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~"당신 아버지에 대해 얘기해주시오."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~"당신 아버지에 대해 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~"괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~"고맙소... 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~"내 아버지는 근원의 신봉자의 간부들 중 한 사람이에요, 그리고 그는 지금까지 살아오면서 우리는 이 세상에 어떤 목적을 지니고 태어났다고 굳게 믿어 왔어요. 나는 아직도 그가 그 신념과 자신의 자녀들이 자신을 사랑한다는 사실을 잊지 않고 있기를 바랄 뿐이에요."~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~"그럼 당신 희망을 그에게 전하도록 하겠소. 내 다른 질문에도 대답해줄 수 있겠소?"~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~"그는 좋은 사람인 것 같소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~"그는 좋은 사람인 것 같소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~"그럼 당신 희망을 그에게 전하도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~"당신 덕분에 내 아버지 산도즈는 살게 되었어요. 나는 그에게 그토록 심한 정신적 상처를 입한 존재가 그에 대한 응분의 대가를 치르길 바랄 뿐이에요. 나는 그가 스스로 그렇게 되었다고는 믿을 수가 없어요. 그 밖에 내게 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #8542 /* ~"내 질문에 좀 대답해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~"내 아버지는 돌아가셨어요."~ */
  IF ~~ THEN REPLY #8545 /* ~"좋소. 다른 질문들도 좀 대답해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~"어... 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~"싫어요. 그는 늘 충동적이었고, 이 잔인한 우주에 대해 자신의 용기를 입증하고 싶어했죠 - 하지만 이제 그는 그럴 수가 없어요. 나는 여기서 누굴 탓하지도 않겠지만 그에 대해서 얘기하고 싶지도 않아요. 만약 더 알고 싶다면 나중에 다시 와서 내게 얘기하도록 하세요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #8548 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~"나는 당신을 바꿀 수는 있지만 당신에게 가르쳐 줄 수는 없어요. 그것은 장님에게 색에 대해 가르치거나, 귀머거리에게 음에 대해 가르치려는 것과 마찬가지예요. 하지만 만약 대가만 합당하다면 당신을 변화시켜 줄 수는 있어요."~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~"그 대가는 무엇이오?"~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~"그건 별로 공평하지 못한 것 같소."~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~"관두시오. 다른 질문들도 좀 대답해주시오."~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~"왜 그들이 가장 철이 없느냐고요? 그건 그들이 어린이들처럼 이 세상에는 시각, 청각, 미각, 촉각, 그리고 후각으로 느낄 수 없는 것들도 존재한다는 사실을 이해하지 못하기 때문이에요. 당신 주변을 둘러보세요. 당신은 아웃터 플레인에 있어요. 이 곳은 믿음이 실체화한 곳이에요. 하지만 그렇다고 해서 이 단단한 듯한 실체가 단순한 오감으로 이해될 수 있다는 것을 뜻하지는 않아요. 이것은 믿음이에요, 그리고 어떠한 단순한 물리적 실체도 이에 견줄 수는 없어요."~ */
  IF ~~ THEN REPLY #8555 /* ~"알겠소. 다른 사안들에 대해 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~"내게 말하세요. 당신은 갓즈맨의 신념에 찬동하나요?~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~진실: "그렇소."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~내가 마녀 사롯사에게 갓즈맨에 대한 내 믿음에 대해 얘기하자, 그녀는 내게 통찰력을 주었다. 어쩐지 나는 더 현명해진 것 같은 느낌이 든다...~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~거짓말: "그렇소."~ */ JOURNAL #67282 /* ~나는 마녀 사롯사에게 갓즈맨에 대한 내 믿음에 대해 거짓말을 했다. 그러자 그 구미호는 단 한 마디의 말로 나로부터 힘을 앗아갔다. ~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~거짓말: "그렇소."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~거짓말: "그렇소."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~거짓말: "그렇소."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~"아니오."~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~"당신에게 얘기할 만큼 충분히 알고 있지 못하오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~"그래요. 공평하지 않아요. 하지만 이건 내게 주어진 능력이자 시험이에요, 그리고 내 능력을 가지고 뭘 하는가는 내 자유예요. 자, 내게 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #8563 /* ~"내 질문에 대답해주었으면 하오."~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~"적어도 지금은 당신이 도울 일이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~"그렇다면 나는 당신과 내 재능을 공유하는 것을 거리끼지 않겠어요." 그녀는 당신의 본질을 흔들어 놓는 듯한 비밀스런 음절을 발음한다, 그러자 당신은 어쩐지 강해진 것 같은 느낌을 받는다.~ */
  IF ~~ THEN REPLY #8566 /* ~"어떻게 그런 일을 한 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~"고맙소! 내 질문에 좀 대답해주겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~"당신은 갓즈맨의 철학이 마음에 들지 않나요? 왜죠?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~"내가 이미 더스트맨에 가입했기 때문이오."~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~"내가 이미 센세이트에 가입했기 때문이오."~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~"내가 이미 아나키스트에 가입했기 때문이오."~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~"내 생각에 그건 더스트맨의 철학보다 더 나쁜 것 같소. 적어도 그들은 설교를 하려고 하지는 않소 - 그들은 받아들이고 앞으로 나가오."~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~"나는 아직도 생각 중이오. 날 설득시켜 보시오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~"우리에 대해 더 배우도록 하세요. 그리고 우리 당파의 진정한 일원이 되세요. 아직 그러지 않았다면 가서 두리안 가의 켈도와 얘기하세요. 그는 신규 당원 모집을 책임지고 있는 간부예요. 그는 이 곳의 대강당에 있어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #8576 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~"그럼 나는 더 이상 당신을 당신의 그릇된 믿음으로부터 깨우쳐 주려고 하지 않겠어요. 내게 또 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #8578 /* ~"내 질문에 좀 대답을 해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~젊은 여인이 보인다. 당신이 그녀에게 다가가자 그녀는 당신을 정면으로 쳐다본다. 당신은 그녀가 단지 당신의 눈의 색깔만을 살펴보는 것이 아니라는 불안한 느낌을 받는다. 그녀의 시선은 그보다 훨씬 깊숙한 곳까지 꿰뚫어 보고 있는 것 같다. "안녕하세요, 이방인."~ */
  IF ~~ THEN REPLY #8581 /* ~"좋소. 내 질문에 좀 대답을 해주시오."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~"당신이 사롯사요? 난 당신과 당신 아버지에 대해 얘기해야 하오."~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~"안녕하세요, 상처 입은 자. 내게 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #8585 /* ~"대답."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~"나는 당신과 당신 아버지에 대해 얘기해야만 하오."~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~"나는 사롯사로 갓즈맨의 간부들 중 하나인 산도즈의 딸이에요."~ */
  IF ~~ THEN REPLY #8589 /* ~"내 질문에 대답을 좀 해줄 수 있겠소?"~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~"나는 당신과 당신 아버지에 대해 얘기해야만 하오."~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~"알겠소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~"그가 어쨌다는 거죠?"~ */
  IF ~~ THEN REPLY #8593 /* ~"그는 자신의 탑 안에 들어가 문을 걸어잠그고 자살하겠다고 위협하고 있소. 어떻게 하면 그가 그러는 것을 막을 수 있는지 내게 얘기해 줄 수 있겠소?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~"거짓말이에요! 내 아버지는 여행 중이에요! 그는 적어도 당분간은 돌아오지 않을 예정이에요!"~ */
  IF ~~ THEN REPLY #8595 /* ~"만약 날 못 믿겠으면 켈도와 얘기하시오. 당신 아버지가 살기 위해서는 당신 도움이 필요하오.~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~"날 믿지 못하겠소? 좋소. 그에 대한 응보는 당신 몫이 될 테니까. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~"그렇게 하도록 하겠어요." 그녀는 잠시 멈추고 당신을 강렬한 시선으로 바라본다. "당신은 진실을 말하고 있군요, 그렇지 않나요? 당신의 가슴 속에서는 이 문제에 대한 일체의 기만도 보이지 않는군요. 좋아요. 이것이 내가 내 아버지에게 전하고 싶은 말이에요: 모든 삶은 시험이에요. 과정을 무시하고 마지막 단계로 직접 건너 뛸 수는 없어요. 그건 답이 아니에요. 오직 둠즈가드와 더스트맨만이 절대적 쇠퇴를 신봉해요. 아버지는 항상 그들 경멸하지 않았었나요? 그걸 기억하세요.'"~ */
  IF ~~ THEN REPLY #8598 /* ~"메시지를 전하도록 하겠소. 하지만 당신에게 먼저 질문을 좀 하고 싶소."~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~"메시지를 전하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~"내 동생이 형장의 이슬로 사라질 날만을 기다리게 만들어 놓고 감히 내게 말을 걸다니! 난 당신이 우리 가족에게 준 고통의 대가로 당신 영혼으로부터 의지를 빼앗아 가겠어요."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~"사로스가 당신 동생이었소?"~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~"미안하오, 사롯사. 그는 유죄였고 어떠한 혈연관계도 그것을 바꿀 순 없소."~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~"사로스가 당신 동생이었소?"~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~"미안하오, 사롯사. 그는 유죄였고 어떠한 혈연관계도 그것을 바꿀 순 없소."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~"그와 틸돈은 모두 유죄였소, 비록 그 죄목은 서로 달랐지만. 두 사람 모두 법의 심판을 받아야 했소."~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~"난 그럴 수가 없소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~"나는 이미 당신의 마음을 바꿀 말을 했어요. 당신의 다른 부분들도 그것을 따르는 방법을 배워야만 해요."~ */
  IF ~~ THEN REPLY #61303 /* ~"좋소. 그럼 날 위해 다른 질문들에 답해주시오..."~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~"안녕히 계시오."~ */ EXIT
END
