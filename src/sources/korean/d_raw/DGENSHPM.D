// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~한가하게 물건들을 살피고 있는 남자가 보인다. ~ */
  IF ~~ THEN REPLY #36045 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~그는 당신을 흘긋 본다. "무슨 용건이오?"~ */
  IF ~~ THEN REPLY #36048 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~그는 눈살을 찌푸리며 당신에게 다른 데로 가라고 손짓한다. "난 이럴 시간이 없소. 날 그냥 내버려 두시오." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #36051 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~남자는 돌아서서 당신을 보더니 즉각 당신에게 등을 돌린다. 그는 대화를 하려는 당신의 시도를 무시한다.~ */
  IF ~~ THEN REPLY #36053 /* ~떠난다.~ */ EXIT
END
