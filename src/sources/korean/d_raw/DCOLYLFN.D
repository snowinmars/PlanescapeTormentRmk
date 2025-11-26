// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~이 족제비처럼 생긴 사내는 쓰레기 더미 속을 마치 해어진 그림자처럼 어슬렁거리고 있다. 그는 당신을 눈치채지 못한 척 하고 있으나, 당신은 그가 당신을 몰래 훔쳐보고 있다는 것을 느낄 수가 있다. 갑자기 그는 당신에게 손짓한다. "쉿, 당신. 쉿! 그래!"~ */
  IF ~~ THEN REPLY #18506 /* ~그에게 다가간다.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~그를 무시하고 가던 길을 간다.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~이 족제비처럼 생긴 사내는 쓰레기 더미 속을 마치 해어진 그림자처럼 어슬렁거리고 있다. 당신과 모트를 보자 그는 손짓을 한다. "쉿쉿... 에이! 해골, 어디서 그 해골을 손에 넣었지, 에? 그건 내 해골이야! 내게 돌려줘!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~이 족제비처럼 생긴 사내는 쓰레기 더미 속을 마치 해어진 그림자처럼 어슬렁거리고 있다. 안나를 보자 그는 눈을 크게 뜬다. 그는 마치 먹을 것을 기대하기라도 하는 것처럼 자신의 누런 이빨 사이의 점액을 핥는다. "쉿... 에! 돈 좀 달라고, 예쁜 아가씨." 그는 자신의 더럽고 갈라진 입술을 핥는다. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~"에. 뭘 원하지?"~ */
  IF ~~ THEN REPLY #18511 /* ~"나는 정보를 얻으려 하고 있소..."~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~"에, 내 해골은 어때?" 그는 씨근거리면서 웃는데, 그 소리는 정말 끔찍하다.~ */
  IF ~~ THEN REPLY #18513 /* ~"나는 정보를 얻으려 하고 있소..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~"도둑! 이 더러운 사기꾼, 강도, 남의 물건에 함부로 손을 대고 훔치는 나쁜 놈! 해골을 내놔! 그건 내 꺼라고!"~ */
  IF ~~ THEN REPLY #18515 /* ~"이건 당신 해골이 아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~진실: "그래, 해골을 가져가시오."~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~그가 방심하면 즉시 공격한다: "그래, 해골을 가져가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~"이것이 당신 해골이라는 증거는 뭐요?"~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~진실: "만약 당신이 그 해골이 당신 것이라는 걸 입증할 수 있다면, 그것을 당신에게 주겠소. 그게 당연하니까."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~"내가 당신에게서 그 해골을 돈주고 사겠소. 좋소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~"당신은 누구요?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~"나보고 거짓말쟁이라고? 해골은 내 꺼라고!" 그는 눈알을 희번덕거리면서 잠시 중얼거린다. "이 도둑놈, 거짓말을 하다니... 널 죽일 거야."~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~"날 감히 건드리면 당신은 자신이 죽을 때까지의 짧은 순간 동안 후회하게 될 거요."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~"나라면 그러지 않겠소."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~"그래, 어디 한 번 해보시오. 그리고 어떻게 되는지 보시오."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~"날 감히 건드리면 당신은 자신이 죽을 때까지의 짧은 순간 동안 후회하게 될 거요."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~"나라면 그러지 않겠소."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~"그래, 어디 한 번 해보시오. 그리고 어떻게 되는지 보시오."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~그는 눈을 좁게 뜨고 당신을 바라본다. 그는 자신에게 승산이 있다고 확신하지 못하는 듯, 아무런 행동도 취하지 않고 중얼거리기만 한다. "내 해골. 넌 도둑놈인야. 날강도..."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~"꺼져, 이 잡종아."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~"꺼져, 이 잡종아."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~진실: "그래, 해골을 가져가시오."~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~그가 방심하면 즉시 공격한다: "그래, 해골을 가져가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~"이것이 당신 해골이라는 증거는 뭐요?"~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~진실: "만약 당신이 그 해골이 당신 것이라는 걸 입증할 수 있다면, 그것을 당신에게 주겠소. 그게 당연하니까."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~"내가 당신으로부터 그 해골을 돈주고 사겠소. 좋소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~"당신은 누구요?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~그는 눈을 좁게 뜨고 당신을 바라본다. 갑자기 그가 공격을 한다!~ */
  IF ~~ THEN REPLY #18558 /* ~그의 공격에 대처한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~그는 무미건조하게 웃은 후 미소짓는다. 그가 모트에게 손을 뻗자 *툭*하는 소리가 나고, 그는 화급하게 손을 몸 쪽으로 잡아당긴다. 그는 비명을 지르기 시작한다. "아야야야! 아야야야! 널 죽일 거야, 죽일 거라고!" ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~그는 무미건조하게 웃은 후 미소짓는다. 그는 모트에게 손을 뻗는다, 그런데 당신이 미처 그를 공격하기도 전에 *툭*하는 소리가 나고, 그는 화급하게 손을 몸 쪽으로 잡아당긴다. 그는 비명을 지르기 시작한다. "아야야야! 아야야야! 널 죽일 거야, 죽일 거라고!" ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~그는 고통스러운 듯 입술을 깨물며 당신을 노려본다. 그가 갑자기 공격을 한다!~ */
  IF ~~ THEN REPLY #18563 /* ~그의 공격에 대처한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~그는 미친 사람을 보는 듯한 눈으로 당신을 쳐다본다. "그건 내 꺼야! 말하는 게 증거라고! 당장 내 해골을 내놔!"~ */
  IF ~~ THEN REPLY #18566 /* ~"이건 당신 해골이 아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~진실: "그래, 해골을 가져가시오."~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~그가 방심하면 즉시 공격한다: "그래, 해골을 가져가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~"내가 당신에게서 그 해골을 돈주고 사겠소. 좋소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~"당신은 누구요?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~"해골은 내 꺼야, 내 꺼라고! 내게 돌려주면 훔친 건 용서해주지." 그는 좁게 뜬 눈으로 쏘아보며 중얼거린다. ~ */
  IF ~~ THEN REPLY #18574 /* ~"이건 당신 해골이 아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~진실: "그래, 해골을 가져가시오."~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~그가 방심하면 즉시 공격한다: "그래, 해골을 가져가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~"이것이 당신 해골이라는 증거는 뭐요?"~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~진실: "만약 당신이 그 해골이 당신 것이라는 걸 입증할 수 있다면, 그것을 당신에게 주겠소. 그게 당연하니까."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~"내가 당신에게서 그 해골을 돈주고 사겠소. 좋소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~"그걸 본 적이 있다는 사실조차 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~그는 눈을 좁게 뜬다, 그리고 그가 얼굴을 뒤틀며 조소하는 표정을 짓자 더럽고 울퉁불퉁한 이빨이 드러난다. "해골... 해골은 비싸. 돈은 있어? 그 해골은 내게 소중하다고."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~그는 모트에게 쉿 하고 화를 낸다. "그게 네 주인한테 할 소리야?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~그는 당신 쪽으로 고개를 돌린다. 그는 이빨을 드러내고 있으며 전보다 더 화가 난 듯하다. "오, 돈이 들 거야... 해결하려면 돈이 들 거라고."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~그에게 동전 한 닢을 준다.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~그에게 동전 다섯 닢을 준다.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~그에게 동전 쉰 닢을 준다.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~그에게 동전 백 닢을 준다.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~그에게 동전 오백 닢을 준다.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~"난 당신에게 줄 돈이 없소."~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~"내 제의는 없던 걸로 하겠소. 이건 당신 해골이 아니오, 그리고 당신에게 줄 생각도 없소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~"시작으론 나쁘지 않군... 나머지도 다 내놓으라고, 그럼 난 내 갈 길을 갈 테니."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~"에... 그 걸로 해결을 보도록 하지." 그는 끔찍스럽게 코웃음친다. "하지만 또 내게서 훔치면..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~"그럼 해골을 내놔, 이 도둑놈아! 돌려 달라고! 내게 달라고!"~ */
  IF ~~ THEN REPLY #18595 /* ~진실: "좋소. 가져가시오."~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~그가 방심하면 즉시 공격한다: "좋소. 가져가시오."~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~"아니. 당신에게 줄 수는 없소."~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~"관둬... 틀림없이 너한테는 재앙이 닥칠 거여. 재앙이!"~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~"내게 무슨 약점이 있거나 당신이 두려워서 돈을 지불했다고는 착각하지 마시오... 그러면 죽을 수도 있으니까."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~"내게 무슨 약점이 있거나 당신이 두려워서 돈을 지불했다고는 착각하지 마시오... 그러면 죽을 수도 있으니까."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~"내게 무슨 약점이 있거나 당신이 두려워서 돈을 지불했다고는 착각하지 마시오... 그러면 죽을 수도 있으니까."~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~"내게 무슨 약점이 있거나 당신이 두려워서 돈을 지불했다고는 착각하지 마시오... 그러면 죽을 수도 있으니까."~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~"아, '말썽.' 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~"아, '말썽.' 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~"흥." 그는 눈을 가늘게 뜬다, 하지만 아무 말도 하지 않는다. 그는 불안해 하는 듯하다. ~ */
  IF ~~ THEN REPLY #18608 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~"안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~"흥! 주둥아리는 다른 곳에 가서 놀리라고. 꺼져. 더러운 도둑 같으니..." 그는 당신을 지나쳐 가기 시작한다. ~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~떠난다.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~떠난다.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~그는 코웃음친다. "정보는 싸지 않아." 그는 자신의 노란 손가락 두 개를 비빈다. "돈?" 그는 당신에게 얘기하면서도 계속 눈알을 희번덕거린다, 그리고 그의 시선은 당신의 지갑 쪽으빈번하게 가는 것 같다.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~"한 푼도 줄 수 없소. 어서 얘기나 하시오."~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~"어... 왜 당신 손가락은 노란 거요?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~그는 코웃음친다. "정보는 싸지 않아. 넌 귀머거리야? 내가 얘기할 땐 귀를 기울이라고."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~"한 푼도 줄 수 없소. 어서 얘기나 하시오."~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~"어... 왜 당신 손가락은 노란 거요?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~그는 동전들을 잠시 살핀 후 당신을 흘긋 본다. "내게는 정보가 좀 있지. 뭘 알고 싶은 거지?"~ */
  IF ~~ THEN REPLY #18630 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~"말하라고, 들어줄 테니까. 나도 할 얘기가 있을지도 모르니까..."~ */
  IF ~~ THEN REPLY #18638 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~"아무 말도 하지 않겠어." 그는 당신을 조소한 후 자기 자신을 가리킨다. "난 정보를 알고, 넌 몰라. 하지만 돈을 내면 너도 알 수가 있지. 알겠어?"~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~그를 잡고 좀 흔든다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~"어... 왜 당신 손가락은 노란 거요?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~"그럼 내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~"그럼 내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~"에? 또 왔어?" 그는 눈을 가늘게 뜨고 당신을 곁눈질한다.~ */
  IF ~~ THEN REPLY #18654 /* ~"다시 생각해 보니 알고 싶지 않소. 관두시오."~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~"당신 손가락은 노랗소. 무엇 때문이오?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~"시체로부터 옮았어... 일종의 부식병인 모양이야."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~"상관없어... 돈과 정보의 교환, 기억하지? 돈-돈?" 그는 당신에게 손바닥을 내민다. ~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~"한 푼도 줄 수 없소. 어서 얘기나 하시오."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~"이 쓰레기 같은 도시는 말이야, 이 얼간아... 고리야, 고리 속의 도시. 고대한 고리의 중심에 있는 도시지."~ */
  IF ~~ THEN REPLY #18667 /* ~"이 도시에 대해 더 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~"넌 내 시간과 네 돈만 낭비하고 있군. 그런 건 가이드한테나 물어보라고."~ */
  IF ~~ THEN REPLY #18676 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~"그럼 가이드를 찾아보도록 하겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~"그럼 가이드를 찾아보도록 하겠소. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~"뭐?" 그는 혼란스러워 하는 듯하다. "그것들이 어쨌다는 거야?"~ */
  IF ~~ THEN REPLY #18683 /* ~"그들은 무슨 일을 하오?"~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~"당신도 그들 중 하나요?"~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~그는 미친 사람을 보는 듯한 눈으로 당신을 쳐다본다. "시체를 모아서 더스티들에게 가져다 주지, 수고의 대가로 돈을 좀 받고. 그래서?"~ */
  IF ~~ THEN REPLY #18692 /* ~"당신도 그들 중 하나요?"~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~"아마 그럴지도. 때로는. 뭐가 문제지?"~ */
  IF ~~ THEN REPLY #18700 /* ~"그들은 무슨 일을 하오?"~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~"아무 것도 아니오. 잘 있으시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~그는 갑자기 눈을 가늘게 뜬다. "에..." 그는 고개를 치켜들고 당신을 살펴본다. "파로드... 그에 대해 얘기를 함부로 하면... 비싼 대가를 치러야 해. 잘못하면 죽을 수도 있다고. 아니, 아니... 어지간한 돈으로는 얘기할 수가 없어."~ */
  IF ~~ THEN REPLY #18708 /* ~"그가 어디 있는지 아시오?"~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~그에게 동전 다섯 닢을 더 준다.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~"그럼 내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~"그럼 내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~그는 고개를 끄덕인 후 주위를 둘러본다. "그 정보는... 싸지가 않아."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~그에게 동전 다섯 닢을 더 준다.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~그는 주위를 살핀 후 당신에게 다가와 속삭인다. "광장의 동쪽으로 가서 기다리라고. 한 시간 후에 내가 거기로 갈 테니까. 더 이상 내가 당신과 얘기하는 걸 다른 사람이 봐서는 안돼. 지금은 더 이상 아무 것도 묻지 마... 가라고!" 그는 당신을 지나쳐 거려고 한다. ~ */
  IF ~~ THEN REPLY #18715 /* ~"기다리시오..."~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~그를 그냥 보내준다.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~"더럽고 역겨운 *마녀*라고!" 그는 침을 뱉고 가슴 위에 손가락으로 반원을 그린다. "그 개잡종 같은 할망구는 두창이나 걸리라고 해! 그년의 내장은 역병에 수만 번 걸려서 썩어 문드러져야 해. 그년한테 침을 뱉고 싶으면 이 광장에 있는 그년 움막에나 가보라고. 그 곳은 쓰레기 더미 위에 널린 널빤지들을 따라가면 나올 테니까. 그녀를 찾아가는 건 좋지만 다시는 나와 얘기할 생각은 하지 마."~ */
  IF ~~ THEN REPLY #18718 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~"에... 아마도... 아마도... 아니. 본 적이 없어. ~ */
  IF ~~ THEN REPLY #18725 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~갑자기 당신은 노란-손가락이 당신에게 너무 가까이 다가와 있으며, 그의 손이 당신 지갑을 잡아당기려고 재빨리 튀어나오고 있다는 사실을 깨닫는다.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~그의 손을 잡는다.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~그의 손을 잡는다.~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~그의 시도를 신중하게 관찰한다.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~"뭘 하고 있는 거요?"~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~그는 화급히 뒤로 물러나 도망치기 시작한다!~ */
  IF ~~ THEN REPLY #18738 /* ~"빌어먹을..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~당신니 노란-손가락의 손을 잡자 그는 놀란다. "에이! 에이! 무슨 짓이야! 놔줘!" 그는 몸부림치나 당신 손아귀에서는 벗어날 수가 없다. ~ */
  IF ~~ THEN REPLY #18740 /* ~진실: "당신은 내 돈을 훔치려 했소. 그러니 난 당신을 죽여야겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~허풍: "당신은 내 돈을 훔치려 했소. 그러니 난 당신을 죽여야겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~"에! 에! 기다려! 실수였다고, 실수! 우리 이 문제를 대화로 해결하자고!"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~"정보를 주면 목숨만은 살려 주겠소."~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~"가진 걸 다 내놓으면 목숨만은 살려 주겠소."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~"꺼지시오, 그리고 다시는 내 앞에 얼씬거리지 마시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~그는 힘차게 고개를 끄덕인다. "그래, 그래, 물어봐. 어서 질문을 하라고!"~ */
  IF ~~ THEN REPLY #18747 /* ~"파로드란 자기 어디 있는지 내게 말하시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~"에..." 그는 불안한 듯하다. "파로드에 대한 정보는 위험하다고. 그러니까 말인데, 돈을 좀 주면... 에?"~ */
  IF ~~ THEN REPLY #18749 /* ~"자신이 처한 상황을 잊어버린 모양이군. 당장 말하시오."~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Donne-lui trois pi?es de cuivre.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~"에... 난 그의 집이 여기 없다는 건 알아... 하지만 그의 집은 여기서 아주 가까운 곳에 감추어져 있다고. 그는 늘 여기저기로 옮겨 다니지... 틀림없이 어딘가에 출입할 수 있는 문이 있을 거야. 그게 어디 있는지 아는 사람이 이 곳에 있기는 하겠지만... 난 아니야."~ */
  IF ~~ THEN REPLY #18752 /* ~진실: "Je crois que tu mens. Crache la chanson ou 내가 당신에게 tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~허풍: "Je crois que tu mens. Crache la chanson ou 내가 당신에게 tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~"에..." 그는 입술을 핥고 주위를 둘러본다. "자, 자... 에... 문이 있다고, 알겠어? 광장의 북서쪽 구석을 찾아보라고... 그 늙은 독사는 틀림없이 거기 숨어 있을 거야. 하지만 어떻게 하면 문을 통과할 수 있는지는 몰라." ~ */
  IF ~~ THEN REPLY #18755 /* ~"Maintenant, donne-moi tout ce que tu as."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~"Va-t'en d'ici... Et que je ne te revoie plus jamais !"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~그는 고개를 끄덕인다. 노란-손가락은 공포와 혐오로 가득 찬 눈빛으로 당신을 바라보며 당신에게 몇 줌의 동전을 준다. ~ */
  IF ~~ THEN REPLY #18758 /* ~"Va-t'en d'ici... Et que je ne te revoie plus jamais !"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~그는 눈살을 찌푸리고 미친 사람을 보는 듯한 눈으로 당신을 바라본다. "에? 뭐?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~"Pour뭐 너는saies de me voler ? 내가 당신에게 donnerai ce que tu veux."~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~"Pour뭐 너는saies de me voler ? 내가 당신에게 donnerai ce que tu veux."~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~진실: "당신은 내 돈을 훔치려 했소. 그러니 난 당신을 죽여야겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~허풍: "당신은 내 돈을 훔치려 했소. 그러니 난 당신을 죽여야겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~"당신은 내 돈을 훔치려 했소. 떠나시오, 그리고 다시는 내 앞에 얼씬거리지 마시오."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~노란-손가락은 믿지 못하겠다는 눈으로 당신을 바라본다. "내겐 돈이 많이 필요해. 난 거의 굶어 죽어가고 있어... 벌통의 거리에서의 삶은 결코 쉽지가 않다고."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~그에게 동전 다섯 닢을 준다.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~그에게 동전 열 닢을 준다.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~그에게 동전 쉰 닢을 준다.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~그에게 동전 백 닢을 준다.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~"내가 했던 말을 취소하겠소. 떠나시오, 그리고 다시는 내 앞에 얼씬거리지 마시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~노란-손가락은 믿지 못하겠다는 눈으로 당신을 바라본다. "내겐 돈이 많이 필요해. 난 거의 굶어 죽어가고 있어... 벌통의 거리에서의 삶은 결코 쉽지가 않다고."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~"에... 고마워. 정말 마음도 너그럽군. 레이디의 그림자가 당신은 그냥 지나치기를 빌겠어."~ */
  IF ~~ THEN REPLY #18774 /* ~"다시는 내게서 훔칠 생각을 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~당신의 그의 흙으로 더럽혀진 옷을 손으로 재빨리 잡는다. 그는 가볍고 야윈 탓에 당신 힘으로 공중으로 들어 올려 흔들 수가 있다. "그아아! 정보를 말할 께, 하겠다고! 제발 날 좀 내려 줘!"~ */
  IF ~~ THEN REPLY #18776 /* ~그를 쓰레기 더미 속으로 던진다.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~그를 밑에 내려 놓고 보내주지 않는다.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~당신은 그를 내던진다, 하지만 그는 바닥에 떨어지자마자 곧 일어나 놀라운 속도로 도망치기 시작한다!~ */
  IF ~~ THEN REPLY #18779 /* ~"빌어먹을..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~당신이 노란-손가락을 내려놓으려 하자 그는 당신 정강이를 날렵하게 걷어찬다. 당신이 그를 떨구고 잠시 동안 머뭇거리는 사이 그는 벌써 열나게 도망치고 있다. ~ */
  IF ~~ THEN REPLY #18781 /* ~"빌어먹을..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~당신은 노란-손가락의 솜씨좋은 손가락이 당신 지갑 속으로 미끄러지듯 들어갔다가... 몇 개의 동전을 가지고 다시 나오는 곳을 유심히 지켜본다. 매우 민첩한 동작이긴 하나, 당신은 그것이 낯설지 않다, 그리고 연습만 좀 한다면 당신도 할 수 있을 것 같다는 확신이 선다. ~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~그의 손을 잡는다.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~그의 손을 잡는다.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~"뭘 하고 있는 거요?"~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~그것을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~"난 당신이 날 보고 있었다는 걸 안다고... 뭘 원하지, 에?:~ */
  IF ~~ THEN REPLY #18788 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~"아무 것도 아니오. 잘 있으시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~"애, 진정하라고, 꼬리 달린 아가씨." 그는 당신 쪽으로 고개를 돌린다. "난 당신이 날 보고 있었다는 걸 안다고... 뭘 원하지, 에?:~ */
  IF ~~ THEN REPLY #18792 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~"아무 것도 아니오. 잘 있으시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~"애, 진정하라고, 꼬리 달린 아가씨." 그는 당신 쪽으로 고개를 돌린다, 그리고 갑자기 모트를 주목한다. "에! 해골. 어디서 그 해골을 손에 넣었지? 그건 내 꺼야! 돌려줘!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~노란-손가락은 쉴 새 없이 투덜거리면서 도망친다.~ */
  IF ~~ THEN REPLY #54288 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~노란-손가락이 도망치는 꼴을 보면서 당신은 당분간 그를 보지 못할 것 같다는 생각을 한다.~ */
  IF ~~ THEN REPLY #54787 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END
