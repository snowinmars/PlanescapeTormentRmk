// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~이 골방은 북쪽 벽으로 고작 몇 피트 들어간 곳에서 끝난다. ~ */
  IF ~~ THEN REPLY #48504 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~이 골방은 북쪽 벽으로 고작 몇 피트 들어간 곳에서 끝난다. 

썩은 메리는 당신에게 이 곳에 들어가기 전에 눈을 감고 침묵의 왕에 대해서 생각하라고 말했다. 그렇게 하면 그녀가 '살아 있는' 한 침묵의 왕의 알현실로 통하는 전이문이 작동할 것이다.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~전이문을 작동시키려고 시도한다.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~전이문을 작동시킨다.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~전이문을 작동시킨다.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~전이문을 작동시키려고 시도한다.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~전이문을 작동시키지 않고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~아무 일도 일어나지 않는다. 썩은 메리는 죽은 모양이다...~ */
  IF ~~ THEN REPLY #48510 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~아무 일도 일어나지 않는다. 당신이 지난번에 침묵의 왕의 알현실에 침입한 후, 하그림이 전이문의 특성을 바꾸거나 아예 파괴한 것 같다.".~ */
  IF ~~ THEN REPLY #65505 /* ~떠난다.~ */ EXIT
END
