// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~멍청한 얼굴에 늘어진 턱을 한 거한이 보인다. 하지만 그의 근육만큼은 가히 장관이다. 그는 흐리멍덩한 눈으로 당신을 계속 바라본다. "어?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~"나는 이 곳에 아나키스트 세포가 있다는 얘기를 들었소. 암호는 '일식'이오."~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~"허?~ */
  IF ~~ THEN REPLY #44548 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~"나는 이 곳에 아나키스트 세포가 있다는 얘기를 들었소. 암호는 '일식'이오."~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~"네게 말하지마 말해 리나하고." 그는 오크 나무처럼 두꺼운 팔로 여자 감독을 가리킨다. ~ */
  IF ~~ THEN REPLY #44553 /* ~"몇 가지만 묻는 것도 안 되겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~"내게 말하지마!" 그는 화가 난듯하다.~ */
  IF ~~ THEN REPLY #44557 /* ~"좋소, 좋아. 안녕히 계시오."~ */ EXIT
END
