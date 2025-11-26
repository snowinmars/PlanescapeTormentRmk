// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~녹색과 자주색의 추상화인 이 그림은 당신이 쳐다보고 이는 동안에도 꿈틀거리며 물결친다. 자세히 살펴보니 변화하고 있는 것은 캔버스가 아니라 그 위에 그려진 그림이다. 이름표에는 '모크'크마의 성벽에서의 한 순간의 광경'이라고 적혀 있다. ~ */
  IF ~~ THEN REPLY #42720 /* ~그림을 만진다.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~당신은 그림에 손을 얹는다... 그리고 예상했던 대로 움직이는 것은 캔버스가 아니라 그림 그 자체이다.~ */
  IF ~~ THEN REPLY #42722 /* ~떠난다.~ */ EXIT
END
