// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~방 한가운데에 창백한 얼굴의 남자가 서 있다. 그의 등을 구부리고 있으며, 건강해 보이지 않는다. ~ */
  IF ~~ THEN REPLY #49005 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~그를 그냥 내버려 두고 떠난다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~"또 당신이군... 내게는 휴식이 필요하다고 내가 말하지 않았소?"~ */
  IF ~~ THEN REPLY #49008 /* ~"흠... 무슨 일이라도 있었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~"기분이 더럽소."~ */
  IF ~~ THEN REPLY #49011 /* ~"무슨 일이 일어났소?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~"나도 잘 모르겠소, 하지만 좀 쉬면 나아질 것 같소. 제발 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #49013 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~"제발 내가 쉴 수 있도록 그만 떠나 줄 순 없겠소? 난 좀 쉬면 나아질 것 같소."~ */
  IF ~~ THEN REPLY #49015 /* ~"안녕히 계시오."~ */ EXIT
END
