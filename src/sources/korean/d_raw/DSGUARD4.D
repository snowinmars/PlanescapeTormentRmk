// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~하모니움 경비병이 보인다. 그는 주위를 조심스럽게 살펴보고 있는 듯하다.~ */
  IF ~~ THEN REPLY #61228 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~그는 당신을 흘긋 본 후 다시 시선을 돌린다. 그는 다른 반응은 보이지 않는다.~ */
  IF ~~ THEN REPLY #61231 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~그는 고개를 젓고는 가라고 손짓한다. "안 되오." 그는 당신을 무시하는 것 같다.~ */
  IF ~~ THEN REPLY #61234 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~그는 고개를 젓고는 가라고 손짓한다. "안 되오." 그는 아직도 당신을 무시하는 것 같다.~ */
  IF ~~ THEN REPLY #61237 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~하모니움 경비병이 보인다. 그는 당신이 있는 것을 알면서도 아무런 반응을 보이지 않는다.~ */
  IF ~~ THEN REPLY #61239 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~"안녕히 계시오."~ */ EXIT
END
