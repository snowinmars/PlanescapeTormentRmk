// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~이 스켈레톤은 고개를 저으며 혼자서 낄낄 웃고 있다. 그는 때때로 실없이 웃거나 코웃음을 치는데, 그 때마다 뼈만 남은 손을 입에 가져다대 스스로를 제지하곤 한다. 매우 오래된 해골이라 뼈에 살은 전혀 남아 있지 않다... 단지 염색한 넝마 몇 조각을 걸치고 있을 뿐이다. ~ */
  IF ~~ THEN REPLY #20356 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~그를 무시하고 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~"안녕하시오!" 그는 낄낄 웃는데, 그가 숨을 내쉴 때마다 먼지도 함께 나온다., ~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~"나는 당신이 어려운 수수께끼를 낸 것으로 알고 있소." ~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~"당신 수수께끼들 중 하나에 도전하고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~"질문이라면 다른 사람에게 하시오, 나는 당신 질문을 들어줄 생각이 없으니까." 그는 입을 손으로 막고 조롱하듯 낄낄 웃는다. "매우 무례한 일이라는 건 알지만 부디 용서해 주기 바라오."~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~"나는 당신이 어려운 수수께끼를 낸 것으로 알고 있소." ~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~"당신 수수께끼들 중 하나에 도전하고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~"좋소, 다른 사람을 찾아보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~그는 조롱하듯 킥킥 웃는다. "아닐 걸!" 당신의 표정을 보자 그는 이빨을 딱딱거리며 한층 크게 웃는다.~ */
  IF ~~ THEN REPLY #20365 /* ~"그럼 그 수수께끼는 어떤 것이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~진실: "말하지 않으면 당신을 산산조각내고 말겠소!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~허풍: "말하지 않으면 당신을 산산조각내고 말겠소!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~웃음이 갑자기 멈춘다. "흥!" 스켈레톤은 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #20370 /* ~떠난다.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~그는 낄낄 웃으며 고개를 끄덕인다. "듣고 싶소?"~ */
  IF ~~ THEN REPLY #20371 /* ~"그렇소."~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~"아니, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~"에헴! 자, 영어에서 '-GRY'로 끝나는 단어들을 생각해보시오. 그 중 둘은 'angry'와 'hungry'요. 공용어(the Common Tongue)에는 세 단어만 있소... 세 번째 단어는 무엇이오? 그 단어는 일상적으로 쓰이는 단어요. 답은 내가 한 말 중에 있으니 귀를 기울여 들었다면 맞출 수 있을 것이오."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~"물론 답은 그 문장 안에 있소. 그건 'tongue'요."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~"그건... 어... 흠."~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~"으아! 어떻게 알았소?"~ */
  IF ~~ THEN REPLY #20376 /* ~"처음 두 문장은 아무런 관계도 없소. 당신을 속이기 위해 있을 뿐이오. 기억하시오, 영어에서 공용어(the-Common-Tongue)란 말은 세 단어로 구성되어 있소 . 세 번째 단어는 'tongue'요."~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~한바탕 웃고 떠난다.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~"아, 트롤이 떠나는군! 어쩔 수 없지. 다른 사람에게 답을 가르쳐 주지만 마시오. 적어도 그건 약속해 주겠소? ~ */
  IF ~~ THEN REPLY #20378 /* ~"말해서 안될 이유는 뭐요?"~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~"물론이오. 말하지 않겠다고 약속하리다. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~"난 아무 것도 약속할 수 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~"왜냐하면 나는 그들이 서서 그 수수께끼를 풀려고 영원히 고민하는 것을 보는 것을 즐기기 때문이오." 그는 뼈만 남은 손을 입에다 가져다대고 사악하게 웃는다. "그래, 약속해 주겠소?"~ */
  IF ~~ THEN REPLY #20381 /* ~"물론이오. 말하지 않겠다고 약속하오. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~"난 아무 것도 약속할 수 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~"기억하시오..." 그는 잠시 멈추고 낄낄 웃는다. "다른 사람에게 답을 가르쳐 주지 마시오!"~ */
  IF ~~ THEN REPLY #20383 /* ~"알았소, 알았소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~"악당! 내 오락을 망치다니! 베이터에나 떨어지라고! 만약 내게 침이 있었다면 그대에게 뱉었을 텐데! 흥!" 스켈레톤은 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #20384 /* ~떠난다.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~"기다리시오! 다른 사람에게 답을 가르쳐 주지 마시오. 적어도 그건 약속해 주겠소? ~ */
  IF ~~ THEN REPLY #20385 /* ~"말해서 안될 이유는 뭐요?"~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~"물론이오. 말하지 않겠다고 약속하리다. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~"난 아무 것도 약속할 수 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~스켈레톤은 당신을 조롱하며 발작적으로 웃는다. 그는 뼈만 남은 손가락으로 당신을 가리키며, 있지도 않는 배를 잡고 깔깔 웃어댄다. ~ */
  IF ~~ THEN REPLY #20388 /* ~"좋소, 답은 뭐요?"~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~"헤. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~"어림없지, 어림없어!" 당신의 표정을 보자 그는 이빨을 딱딱거리며 한층 크게 웃는다.~ */
  IF ~~ THEN REPLY #20390 /* ~"만약 내가 당신을 수수께끼로 이긴다면? 그럼 말을 해주겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~진실: "말하지 않으면 당신을 산산조각내고 말겠소!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~허풍: "말하지 않으면 당신을 산산조각내고 말겠소!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~그는 갑자기 웃음을 멈춘다. "이건 뭐지?" 그는 자신의 해골을 한 손으로 받친다. "나에 대한 도전인가? 그래... 좋소... 어디 해보시오! 하지만 만약 그대가 지거나, 도중에 포기한다면, 나는 그대와 다시는 얘기를 하지 않을 것이오."~ */
  IF ~~ THEN REPLY #20394 /* ~"좋소. 시작합시다."~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~그는 열성적으로 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #20396 /* ~"흠... 순금으로 만든 액면가 동전 백 닢의 금화 1 파운드와, 역시 순금으로 만든 액면가 동전 이백 닢의 금화 반 파운드 중 어느 쪽이 더 값이 나가오? ~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~"쉬워, 너무 쉽소! 금 한 파운드는 *언제나* 반 파운드보다 더 가치가 있소! 어리석군, 어리석도다!" 그는 낄낄 웃는다. ~ */
  IF ~~ THEN REPLY #20398 /* ~"좋소. 당신 차례요."~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~스켈레톤은 구부리고 앉아 먼지 위에 간단한 얼굴을 그린다. 그것을 가리키며 말한다. "내게 형제나 아저씨는 없소, 하지만 그 남자의 아버지는 내 아버지의 아들이오. 그는 누구요?"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~"그는 당신 아들이오."~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~"모르... 겠소."~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~"흥! 당신 차례요."~ */
  IF ~~ THEN REPLY #20403 /* ~"생산자는 그것을 원하지 않고, 구매자는 그것을 사용하지 않으며, 사용자는 그것을 보지 않소. 그건 무엇이오?"~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~스켈레톤은 어린애처럼 킥킥 웃는다. "옳지 않소, 옳지 않아! 답은 '관'이오, 하지만 난 내 관을 보았소!"~ */
  IF ~~ THEN REPLY #20405 /* ~"좋소. 다시 당신 차례요."~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~"가장 위대한 인간의 현자들조차 틀리게 발음하는 단어는?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~"흠. '틀리게.'~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~"모르... 겠소."~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~그는 당신에게 주먹을 흔들어댄다. "이런 염병할! 문제를 내시오."~ */
  IF ~~ THEN REPLY #20410 /* ~"그들은 밤에는 굳이 가져오지 않아도 나타나며, 낮에는 누가 훔쳐가지 않아도 사라진다."~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~"어... 음... 아... 별! 별이오, 헤헤!"~ */
  IF ~~ THEN REPLY #20412 /* ~"물론이오. 물으시오."~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~스켈레톤은 자신의 손가락 마디를 비틀어 뚝뚝 소리를 낸다. "나는 존재한 적이 없으며, 아무도 날 본 적이 없고, 또 보지도 못할 것이오. 하지만 나는 이 신성한 홀에서 살고 숨쉴 모든 이들의 친구요."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~"답은... 아! '내일.'"~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~"모르... 겠소."~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~"와아! 그래, 내일. 그럼 문제를 내시오."~ */
  IF ~~ THEN REPLY #20417 /* ~"그러리다. 영원의 시작이자 시공의 끝은 무엇이오?"~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~스켈레톤은 조롱하듯 깔깔대기 시작한다, 그러나 그는 곧 갑자기 웃음을 멈춘다. "아... 어. 이런."~ */
  IF ~~ THEN REPLY #20419 /* ~"자? 당신의 답을 들려주시오."~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~그를 조롱하며 웃는다.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~참을성있게 기다린다.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~스켈레톤은 고개를 숙인다. "모르겠소..."~ */
  IF ~~ THEN REPLY #20422 /* ~"내게 당신의 첫 번째 수수께끼의 답을 내게 주면 나도 당신에게 내 답을 가르쳐 주겠소."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~그는 고개를 끄덕인다. "처음 두 문장은 아무런 관계도 없소. 그대를 속이기 위해 있을 뿐이오. 기억하시오, 영어에서 공용어(the-Common-Tongue)란 말은 세 단어로 구성되어 있소. 세 번째 단어는 'tongue'요." 그는 크게 한숨을 쉰다. "그대의 답은?"~ */
  IF ~~ THEN REPLY #20423 /* ~"자음 'ㅇ'이오."~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~"어림업지, 어림없어. 안녕히 계시오."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~"헤... 흥미롭군. 그래, 답은 뭐요? 아... 기다리시오! 어디로 가는 거요?"~ */
  IF ~~ THEN REPLY #20425 /* ~"좋소. 자음 'ㅇ'이오."~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~한바탕 웃고 떠난다.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~스켈레톤은 크게 웃으며 몸부림친다. 그의 웃음소리는 지하 묘지 안에서 울려 퍼지고, 그는 자신의 두개골을 즐거운 듯 돌리며 시종일관 당신에게 이빨을 딱딱거린다. ~ */
  IF ~~ THEN REPLY #20428 /* ~떠난다.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~스켈레톤은 아무리 말을 걸어도 대답할 생각을 하지 않는다. ~ */
  IF ~~ THEN REPLY #48940 /* ~떠난다.~ */ EXIT
END
