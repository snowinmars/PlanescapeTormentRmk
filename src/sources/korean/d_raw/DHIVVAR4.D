// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~살찐 여자가 허드렛일을 하고 있다. 그녀는 당신이 방에 들어온 것을 눈치채지 못한 것 같다.~ */
  IF ~~ THEN REPLY #48993 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~그녀를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~"또 당신이군요... 내가 보기에 당신 태도는 전과 달리진 게 없어요."~ */
  IF ~~ THEN REPLY #48996 /* ~"흠... 여기는 내가 가고 싶었던 곳이 아니군."~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~"내 집에서 뭘 하고 있는 거죠? 당신에겐 예의란 것도 없나요? 허락이 없이 남의 집에 들어와서는 안 되요."~ */
  IF ~~ THEN REPLY #48999 /* ~"미안하오. 나는 여기 사람이 사는지 몰랐소."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~"그럼 이제는 알겠군요. 제발 나가 주세요, 그리고 나갈 때 문을 닫고 나가세요. 나는 아직 해야 할 일들이 많아 더 이상의 방해는 받기 싫어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #49001 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~"그럼 날 그냥 내버려 두고 가고 싶은 곳으로 가라고요."~ */
  IF ~~ THEN REPLY #49003 /* ~"안녕히 계시오."~ */ EXIT
END
