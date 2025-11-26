// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36001 /* ~젊은 여자가 보인다. 그녀는 화가 난 듯 우거지상을 하고 있다. 당신이 다가가자 그녀는 경멸하는 표정으로 당신을 본다. "뭘 원하는 거죠?"~ */
  IF ~~ THEN REPLY #36002 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36003 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36004 /* ~그녀는 당신을 보며 얼굴을 찌푸린다, 그리고 양손을 자신의 엉덩이에 얹는다. "꺼져요! 짧은 길을 한참 가라고요."~ */
  IF ~~ THEN REPLY #36005 /* ~"그건 무슨 뜻이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #36006 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #36007 /* ~"당신은 정말 태도에 문제가 있군."~ */ GOTO 4
  IF ~~ THEN REPLY #36008 /* ~"좋소, 그만 가겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36009 /* ~그녀는 이빨을 드러내며 무례한 손짓을 한다. "그건 꺼지란 얘기에요! 당신에게 할 말 따윈 없어요." 그녀는 도전적인 태도로 당신을 바라본다. ~ */
  IF ~~ THEN REPLY #36010 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #36011 /* ~"좋소, 그만 가겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #36012 /* ~그녀는 사악한 미소를 짓는다. "당신에게 해줄 말이 있어요... 엿이나 먹고 늘어지라고요!" 그녀는 또 다시 무례한 손짓을 한다. ~ */
  IF ~~ THEN REPLY #36013 /* ~"당신은 정말 태도에 문제가 있군."~ */ GOTO 4
  IF ~~ THEN REPLY #36014 /* ~"좋소, 그만 가겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.0
  SAY #36015 /* ~그녀는 웃는다. "난 아직 본격적으로 시작도 하지 않았어요. 자, 빛조차 들어오는 일 없는 영원한 암흑세계에 가서 다시는 나오지 말아요!"~ */
  IF ~~ THEN REPLY #36016 /* ~"좋소, 그만 가겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #36017 /* ~젊은 여자가 보인다. 그녀는 화가 난 듯 우거지상을 하고 있다. 당신이 다가가자 그녀는 경멸하는 표정으로 당신을 본다. "뭘 원하는 거죠?"~ */
  IF ~~ THEN REPLY #36018 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #36019 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
