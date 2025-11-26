// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM506.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM506~

IF ~  Global("506_Thread","GLOBAL",0)
~ THEN BEGIN 0 // from: 3.2
  SAY #45419 /* ~꿰맨 곳 투성이인 이 시체는 두 철판 사이를 천천히 비틀거리면서 오가고 있다. 그의 이마... 목 옆쪽... 오른팔... 에는 "506"이란 번호가 실로 꿰매져 있다... 이 시체의 벗겨지고 있는 피부는 너무나도 빈번하게 꿰매진 탓에 마치 기괴한 거리 지도처럼 보인다.~ */
  IF ~  Global("506_Thread","GLOBAL",0)
~ THEN REPLY #45420 /* ~꿰맨 자국을 살펴본다.~ */ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45421 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45422 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #45423 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45424 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0 4.1 5.0 5.1 5.2
  SAY #45425 /* ~시체는 아무 것도 느끼지 못하고 앞만 바라본다.~ */
  IF ~~ THEN REPLY #45478 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 5.3
  SAY #45426 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~~ THEN REPLY #45479 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #45427 /* ~꿰맨 자국은 시체의 전신을 감싸고 있다. 팔에서 시작하여, 가슴과 목을 거쳐, 축축한 흰머리 속에까지 이르고 있다. 당신은 꿰맨 자국들의 교차로를 따라가다가 누군가가 시체의 이마에 바늘을 쑤셔 넣은 것을 발견한다... 바늘에는 머리의 측면을 꿰매고 있는 실이 꿰어져 있다. 만약 실을 자를 수 있는 도구가 있다면 바늘을 빼낼 수 있을 듯하다.~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #45480 /* ~꿰맨 자국을 메스로 베어낸 다음 바늘과 실을 꺼낸다.~ */ DO ~SetGlobal("506_Thread","GLOBAL",1)
GiveItemCreate("Needle",Protagonist,1,0,0)
AddexperienceParty(100)
~ GOTO 4
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #45481 /* ~"흠... 아마 이 부근에 실을 자르는 데 쓸 수 있는 연장이 있을 것 같군... 다시 오리다."~ */ EXIT
  IF ~~ THEN REPLY #45482 /* ~시체를 다시 조사한다.~ */ GOTO 0
  IF ~~ THEN REPLY #45483 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45428 /* ~당신은 메스로 실을 깔끔하게 잘라낸다, 그리고 바늘을 실과 함께 뽑아 낸다. 그러자 이마를 덮고 있던 피부가 벗겨져 백묵처럼 하얀 두개골이 드러난다. 놀랍게도 그 곳에는 "78"이란 번호가 새겨져 있다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45484 /* ~"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45496 /* ~"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."~ */ GOTO 1
  IF ~~ THEN REPLY #50097 /* ~시체를 다시 살펴본다.~ */ GOTO 5
  IF ~~ THEN REPLY #66889 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~  Global("506_Thread","GLOBAL",1)
~ THEN BEGIN 5 // from: 4.2
  SAY #45429 /* ~꿰맨 곳 투성이인 이 시체는 두 철판 사이를 천천히 비틀거리면서 오가고 있다. 그의 몸 대부분의 부위에는 506"이란 번호가 실로 꿰매져 있으나, 이마의 피부가 벗겨져 드러난 두개골에는 "78"이란 번호가 새겨져 있다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45502 /* ~"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45508 /* ~"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45510 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45512 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #45513 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45514 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END
