// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~이것은 당신의 애완용 림-림이다. 당신이 관심을 가져 준다는 걸 눈치채고는 귀엽게 짹짹 운다. "삐요!"~ */
  IF ~~ THEN REPLY #42733 /* ~당신의 림-림을 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~당신의 림-림을 다시 들어 올린다.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~당신의 림-림을 귀여워해준다.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~당신의 림-림을 걷어찬다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~일단 당신 림-림과 노는 것을 멈춘다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~당신의 림-림은 동물과 곤충의 특성을 모두 가지고 있다. 그것의 다리는 지나칠 정도로 큰 반면, 팔은 퇴화되어 매우 작으며, 등은 밝은 반점들이 있는 등껍질로 덮여 있다. 그것은 두 쌍의 곤충과 흡사한 날개를 지니고 있으며, 그 검은 눈과 입은 늘 즐겁게 웃고 있는 것처럼 보인다. ~ */
  IF ~~ THEN REPLY #42738 /* ~당신의 림-림을 다시 들어 올린다.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~당신의 림-림을 귀여워해준다.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~당신의 림-림을 걷어찬다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~일단 당신 림-림과 노는 것을 멈춘다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~"삐요! 삐요!" 림-림은 날개를 울리며 기쁜 듯 뛰어다닌다. 림-림은 주인의 애정을 무척이나 즐기는 듯하다. ~ */
  IF ~~ THEN REPLY #42742 /* ~당신의 림-림을 다시 들어 올린다.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~당신 림-림을 조금 더 귀여워해준다.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~당신의 림-림을 걷어찬다.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~일단 당신 림-림과 노는 것을 멈춘다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~당신은 당신 림-림을 재빨리 걷어차려고 하나 놈은 민첩하게 피한다. "삐요!" 그것은 날개를 윙윙거리며 돌아서서 도망친다. ~ */
  IF ~~ THEN REPLY #42746 /* ~그것을 놓아준다.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~림-림을 쫓아가 다시 걷어찬다.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
