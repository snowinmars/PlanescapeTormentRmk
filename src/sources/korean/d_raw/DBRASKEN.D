// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRASKEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRASKEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45442 /* ~브래스켄은 시끄럽게 울리는 목소리로 말한다. "대체 내 집에서 뭘 하고 있는 거요?! 당장 떠나지 않으면 당신을 지금보다 더 추한 꼴로 만들겠소."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45443 /* ~"나는 이 상자를 당신에게 배달하라는 부탁을 받았소."~ */ GOTO 8
  IF ~~ THEN REPLY #45445 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45446 /* ~"뭐?! 또 당신이군!? 무슨 용건이 없으면 당장 내 집에서 나가시오!"~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45447 /* ~"나는 이 상자를 당신에게 배달해 달라는 부탁을 받았소."~ */ GOTO 8
  IF ~~ THEN REPLY #45448 /* ~"미안하오, 엉뚱한 집에 들어온 모양이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 14 7 5 even though they appear after this state */
~  GlobalGT("FedEx","Global",2)
~ THEN BEGIN 2 // from:
  SAY #45449 /* ~"꺼져, 얼간아! 난 이미 내가 모리도의 상자에 대해서 알고 있는 건 다 말했어."~ */
  IF ~~ THEN REPLY #45450 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 7 5 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45451 /* ~"최근 벌통에는 어떤 사내가 모리도의 상자에 봉인되어 있던 악마를 죽였다는 소문이 나돌고 있소. 사람들 말로는 그 혈투 때문에 그의 온몸에 끔찍한 상처가 났다고 하오. 혹시 당신이 바로 그 사람이오?" ~ */
  IF ~~ THEN REPLY #45452 /* ~"물론이오. 나 외에 누가 그런 일을 할 수 있었겠소?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45453 /* ~그는 집안이 떠나갈 만큼 큰 소리로 웃는다. "참으로 용감하고 배짱도 두둑하오! 정말 마음에 드오. 당신의 영웅적인 행동에 대한 소문이 퍼지면 당신은 산 전설이 될 거요. 내가 당신을 최초로 축하해 주는 사람이 될 수 있도록 해주시오. 자... 함께 술을 마시면서 당신의 무용담을 들읍시다."~ */
  IF ~~ THEN REPLY #45454 /* ~"당신과 기꺼이 술을 마시리다."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45455 /* ~"나중으로 미룹시다. 내게는 할 일이 많소. 안녕히 계시오."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Drunk","Global",1)
~ THEN BEGIN 5 // from:
  SAY #45456 /* ~"영웅이 돌아오셨군. 술을 한턱 내겠다는 내 제의에 대해서는 생각해보셨소? 난 정말 당신의 무용담이 듣고 싶소."~ */
  IF ~~ THEN REPLY #45457 /* ~"당신과 기꺼이 술을 마시리다."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45458 /* ~"나중으로 미룹시다. 내게는 할 일이 많소. 안녕히 계시오."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0 14.0
  SAY #45459 /* ~몇 잔의 술, 몇 곡의 노래, 그리고 몇 마디의 농담이 오고간 후 당신은 브래스켄을 무척 마음에 들어 하게 된다. 사실 이 순간에는 세상 모든 사람들이 다 사랑스럽다. 곧 브래스켄은 술에 취해 바닥에 곯아떨어진다. 당신은 이제 떠날 때가 됐다는 걸 깨닫는다.~ */
  IF ~~ THEN REPLY #45460 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drunk","Global",2)
