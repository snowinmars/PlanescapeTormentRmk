// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~당신 눈에 낡고 해진 옷을 입은 남자의 모습이 들어온다. 당신이 그에게 접근하자 그는 걸음을 멈추고 당신을 바라본다.~ */
  IF ~~ THEN REPLY #1560 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~"무슨 *문제*라도 있소? 아니면 말썽을 원하는 거요?" 그는 당신 발에 침을 뱉는다. "흉터가 더 늘기 전에 꺼지라고."~ */
  IF ~~ THEN REPLY #1562 /* ~"진정하시오. 뭘 좀 물어보려고 했을 뿐이오..."~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~조롱한다: "물론 그렇겠지. 하지만 난 당신 따위에게 대답을 할 생각이 없어. 꺼져!"~ */
  IF ~~ THEN REPLY #1565 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
