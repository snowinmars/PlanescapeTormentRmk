// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~중년 남성이 보인다. 당신이 다가가자 그는 관심 있는 표정으로 당신을 쳐다본다. "안녕하시오, 친구."~ */
  IF ~~ THEN REPLY #57947 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~그는 당신에게 가볍게 인사한다. "나는 돈이오. 내 상품을 좀 보시겠소?"~ */
  IF ~~ THEN REPLY #57950 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~"당신이 지닌 물건들을 보여주시오."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~그는 고개를 젓는다. "나는 지금 질문에 답할 시간이 없소. 아마 다음 기회에."~ */
  IF ~~ THEN REPLY #57954 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~상인 돈이 보인다. 그는 당신을 보고 미소를 짓는다. "다시 만나 반갑소. 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #57960 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~"안녕히 계시오."~ */ EXIT
END
