// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~당신 눈에 낡고 해진 옷을 입은 남자의 모습이 들어온다. 당신이 그에게 접근하자 그는 당신을 피하기 우회를 하며 계속 걷는다.~ */
  IF ~~ THEN REPLY #1549 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~"이것 보시오! 잠깐만 기다리시오!"~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~그는 당신을 무시하고 걸음을 재촉하기 시작한다.~ */
  IF ~~ THEN REPLY #1551 /* ~"이보시오?"~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~"이것 보시오! 잠깐만 기다리시오!"~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~그는 돌아서서 혹시 당신에게 동료는 없는지 살피는 듯 당신의 좌우를 둘러본다. 그는 대거를 뽑아 든다. "날 그냥 내버려 두지 않으면 이 칼이 당신 가슴에 박히게 될 걸!"~ */
  IF ~~ THEN REPLY #1554 /* ~"진정하시오. 뭘 좀 물어보려고 했을 뿐이오..."~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~그는 당신을 조롱한다: "물론 그렇겠지. 하지만 난 당신 따위에게 대답을 할 생각이 없어. 꺼져!"~ */
  IF ~~ THEN REPLY #1558 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
