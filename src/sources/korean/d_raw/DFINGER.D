// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINGER~

IF ~  Global("Finger","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #17479 /* ~이것은 당신과 비슷한 체격의 인간형 생명체의 손가락뼈로, 살점은 모두 썩어서 깨끗하게 떨어져 나갔다. 손가락에는 아직도 이상하게 생긴 반지가 남아있다. 반지는 매우 복잡한 디자인으로 수십 개의 작고 화려한 테두리와 돌출부가 조각되어 있다. ~ */
  IF ~~ THEN REPLY #17485 /* ~손가락으로부터 반지를 빼낸다.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #17486 /* ~손가락뼈를 치운다.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ EXIT
END

IF ~  Global("Finger","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17480 /* ~당신은 오해된 손가락뼈를 꺼내서 다시 살펴본다. 그것은 당신과 비슷한 체격의 인간형 생명체의 손가락뼈로, 살점은 모두 썩어서 깨끗하게 떨어져 나갔다. 손가락에는 아직도 이상하게 생긴 반지가 남아있다. 반지는 매우 복잡한 디자인으로 수십 개의 작고 화려한 테두리와 돌출부가 조각되어 있다. ~ */
  IF ~~ THEN REPLY #17487 /* ~손가락으로부터 반지를 빼낸다.~ */ GOTO 2
  IF ~~ THEN REPLY #17488 /* ~손가락뼈를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17481 /* ~아무리 노력해도 반지를 빼낼 수가 없다. 마치 반지의 날카로운 테두리들이 죽은 손가락으로 파고들어 놓아주지 않으려는 것 같다. 당신은 그것으로부터 묘한 느낌을 받는다...~ */
  IF ~  HPLT(Protagonist,5)
~ THEN REPLY #17489 /* ~당신의 손가락을 제거하고 대신 그 손가락뼈를 접합시킨다.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 3
  IF ~  HPGT(Protagonist,4)
~ THEN REPLY #17490 /* ~당신의 손가락을 제거하고 대신 그 손가락뼈를 접합시킨다.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 4
  IF ~~ THEN REPLY #17491 /* ~손가락뼈를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17482 /* ~당신은 당신의 왼쪽 무명지를 입 안에 넣고, 눈을 감고 심호흡을 한 후, 있는 힘을 다해 깨문다. 역겨운 *우두둑* 소리와 함께 당신은 피의 맛과 냄새에 압도당한다. 불행히도 당신의 몸은 더 이상의 손상을 견뎌 낼 상태가 아니다. 당신은 땅바닥에 쓰러져 죽는다.~ */
  IF ~~ THEN REPLY #17492 /* ~완료.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #17483 /* ~당신은 당신의 왼쪽 무명지를 입 안에 넣고, 눈을 감고 심호흡을 한 후, 있는 힘을 다해 깨문다. 역겨운 *우두둑* 소리와 함께 당신은 피의 맛과 냄새에 압도당한다. 당신은 피투성이 손가락을 뱉어 내고, 반지를 낀 썩은 손가락뼈를 피가 용솟음치듯 나오는 기부에 갖다 댄다..."~ */
  IF ~~ THEN REPLY #17493 /* ~계속한다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17484 /* ~처음에는 아무런 일도 일어나지 않는다, 그리고 당신은 스스로 한 짓에 대해 경악한다. 하지만 따끔따끔한 감각과 함께 뼈가 융합되고, 근육이 재결합되기 시작한다. 순식간에 손가락뼈는 당신 몸의 살아 있는 일부분이 되었다. 단, 아직도 욱신거리기는 한다. 톱니가 나 있는 반지는 갑자기 느슨해져 당신 손바닥으로 미끄러져 나온다...~ */
  IF ~~ THEN REPLY #17494 /* ~완료.~ */ DO ~TransformPartyItem("Finger","Jring",1,0,0)
~ EXIT
END
