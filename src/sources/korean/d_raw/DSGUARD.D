// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~"미안하오. 산도즈가 회복할 때까지는 아무도 들어갈 수가 없소. 따라서 당신도 들어갈 수가 없소."~ */
  IF ~~ THEN REPLY #46768 /* ~"그에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~"그는 신봉자, 그것도 진정한 신봉자요. 하지만 지금은 좀 흥분한 상태요. 다원 우주를 왔다갔다 하는 건 정신에 별로 좋지가 않소. 스스로의 가치관을 잃거나 반대로 지나치게 과격해지기 쉽소. 어느 쪽이든 좋지가 않소. 나는 그가 무사히 회복하기만 바랄 뿐이오."~ */
  IF ~~ THEN REPLY #46908 /* ~"두고 봅시다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~"안녕하시오. 켈도가 당신을 보냈소? 산도즈는 이 곳에 올라와 저 문 뒤에서 온종일 미친 듯 고함을 지르거나 혼자서 중얼거리고 있소. 당신이 그를 도울 수 있었으면 좋겠소."~ */
  IF ~~ THEN REPLY #46910 /* ~"어디 두고 봅시다." 문 너머로 부른다. "산도즈! 난 당신과 얘기를 하고 싶소!". ~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~"산도즈와 얘기를 할 생각이시오? 행운을 비오..."~ */
  IF ~~ THEN REPLY #46912 /* ~"고맙소." 문 너머로 부른다. "산도즈! 나와 얘기를 좀 합시다!". ~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~경비병은 더 이상 이야기하려고 하지 않는다.~ */
  IF ~~ THEN REPLY #46914 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~경비병 신랄한 표정으로 당신을 쳐다본다. "그는 이미 죽었소. 만족스럽지 않소? 내려가서 켈도와 얘기하시오."~ */
  IF ~~ THEN REPLY #63355 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~경비병은 더 이상 얘기를 할 생각이 없는 듯하다. ~ */
  IF ~~ THEN REPLY #64647 /* ~"안녕히 계시오."~ */ EXIT
END
