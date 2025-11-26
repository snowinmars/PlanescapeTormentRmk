// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~스스로를 감았다 푸는 것을 반복하는, 살아 움직이는 피투성이의 쇠사슬이다. 사슬은 마치 뱀의 등뼈처럼 구부렸다 폈다 하면서 앞으로 나아간다. 작은 이름표에는 다음과 같이 적혀 있다: '쟁글링 하이터에서 가져온 키톤의 살아 있는 사슬.'~ */
  IF ~~ THEN REPLY #42657 /* ~사슬을 만진다.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~사슬은 마치 살아 있는 듯 만지니 따듯하다. 당신은 사슬 전체에 걸쳐 다양한 가시, 작은 고리, 바늘, 그리고 다른 뾰족한 것들이 무수히 용접되어 있다는 사실을 깨닫는다. ~ */
  IF ~~ THEN REPLY #42659 /* ~떠난다.~ */ EXIT
END
