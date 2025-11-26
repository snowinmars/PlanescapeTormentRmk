// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEIVENE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEIVENE~

IF ~  Global("EiVene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3404 /* ~창백한 얼굴을 한 가냘픈 젊은 여자가 보인다. 움푹 들어간 볼과 목 때문에 그녀는 몹시 굶주린 것처럼 보인다. 그녀는 자기 앞에 놓인 시체를 해부할 생각인 듯 그 가슴을 손가락으로 쿡 찔러 보고 있다. ~ */
  IF ~~ THEN REPLY #3406 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #3407 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #3410 /* ~그녀는 아무런 응답도 하지 않는다... 그녀는 자신 앞에 놓인 시체에 너무 몰두하고 있는 것 같다. 그녀가 일을 하는 것을 지켜보다 당신은 그녀의 손가락이 실제로는 갈고리 발톱이라는 사실을 깨닫는다. 그것들은 마치 나이프처럼 시체의 흉강을 드나들며 내장을 제거하고 있다.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3412 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3413 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3414 /* ~"당신 손은 왜 그런 거요?"~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3415 /* ~"당신 손은 왜 그런 거요?"~ */ GOTO 19
  IF ~~ THEN REPLY #3416 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2
  SAY #3417 /* ~그녀는 아무런 응답도 하지 않는다.~ */
  IF ~~ THEN REPLY #3418 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ DO ~FaceObject(Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #3419 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #3420 /* ~그녀는 아무런 응답도 하지 않는다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 55
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #3421 /* ~그녀는 당신을 직시하려고 급히 몸을 돌린다... 그녀의 눈은 썩은 노란색이며, 동공은 오렌지색이다. 당신을 쳐다보면서 그녀의 표정은 놀라움에서 짜증으로 변한다, 그리고 그녀는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #3422 /* ~"어... 안녕하시오."~ */ DO ~SetGlobal("EiVene","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #3423 /* ~그녀는 당신 얘기를 듣지 못한 것 같다. 그녀는 당신이 하는 말이 이해가 가지 않는 듯 몸을 앞으로 구부리고 눈을 가늘게 뜬다. 눈의 이상 때문에 그녀는 지독한 근시인 것 같다. "너..." 그녀는 자신의 갈고리 손톱으로 딸깍 소리를 낸 다음, 기묘한 손짓을 한다. "가서 향료와 실을 찾아서 이 곳으로, 나 에이-빈에게 가져와. 자, 가라."

주: 당신에게 하나의 퀘스트가 주어졌다. 퀘스트는 당신 일기와 일지의 "퀘스트" 항목에 표시된다. 당신이 맡은 모든 퀘스트와 그들의 현재 상황을 보려면 일지 메뉴에서 "퀘스트"를 선택하면 된다.~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3424 /* ~그녀에게 실과 향료를 준다.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #37701 /* ~나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 나는 이미 두 가지를 모두 가지고 있었기 때문에 그녀에게 주었다. ~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3425 /* ~"먼저 질문할 것들이 있소..."~ */ JOURNAL #37702 /* ~나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3426 /* ~"먼저 질문할 것들이 있소..."~ */ JOURNAL #37702 /* ~나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3427 /* ~"당신 손은 왜 그런 거요?"~ */ JOURNAL #37702 /* ~나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3428 /* ~"당신 손은 왜 그런 거요?"~ */ JOURNAL #37702 /* ~나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.~ */ GOTO 20
  IF ~~ THEN REPLY #3429 /* ~떠난다.~ */ JOURNAL #37702 /* ~나는 시체안치소에서 에이-빈이라는 이름의 여자 더스트맨을 만났다. 그녀는 피부가 창백하고 손에 갈고리 손톱이 달렸을 뿐만 아니라 근시에 귀머거리였으며, 나를 좀비로 착각하였다. 그녀는 내게 가서 바늘과 실, 그리고 향료를 가져오라고 명령하였다. 아마 그녀 앞 테이블 위의 시체를 꿰매려는 모양이다. 시체안치서 어딘가, 아마도 인접하는 방들 중 하나에 있을 것이다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.3
  SAY #3430 /* ~그녀는 돌아선다... 당신이 한 얘기를 듣지 못한 것 같다. 그녀의 청력도 시력만큼이나 나쁜 듯하다.~ */
  IF ~~ THEN REPLY #3431 /* ~그녀의 어깨를 가볍게 두드려 관심을 끈다.~ */ GOTO 17
  IF ~~ THEN REPLY #3432 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 17.0
  SAY #3433 /* ~에이-빈은 당신 손으로부터 실을 재빠르게 채가 자신의 갈고리 손톱들 중 하나에 건 후, 시체의 가슴을 꿰매기 시작한다. 그 다음에는 향료를 넘겨 받아서 시체에 바르기 시작한다. ~ */
  IF ~~ THEN REPLY #3434 /* ~기다린다.~ */ GOTO 9
  IF ~~ THEN REPLY #3435 /* ~떠난다.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #3436 /* ~당신이 떠나려 하자 에이-빈은 말을 한다: "머물러라. 다음은 네 차례니까."~ */
  IF ~~ THEN REPLY #3437 /* ~기다린다.~ */ GOTO 9
  IF ~~ THEN REPLY #3438 /* ~재빨리 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #3439 /* ~그녀는 몇 분만에 작업을 끝낸다. 그녀는 손톱으로 딸각 소리를 낸 다음, 돌아서서 당신을 마주본다. 놀랍게도 그녀는 손을 뻗쳐 갈고리 손톱으로 당신 팔과 기슴을 만지기 시작한다.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3440 /* ~"어, 기분이 좋지 않다는 건 아니지만..."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3441 /* ~"어, 기분이 좋지 않다는 건 아니지만..."~ */ EXTERN ~DMORTE~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3442 /* ~계속 좀비 흉내를 낸다. ~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3443 /* ~계속 좀비 흉내를 낸다. ~ */ EXTERN ~DMORTE~ 59
  IF ~~ THEN REPLY #3444 /* ~그녀를 밀어 제치고 떠난다.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.4 12.1
  SAY #3445 /* ~당신이 그녀를 밀치자 그녀는 충격을 받은 듯 하다, "좀피? 넌 좀피가 아냐!" 그녀는 한 걸음 물러선 후 손뼉을 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.~ */
  IF ~~ THEN REPLY #3491 /* ~"그럼 좋소..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.2
  SAY #3446 /* ~그녀가 당신 팔과 가슴을 만지는 것을 지켜보면서 당신은 그녀가 당신의 흉터를 조사하고 있다는 것을 깨닫는다. 그녀는 손톱을 거두어 들여 두 번 튕긴 후, 앞쪽으로 몸을 구부려 당신 가슴에 새겨진 문신들을 살피기 시작한다. "흠... 누가 당신 몸에 그림을 그렸지? 벌통 사람들이 그랬나? 좀피를 존중할 줄 모르는군. 좀피는 그림이 아닌데." 그녀는 당신 흉터들 중 한 곳을 찔러 본다. "이 좀피는 상태가 나쁘군. 흉터는 많은 데 보존 처리가 안됐어."~ */
  IF ~~ THEN REPLY #3447 /* ~기다린다.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #3448 /* ~그녀는 손톱에 당신이 가져온 실을 걸고, 신속하게 다른 손톱 하나를 당신 흉터 근처에 찔러 넣는다. 당신은 핀으로 찌른 것 정도의 고통밖에 느끼지 않는다. 그녀는 이제부터 당신의 흉터를 꿰매려는 것 같다.  ~ */
  IF ~~ THEN REPLY #3449 /* ~그녀가 작업을 하도록 내버려 둔다. ~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,1)
FullHeal(Protagonist)
SetGlobal("Ravel_EiVene","GLOBAL",1)
~ JOURNAL #38199 /* ~내가 에이-빈에게 향료와 실을 가져다준 후, 그녀는 내 상처를 꿰매고 내 몸에 향료를 발라주었다. 이상하게도 난 더 건강해진 것 같다는 느낌이 들었다. ~ */ GOTO 13
  IF ~~ THEN REPLY #3450 /* ~그녀를 밀어 제치고 떠난다.~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #3451 /* ~에이-빈이 당신 흉터들을 꿰매는 동안 신기하게도 별 고통은 느껴지지 않는다.

작업을 끝낸 후, 그녀는 당신 냄새를 맡고 눈살을 찌푸린다. 그 다음 그녀는 손가락을 향료 속에 넣는다. 몇 분만에 그녀는 당신의 온몸에 향료를 다 바르고... 기이하게도 당신은 자신의 상태가 나아졌다는 느낌을 받는다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3452 /* ~그녀가 작업을 하도록 내버려 둔다. ~ */ GOTO 14
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3453 /* ~그녀가 작업을 하도록 내버려 둔다. ~ */ EXTERN ~DMORTE~ 60
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3454 /* ~에이-빈은 당신 몸에 마지막 마무리를 하고, 당신 몸의 냄새를 다시 한 번 맡아 본 다음, 갈고리 손톱으로 저리 가라는 손짓을 한다. "끝났다. 가라." ~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3456 /* ~"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3457 /* ~"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #4350 /* ~떠난다.~ */ EXIT
END

IF ~  Global("EiVene","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #3458 /* ~에이-빈이 보인다. 그녀는 아직도 시체의 가슴을 갈고리 손톱으로 해부하고 있다. 갈고리 손톱의 리듬은 당신에게 뭔가를 상기시키나 그것이 정확히 무엇인지는 생각나지 않는다.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #3459 /* ~그녀를 관찰하며 그 손동작을 연구한다.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ JOURNAL #61612 /* ~에이-빈이 그녀의 갈고리 손톱으로 시체를 꿰매는 것을 보고 있자니 기묘한 기억이 떠올랐다... 매우 오래 전에 시체에 비슷한 시술을 한 적이 있다는 사실을 기억해냈다. 단, 그 때 나는 시체에서 물건을 꺼내는 대신 시체의 가슴속에 뭔가를 집어 넣었다. 나중에 되찾기 위해 그 곳에 집어 넣었다는 생각이 들었다. 기억 속에서 내가 팔을 포개 놓자 시체도 그대로 따라 했다... 시체의 머리 가죽에는 "42"라는 번호가 적혀 있었다. ~ */ GOTO 16
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #3463 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4351 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ GOTO 22
  IF ~~ THEN REPLY #4352 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #3464 /* ~에이-빈이 작업하는 것을 지켜보고 있자니 머리에 자극이 오는 것을 느낀다. 그리고 갑자기 현기증이 나면서 시야가 흐려진다...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 6.0 15.1 25.0 27.0
  SAY #3468 /* ~그녀는 돌아서서 당신을 보고는 눈살을 찌푸린다. "바보 같은 좀피." 그녀는 조바심하며 자신의 갈고리 손톱으로 딸깍 소리를 낸 다음, 손톱으로 뭔가를 꿰매는 시늉을 한다. "가서 향료와 실을 찾아서 이 곳으로, 나 에이-빈에게 가져와. 자, 가라."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3469 /* ~그녀에게 실과 향료를 준다.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #38202 /* ~나는 에이-빈에게 실과 바늘, 그리고 향료를 가져다 주었다. 그녀는 별로 고마운 눈치가 아니었다. ~ */ GOTO 7
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3470 /* ~"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3497 /* ~"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #4357 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.0 17.1 22.0
  SAY #3471 /* ~그녀는 몸을 앞으로 구부려 당신의 손짓을 쳐다본 다음, 코방귀를 뀐다. 그녀는 손을 법복 속에 집어 넣었다가 꺼내는데, 그 때 그녀의 무시무시하게 날카로운 집게손가락에는 열쇠가 하나 걸려 있다. "쓰고 난 다음에는 도로 가져와. 자, 가라고."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3494 /* ~"당신 손은 왜 그런 거요?"~ */ JOURNAL #38203 /* ~나는 내게 처리실 열쇠를 주도록 에이-빈을 설득하는 데 성공했다. ~ */ GOTO 23
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3495 /* ~"당신 손은 왜 그런 거요?"~ */ JOURNAL #38203 /* ~나는 내게 처리실 열쇠를 주도록 에이-빈을 설득하는 데 성공했다. ~ */ GOTO 21
  IF ~~ THEN REPLY #3496 /* ~떠난다.~ */ JOURNAL #38203 /* ~나는 내게 처리실 열쇠를 주도록 에이-빈을 설득하는 데 성공했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.3
  SAY #3472 /* ~그녀는 아무런 응답도 하지 않는다.~ */
  IF ~~ THEN JOURNAL #38205 /* ~내가 만난 여자 더스트맨은 "티플링"이라는 종족으로 그들의 혈관에는 마족의 피가 흐르고 있다고 한다. 마족의 피는 그들을 몸을, 그리고 때로는 정신까지 변질시키는 듯하다. 모트에 의하면 적지 않은 수의 티플링들이 있는 모양이며... 그건 상당한 수의 마족이 존재한다는 것을 의미한다. ~ */ EXTERN ~DMORTE~ 56
END

IF ~~ THEN BEGIN 20 // from: 5.2 5.4
  SAY #3485 /* ~그녀는 돌아선다... 당신이 한 얘기를 듣지 못한 것 같다. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 57
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY #3486 /* ~그녀는 돌아선다... 당신이 한 얘기를 듣지 못한 것 같다. 그녀의 청력도 시력만큼이나 나쁜 듯하다.~ */
  IF ~~ THEN JOURNAL #38205 /* ~내가 만난 여자 더스트맨은 "티플링"이라는 종족으로 그들의 혈관에는 마족의 피가 흐르고 있다고 한다. 마족의 피는 그들을 몸을, 그리고 때로는 정신까지 변질시키는 듯하다. 모트에 의하면 적지 않은 수의 티플링들이 있는 모양이며... 그건 상당한 수의 마족이 존재한다는 것을 의미한다. ~ */ EXTERN ~DMORTE~ 58
END

IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
  SAY #3493 /* ~그녀는 돌아서서 당신을 보고는 눈살을 찌푸린다. "바보 같은 좀피." 그녀는 조바심하며 자신의 갈고리 손톱으로 딸깍 소리를 낸 다음, 손톱으로 뭔가를 꿰매는 시늉을 한다. "넌 다 꿰맸어. 자, 가라."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3501 /* ~"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3502 /* ~"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #4358 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.0
  SAY #3498 /* ~그녀는 돌아선다... 당신이 한 얘기를 듣지 못한 것 같다. 그녀의 청력도 시력만큼이나 나쁜 듯하다.~ */
  IF ~~ THEN REPLY #3499 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.1 17.2 22.1
  SAY #4200 /* ~그녀는 몸을 앞으로 구부려 당신의 손짓을 쳐다본 다음, 코방귀를 뀐다. 그녀는 손을 법복 속에 집어 넣어 잠시 뒤적거린 후, 어깨를 으쓱한다. "열쇠가 없어." 그녀는 저리 가라는 손짓을 한다. "자, 가라고."~ */
  IF ~~ THEN REPLY #4201 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #4353 /* ~당신은 그녀를 한동안 살펴본다, 그리고 그녀의 양손의 리듬은 당신의 뇌리에 두 가지 기억이 떠오르게 만든다. 그 중 하나는 당신이 어떤 현악기, 아마 하프를 연주하는 것이고, 다른 하나는 당신이 지갑을 훔치는 기억이다... 놀랍게도 후자는 당신을 에이-빈의 지갑을 훔치고 싶다는 갑작스런 유혹에 빠뜨린다. 

주: 당신은 기억을 하나 되찾았다. 기억은 당신에게 추가적인 경험치나 기술을 부여할 수 있으며, 경우에 따라서는 나중에 다른 기억들을 되찾는 실마리가 되기도 한다. ~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #4354 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4355 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ GOTO 22
  IF ~~ THEN REPLY #4356 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.0
  SAY #63477 /* ~...당신은 최근에 죽은 시체 앞에 서 있다. 시체는 사후 경직 탓에 기괴한 미소를 짓고 있으며, 머릿가죽에는 '42'란 번호가 실로 꿰매져 있다. 좀비는 철판 위에 누워 있으며, 당신은 방금 그의 가슴을 꿰매는 작업을 마친 상황이다. 당신이 그 안에 뭔가를 넣었다. 당신이 나중에 다시 이 곳에 오게 되면 유용할 뭔가를...~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #63478 /* ~메아리: "이것들을 안전하게 보관하고 내가 돌아오기를 기다리시오."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("42_Secret","GLOBAL",1)
~ GOTO 27
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63479 /* ~메아리: "이것들을 안전하게 보관하고 내가 돌아오기를 기다리시오."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #63480 /* ~기억 속의 당신 목소리는 메아리치며, 당신 귀에는 왠지 기묘하고 공허하게 들린다. 당신이 팔짱을 끼자 놀랍게도 시체 역시 팔짱을 낀다. 잠시 후 시체의 손은 다시 허리 쪽으로 내려가고, 그와 동시에 영상이 사라지기 시작한다... 그리고 당신은 다시 에이-빈이 꿰매는 동작을 하는 것을 지켜보고 있다.

주: 당신은 기억을 하나 되찾았다. 기억은 당신에게 추가적인 경험치나 기술을 부여할 수 있으며, 경우에 따라서는 나중에 다른 기억들을 되찾는 실마리가 되기도 한다. ~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #63482 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #63481 /* ~그녀를 가볍게 두드려 관심을 끈다.~ */ GOTO 22
  IF ~~ THEN REPLY #63483 /* ~떠난다.~ */ EXIT
END
