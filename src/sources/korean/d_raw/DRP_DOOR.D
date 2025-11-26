// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~아치는 작은 빌딩 쪽으로 고작 몇 인치 들어간 곳부터 단단한 쓰레기의 벽으로 막혀 있다. 쓰레기는 어찌나 단단히 뭉쳐져 있는지 마치 돌과 모르타르로 만든 벽 같다. ~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~떠난다.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~나는 넝마주이 광장에서 쓰레기로 가득 차 통과할 수가 없는 아치를 발견했다. 그 곳으로 향하는 발자국들이 있으나 방향을 돌린 흔적은 없다, 그러니 통과할 수 있는 방법이 분명히 있을 것이다... 아마 광장에 있는 사람들 중 누군가는 알지도 모른다.~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~떠난다.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~나는 넝마주이 광장에서 쓰레기로 가득 차 통과할 수가 없는 아치를 발견했다. 그 곳으로 향하는 발자국들이 있으나 방향을 돌린 흔적은 없다, 그러니 통과할 수 있는 방법이 분명히 있을 것이다... 아마 광장에 있는 사람들 중 누군가는 알지도 모른다.~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~떠난다.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~나는 넝마주이 광장에서 쓰레기로 가득 차 통과할 수가 없는 아치를 발견했다. 그 곳으로 향하는 발자국들이 있으나 방향을 돌린 흔적은 없다, 그러니 통과할 수 있는 방법이 분명히 있을 것이다... 아마 광장에 있는 사람들 중 누군가는 알지도 모른다.~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~떠난다.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~아치는 작은 빌딩 쪽으로 고작 몇 인치 들어간 곳부터 단단한 쓰레기의 벽으로 막혀 있다. 쓰레기는 어찌나 단단히 뭉쳐져 있는지 마치 돌과 모르타르로 만든 벽 같다. 하지만 당신이 가까이 다가가자 아치의 윤곽이 빛나기 시작한다. 당신은 당신이 지니고 있는 한 줌의 고물 역시 빛나고 있다는 사실을 깨닫는다. ~ */
  IF ~~ THEN REPLY #48357 /* ~아치 속에 고물을 쑤셔 넣는다.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~뒤로 물러선 후 그 장소를 떠난다.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~뒤로 물러선 후 그 장소를 떠난다.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~이것은 넝마주이 광장과 쓰레기 굴 입구를 연결하는 전이문이다. 불행히도 지금 당신은 그 문을 작동하는 데 필요한 고물을 가지고 있지 않다. ~ */
  IF ~~ THEN REPLY #48360 /* ~떠난다.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~이것은 넝마주이 광장과 쓰레기 굴 입구를 연결하는 전이문이다. 당신이 가지고 있는 고물이 가까운 거리까지 온 탓에 벌써부터 빛나기 시작하고 있다.~ */
  IF ~~ THEN REPLY #48362 /* ~아치 속에 고물을 쑤셔 넣는다.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~쓰레기로 만들어진 벽은 빛을 내며 흔들리더니, 스스로 접히듯이 사라진다, 그리고 그 너머로 빈 공간이 드러난다. 통로 또는 전이문이 아치의 틀 안에 형성되었다. ~ */
  IF ~~ THEN REPLY #48365 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~돌아서서 떠나려다 당신은 아치로 향하고는... 돌아오지 않는 몇 개의 더러운 발자국을 발견한다. 아무 데로도 통하지 않는 듯한 아치치고는 통행량이 많은 것 같다.~ */
  IF ~~ THEN REPLY #64989 /* ~"흠... 어떻게 하면 지나갈 수 있는지 알고 있는 사람이 이 근방에 있을 텐데..."~ */ EXIT
END
