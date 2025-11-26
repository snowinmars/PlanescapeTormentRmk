// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~납을 두드려서 만든 이 거대한 호른은 놋쇠로 만든 사슬로 감겨져 있다. 호른은 엄청난 힘에 의해 뭉개진 듯 형편없이 망가져 있다. 그것은 전투용 호른의 용도만이 아니라 어떤 거대한 생명체의 곤봉으로도 쓰인듯 가로로 톱니같은 칼날들이 달려 있다. 호른 아래의 이름표에는 다음과 같은 제목이 적혀 있다: '아케론의 정화의 호른.'~ */
  IF ~~ THEN REPLY #34189 /* ~머리를 벽에다 기대고 뿔나팔을 불려고 시도한다.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~아무리 공을 들여서 불어도 이 거대한 호른으로부터는 아무런 소리가 나지 않는다. 당신은 피, 연기, 그리고 금속의 맛을 느끼면서 호른으로부터 입술을 뗀다.~ */
  IF ~~ THEN REPLY #42671 /* ~떠난다.~ */ EXIT
END
