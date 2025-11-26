// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILTSP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILTSP~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #45541 /* ~혈색이 좋고 활기가 넘치는 사내가 보인다. 그는 마치 전쟁이 임박했거나 자신의 내장 속에 무엇이 박히기라도 한 것처럼 요란스럽게 소리를 치며 떠들어대고 있다. 아니면... 어쨌든 그는 보통 어조로 말하기에는 뭔가에 너무 흥분해 있는 듯하다. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 483
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #45542 /* ~혈색이 좋고 활기가 넘치는 사내가 보인다. 그는 마치 전쟁이 임박했거나 자신의 내장 속에 무엇이 박히기라도 한 것처럼 요란스럽게 소리를 치며 떠들어대고 있다. 아니면... 어쨌든 그는 보통 어조로 말하기에는 뭔가에 너무 흥분해 있는 듯하다. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 484
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 2 // from:
  SAY #45543 /* ~혈색이 좋고 활기가 넘치는 사내가 보인다. 그는 마치 전쟁이 임박했거나 자신의 내장 속에 무엇이 박히기라도 한 것처럼 요란스럽게 소리를 치며 떠들어대고 있다. 아니면... 어쨌든 그는 보통 어조로 말하기에는 뭔가에 너무 흥분해 있는 듯하다. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 485
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 3 // from:
  SAY #45544 /* ~혈색이 좋고 활기가 넘치는 사내가 보인다. 그는 마치 전쟁이 임박했거나 자신의 내장 속에 무엇이 박히기라도 한 것처럼 요란스럽게 소리를 치며 떠들어대고 있다. 아니면... 어쨌든 그는 보통 어조로 말하기에는 너무 흥분해 있는 듯하다. 속사포처럼 쏘아 대는 그의 말은 알아듣기가 어렵다. "당신, 거기 당신! 당신은 뭔가를 필요로 하고 있는 것처럼 보이오! 아직은 뭔지 정확히는 모르겠지만, 내게 시간만 조금 주시면 알아 맞추리다! 방이 필요하시오! 그럼 방을 제공하리다! 보급 물자가 필요하시오? 그것도 내게 있소!"~ */
  IF ~~ THEN REPLY #45545 /* ~"어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45546 /* ~"먼저 당신에게 뭘 좀 물어보고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #45547 /* ~"나는 당신에게 물건을 팔고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45548 /* ~"시간을 내주어 고맙소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45549 /* ~속사포처럼 쏘아 대는 그의 말은 알아듣기가 어렵다. "당신, 거기 당신! 당신은 뭔가를 필요로 하고 있는 것처럼 보이오! 아직은 뭔지 정확히는 모르겠지만, 내게 시간만 조금 주시면 알아 맞추리다! 방이 필요하시오! 그럼 방을 제공하리다! 보급 물자가 필요하시오? 그것도 내게 있소!"~ */
  IF ~~ THEN REPLY #45550 /* ~"어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45551 /* ~"먼저 당신에게 뭘 좀 물어보고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #45552 /* ~"나는 당신에게 물건을 팔고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45553 /* ~"시간을 내주어 고맙소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 6.8 7.1 8.2 9.0 9.1 10.0 11.1 12.3 14.3 15.1 16.1 17.0 18.2 19.2 21.0 22.1 23.0 24.0 25.0 26.0 27.0
  SAY #45554 /* ~"당신이 원하는 거라면 뭐든지! 시간과 말은 돈이오, 그러니 서두르시오!"~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #45555 /* ~"나는 떠다니는 해골을 찾고 있소. 누군가가 내게서 그걸 훔쳐갔소. 혹시 어디 가면 그것을 찾을 수 있을지 아시오?"~ */ GOTO 11
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #45556 /* ~"이 뼈들의 지배자란 사람에 대해 얘기해주시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #45557 /* ~"당신은 누구이며 또 어떤 일을 하오?"~ */ GOTO 18
  IF ~~ THEN REPLY #45558 /* ~"이 곳은 뭐 하는 곳이오? 그리고 내게 이 지역에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #45559 /* ~"내게 갓즈맨에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 20
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45560 /* ~"혹시 일손이 필요로 하고 있는 일에 대해 아시오?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45561 /* ~"전단은 인쇄되었소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~나는 길츠퍼에게 내가 그의 전단을 무법자 펜에게 배달했다고 말했다. ~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45562 /* ~"메시지는 전달했소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~나는 길츠퍼에게 내가 그의 메시지를 대 주조소의 켈도에게 전했다고 말했다. ~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45563 /* ~"전단은 불타는 시체 바에 게시되었소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~나는 길츠퍼에게 내가 그의 메시지를 불타는 시체 바에 게시하였다고 말했다.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45564 /* ~"내가 할 일은 더 없소?"~ */ GOTO 27
  IF ~~ THEN REPLY #45565 /* ~"어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45566 /* ~"나는 당신에게 물건을 팔고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45567 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.11 7.2 18.0
  SAY #45568 /* ~"그렇다면 제대로 찾아오셨소. 나는 물건을 사고 팔며, 방을 빌려주오! 너는 거의 뭐든지 구해줄 수 있소. 무엇을 원하시오?"~ */
  IF ~  PartyHasItem("S_Limlim")
