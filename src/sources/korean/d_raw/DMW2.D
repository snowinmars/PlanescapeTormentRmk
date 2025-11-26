// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~건장하게 생긴 청년이 보인다. 그는 상자의 내용물을 체크하는 데 바빠 당신이 다가오는 것을 눈치채지 못한다. ~ */
  IF ~~ THEN REPLY #47954 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~그는 당신을 어깨 너머로 쳐다보더니 다시 하던 일로 돌아간다. "미안하오. 당신과 이야기를 하려고 작업을 중단할 순 없소. 할 일이 너무 많소." 그는 하던 일로 돌아간다.~ */
  IF ~~ THEN REPLY #47957 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~그는 당신과 대화를 하면서도 계속 일을 한다. "미안하오. 다른 사람에게 질문을 하시오. 내게는 시간이 없소. 래즐로라는 소년과 이야기를 해보시오, 그는 대개 아궁이 근처에 있소."~ */
  IF ~~ THEN REPLY #47960 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~시장 노동자가 보인다. 당신이 다가오는 것을 보고 그는 눈살을 찌푸린다. "다시 만나 '반갑소,' 친구."~ */
  IF ~~ THEN REPLY #47962 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~그는 한숨을 쉰다. "돕고는 싶지만 시간이 없소. 래즐로라는 소년과 이야기를 해보시오, 그는 대개 아궁이 근처에 있소."~ */
  IF ~~ THEN REPLY #47964 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
