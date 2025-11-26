// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~이 사람은 벽에 고정된 금속 패널을 뚫어지게 바라보고 있다. 잠시 동안 맹렬하게 집중한 후 그는 손으로 무슨 모양을 그리면서 거창한 '주문'을 외운다... 하지만 아무런 효과도 없다. 그럼에도 불구하고 그는 계속해서 부지런히 연습을 한다. 그는 연습에 몰두한 나머지 당신과 얘기할 여유가 없다. ~ */
  IF ~~ THEN REPLY #43001 /* ~떠난다.~ */ EXIT
END
