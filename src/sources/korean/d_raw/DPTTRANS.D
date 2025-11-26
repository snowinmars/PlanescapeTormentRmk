// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~당신이 문을 열자 차가운 바람이 밀려나온다. 당신은 어떤 목소리가 속삭이는 소리를 듣고 몸서리를 치기 시작한다, 하지만 무슨 말인지는 알아들을 수가 없다. 잠시 후 목소리는 사라지고 사방이 조용해진다... 당신은 자신이 전에 이 곳에 온 적이 있다는 사실을 깨닫는다, 그리고 동료들이 당신을 따라 들어가서는 안 된다는 생각이 강하게 든다. ~ */
  IF ~~ THEN REPLY #38951 /* ~"난 혼자서 들어가겠소. 여기서 날 기다려 주시오."~ */ EXIT
END
