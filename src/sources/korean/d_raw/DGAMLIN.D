// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~"이봐! 대체 내 텐트에서 뭘 하고 있는 거지?"~ */
  IF ~~ THEN REPLY #49878 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~"나는 라욱의 텐트를 찾고 있소. 그것이 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~"내가 실수를 했소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~"레이디가 당신을 저주하기를! 대체 뭘 알고 싶은 거요?"~ */
  IF ~~ THEN REPLY #49882 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~"나는 라욱의 텐트를 찾고 있소. 그것이 어디 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~"그래, 당신은 라욱의 친구고 나도 그의 친구요. 그게 어쨌다는 거요? 그렇다고 해서 내가 당신과 얘기를 해야만 할 이유는 없지 않소?"~ */
  IF ~~ THEN REPLY #49886 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~"내 텐트에 허락도 없이 들어와서 고작 하는 말이 '안녕하시오'요?! 꺼지시오!"~ */
  IF ~~ THEN REPLY #49888 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~"빌어먹을! 당신은 라욱의 또 다른 '친구'요? 그렇소, 이 곳은 그가 자기 집이라고 하는 텐트들 중 한 곳이오. 보다시피 이 곳은 꽉 찼소. 그의 다른 텐트로 가보시오."~ */
  IF ~~ THEN REPLY #49890 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
