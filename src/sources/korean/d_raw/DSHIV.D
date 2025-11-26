// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~"그래, 당신이 그 마녀 크리스톨을 죽였어? 그러니까 돈을 난 내도 돈다고 생각하는 거야? 불행히도 당신이 옳군. 지나가라고."~ */
  IF ~~ THEN REPLY #3797 /* ~"고맙소. 안녕히 계시오."~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~"안녕, 이방인. 당신은 이제 다크앨리 쉬브의 영토 안에 들어왔어. 보아하니 당신 지갑은 좀 가벼워져야 할 것 같군. 그 안에 충분한 액수가 들었기를 기도나 하라고." ~ */
  IF ~~ THEN REPLY #3799 /* ~"나는 당신네 두목과 얘기를 해야겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~"얼마나 필요하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~"당신 몸통에 구멍이 났는데도 그럴 수가 있을지 어디 한 번 보고 싶소."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~허풍: "나는 이미 이번 통행료를 지불했소."~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~"타락자 윌리엄? 그래 내게 그 지갑 속을 보여주면 곧 만나게 해주지." ~ */
  IF ~~ THEN REPLY #34441 /* ~"어림없지. 먼저 쓰러지는 건 너다."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~"얼마나 필요하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~"아니오, 그건 별로 중요하지 않소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~"대단한 액수도 아냐." 그는 관대한 척하며 말한다. "동전 열 닢만 내면 통과시켜 주지."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~"거래 성립이오."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~"어림없소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~"당신이 쓰러져 피를 흘리기 시작하면 생각이 달라질 걸."~ */
  IF ~~ THEN REPLY #34448 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~그는 돈을 건네 받아 주머니에 넣은 후 소리친다. "여기서 빨리 꺼져!"~ */
  IF ~~ THEN REPLY #34451 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~"그럼 넌 여기서 살아서 나갈 수가 없어." 그는 나이프를 뽑아서 당신을 공격한다!"~ */
  IF ~~ THEN REPLY #34453 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~그는 그늘 쪽으로 고개를 돌린다, 그리고 손짓을 한 후 다시 당신을 쳐다본다. "좋아, 지나가라고."~ */
  IF ~~ THEN REPLY #34456 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~그는 그늘 쪽으로 고개를 돌린다, 그리고 손짓을 한 후 다시 당신을 쳐다본다. "아니, 넌 내질 않았어. 이제 넌 죽으 목숨이야."~ */
  IF ~~ THEN REPLY #34458 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~"또 당신이야? 우리에게 통행료를 내는 데 지치지도 않아? 또 온 걸 보니 아닌 모양이군. 동전 열닢을 내면 살아서 다시 돌아올 수 있게 해주지."~ */
  IF ~~ THEN REPLY #34461 /* ~"나는 당신네 두목과 얘기를 해야겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~"얼마나 필요하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~"당신 몸통에 구멍이 났는데도 그럴 수가 있을지 어디 한 번 보고 싶소."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~허풍: "나는 이미 이번 통행료를 지불했소."~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~"난 타락자 윌리엄이 당신에게 살인청부를 시켰다고 들었어. 하지만 그 일을 끝낼 때까지는 요금을 내야 해. 동전 열 닢."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~"좋소. 여기 있소."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~"하지만 난 타락자 윌리엄을 위해 일하고 있소!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~"그걸 꼭 징수할 필요는 없지 않소."~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~"만약 내 시체에서 가져갈 수 있다면 그렇게 하시오."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~허풍: "나는 이미 이번 통행료를 지불했소."~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~"아직도 타락자 윌리엄을 위해 사람 죽이는 일을 마치지 못했어? 지체에 대한 보상금을 내야겠군. 동전 열 닢만 내면 당신 갈 길을 가게 해주지."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~"좋소. 여기 있소."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~"난 그만한 돈이 없소."~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~"하지만 난 타락자 윌리엄을 위해 일하고 있소!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~"그걸 꼭 징수할 필요는 없지 않소."~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~"만약 내 시체에서 가져갈 수 있다면 그렇게 하시오."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~허풍: "나는 이미 이번 통행료를 지불했소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~"천만에. 또 오게 되면 그 때도 나한테 오라고, 알겠어?" 그는 당신에게 윙크한다.~ */
  IF ~~ THEN REPLY #34484 /* ~"웃기는군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~"안됐군. 타락자 윌리엄이 네가 칼에 찔려 죽었다는 소식을 들으면 몹시 화를 낼거야." 그는 무기를 뽑아 들고 당신을 공격하려고 한다.~ */
  IF ~~ THEN REPLY #34486 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~"나도 마찬가지야. 그래 어쩔 거야? 돈을 내고 살 거야, 아니면 죽을래?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~"지불하겠소."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~"난 그만한 돈이 없소."~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~허풍: "나는 이미 이번 통행료를 지불했소."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~"그걸 꼭 징수할 필요는 없지 않소."~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~"만약 내 시체에서 가져갈 수 있다면 그렇게 하시오."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~그는 당신을 신중하게 살펴본 후 당신이 한 말에 대해 숙고한다. "이번에는 봐주지. 어서 꺼지라고."~ */
  IF ~~ THEN REPLY #34498 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~"넌 내가 얼마나 그 말을 듣고 싶었는지 모를 거야." 그는 나이프를 뽑아 들고 공격한다.~ */
  IF ~~ THEN REPLY #34500 /* ~싸운다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~도망친다.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
