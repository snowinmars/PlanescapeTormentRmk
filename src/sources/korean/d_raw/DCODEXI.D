// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~처음에는 작은 놋쇠 자물쇠로 잠긴 별로 대단치 않은 책인 것처럼 보였으나, 실제로는 기묘한 가죽과 마법의 청동으로 장정되어 있다. 책에는 '불가해의 사본'이라는 간단한 라벨이 붙어 있다. ~ */
  IF ~~ THEN REPLY #50400 /* ~그것을 펼쳐서... 읽는다!~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~경건한 마음으로 책을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~당신은 책의 자물쇠를 열고 책을 펼친다. 책의 내용을 훑어보자 당신 입이 딱 벌어진다. 당신은 무엇에 홀린 듯 그 책의 장들을 넘긴다. 그 내용은 도저히 형언할 수가 없다 - 말로는 그 책에 담긴 경이를 표현할 수가 없다.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~"그건... 그... 나..."~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~"그건... 그... 나..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~당신은 사본을 내려다보며 잠시 숙고를 한 후, 책을 닫고는 경건하게 책을 치운다. ~ */
  IF ~~ THEN REPLY #50407 /* ~떠난다.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~불가해의 사본은 기묘한 가죽과 마법의 청동으로 장정되어 있다. 그 내용은 도저히 형언할 수가 없다 - 말로는 그 책에 담긴 경이를 표현할 수가 없다.~ */
  IF ~~ THEN REPLY #50409 /* ~경건한 마음으로 책을 치운다.~ */ EXIT
END
