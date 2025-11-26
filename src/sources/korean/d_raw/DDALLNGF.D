// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~이 젊은 아가씨는 당신에게 상냥한 미소를 짓고는 남자 친구 뒤에 숨는다. 그녀는 당신이 말을 걸어도 대답을 하기는커녕 뒤로 물러서기만 한다. ~ */
  IF ~~ THEN REPLY #49446 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~당신이 다가오는 것을 보자 그녀는 머리를 숙여서 당신 시선을 피한다. 그녀는 매우 젊어 보인다.~ */
  IF ~~ THEN REPLY #49449 /* ~"안녕히 계시오."~ */ EXIT
END
