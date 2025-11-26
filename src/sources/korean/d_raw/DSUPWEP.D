// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~이 칼은 특수한 금속으로 만들어진 듯하다. 자세히 보니 칼날을 칼자루에 삽입한 것이 아니라, 양쪽 모두 한 덩어리의 금속으로 만들어졌다는 것을 알 수 있다. 당신이 이 점에 대해 생각하자 칼이 당신 손 안에서 그 모습을 바꾸기 시작한다. 그것은 마치 현재의 형태로부터 해방되려고 투쟁하는 듯하다. ~ */
  IF ~~ THEN REPLY #55079 /* ~칼이 변화하기를 바란다.~ */ EXIT
END
