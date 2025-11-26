// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~젊은 여자가 보인다. 그녀는 지루해 보인다. 당신이 다가가자 그녀에게 생기가 감돈다. "안녕하세요. 도움이 필요하신가요?"~ */
  IF ~~ THEN REPLY #58501 /* ~"안녕하시오."~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~그녀는 미소짓는다. "나는 길디아예요. 내 물건들을 보시겠어요?"~ */
  IF ~~ THEN REPLY #58504 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~"아니. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~그녀는 고개를 젓는다. "나는 그냥 상인일 뿐이에요. 당신 질문에 대답을 할 수가 없아요."~ */
  IF ~~ THEN REPLY #58508 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~상인 길디아가 보인다. 그녀는 당신을 보자 미소를 짓는다. "다시 오신 것을 환영해요. 어떤 도움이 필요하시죠?"~ */
  IF ~~ THEN REPLY #58511 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
