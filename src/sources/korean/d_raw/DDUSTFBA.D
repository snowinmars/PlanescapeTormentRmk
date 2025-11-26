// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~검은 법복을 입고 있는 침울하며 얼굴이 창백한 여자 더스트맨이 보인다. 그녀는 자신의 음료를 조용히 바라보고 있다.~ */
  IF ~~ THEN REPLY #2545 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~검은 법복을 입고 있는 침울하며 얼굴이 창백한 여자 더스트맨이 보인다. 그녀는 자신의 음료를 조용히 바라보고 있다.~ */
  IF ~~ THEN REPLY #2547 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~더스트맨은 올려다본다. "무슨 일이지요?"~ */
  IF ~~ THEN REPLY #2550 /* ~"뭘 좀 물어봐도 괜찮겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~"지금은 곤란해요." 더스트맨은 입을 다물고 그녀의 음료가 있는 쪽으로 몸을 돌린다~ */
  IF ~~ THEN REPLY #2553 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
