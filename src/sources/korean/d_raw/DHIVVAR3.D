// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~짜증스런 표정의 평범하게 생긴 여자가 보인다. ~ */
  IF ~~ THEN REPLY #48980 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~그녀를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~"기억력이 나쁜 모양이군요. 난 혼자 있고 싶다고 말했어요."~ */
  IF ~~ THEN REPLY #48983 /* ~"흠... 당신 기분은 바뀌지 않은 모양이오."~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~"이 도시에는 내가 잠시라도 혼자 있을 수 있는 공간은 없는 건가요?"~ */
  IF ~~ THEN REPLY #48986 /* ~"왜 당신은 혼자있고 싶어하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~"'혼자'란 '당신 없이'란 뜻이에요. 날 그냥 내버려 두세요."~ */
  IF ~~ THEN REPLY #48989 /* ~"안녕히 계시오."~ */ EXIT
END
