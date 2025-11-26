// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~당신이 불쑥 말을 걸자 이 사람은 돌아서서 얼굴을 찡그린다. "내가 당신을 아오? 물론 아니겠지...  날 그냥 내버려 두시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #67981 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~당신이 말을 걸자 이 사람은 돌아서서 당신을 본다. "결례를 범하기는 싫지만 나는 내가 알지 못하는 사람과는 얘기하지 않소, 그리고 나는 당신을 알고 싶지도 않소. 질문은 다른 사람에게 가서 하시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #67983 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~그들은 당신이 채 인사도 하기 전에 말을 가로막는다. "한 마디도 듣고 싶지 않소. 다른 사람을 찾아서 심문하시오."~ */
  IF ~~ THEN REPLY #67985 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~이 사람은 당신을 보고 불안하게 웃으며 손을 들어 방어하는 자세를 취하고 있다. "나는 말썽은 가급적 피하오, 그리고 당신이 바로 말썽인 것 같소. 날 그냥 내버려 두시오... 제발."~ */
  IF ~~ THEN REPLY #67987 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #67989 /* ~떠난다.~ */ EXIT
END
