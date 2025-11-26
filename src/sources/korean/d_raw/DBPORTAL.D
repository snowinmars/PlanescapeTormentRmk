// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBPORTAL~

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #52724 /* ~이 곳에는 바위가 갈라진 틈이 있다. 애를 쓰면 간신히 그 사이로 들어갈 수는 있을 것 같다, 그러나 그 어디로도 통하는 것 같지는 않다. 당신은 이 곳의 땅바닥에는 흑요석의 파편들이 널려 있다는 사실을 눈치챈다. 아마 때때로 이 곳의 하늘을 가로질러 이 계곡을 구성하고 있는 거암들과 충돌하는 불덩어리들 때문에 생긴 듯하다. ~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #52725 /* ~흑요석의 파편을 집어 입 안에 넣고 혓바닥을 베도록 파편을 문다...~ */ DO ~SetGlobal("BD1000_Port_Active","GLOBAL",1)
SetPortalCursor("Baator_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Baator_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Portal_Open","GLOBAL",0)
~ GOTO 1
  IF ~~ THEN REPLY #52778 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52779 /* ~들쭉날쭉한 흑요석 조각이 당신 혀를 찌르자 당신 입 안에서는 기묘한 따끔함이 느껴진다. 그러자 바위 틈새 주변의 지역이 빛나기 시작하면서 그 곳에 갑자기 전이문이 나타난다...~ */
  IF ~~ THEN REPLY #52780 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #68118 /* ~이 곳에는 바위가 갈라진 틈이 있다. 애를 쓰면 간신히 그 사이로 들어갈 수는 있을 것 같다, 그러나 그 어디로도 통하는 것 같지는 않다. 당신은 이 곳의 땅바닥에는 흑요석의 파편들이 널려 있다는 사실을 눈치챈다. 아마 때때로 이 곳의 하늘을 가로질러 이 계곡을 구성하고 있는 거암들과 충돌하는 불덩어리들 때문에 생긴 듯하다. ~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #68119 /* ~흑요석의 파편을 하나 주워서 입 안에 넣고, 그것이 혀를 베도록 깨문다.~ */ GOTO 3
  IF ~~ THEN REPLY #68121 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #68120 /* ~전이문을 사용하려고 하다가 당신은 자신이 아직 후회의 요새로 통하는 전이문의 위치와 그 열쇠에 대해 아무 것도 모른다는 사실을 깨닫는다. 이 정보를 해골들의 기둥으로부터 얻을 때까지 베이터를 떠나서는 안 된다. ~ */
  IF ~~ THEN REPLY #68122 /* ~떠난다.~ */ EXIT
END
