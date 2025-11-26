// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~나약하게 생긴 사내가 구석에서 웅크리고 있다. ~ */
  IF ~~ THEN REPLY #48813 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~그를 그냥 내버려 두고 떠난다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~"날 해치러 온 것은 아니기를 바라오. 제발 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #48970 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~"제발 날 해치지 마시오. 나는 아무 짓도 안하고 있소."~ */
  IF ~~ THEN REPLY #48974 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~"제발... 날 해치지 마시오."~ */
  IF ~~ THEN REPLY #48978 /* ~"안녕히 계시오."~ */ EXIT
END
