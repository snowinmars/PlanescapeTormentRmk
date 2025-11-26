// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MBOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~MBOX~

IF ~  Global("Demonbox","Global",0)
~ THEN BEGIN 0 // from:
  SAY #48933 /* ~이 잘 만든 화려한 상자의 앞부분에는 커다란 빨간색 보석이 박혀 있다. 어쩐지 무시무시한 느낌이 든다. ~ */
  IF ~~ THEN REPLY #48934 /* ~상자를 연다.~ */ DO ~SetGlobal("DemonBox","GLOBAL",1)
SetGlobal("Gamma","Global",1)
DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,1,0,0)
CreateCreatureAtFeet("BoxDmn1")
~ EXIT
  IF ~~ THEN REPLY #48935 /* ~상자를 치운다.~ */ EXIT
END

IF ~  GlobalGT("Demonbox","Global",1)
~ THEN BEGIN 1 // from:
  SAY #60318 /* ~이 잘 만든 화려한 상자의 앞부분에는 커다란 빨간색 보석이 박혀 있다. 더 이상 무시무시한 느낌은 들지 않는다. ~ */
  IF ~~ THEN REPLY #60319 /* ~상자를 연다.~ */ DO ~DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,0,0,0)
~ EXIT
  IF ~~ THEN REPLY #60320 /* ~상자를 치운다.~ */ EXIT
END
