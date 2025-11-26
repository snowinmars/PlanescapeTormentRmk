// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKITLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKITLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #49453 /* ~키가 큰 미모의 여인이 보인다. 그녀의 시선은 여관의 벽을 향하고 있으나, 실제로 그 곳을 쳐다보고 있지는 않는 것 같다. 그녀는 주먹을 천천히 쥐었다 폈다 하고 있다. 당신이 시야에 들어오자 그녀는 재빨리 당신의 옷과 장비를 훑어본 후 당신 얼굴을 빤히 쳐다본다. 그녀는 냉소한 후 다시 시선을 돌린다.~ */
  IF ~~ THEN REPLY #49454 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #49455 /* ~그냥 지나친다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49456 /* ~그녀는 돌아서서 당신을 쳐다보고는 눈살을 찌푸린다. "당신은 늘 알지도 못하는 사람에게 말을 거는 버릇이 있나요?"~ */
  IF ~~ THEN REPLY #49457 /* ~"그들에게 물어볼 것이 있을 경우에는 그렇소."~ */ GOTO 2
  IF ~~ THEN REPLY #49458 /* ~"늘 그런 건 아니오, 하지만 당신과 얘기하는 것이 좋을 것 같다고 생각했소."~ */ GOTO 2
  IF ~~ THEN REPLY #49459 /* ~"아니오. 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #49460 /* ~"그런 짓들이나 하다니 당신은 정말 흥미로운 삶을 살고 있군요. 미안하지만 나는 바빠요. 날 그냥 내버려 두면 고맙겠어요."~ */
  IF ~~ THEN REPLY #49461 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #49462 /* ~"그럼 당신을 그냥 내버려 두리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 3 // from: 2.0
  SAY #49463 /* ~"'나는 바빠요'란 말에서 어떤 부분이 이해가 되지 않은 거죠? 날... 내버려... 둬요. 알겠어요?" 그녀는 다시 시선을 돌리고 생각에 잠긴다. 그녀는 아랫입술을 깨물기 시작한다, 그러지 피가 몇 방울 흘러나온다. ~ */
  IF ~~ THEN REPLY #49464 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mediate","GLOBAL",0)
NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #49465 /* ~키가 큰 미모의 여인이 보인다. 그녀의 시선은 여관의 벽을 향하고 있으나, 실제로 그 곳을 쳐다보고 있지는 않는 것 같다. 그녀는 주먹을 천천히 쥐었다 폈다 하고 있다. 당신이 시야에 들어오자 그녀는 재빨리 당신의 옷과 장비를 훑어본 후 당신 얼굴을 빤히 쳐다본다. 그녀는 냉소한 후 다시 시선을 돌린다. "뭔가를 찾고 있나요?" 그녀는 아직도 당신을 쳐다보려고 하지 않는다.~ */
  IF ~~ THEN REPLY #49466 /* ~"내가 알기로 당신은 내가 이 열쇠에 대해 얘기를 해야 할 다음 사람이오."~ */ GOTO 5
  IF ~~ THEN REPLY #49467 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #49468 /* ~"지금 당장은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #49469 /* ~"열쇠에 대해서인가요?" 그녀는 눈살을 찌푸린다 "무슨 일을 해야 하는지 알고 싶은 거죠? 간단한 일이에요. 관심이 있나요? 나하고 얘기를 하려고 왔으니 물론 있겠죠. 진짜 질문은 내가 제시하는 조건을 받아들이겠느냐는 거예요."~ */
  IF ~~ THEN REPLY #49471 /* ~"내가 뭘 해야 하는지 말해주시오."~ */ JOURNAL #49473 /* ~키틀라는 내게 크럼플펀치와 케스터라는 두 사내들로부터 유서를 받아 오거나, 아니면 그들의 사이의 승강이를 해결하라고 했다. 이 일을 해주면 그녀는 대가로 디바를 만나는 데 필요한 열쇠의 두 번째 부분을 내게 줄 것이다.~ */ GOTO 6
  IF ~~ THEN REPLY #49472 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 10.7
  SAY #49474 /* ~"크럼플펀치와 케스터라는 두 남자가 있어요. 크럼플펀치는 대장장이고 케스터는 증류주 제조업자예요. 두 사람 모두 내게 *거액의* 빚을 지고 있어요. 그런데 두 사람 중 하나는 상대방에게 빚을 지고 있기 때문에 그 어느 쪽도 내게 빚을 갚지 않고 있어요. 실인즉 지금 그들은 유산을 놓고 다투고 있어요. 그들이 가지고 있는 유증을 받아 오세요. 그러면 난 그들과 *매우* 유리하게 흥정을 할 수 있을 테니까요. 만약 그럴 수가 없다면 그들이 상호간의 문제를 해결하도록 중재하든지 죽이세요. 그러면 열쇠의 두 번째 부분을 주겠어요."~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"나는 양쪽 유증을 다 가져왔소."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"나는 크럼플펀치의 유증을 가져왔소."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"나는 케스터의 유증을 가져왔소."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"크럼플펀치는 죽었소."~ */ GOTO 21
  IF ~  !Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"케스터는 죽었소."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"그들은 양쪽 모두 죽었소."~ */ GOTO 23
  IF ~~ THEN REPLY #3787 /* ~"나는 하지 않겠소."~ */ GOTO 8
  IF ~  Global("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"그러리다. 안녕히 계시오."~ */ DO ~SetGlobal("Mediate","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.6
  SAY #49478 /* ~그녀는 눈살을 아치 모양으로 찌푸린다. "당신이 그 임무를 마치면 얘기를 하도록 하지요, 네? 가서 당장 일에 착수하세요." 그녀는 돌아서서 자신의 술을 마신다.~ */
  IF ~~ THEN REPLY #49479 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.6
  SAY #49480 /* ~그녀는 싹싹함 미소를 짓는다. "그러면 열쇠를 얻을 수가 없지요. 그만 가보세요."~ */
  IF ~~ THEN REPLY #49481 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",2)
Global("Mediate","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49482 /* ~"다시 왔군요, 네? 어떻게 되다 보니까 당신 힘을 빌릴 일이 생겼군요. 당신이 날 도우면, 나도 당신을 돕겠어요, 그럼 우리 모두 다 행복하게 되는 거죠."~ */
  IF ~~ THEN REPLY #49483 /* ~"난 무슨 일을 해야 하오?"~ */ JOURNAL #49485 /* ~키틀라는 내게 크럼플펀치와 케스터라는 두 사내들로부터 유서를 받아 오거나, 아니면 그들의 사이의 승강이를 해결하라고 했다. 이 일을 해주면 그녀는 대가로 디바를 만나는 데 필요한 열쇠의 두 번째 부분을 내게 줄 것이다.~ */ GOTO 6
  IF ~~ THEN REPLY #49484 /* ~"나중에. 안녕히 계시오."~ */ JOURNAL #49485 /* ~키틀라는 내게 크럼플펀치와 케스터라는 두 사내들로부터 유서를 받아 오거나, 아니면 그들의 사이의 승강이를 해결하라고 했다. 이 일을 해주면 그녀는 대가로 디바를 만나는 데 필요한 열쇠의 두 번째 부분을 내게 줄 것이다.~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Mediate","GLOBAL",0)
!Global("Mediate","GLOBAL",6)
!Global("Mediate","GLOBAL",7)
!Global("Mediate","GLOBAL",8)
!Global("Mediate","GLOBAL",10)
~ THEN BEGIN 10 // from:
  SAY #49486 /* ~그녀의 눈이 선술집의 어두운 불빛 아래서 번득인다. "날 위해 뭔가를 가져왔나요?"~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"나는 양쪽 유증을 다 가져왔소."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"나는 크럼플펀치의 유증을 가져왔소."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"나는 케스터의 유증을 가져왔소."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"크럼플펀치는 죽었소."~ */ GOTO 21
  IF ~  Global("Kester_Dead_KAPUTZ","GLOBAL",1)
!Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"케스터는 죽었소."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"그들은 양쪽 모두 죽었소."~ */ GOTO 23
  IF ~~ THEN REPLY #66359 /* ~"지금은 아무 것도 없소. 하지만 노력 중이오. 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50063 /* ~"내가 무슨 일을 해야 하는지 다시 얘기해주겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #49499 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 10.0
  SAY #49492 /* ~"정말안가요? 그것들을 내게 주세요, 그럼 당신에게 열쇠의 두 번째 부분을 줄 테니"~ */
  IF ~~ THEN REPLY #49493 /* ~"여기 있소."~ */ DO ~TakePartyItemNum("CrumLeg",1)
TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",10)
AddexperienceParty(150000)
~ GOTO 12
  IF ~~ THEN REPLY #49494 /* ~"나는 아직도 해결책을 모색하고 있소. 내게 기회를 주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #49495 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49496 /* ~그녀는 그것들을 당신 손으로부터 건네 받더니 사악하게 웃는다. "자, 이래도 그 작자들이 내게 돈을 갚을 방법이 없다고 말할지 들어봐야겠군요." 그녀는 유증들을 허리에 찬 주머니에 넣는다. "열쇠의 두 번째 부분을 받을 준비는 되었나요?"~ */
  IF ~~ THEN REPLY #49497 /* ~"그렇소. 말해주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #49498 /* ~"아직 아니오. 우선 내 질문에 대답해 주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #49499 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 17.1 18.1
  SAY #49500 /* ~그녀는 한숨을 쉰다. "당신이 나와 얘기를 한다고 해서 그들이 내게 갚아야 할 돈이 내 주머니에 더 빨리 들어오는 건 아니지요. 가서... 그걸 가져오세요."~ */
  IF ~~ THEN REPLY #49501 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.0 19.0 20.0 21.0 22.0 23.0
  SAY #49502 /* ~그녀는 잠시 집중을 한 후, 평소보다 굵고 낮은 목소리로 영창하기 시작한다. "여기 완전한 암흑에서 운명지워진 그들의 감옥에서..." 그녀는 영창을 끝내고는 다시 정상적인 목소리로 말한다. "열쇠의 세 번째 부분을 얻으려면 저기 있는 나배트에게 가서 얘기를 하세요." 그녀는 크게 하품을 한다. 이걸 받으세요, 그리고 당분간은 날 그냥 내버려 두세요. 다음 단계에 대해서 생각해야 하니까요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #49503 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~나는 두 번째 열쇠를 키틀라로부터 받았다. 그것은: "여기 완전한 암흑에서 운명지어진 그들의 감옥에서... "였다. 다음에 나는 나배트라는 사나이에게 가서 얘기를 해야만 한다.~ */ GOTO 15
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49504 /* ~"나는 메이지 훈련을 받고 싶소."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~나는 두 번째 열쇠를 키틀라로부터 받았다. 그것은: "여기 완전한 암흑에서 운명지어진 그들의 감옥에서... "였다. 다음에 나는 나배트라는 사나이에게 가서 얘기를 해야만 한다.~ */ GOTO 24
  IF ~~ THEN REPLY #67753 /* ~"안녕히 계시오."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~나는 두 번째 열쇠를 키틀라로부터 받았다. 그것은: "여기 완전한 암흑에서 운명지어진 그들의 감옥에서... "였다. 다음에 나는 나배트라는 사나이에게 가서 얘기를 해야만 한다.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 15 // from: 14.0 24.2 25.1
  SAY #49506 /* ~"나중에 다시 오세요. 지금은 생각할 게 너무 많아요."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49507 /* ~"나를 메이지로 훈련시켜 줄 수 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #67754 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49508 /* ~그녀는 한숨을 쉰다. "이봐요, 지금 내겐 미래에 대해 세워야 할 계획들이 너무 많아요... 열쇠를 줄 테니 그냥 그걸로 끝내자고요, 알겠어요?"~ */
  IF ~~ THEN REPLY #49509 /* ~"좋소. 그것을 내게 주시오."~ */ GOTO 14
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49510 /* ~"나는 메이지 훈련을 받고 싶소."~ */ GOTO 24
  IF ~~ THEN REPLY #67755 /* ~"다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1 10.1
  SAY #49511 /* ~"내게 그걸 줄 건가요?" 그녀는 손을 내민다. "이것만 있으면 크럼플펀치가 내게 반드시 돈을 갚도록 만들 수 있을 거예요."~ */
  IF ~~ THEN REPLY #49512 /* ~"그렇소. 여기 있소."~ */ DO ~TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49513 /* ~"나는 아직도 해결책을 모색하고 있소. 내게 기회를 주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #49514 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 10.2
  SAY #49515 /* ~"내게 그걸 줄 건가요?" 그녀는 손을 내민다. "이것만 있으면 케스터가 내게 반드시 돈을 갚도록 만들 수 있을 거예요."~ */
  IF ~~ THEN REPLY #49516 /* ~"그렇소. 여기 있소."~ */ DO ~TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49517 /* ~"나는 아직도 해결책을 모색하고 있소. 내게 기회를 주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #49518 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #49519 /* ~그녀는 유증을 허리에 찬 주머니에 넣으며 능글맞게 웃는다. "열쇠의 두 번째 부분을 지금 당장 원하나요?"~ */
  IF ~~ THEN REPLY #49520 /* ~"그렇소. 말해주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #49521 /* ~"아직 아니오. 우선 내 질문에 대답해 주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #49522 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Mediate","GLOBAL",5)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 20 // from: 19.1
  SAY #49523 /* ~그녀는 한숨을 쉰다. "이 일을 해결해 준 건 고맙지만... 지금 내겐 세워야 할 계획들이 너무 많아요. 열쇠를 줄 테니 그냥 그걸로 끝내자고요, 알겠어요?"~ */
  IF ~~ THEN REPLY #49524 /* ~"좋소. 그것을 내게 주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #49525 /* ~"다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3 10.3
  SAY #66361 /* ~"그를 죽였나요? 그것도 나쁠 건 없죠. 그 호색한은 내게 늘 집적거렸으니까. 당신은 열쇠의 두 번째 부분을 받을 준비가 됐나요?"~ */
  IF ~~ THEN REPLY #66362 /* ~"그걸 내게 주시오..."~ */ DO ~SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 6.4 10.4
  SAY #66363 /* ~"잘했어요. 난 그를 정말 참을 수 없었어요 . 당신은 열쇠의 두 번째 부분을 받을 준비가 됐나요?"~ */
  IF ~~ THEN REPLY #66364 /* ~"그걸 내게 주시오..."~ */ DO ~SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 6.5 10.5
  SAY #66365 /* ~"안녕하세요, 살인자 양반! 그런 결과를 기대했던 건 아니지만 별로 실망도 하지 않았어요. 당신은 열쇠의 두 번째 부분을 받을 준비가 됐나요?"~ */
  IF ~~ THEN REPLY #66366 /* ~"그걸 내게 주시오..."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 24 // from: 14.1 15.0 16.1
  SAY #67738 /* ~그녀의 눈빛이 밝아진다. "오? 이전에 마법을 배운 적이 있나요?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #67756 /* ~"그렇소. 기술을 더 갈고 닦아야 할 것 같소."~ */ GOTO 25
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #67757 /* ~"아니오. 내겐 교육이 필요하오."~ */ GOTO 27
  IF ~~ THEN REPLY #67758 /* ~"관두시오. 그냥 질문에나 대답해주시오."~ */ GOTO 15
  IF ~~ THEN REPLY #67759 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #67739 /* ~"그럼 현재 직업을 포기하고 마법을 다시 배울 건가요?"~ */
  IF ~~ THEN REPLY #67760 /* ~"그렇소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 26
  IF ~~ THEN REPLY #67761 /* ~"아니오. 대신 질문에나 답해주시오."~ */ GOTO 15
  IF ~~ THEN REPLY #67762 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #67740 /* ~마법에 대해 한동안 얘기를 나눈 후, 그녀는 고개를 끄덕이고 미소를 짓는다. "당신은 정말 뛰어난 재능을 지녔군요. 다시 마법사가 되기 위해 필요한 모든 여건을 갖추고 있어요."~ */
  IF ~~ THEN REPLY #67763 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #67741 /* ~"우선 적성이 있는 지부터 볼까요..." 그녀는 장시간에 걸쳐 논리 및 어휘 문제들을 연달아 냄으로서 당신의 지능과 추리력을 시험한다...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #67764 /* ~그녀의 질문에 최선을 다해 대답한다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Mage_Training","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #67765 /* ~그녀의 질문에 최선을 다해 대답한다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67742 /* ~"적어도 머리는 제대로 돌아가는 것 같군요." 그녀는 당신을 살펴본다. "책도 있군요. 좋아요. 그 안에 당신 주문을 기입해야 해요. 모든 주문은 저장할 장소를 필요로 해요. 형태나 크기는 제각각 다르지만 메이지의 연구를 위한 주문을 담는다는 데는 변함이 없어요. 여기까지는 이해했나요?"~ */
  IF ~~ THEN REPLY #67766 /* ~"그렇소. 내게는 나중에 연구할 수 있도록 주문을 적을 있는 책이 필요하오."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #67743 /* ~그녀는 웃음을 터트리려는 것을 간신히 참는다, 그러나 그녀의 눈에는 경멸의 기색이 역력하다. "당신은 메이지가 될 만한 정신력이 없어요. 주문은 당신 머릿속에선 물처럼 영창하기도 전에 다 새어나가 버릴 거예요. 전사나 도둑으로 만족하도록 하세요. 당신은 매이지가 될 소질이 없어요."~ */
  IF ~~ THEN REPLY #67767 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #67744 /* ~"그럼 이제 당신에게 작은 문제를 하나 내겠어요. 이걸 보세요." 그녀는 두루마리 하나를 꺼낸다. "이걸 읽은 후 그 내용을 말해 보세요." 두루마리의 상형 문자들은 당신 눈 앞에서 꿈틀거려 아무런 의미도 없는 낙서가 되어버린다.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #67768 /* ~두루마리를 살펴본다.~ */ GOTO 31
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #67769 /* ~두루마리를 살펴본다.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67745 /* ~본능적으로 당신은 눈을 편안하게 한다, 그리고 마치 당신 뇌의 다른 부분이 스스로를 재확인하듯 무의식적으로 두루마리의 이미를 이해한다. 두루마리에는 주문의 완성을 위한 불가해한 음절, 마법용 재료, 손동작, 의식 등이 기입되어 있다~ */
  IF ~~ THEN REPLY #67770 /* ~"이것은 하급 예견의 마법이오, 그렇지 않소? 아이템을 식별하는 데 사용하는."~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #67746 /* ~아무리 노력해도 두루마리에 적힌 문자들의 내용을 이해할 수가 없다. 머리 속에 심벌들을 고정시켰다고 생각할 때마다, 그것들은 당신 시야에서 춤을 추고, 당신 머리에 남은 것이라고는 두통밖에 없다. 몇 분간의 면밀한 조사 끝에 당신은 아픈 눈을 양피지에서 뗀다... 그러자 두루마리의 내용이 갑자기 명확해진다. 두루마리에는 주문의 완성을 위한 불가해한 음절, 마법용 재료, 손동작, 의식 등이 기입되어 있다.~ */
  IF ~~ THEN REPLY #67771 /* ~"이것은 하급 예견의 마법이오, 그렇지 않소? 아이템을 식별하는 데 사용하는."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #67747 /* ~키틀라가 능글맞게 웃는다. "당신은 이미 주문 두루마리를 읽는 방법을 알고 있군요. 그건 당신이 기억을 하지는 못하고 있더라도 전에 마법과 관련된 훈련을 쌓았다는 뜻이에요, 오직 메이지만이 그 두루마리의 심벌들을 읽을 수 있으니까요. 당신은 다시 자신의 정신을 개방했고, 덕분에 몇 년 분의 공부를 절약한 셈이에요. 축하해요."~ */
  IF ~~ THEN REPLY #67772 /* ~"고맙소. 다음 단계는 무엇이오?"~ */ JOURNAL #67774 /* ~커스트의 배신자의 문 여관에 있는 메이지는 내게 하나의 두루마리를 보여주었으며, 그녀는 내가 그것을 읽을 수 있다는 건 내가 과거에 메이지였던 적이 있었다는 것을 의미한다고 말했다. ~ */ GOTO 34
  IF ~~ THEN REPLY #67773 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ JOURNAL #67774 /* ~커스트의 배신자의 문 여관에 있는 메이지는 내게 하나의 두루마리를 보여주었으며, 그녀는 내가 그것을 읽을 수 있다는 건 내가 과거에 메이지였던 적이 있었다는 것을 의미한다고 말했다. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #67748 /* ~"당신에게는 이미 주문책이 있으니까 주문을 암기하고 영창하는 방법만 알면 되요. 우선 주문을 암기하기 전에는 맑은 정신을 가지고 충분한 휴식을 취하지 않으면 안 되요. 휴식하기 전에는 반드시 암기하고 싶은 주문을 선택한 다음에 휴식을 취하세요. 일어난 후에 기록한 주문들을 가지고 연구를 하면 주문이 당신 정신 속에 들어올 거예요." ~ */
  IF ~~ THEN REPLY #67775 /* ~"나는 몇 개의 주문을 영창할 수가 있소?"~ */ GOTO 35
  IF ~~ THEN REPLY #67776 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67749 /* ~"처음에는 사용할 수 있는 주문의 양이 제한되어 있어요.당신은 다시 휴식을 취할 때까지 고작해야 주문을 하나, 아니면 기껏해야 세 개만 사용할 수 있을 거예요. 주문을 현명하게 사용하세요. 일단 쓰고 나면 휴식을 취해야만 다시 암기할 수가 있으니까요. 하지만 메이지로서 레벨이 올라가면 더 많은 주문을 기억할 수 있게 될 거예요. ~ */
  IF ~~ THEN REPLY #67777 /* ~"좋소. 계속하시오."~ */ GOTO 36
  IF ~~ THEN REPLY #67778 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #67750 /* ~"일단 주문을 영창하면 그것은 당신 기억 속에서 사라져요. 만약 같은 주문을 두 번 사용하고자 한다면, 그 주문을 두 번 암기해야 해요." 그녀는 잠시 멈추고 생각을 한다. "늘 새로운 주문을 열심히 찾도록 하세요. 주문들은 다양한 장소에서 다양한 형태로 다양한 사람들로부터 얻을 수가 있어요. 주문을 얻으면 잘 연구한 후 주문책에 기입하도록 하세요. ~ */
  IF ~~ THEN REPLY #67779 /* ~"알았소. 그게 전부요?"~ */ JOURNAL #67781 /* ~키틀라는 내게 마법의 기본에 대해 가르쳐 주었다. 휴식을 취하기 전에 나는 주문책을 펼쳐 기억하고자 하는 주문들을 선택해야 한다. 만약 한 주문을 여러 번 사용하려면 그 주문을 원하는 회수만큼 기억해야만 한다. 휴식을 취하고 일어나면 주문은 기억되어 영창할 만반의 준비가 된다.  내가 보다 능숙해질 때까지는 하루에 몇 가지 주문밖에는 사용할 수 없다.~ */ GOTO 37
  IF ~~ THEN REPLY #67780 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ JOURNAL #67781 /* ~키틀라는 내게 마법의 기본에 대해 가르쳐 주었다. 휴식을 취하기 전에 나는 주문책을 펼쳐 기억하고자 하는 주문들을 선택해야 한다. 만약 한 주문을 여러 번 사용하려면 그 주문을 원하는 회수만큼 기억해야만 한다. 휴식을 취하고 일어나면 주문은 기억되어 영창할 만반의 준비가 된다.  내가 보다 능숙해질 때까지는 하루에 몇 가지 주문밖에는 사용할 수 없다.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.1 34.1 35.1 36.0 36.1
  SAY #67751 /* ~"이해했군요. 좋아요. 자, 이 두루마리들을 받아서 당신 주문책에 기입하세요. 행운을 빌겠어요."~ */
  IF ~~ THEN REPLY #67752 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetNamelessClass(MAGE)
GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,0,0,0)
GiveItemCreate("SPWI502",Protagonist,0,0,0)
GiveItemCreate("SPWI207",Protagonist,0,0,0)
~ EXIT
END
