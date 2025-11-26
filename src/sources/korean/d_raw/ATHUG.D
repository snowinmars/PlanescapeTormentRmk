// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~"작은 새가 날아왔나? 작은 새가 오늘 이 곳을 지나가려면 돈을 내야지."~ */
  IF ~~ THEN REPLY #34605 /* ~"얼마요?"~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~"만약 당신이 내 돈을 원한다면, 나로부터 빼앗아 가야 할 것이오."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~"동전 열 닢이야, 친구!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~"여기 있소."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~"난 그만한 돈이 없소."~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~"관두시오. 그걸 원한다면 내 시체에서 가져가야 할 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~"먼저 나부터 잡아야 할 거요!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~깡패는 고개를 깊숙이 숙이는 시늉을 하며 당신을 조롱한다. "가까운 시일 내에 또 거래를 할 있으면 좋겠군."~ */
  IF ~~ THEN REPLY #34614 /* ~"그래, 뭐든 간에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~깡패는 일부러 놀란 듯한 표정을 짓는다. "그러면 피로 그 값을 치를 수밖에. 잘 가게,, 친구."~ */
  IF ~~ THEN REPLY #34616 /* ~"기다리시오..."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~"그래 어디 해봅시다."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~"작은 새가 집으로 돌아왔나? 둥지의 다른 새들에게 먹이를 가져왔나?"~ */
  IF ~~ THEN REPLY #34619 /* ~"대체 무슨 얘기를 하는 거요?"~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~"그렇소. 여기 통행료가 있소."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~"아니오. 난 당신을 죽이러 왔소."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~그는 얼굴을 뒤틀어 고민하는 시늉을 한다. "벌써 까먹었단 말이야? 이런. 내 거리를 통과하는 대가를 동전 열 닢을 지불하란 말이야. 자... 어서 내놔."~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~"그럼 여기 있소."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~"이번에는 싸워서 받아내야 할 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~"이 일에 대해 무슨 협정이라도 맺을 수는 없겠소?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~"미안하군. 우린 모두 지켜야 할 규칙이 있고 넌 네 피로 대가를 치러야겠어. 네 신에게 내 안부나 전해줘."~ */
  IF ~~ THEN REPLY #34627 /* ~그와 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~도망친다.~ */ DO ~Enemy()
~ EXIT
END
