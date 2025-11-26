// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~이 기묘하게 생긴 작은 생물은 동물과 곤충의 특성을 모두 가지고 있다. 그것의 다리는 지나칠 정도로 큰 반면, 팔은 퇴화되어 매우 작으며, 등은 밝은 반점들이 있는 등껍질로 덮여 있다. 그것은 두 쌍의 곤충과 흡사한 날개를 지니고 있으며, 그 검은 눈과 입은 늘 즐겁게 웃고 있는 것처럼 보인다. ~ */
  IF ~~ THEN REPLY #21872 /* ~림-림을 귀여워해준다.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~림-림을 걷어찬다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~림-림을 그냥 내버려 둔다..~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~"삐요! 삐요!" 림-림은 날개를 울리며 기쁜 듯 뛰어다닌다. 림-림은 주인의 애정을 무척이나 즐기는 듯하다. ~ */
  IF ~~ THEN REPLY #21875 /* ~림-림을 조금 더 귀여워해준다.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~림-림을 걷어찬다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~림-림을 그냥 내버려 둔다..~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~당신은 림-림을 잽싸게 걷어차려고 하나 놈은 민첩하게 피한다. "삐요!" 림-림은 날개를 울리며 방향을 돌려 도망친다. ~ */
  IF ~~ THEN REPLY #21878 /* ~그것을 보내준다.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~림-림을 쫓아가 다시 걷어찬다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~림-림은 당신을 올려다본다. "삐요! 삐요!" 당신이 자신에게 관심을 가져 준다는 걸 알자 림-림은 즐겁게 날개를 울린다. "삐요!"~ */
  IF ~~ THEN REPLY #21880 /* ~림-림을 귀여워해준다.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~림-림을 걷어찬다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~림-림을 그냥 내버려 둔다..~ */ EXIT
END