~ THEN BEGIN 7 // from:
  SAY #45461 /* ~"아이구, 골통아! 난 술에서 평생 못 깰 것 같소."~ */
  IF ~~ THEN REPLY #45462 /* ~브래스켄을 비참한 상태로 그냥 방치한다.~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0
  SAY #45463 /* ~"왜 진작에 그렇게 말하지 않았소? 그럼 그걸 건네주고 갈 길을 가시오." 당신이 상자를 브래스켄에게 내밀자 그의 표정이 기대에서 즐거움으로 바뀐다. "워! 그런 속임수에 두 번 넘어갈 순 없지. 당장 그걸 치우고 떠나시오."~ */
  IF ~~ THEN REPLY #45464 /* ~"왜 아무도 이 상자를 받지 않으려는 거요? 처음엔 쿠'아트라, 그리고 이젠 당신."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45465 /* ~"쿠'아트라라고 했소?" 브래스켄은 박장대소한다. "그가 바로 나로부터 그 상자를 사 갔던 친구요. 그걸 샀을 때 그는 내게 한 방 먹였다고 생각했소. 그는 보석의 가치만으로도 내게 지불한 가격 이상이라고 주판알을 굴렸던 모양이오. 그 불쌍한 친구가 자신이 대체 무슨 짓을 했는지 알았을 때는 이미 때가 너무 늦었었소"~ */
  IF ~~ THEN REPLY #45466 /* ~"대체 이 상자가 왜 그렇게 끔찍한 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #46623 /* ~"난 이것의 유래에 대해서는 관심이 없소. 어떻게 하면 이걸 처분할 수 있는지나 말해주시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45467 /* ~"당신은 정말 자신이 지금 쥐고 있는 상자에 대해 아무 것도 모른단 말이오? 그럼 당신에게 내가 아는 걸 말해주지, 내게 손해가 될 건 없으니까. 첫째, 쓸데없는 생각은 하지 마시오. 그 상자에 걸린 저주는 그 상자의 현재 소유주에만 효과가 있으며, 소유주가 되기 위해서는 스스로의 의지로 그 상자를 받아들여야 하오." ~ */
  IF ~~ THEN REPLY #45468 /* ~"그럼 누가 가져가도록 상자를 그냥 내버려 두는 아이디어는 포기해야겠군. 그래, 상자 안에는 뭐가 있소?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #45469 /* ~"그것 참 좋은 질문이오. 그 상자는 매우 오래 전부터 벌통에서 떠돌아다녔소. 그것에 얽힌 소문은 무수히 많으며, 한 사람에서 다른 사람에게로 소문이 전해질 때마다 진실은 조금씩 왜곡되었소."~ */
  IF ~~ THEN REPLY #45470 /* ~"계속하시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45471 /* ~"나는 그 상자에 대한 얘기를 많이 들었으며, 그러한 얘기들에는 모두 공통점이 있소. 그 끔찍한 것의 이름은 '모리도의 상자'로, 본인이나 다른 사람이 상자를 열면 소유주는 죽게 된다고 하오. 그 내용물에 대해서는 아무도 정확히 알지 못하오 - 어떤 사람은 나이가 많은 드래곤이라고 하고, 또 다른 사람은 모리도의 사악한 영혼 그 자체라고도 말하오. 물론 나도 모르오, 하지만 누구라도 그 상자를 보기만 하면 그것이 사악한 것이며 그것을 여는 것은 매우 어리석은 일이라는 것을 느낄 수가 있을 거요."~ */
  IF ~~ THEN REPLY #45472 /* ~"그럼 난 그걸 어떻게 해야하는 거요?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 9.1 12.0
  SAY #45473 /* ~"쉴란드라를 찾아가 보시오. 그녀는 벌통의 북동쪽 지역에 살고 있소. 내가 그 상자를 '상'으로 받은 건 그녀로부터였소. 누가 알겠소, 그녀라면 그 상자를 어떻게 해야 할지에 대해 뭔가 더 아는 것이 있을지. 아니면 멍청한 녀석을 한 놈 찾아서 넘겨 버리든가. 그건 당신에게 달렸소. 행운을 빌겠소."~ */
  IF ~~ THEN REPLY #45474 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("FedEx","Global",3)
SetGlobal("Beta","Global",2)
SetGlobal("Delta","Global",1)
AddexperienceParty(250)
~ JOURNAL #60387 /* ~브래스켄과의 대화를 통해 많은 것에 대해 알게 되었다. 나는 이 저주받은 상자의 불행한 소유주가 된 모양이다. 가뜩이나 다른 문제도 많은데. 이 경멸할만한 아이템은 이제 이름이 있다. 그것은 모리도의 상자라 불리며, 그것을 자의로 소유하게 되는 사람은 상자를 열면 죽는다고 한다. 그 내용물의 실체는 아직도 수수께끼로 남아 있다. 브래스켄은 내게 벌통 북동부의 시체안치소 부근에 사는 쉴란드라를 찾아가보라고 권했다. 난 이 물건의 이전 주인들을 영구히 찾아 다녀야 할 신세인가?~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 14 // from:
  SAY #45475 /* ~"그 소식은 이제 모르는 사람이 없소! 모리도의 상자의 저주를 깬 것을 축하하오. 솔직히 나는 당신처럼 추하게 생긴 사람이 그런 일을 해내리라고는 생각하지 않았소. 나는 아직도 당신이 바쿠(몽식맥)의 엉덩이보다 못생겼다고 생각하오... 하지만 나는 당신이 한 일에 대해서는 경의를 표하오. 자, 술이나 하면서 내게 당신이 어떻게 그 일을 해냈는지나 들려주시오."~ */
  IF ~~ THEN REPLY #45476 /* ~"당신과 기꺼이 술을 마시리다."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(3)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45477 /* ~"나중으로 미룹시다. 내게는 할 일이 많소. 안녕히 계시오."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END
