// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~하모니움 경비병이 보인다. 그는 당신이 다가가자 당신을 경계하는 눈빛으로 쳐다본다.~ */
  IF ~~ THEN REPLY #37930 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~그는 당신에게 고개를 끄덕여 인사한다. "안녕하시오."~ */
  IF ~~ THEN REPLY #37932 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~그는 고개를 젓는다. "나는 근무 중이오. 내겐 질문에 대답할 시간이 없소. 다른 사람에게 가서 물어보시오."~ */
  IF ~~ THEN REPLY #37934 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~그는 당신을 보면서 눈살을 찌푸린다. "내겐 질문에 답할 시간이 없소. 그만 가보시오."~ */
  IF ~~ THEN REPLY #37936 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~하모니움 경비병이 보인다. 그는 당신이 다가가자 눈살을 찌푸린다. "또 당신이군."~ */
  IF ~~ THEN REPLY #37937 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~"안녕히 계시오."~ */ EXIT
END
