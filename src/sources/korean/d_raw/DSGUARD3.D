// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~하모니움 경비병이 보인다. 그는 당신이 다가오는 것을 지루하다는 표정으로 쳐다본다. ~ */
  IF ~~ THEN REPLY #37961 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~그는 고개를 끄덕인다. "안녕하시오."~ */
  IF ~~ THEN REPLY #37963 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~"나는 하모니움에 가입하여 이 구역에 배치된 지 얼마되지 않소. 그래서 당신 질문에 대답해줄 수가 없소." 그는 미안한 듯 웃는다.~ */
  IF ~~ THEN REPLY #37965 /* ~"적어도 여기서 무슨 일이 벌어지고 있는 것 정도는 말해줄 수 있지 않겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~그는 고개를 끄덕인다. "이 사람들은 가벼운 죄를 지은 범죄자들이오. 그들은 몇 년간 노예로서 봉사하도록 선고를 받았기 때문에 노예로 팔리게 되었소" 그는 잠시 멈춘다. "내가 할 말은 그게 전부요."~ */
  IF ~~ THEN REPLY #37967 /* ~"알겠소. 당신에게 다른 걸 물어봐도 괜찮겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~그는 고개를 젓는다. "나는 임무에 충실해야 하오. 그만 떠나 주시면 고맙겠소."~ */
  IF ~~ THEN REPLY #37969 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~하모니움 경비병이 보인다. 그는 당신이 다가가자 고개를 끄덕여 인사한다. "다시 만나 반갑소. 내 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #37970 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
