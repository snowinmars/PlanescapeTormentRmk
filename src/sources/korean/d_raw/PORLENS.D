// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PORLENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~PORLENS~

IF ~  !Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 0 // from:
  SAY #54247 /* ~전이문 렌즈는 당신 손 안에서 아무런 반응도 보이지 않는다. 모드론 입방체 밖에서는 기능하지 않는 듯하다.~ */
  IF ~~ THEN REPLY #54248 /* ~렌즈를 치운다.~ */ EXIT
END

IF ~  Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 1 // from:
  SAY #54251 /* ~전이문 렌즈은 에너지로 고동치고 있다. 그것은 당신이 행선지를 선택하기를 가다리고 있다...~ */
  IF ~  Global("AR0101_Visited","GLOBAL",1)
~ THEN REPLY #54253 /* ~벌통, 넝마주이 광장 부근.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0101",[1050.2350],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #54254 /* ~벌통, 시체안치소 부근.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #54256 /* ~벌통, 시장 부근.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #54257 /* ~벌통, 불타는 시체 바 부근.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #54258 /* ~마계구.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #54259 /* ~사무구.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #54260 /* ~눈물을 흘리는 돌 지하 묘지.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #54261 /* ~관둔다. 렌즈를 치운다.~ */ EXIT
END
