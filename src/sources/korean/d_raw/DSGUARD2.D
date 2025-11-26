// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~하모니움 경비병이 보인다. 당신이 다가가자 그는 오지 말라고 손짓을 한다. "오지 마시오. 이 곳에는 아무 것도 볼 것이 없소."~ */
  IF ~~ THEN REPLY #37944 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~그는 당신을 보면서 눈살을 찌푸린다. "오지 말라는 말을 이해하지 못했소?" 그는 당신을 노려본다. "이 곳에는 아무 것도 볼 것이 없소. 떠나 주시오."~ */
  IF ~~ THEN REPLY #37946 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~그는 당신을 조롱하는 표정으로 바라본다. "오, 하실 질문이 있었군. 그렇다면 얘기는 다르지..." 그는 당신을 노려본다. "이것 보시오, 내겐 질문에 대답할 시간이 없소. 떠나시오."~ */
  IF ~~ THEN REPLY #37948 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~"잠깐의 시간도 내줄 수가 없소. 당장 떠나시오." 그는 당신에게 가라고 손짓한다.~ */
  IF ~~ THEN REPLY #37950 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~하모니움 경비병이 보인다. 그는 당신이 다가가자 눈살을 찌푸린다. "사교 활동을 할 시간은 없소. 떠나시오."~ */
  IF ~~ THEN REPLY #37951 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~"안녕히 계시오."~ */ EXIT
END
