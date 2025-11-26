// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~나뭇가지 아래의 공간은 부드럽게 빛나고 있다... 그 너머에는 가시나무로 뒤덮인 방이 있는 것 같다. 그것을 살펴보다가 당신은 갑자기 래벌이 준 검은 가시의 부적이 죽어가는 뱀처럼 꿈틀거리고 있다는 사실을 깨닫는다. ~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~래벌의 부적을 왼쪽 집게손가락에 감고 전이문 속으로 들어간다.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~부적을 살펴본 후, 무슨 일이 일어나는가를 기다리며 지켜본다. ~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~위에 걸린 줄기를 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~이 기묘한 부적은 가시 돋친 씨앗을 이용하여 당신 피부 속으로 부드럽게 파고든다, 그리고 가시들을 마치 실처럼 이용하여 당신 왼손이 있는 곳까지 올라간 후, 왼쪽 집게손가락을 휘감아서 스스로를 단단히 고정시킨다. 이에 반응하여 아치 아래의 빛이 한층 더 빛나며 당신에게 오라고 신호를 보낸다.~ */
  IF ~~ THEN REPLY #51447 /* ~전이문으로 들어간다.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~위에 걸린 줄기를 그냥 내버려 둔다. ~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~나뭇가지 아래의 공간은 부드럽게 빛나고 있다. 그 너머에는 가시나무로 뒤덮인 방이 있는 것 같다. 당신은 래벌이 뽑아서 준 그녀의 회색 머리카락이 타래송곳처럼 뒤틀리고 있다는 사실을 깨닫는다.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~래벌의 머리카락을 왼쪽 집게 손가락에 감고서 전이문으로 들어간다. ~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~기다리며 머리카락이 어떤 역할을 하는지 본다. ~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~위에 걸린 줄기를 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~머리카락은 천천히 당신 왼팔을 따라서 올라간다, 그리고 당신 손목을 선회한 후, 왼쪽 집게손가락을 휘감아서 스스로를 단단히 고정시킨다. 이에 반응하여 아치 아래의 빛이 한층 더 빛나며 당신에게 오라고 신호를 보낸다.~ */
  IF ~~ THEN REPLY #51452 /* ~전이문으로 들어간다.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~위에 걸린 줄기를 그냥 내버려 둔다. ~ */ EXIT
END
