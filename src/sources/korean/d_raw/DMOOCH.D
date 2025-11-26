// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~"갈 거예요, 갈 거라고요! 그렇게 날 귀찮게 할 필요는 없다고요!~ */
  IF ~~ THEN REPLY #10577 /* ~"확인을 했을 뿐이오. 어서 움직이시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~여자 더스트맨처럼 차려 입고 반쯤 빈 술잔을 들고 있는 여자가 보인다. 당신이 가까이 가자 그녀는 당신을 향해 소리친다. "음, 당신... 이쪽으로 오세요." 당신은 그녀에게 뭔가 이상한 점이 있다는 것을 눈치챈다... 더스트맨들과 상대한 경험 덕분에 당신은 그녀가 그 당파의 진정한 일원이기에는 너무나도 생기가 넘친다는 것을 깨닫는다. ~ */
  IF ~~ THEN REPLY #10579 /* ~그녀에게 다가간다.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~그녀를 그냥 내버려 둔다.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~여자 더스트맨이 보인다. 당신이 가까이 가자 그녀는 당신을 향해 소리친다. "음, 당신... 이쪽으로 오세요."~ */
  IF ~~ THEN REPLY #10583 /* ~그녀에게 다가간다.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~그녀를 그냥 내버려 둔다.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~"음... 뭘 원하죠?'~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~"바키스가 당신이 외상을 청산할 때가 되었다고 하더군. 돈을 내시오."~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~"당신은 실은 더스트맨이 아니군. 내가 틀렸소?"~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~"당신의 더스트맨 시늉을 비밀로 하려면 내게 돈을 더 줘야겠소."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~"당신의 더스트맨 시늉을 비밀로 하려면 또다시 내게 돈을 줘야겠소."~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~"몇 가지 질문에 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~"아무 것도 아니오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~"더스트맨 따위하고는 어울리고 싶지 않다는 건가요? 내게 술을 사주면 당신을 그냥 내버려 둘께요."~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~"좋소. 여기 동전 다섯 닢이 있소. 이제 날 그냥 내버려두시오."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~"당신은 실은 더스트맨이 아니군. 내가 틀렸소?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~"바키스가 당신이 외상을 청산할 때가 되었다고 하더군. 돈을 내시오."~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~"난 그렇게 생각하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~"이보세요... 숙녀에게 술 한 잔 사주지 않겠어요?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~"당신은 실은 더스트맨이 아니군. 내가 틀렸소?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~"바키스가 당신이 외상을 청산할 때가 되었다고 하더군. 돈을 내시오."~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"좋소. 여기 동전 다섯 닢이 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~"당신은 누구요?"~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~"이 곳의 다른 손님들에 대해 내게 얘기해주시오."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~"저 불타는 시체는 누구요?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~그녀의 음료에 향료를 탄다.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~그녀의 음료에 향료를 탄다.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~"고마워요... 당신이 진정한 죽음을 찾기를 빌겠어요." 그녀는 당신이 준 돈을 주머니에 넣고 불안한 표정으로 바의 앞쪽을 바라본다. ~ */
  IF ~~ THEN REPLY #10609 /* ~"돈을 받았으니 이제 대답을 해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~"뭘... 알고 싶으시죠?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~"당신은 실은 더스트맨이 아니군. 내가 틀렸소?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~"바키스가 당신이 외상을 청산할 때가 되었다고 하더군. 돈을 내시오."~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~"당신은 누구요?"~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~"이 곳의 다른 손님들에 대해 내게 얘기해주시오."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~"저 불타는 시체는 누구요?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~그녀의 음료에 향료를 탄다.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~그녀의 음료에 향료를 탄다.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~"당신의 더스트맨 시늉을 비밀로 하려면 내게 돈을 더 줘야겠소."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~"당신의 더스트맨 시늉을 비밀로 하려면 또다시 내게 돈을 줘야겠소."~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~그녀는 주변을 불안하게 둘러본다, 그리고 즉시 술에서 깬다. "왜... 왜 그런 말을 하는 거죠?"~ */
  IF ~~ THEN REPLY #10624 /* ~"왜냐하면 당신은 더스트맨처럼 행동을 하지 않으며 계약을 제의하지도 않기 때문이오. 실제로 당신은 시체안치소의 시체 노동에 대해 돈을 주기는 커녕 오히려 돈을 받고 있소.~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~"왜냐하면 나 자신이 더스트맨이기 때문이오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~그녀는 놀라서 움찔한다. 그리고 그녀의 불안은 심각한 근심으로 변한다. "그래서 어떻게 할 거죠?"~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~"당신에게 외상을 갚으라고 요구할 거요. 지금 당장."~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~"당신에게 외상을 갚으라고 요구할 거요. 지금 당장."~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~"아직은 아무 짓도 하지 않을 거요. 내 질문에나 대답해주시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~그녀는 공포에 질려 엉엉 울려는 것은 간신히 참고, 서둘러서 설명을 한다. "아니, 아니, 아니에요. 나는 더스트맨이 아니에요. 나는 거리에서 이 옷을 우연히 발견했고 달리 옷을 살 돈이 없어서 입었던 거예요. 더스트맨으로 위장한 도둑이 있다는 얘기는 들었어요. 그는 아마 벌통의 남서쪽에 있을 거예요. 나는 그를 보긴 했지만 그를 피해 숨었어요. 제발 날 해치지 마세요."~ */
  IF ~~ THEN REPLY #10631 /* ~"내게 돈을 주면 당신을 그냥 보내주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~"그럴 생각은 없소. 하지만 당신 하는 짓이 얼마나 어설픈지는 알도록 하시오. 이제 내 질문에 대답이나 하시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~"난 당신을 해치지 않을 거요. 아직은. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~"내겐 그럴 돈이 없어요. 내게 그 액수의 10%만 빌려 줄 수 있나요? 그에게 줘서 내가 외상을 갚을 거라고 안심시키기 위해서 말이에요."~ */
  IF ~~ THEN REPLY #10635 /* ~"얼마나 필요하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~"난 자선가가 아니오. 그에게 외상을 갚을 다른 방법을 생각해 낼 수는 없소?"~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~"술을 마시게 동전 몇 닢만 빌려 줄래요?"~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"좋소. 여기 동전 다섯 닢이 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~"싫소. 내 질문에나 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~"싫소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~"어, 그 빚을 갚기 시작하려면 적어도 백 닢은 필요해요."~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~그녀의 음료에 향료를 탄다.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~그녀의 음료에 향료를 탄다.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~"당신에게 돈을 빌려주리다. 여기 있소. 이 돈을 가지고 당장 외상을 갚으시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~거짓말: "돈을 빌려주고는 싶지만 내겐 지금 돈이 없소. 내 다른 질문에나 대답해주시오."~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~진실: "돈을 빌려주고는 싶지만 내겐 지금 돈이 없소. 내 다른 질문에나 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~"돈을 가지고 돌아오겠소."~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~"다른 해결책은 떠오르지 않소?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~"갚을 방법이요? 하..." 그는 슬픈 미소를 짓는다. 날 죽이는 것 뿐이에요."~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~그녀의 주의를 다른 곳으로 돌린다: "그럴 수도 있소, 하지만... 저기 있는 건 뭐요?"~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~"그럴 수도 있지만 다른 해법을 찾는 것이 나을 것 같소."~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~"그 돈을 빌려주겠소. 당장 가서 외상을 갚으시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~거짓말: "돈을 빌려주고는 싶지만 내겐 지금 돈이 없소. 내 다른 질문에나 대답해주시오."~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~진실: "돈을 빌려주고는 싶지만 내겐 지금 돈이 없소. 내 다른 질문에나 대답해주시오."~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~"돈을 가지고 돌아오겠소."~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~"나중에 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~"어디 말이에요?" 그녀는 고개를 돌려 당신이 가리키는 쪽을 바라본다, 그리고 술에 취해 흐릿한 눈의 초점을 맞추느라 잠시 멈춘다. "아무 것도 안 보이는데요."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~그녀의 음료에 향료를 탄다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~그녀의 음료에 향료를 탄다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~"관두시오. 내 질문에나 좀 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~"아무 것도 아니었던 모양이오. 잊어버리시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~당신은 그녀가 다른 곳을 쳐다보는 동안 신속한 동작으로 그녀의 반쯤 빈 잔에 향료를 붓는다. 당장 악취가 나기 시작하나 그녀는 눈치채지 못한 듯하다. 그녀는 제자리로 돌아와 독이 든 음료를 단숨에 들이킨다. "뭐였죠? 나보고 뭘 보라고 했던 거죠?" 갑자기 그녀는 질식하기 시작한다.~ */
  IF ~~ THEN REPLY #10659 /* ~"당신 죽음이오. 잘 가시오, 모카이."~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~"어... 뭘 하고 있는 거죠?" 그녀는 당신이 향료병을 준비하는 것을 본다, 그리고 당신을 미심쩍은 눈으로 쳐다본다. ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~"내 병을 테이블 위에 내려놓고 있었을 뿐이오. 내가 마실 음료는 따로 가져왔소."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~"내 병을 테이블 위에 내려놓고 있었을 뿐이오. 내가 마실 음료는 따로 가져왔소."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~"내 병을 테이블 위에 내려놓고 있었을 뿐이오. 내가 마실 음료는 따로 가져왔소."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~"너무 그렇게 들여다 보지 마시오. 난 내 물건들을 뒤져 보면서 내가 뭘 지니고 있는지를 스스로에게 상기시키고 있소."~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~"당신과는 상관없는 일이오."~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~"아무 것도 아니오. 다른 곳에 약속이 있어 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~그녀는 지금 있는 곳에서 몸을 흔들며 당신을 바라보다가 말을 한다. "좋아요. 뭐 달리 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #10668 /* ~"그렇소. 질문에 대한 답을 원하오."~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~"당신에게 동전 쉰 닢을 드리겠어요. 제발... 다른 사람들에게 말하지 마세요.~ */
  IF ~~ THEN REPLY #10671 /* ~"어디 두고 봅시다. 이제 내 다른 질문에 대답을 해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~"오십? 더 받아야겠소."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~"어디 두고 봅시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~"돈을 더 원하나요? 지난번만큼 많이 드릴 순 없어요. 하지만 스물 다섯 닢이라면 드릴 수 있어요."~ */
  IF ~~ THEN REPLY #10675 /* ~"더 받아야겠소."~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~"지금은 이걸로 참겠소. 내 질문에나 더 대답을 해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~"지금은 이걸로 참겠소. 나중에 다시 오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~"안됐군요. 난 더 이상 당신에게 줄 돈이 없으니까요... 내겐 돈이 더 이상 없어요."~ */
  IF ~~ THEN REPLY #10679 /* ~"안됐군. 내 질문에 대답을 해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~"안됐군. 이 일의 결말이 어떻게 될지 어디 두고 봅시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~그녀는 당신을 쏘아본다. "그럴 수가 없어요. 어떤 얼간이가 내게서 돈을 다 뺏아갔으니까요. 이제 외상을 갚으려면 빚이라도 얻어야 할 형편이에요."~ */
  IF ~~ THEN REPLY #10682 /* ~"얼마나 필요하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~"난 자선가가 아니오. 그에게 외상을 갚을 다른 방법을 생각해 낼 수는 없소?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~그녀는 당신이 준 돈을 주머니에 넣고 문 쪽을 흘긋 보며, 혹시 가게에서 빠져나갈 수는 없을까 궁리하는 듯하다. 하지만 성공할 가능성은 전무하다는 것을 깨닫고 한숨을 내쉰다, 그리고 바를 향해 내키지 않는 걸음을 재촉한다. "어쨌든 고마워요."~ */
  IF ~~ THEN REPLY #10685 /* ~"천만에 말씀이오. 그리고 외상을 갚기 전에 나갈 생각은 꿈에도 하지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~"나요? 난 모카이에요. 난 여기서 술을 마시는 걸 즐겨요..." 그녀는 잠시 생각하는 걸 멈춘다. "난 그냥 보통 사람이에요."~ */
  IF ~~ THEN REPLY #10687 /* ~"알겠소. 그럼 다른 질문에 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~"알겠소. 그럼 안녕히 계시오, 모카이."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~"불타는 시체 선술집이에요. 당신은 글을 못 읽나요? 아니면 나보다 더 취했어요?"~ */
  IF ~~ THEN REPLY #10690 /* ~"관두시오. 다른 사안들에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~"몰라요. 그들은 그냥 사람들일 뿐이에요. 난 사람들과 별로 상대하지를 않아요. 그들이 내게 술을 사준다면 모를까..." 그녀는 잔뜩 기대하는 눈으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #10693 /* ~"알겠소. 내 질문에 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~"왜 그런지 알 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~"그는 시체가 아니에요. 그는 미치광이 마법사예요. 사람들에게 물어보세요. 아마 그에 얽힌 얘기를 들려줄 거예요.:~ */
  IF ~~ THEN REPLY #10696 /* ~"좋소. 그럼 다른 질문에도 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~"안녕히 계시오."~ */ EXIT
END
