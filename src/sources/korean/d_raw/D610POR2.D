// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~이 아치는 미로의 바닥에서 자라 나온 후 호 모양으로 휜 나무의, 혹이 생긴 마디로 만들어졌다. 당신이 아치 쪽으로 다가가자 아치 아래의 공간이 부드럽게 빛난다... 그것은 기묘한 검은 가시나무들이 자라는 정원으로 통하는 것 같다.~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~아치의 왼쪽으로 가서 나무껍질을 손톱으로 긁은 후에 전이문 속으로 들어간다.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~아치를 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~가시나무 아치를 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~천연의 아치를 조사하다가 당신은 줄기의 왼쪽에 누가 칼로 새김눈을 새긴 것과 같은 자국이 있다는 사실을 발견한다. 하지만 자세히 보니 새김눈들은 칼이 아니라 무슨 발톱 같은 것으로 할퀸 자국들인 것 같다.~ */
  IF ~~ THEN REPLY #51437 /* ~나무 줄기를 손톱으로 긁어 무슨 일이 생기는지 본다.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~가시나무 아치를 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~당신이 나무껍질에 손가락을 대고 누르자, 놀랍게도 죽에 손가락을 넣은 것처럼 손가락이 나무 속으로 쑥 들어간다. 당신이 가시나무 속에 손가락을 넣고 젓자, 이에 반응하여 아치 아래의 빛이 한층 더 빛나며 당신에게 오라고 신호를 보낸다.~ */
  IF ~~ THEN REPLY #51440 /* ~아치로 들어간다. ~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~가시나무 아치를 그냥 내버려 둔다. ~ */ EXIT
END
