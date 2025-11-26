// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~덩치가 큰 남자가 보인다. 그의 표정은 돌처럼 딱딱하다.~ */
  IF ~~ THEN REPLY #1905 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~그냥 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~그는 당신을 잠시 보더니 툴툴거린다, 그리고 손을 쳐드는데 거기에는 흉칙한 모양의 대거가 들려 있다. 그는 사악한 미소를 지으며 칼을 위협적으로 휘두르기 시작한다.~ */
  IF ~~ THEN REPLY #1908 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~"어, 안녕히 계시오..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