Global("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45569 /* ~"내게는 석제 림-림이 있소. 그것에 대해 얼마나 주겠소?"~ */ GOTO 8
  IF ~  PartyHasItem("S_Limlim")
GlobalGT("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45570 /* ~"내게는 석제 림-림이 있소. 그것에 대해 얼마나 주겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #45571 /* ~"물물교환을 합시다."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45572 /* ~"다른 사람에게 시킬 일은 없소?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45573 /* ~"전단은 인쇄되었소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~나는 길츠퍼에게 내가 그의 전단을 무법자 펜에게 배달했다고 말했다. ~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45574 /* ~"메시지는 전달했소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~나는 길츠퍼에게 내가 그의 메시지를 대 주조소의 켈도에게 전했다고 말했다. ~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45575 /* ~"전단은 불타는 시체 바에 게시되었소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~나는 길츠퍼에게 내가 그의 메시지를 불타는 시체 바에 게시하였다고 말했다.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45576 /* ~"내가 할 일은 더 없소?"~ */ GOTO 27
  IF ~~ THEN REPLY #45577 /* ~"지금은 아무 용건도 없소. 다른 질문들에 좀 대답해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #45578 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #45579 /* ~"또 오셨군! 또 오셨군! 내게 또 오셨군! 내게 내 형제 디레인은 할 수 없는 일을 부탁하러 오신 게 틀림없군, 아니 그렇소? 하!"~ */
  IF ~~ THEN REPLY #45580 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45581 /* ~"당신에게 질문할 것이 좀 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #45926 /* ~"거래에 대해 얘기합시다."~ */ GOTO 6
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45583 /* ~"다른 사람에게 시킬 일은 없소?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45584 /* ~"전단은 인쇄되었소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45585 /* ~"메시지는 전달했소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45586 /* ~"전단은 불타는 시체 바에 게시되었소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45587 /* ~"내가 할 일은 더 없소?"~ */ GOTO 27
  IF ~~ THEN REPLY #45588 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45589 /* ~그의 표정이 음침해진다. "당신에게 비밀 암호와 그것의 사용처를 알려 줄 수 있소. 어떻게 생각하시오?~ */
  IF ~~ THEN REPLY #45590 /* ~"내게 암호를 말해주시오."~ */ DO ~SetGlobal("Know_An_Pass","GLOBAL",1)
TakePartyItemNum("S_Limlim",1)
~ GOTO 10
  IF ~~ THEN REPLY #45591 /* ~"대신 그냥 돈을 줄 수는 없겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #45592 /* ~"그 어느 쪽도 별 매력이 없소. 대신 내 질문에나 대답해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #45593 /* ~"관심없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.1
  SAY #45594 /* ~"그것에 대해 동전 일흔 다섯 닢까지 드릴 수 있소. 그 가격에 팔던지 아니면 마시오."~ */
  IF ~~ THEN REPLY #45595 /* ~"받겠소. 그리고 날 위해 몇 가지 질문에 더 대답해 주시오..."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ GOTO 5
  IF ~~ THEN REPLY #45596 /* ~"관두시오. 날 위해 몇 가지 질문에 더 대답해 주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #45597 /* ~"받겠소. 안녕히 계시오."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ EXIT
  IF ~~ THEN REPLY #45598 /* ~"관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #45614 /* ~그는 당신으로부터 돌이 된 림-림을 잽싸게 낚아챈다, 그리고 당신 귀에다 대고 속삭인다. "암호는 '일식'이오. 이 암호를 사용하면 아홉 번째 세계의 금고라는 창고를 이용할 수 있소. 그 곳에는 아나키스트들이 있소. 그들에게 암호를 말하시오, 하지만 누가 말해주었는지는 말하지 마시오!"~ */
  IF ~~ THEN REPLY #45616 /* ~"'일식.' 알았소. 몇 가지만 더 물어봅시다."~ */ GOTO 5
  IF ~~ THEN REPLY #45622 /* ~"'일식.' 알았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #45625 /* ~"해골? 에? 하! 그런 덧을 취급하는 곳은 한 군데밖에 없소! 하지만..." 그가 목소리를 낮춘다. "당신에게 그 곳이 어디 있는지 말해줄 순 없소... 단..." ~ */
  IF ~~ THEN REPLY #45627 /* ~"하지만 만약?"~ */ GOTO 12
  IF ~~ THEN REPLY #45628 /* ~"관두시오. 날 위해 몇 가지 질문에 더 대답해 주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #45630 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45632 /* ~"아니, 말해줄 수가 없소, 친구, 그러면 당신 목숨이 위태로워질 테니. 당신과 내 목숨은 그런 사소한 정보 때문에 내던지기에는 너무나도 귀중하오."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #45633 /* ~"동전 열 닢이면 마음을 바꾸겠소?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(10)
~ THEN REPLY #45637 /* ~"만약 내가 당신에게 내 지갑에 든 걸 준다면 어떻겠소?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45640 /* ~"만약 내가 당신을 협박한다면?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45642 /* ~"그럼 관두시오. 날 위해 몇 가지 질문에 더 대답해 주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #45644 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #45647 /* ~"그거면 됐소." 그가 말한다. "내 말을 똑바로 들으시오." 그는 머리를 당신 쪽으로 기울이고는 당신 귀에다 대고 시끄럽게 속삭인다."내가 아는 사람들 중에 그러한 신비스러운 비밀을 다루는 사람은 단 하나밖에 없소, 그리고 그는 결코 함부로 대해서는 안될 사람이오! 그로부터는 위험 그 자체가 발산되며, 그의 이름을 입에 담으려는 사람은 거의 없소. 내가 말하는 사람은 다름 아닌..." 그는 극적 효과를 위해 잠시 멈춘다. "...뼈들의 지배자 로타요!"~ */
  IF ~~ THEN REPLY #45650 /* ~"누구?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 5.1 13.0
  SAY #45652 /* ~"뼈들의 지배자! 밤의 뼈들의 주인이자, 세트 신의 집(베이터) 이 편에 있는 도서관들 중 가장 엽기적인 도서관의 관장이오! 그의 선반들 위에는 해골들이 놓여 있으며, 그들은 냉혹한 로타에게, 그리고 자신들이 마주볼 수 정도로 무모한 자들에게 자신들의 비밀을 속삭이고 있소. 그 곳에서는 많은 것을 배울 수가 있소... 단 그 곳에서 미치지 않고 견딜 수가 있다면!" (세트는 이집트의 악신으로 플레인스케이프 세계에서는 베이터에 거주함)~ */
  IF ~~ THEN REPLY #45653 /* ~"요점이 뭐요?~ */ GOTO 15
  IF ~~ THEN REPLY #45655 /* ~"그리고 그 장소는 어디 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #45656 /* ~"그는 무엇 때문에 이러한 해골들을 원하는 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #45658 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45659 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #45660 /* ~그는 헛기침을 한다. "너무 흥미진진하게 묘사하더라도 너그럽게 용서해 주시오. 단지 양념을 좀 가미해 재미있게 하려는 거니까. 시길의 스파이어 쪽으로 가보시오... 그러면 타버린 건물의 잔해에 도달하게 될지도 모르오, 그리고 그 곳에서 시길의 심장부 깊숙한 곳으로 내려가는 인간의 힘줄, 또는 그냥 나무로 만들어진 사다리를 발견하게 될지도 모르오. 그리고 마침내 당신이 땅에 다시 발을 디디게 되면... 다름 아닌 로타 바로 그 사람과 정면으로 마주치게 될지도 모르오!"~ */
  IF ~~ THEN REPLY #45661 /* ~"그는 해골들을 가지고 무슨 짓을 하오?~ */ GOTO 17
  IF ~~ THEN REPLY #45662 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45663 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #45664 /* ~"시길의 스파이어 쪽으로 가보시오... 그러면 흉가에 도달하게 될지도 모르오, 그리고 그 곳에서 아래층으로 통하는 뼈로 만든 사다리를 발견하게 될지도 모르오, 그리고 그 사다리가 당신을 해골들의 응접실, 그리고 다름 아닌 로타와의 만남으로 인도할지도 모르오!"~ */
  IF ~~ THEN REPLY #45665 /* ~"그는 해골들을 가지고 무슨 짓을 하오?~ */ GOTO 17
  IF ~~ THEN REPLY #45666 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45667 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.0 16.0
  SAY #45668 /* ~"사람들은 죽은 자는 말이 없다고 하오. 하지만 로타의 응접실에서는 죽은 자들이 귀를 기울이는 자에게 자신들의 비밀을 속삭이오! 죽은 자의 수가 많을 수록 더 많은 비밀을 들을 수가 있으며... 다원 우주의 진실에 그 만큼ㅡ 더 가깝게 접근할 수 있는 거요!" 그는 강조를 하려고 자신의 눈썹을 움직인다.~ */
  IF ~~ THEN REPLY #45669 /* ~"::탄식:: 고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45670 /* ~"::탄식:: 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.2
  SAY #45671 /* ~"나? 나는 경매인 길츠퍼요! 나는 물건을 매매할 뿐만 아니라 서비스와 일거리도 제공하오!"~ */
  IF ~~ THEN REPLY #45672 /* ~"물건을 좀 사고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45673 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45674 /* ~"질문에 대한 대답은?"~ */ GOTO 5
  IF ~~ THEN REPLY #45675 /* ~"멋지군, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #45676 /* ~"여기? 여기는 마계구요! 갓즈맨과 대 주조소를 비롯하여 여러 시설들이 자리잡고 있소. 우리는 당신이 원하는 것은 뭐든지 지니고 있소!"~ */
  IF ~~ THEN REPLY #45677 /* ~"내게 갓즈맨에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 20
  IF ~~ THEN REPLY #45678 /* ~주조소에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #45679 /* ~"질문할 것들이 몇 가지 더 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45680 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.4 19.0 22.0
  SAY #45681 /* ~"아, 나와 생각인 비슷한 사람들의 집단이오. 그들은 우리들 모두의 영혼 속에 신이 될 가능성을 지니고 있다고 말하고 있소. 가장 미천한 거지에서 가장 위대한 제왕에 이르기까지 말이오, 우리는 모두 가슴 속에서 신들을 키우고 있는 셈이오! 그보다 더 멋진 생각이 어디 있겠소?"~ */
  IF ~~ THEN REPLY #45682 /* ~"하모니움."~ */ GOTO 21
  IF ~~ THEN REPLY #45683 /* ~"아나키스트."~ */ GOTO 21
  IF ~~ THEN REPLY #45684 /* ~"센세이트."~ */ GOTO 21
  IF ~~ THEN REPLY #45685 /* ~"더스트맨."~ */ GOTO 21
  IF ~~ THEN REPLY #45686 /* ~"머시킬러."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4
  SAY #45687 /* ~"그거 걸작이오! 명답이오!" 그는 낄낄거린다. ~ */
  IF ~~ THEN REPLY #45688 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45689 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #45690 /* ~"내가 보기에 주조소는 기회의 장소요! 그 곳에서는 사람들이 금속을 상대로 자신을 시험할 수 있으며, 영혼이 그 한계에 도달해 지식의 물 속에서 담금질을 당하든지, 아니면 진실의 연마소에서 산산조각이 나오!" 그는 잠시 보통 어조로 말한다. "어쨌든 갓즈맨은 그렇게 얘기하고 있소."~ */
  IF ~~ THEN REPLY #45691 /* ~"내게 갓즈맨에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 20
  IF ~~ THEN REPLY #45692 /* ~"그 밖에도 질문할 것들이 몇 개 더 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #45693 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 6.3 7.3
  SAY #45694 /* ~"물론이오, 친구! 만약 당신에게 그럴 생각이 있다면, 작은 심부름 하나를 부탁하고 싶소! 하면 동전 쉰 닢을 벌 수가 있소! 당신은 이 전단을 가지고 인쇄소에 가서, 그 곳에 있는 무법자 펜에게 같은 전단을 백 장만 인쇄해 달라고 부탁만 하면 되오! 여기 있소! 받으시오!" 그는 구겨진 종이 한 장을 당신 손에 밀어 넣는다. ~ */
  IF ~~ THEN REPLY #45695 /* ~"좋소. 질문할 것들이 몇 개 더 있소..."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~경매인 길츠퍼는 내게 동전 50 닢을 줄 테니 전단을 인쇄소를 운영하는 무법자 펜에게 전달해달라고 부탁했다. ~ */ GOTO 5
  IF ~~ THEN REPLY #45696 /* ~"고맙소. 안녕히 계시오."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~경매인 길츠퍼는 내게 동전 50 닢을 줄 테니 전단을 인쇄소를 운영하는 무법자 펜에게 전달해달라고 부탁했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6 6.4 7.4
  SAY #45697 /* ~"인쇄됐소? 잘했소! 나는 당신이 적임자일 줄 알았소! 자, 이 메시지를 주조소에 있는 두리안 가의 켈도에게 전해주시오. 그는 이 메시지를 받으면 기뻐할 거요, 그리고 당신 역시 심부름의 보수로 동전 백 닢을 받으면 기뻐하게 될 거요."~ */
  IF ~~ THEN REPLY #45698 /* ~"좋소. 질문할 것들이 몇 개 더 있소..."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~내가 무법자 펜에게 배달을 하고 돌아오자, 경매인 길츠퍼는 내게 100 닢을 줄 테니 대 주조소에 있는 두리안 가의 켈도에게 메시지를 전해달라고 부탁했다. ~ */ GOTO 5
  IF ~~ THEN REPLY #45699 /* ~"고맙소. 안녕히 계시오."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~내가 무법자 펜에게 배달을 하고 돌아오자, 경매인 길츠퍼는 내게 100 닢을 줄 테니 대 주조소에 있는 두리안 가의 켈도에게 메시지를 전해달라고 부탁했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.7 6.5 7.5
  SAY #45700 /* ~"그거 참 신속하군. 정말 감사하오, 친구. 당신에게 부탁할 일이 하나 더 있소, 자그마치 동전 이백 닢짜리요! 이 전단을 가지고 불타는 시체의 바키스에게 가서 그것을 게시해 달라고 전하시오. 그는 옛 친구니까 그걸 보면 반가워할 거요!"~ */
  IF ~~ THEN REPLY #45701 /* ~"좋소. 질문할 것들이 몇 개 더 있소..."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~내가 켈도에게 메시지를 전하고 돌아오자, 경매인 길츠퍼는 내게 200 닢을 줄 테니 불타는 시체 바의 바키스에게 전단을 전해달라고 부탁했다. ~ */ GOTO 5
  IF ~~ THEN REPLY #45702 /* ~"고맙소. 안녕히 계시오."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~내가 켈도에게 메시지를 전하고 돌아오자, 경매인 길츠퍼는 내게 200 닢을 줄 테니 불타는 시체 바의 바키스에게 전단을 전해달라고 부탁했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8 6.6 7.6
  SAY #45703 /* ~"그럼 더 이상 내겐 당신에게 부탁할 일이 없소, 친구! 고맙소!" 그는 돌아서서 군중을 바라보며 소리지르기 시작한다. ~ */
  IF ~~ THEN REPLY #45704 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ JOURNAL #67155 /* ~내가 불타는 시체 바에 전단을 배달하고 돌아오자, 길츠퍼는 더 이상 내게 줄 일거리는 없다고 했다. ~ */ GOTO 5
  IF ~~ THEN REPLY #45705 /* ~"그럼 안녕히 계시오."~ */ JOURNAL #67155 /* ~내가 불타는 시체 바에 전단을 배달하고 돌아오자, 길츠퍼는 더 이상 내게 줄 일거리는 없다고 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.9 6.7 7.7
  SAY #45706 /* ~"미안하오, 친구, 더 이상은 없소... 당신이 이미 내 심부름을 다 해주었소!" 그는 웃는다.~ */
  IF ~~ THEN REPLY #45707 /* ~"그럼 몇 가지 질문에 더 대답해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #45708 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END
