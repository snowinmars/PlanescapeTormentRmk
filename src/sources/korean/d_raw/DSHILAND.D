// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHILAND.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHILAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45742 /* ~"제기랄! 거의 성공할 뻔했는데. 마법사가 주문을 영창하고 있을 때 방해하면 위험하다는 걸 모르나요? 다행히도 연습이었으니까 망정이지... 어쨌든 내게 뭘 원하는 거죠?"~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45743 /* ~"나는 이 상자에 대해 더 알고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #45744 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45745 /* ~"또 방해를 했군요! 자기 집에서도 프라이버시를 지킬 수가 없다니. 경비병을 부르기 전에 어서 떠나요... 아니지, 내가 가지고 놀던 새 주문을 당신에게 시험해 보는 것이 더 좋을 것 같군요."~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45748 /* ~"나는 이 상자에 대해 더 알고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #45749 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",3)
~ THEN BEGIN 2 // from:
  SAY #45750 /* ~"당신 때문이 난 이미 너무 많은 시간을 허비했어요. 떠나 주세요."~ */
  IF ~~ THEN REPLY #45751 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 16 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45752 /* ~"벌통에서 당신이 모리도의 상자에 봉인되었던 마족을 죽였다는 소문이 떠돌고 있더군요. 혹시 그 마족의 일부를 주워서 보관해 두지는 않았겠죠?"~ */
  IF ~~ THEN REPLY #45753 /* ~"당신은 대체 어떤 부류의 사람이기에 그런 걸 수집하는 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #45754 /* ~"어.. 아니오. ~ */ GOTO 15
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 4 // from:
  SAY #45755 /* ~"소문에 의하면 당신이 모리도의 상자를 파괴하는 게 성공했다더군요. 축하를 해야겠군요. 하지만 내가 마족을 봉인하는 데 사용된 주문들을 모두 해석할 수 없었던 건 애석한 일이에요."~ */
  IF ~~ THEN REPLY #45756 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0
  SAY #45757 /* ~당신은 쉴란드라가 모리도의 상자를 살펴볼 수 있도록 그것을 내민다. "아, 그래요! 나는 이 상자를 잘 기억하고 있어요. 얼마 전에 손에 넣은 적이 있죠. 그것에 대해 무엇이 알고 싶으시죠?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45758 /* ~"당신은 누구로부터 이 상자를 입수했소?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45759 /* ~"당신은 마법에 대한 조예가 있는 것 같소. 이 상자에 어떤 마법들이 걸려 있는지 내게 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45760 /* ~"당신은 이 상자에 얽힌 역사를 아시오?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 7.1 9.0 10.0 11.1 12.0 13.0
  SAY #45761 /* ~"그 밖에 무엇이 알고 싶으시죠?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45762 /* ~"당신은 이 상자를 어디서 입수했소?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45763 /* ~"당신은 마법에 대한 조예가 있는 것 같소. 이 상자에 어떤 마법들이 걸려 있는지 내게 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q3","Global",0)
Global("Q2","Global",1)
~ THEN REPLY #45764 /* ~"당신은 이 상자에 걸린 주문을 안전하게 해제할 수가 있소?"~ */ DO ~SetGlobal("Q3","Global",1)
~ GOTO 10
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45765 /* ~"당신은 이 상자에 얽힌 역사를 아시오?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
  IF ~  Global("Q1","Global",1)
Global("Q2","Global",1)
Global("Q3","Global",1)
Global("Q4","Global",1)
~ THEN REPLY #45766 /* ~"아무도 해치지 않고 모리도의 상자를 안전하게 처리할 방법은 없소?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #45767 /* ~"흠... 생각을 해보죠. 누구로부터 얻었는지는 기억이 나지 않는군요. 내가 시장에서 주문에 쓸 재료들을 찾고 있을 때, 어떤 사람이 와서 내게 이 상자를 사자 않겠느냐고 했죠. 상자를 시험해 본 후 나는 그것이 저주에 걸린 상자라는 것을 알았으나, 상자에 걸린 주문들에 흥미가 있었기 때문에 그래도 구입을 했어요."~ */
  IF ~~ THEN REPLY #45768 /* ~"만약 당신이 그 상자에 그렇게 매혹되었다면, 왜 그것을 다른 사람에게 주기로 결심했던 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #45769 /* ~"물어보고 싶은 것들이 더 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #45770 /* ~"여러 해 동안 나는 그 상자를 연구하여 그 비밀을 배우려고 노력했죠. 이 상자에는 주문들이 겹겹이 걸려 있었어요. 연구한 결과 나는 상자에 걸린 주문들은 모두 마족들을 봉인하는 데 쓰는 주문들이라는 놀라운 사실을 발견했어요."~ */
  IF ~~ THEN REPLY #45771 /* ~"마족들? 당신 얘기는 이 상자 안에 마족들이 봉인되어 있다는 거요?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45772 /* ~"아니, 마족들이 아니라 한 마리의 마족이에요. 그리고 이러한 주문들의 복잡성과 마력으로 미루어 볼 때 자신의 세계에서는 나름대로 강력한 힘과 높은 지위를 지닌 놈이 틀림없어요."~ */
  IF ~~ THEN REPLY #45773 /* ~"물어보고 싶은 것들이 더 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #45774 /* ~"이 상자로부터 벗어나려는 건가요? 그 주문은 상자의 걸린 주문들 중에서도 최악이에요. 기본적으로 그 주문은 현재 소유주로부터 에너지를 빨아들여 봉인의 주문들 중 하나를 유지하는 데 사용하죠. 하지만 정말 극악한 건 그게 아니에요. 상자 안의 악마는 이 에너지의 냄새를 맡을 수가 있으며, 만약 탈출하게 된다면 소유주를 추적하여 죽일 거예요. 그 상자를 일단 소유하게 되면 파멸만이 기다릴 뿐이죠. 상자가 당신의 에너지를 다 빨아먹던지 아니면 마족이 당신을 죽일 테니까요."~ */
  IF ~~ THEN REPLY #45775 /* ~"알겠소. 만약 괜찮다면 질문을 조금 더 합시다..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #45776 /* ~"그 시절에는 나도 아직 어렸고 경솔했죠. 지식을 위해 가차 없이 탐구하던 중 나는 주문들 중 하나를 해제하고 말았어요. 상자를 자세히 보세요. 내가 처음으로 그것을 소유했을 때는 새 것이나 다름없었어요. 상자가 부식하고 있다는 건 주문들이 약해지고 있다는 신호예요. 나는 내가 이 상자를 더 이상 지니고 있으면 위험해지리라는 걸 깨달았어요. 그래서 나는 콘테스트를 열어 그것을 처분했죠."~ */
  IF ~~ THEN REPLY #45777 /* ~"콘테스트?"~ */ GOTO 12
  IF ~~ THEN REPLY #45778 /* ~"물어보고 싶은 것들이 더 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45779 /* ~"그건 정말 교활한 방법이었죠. 나는 벌통에 사는 싸움꾼들을 누가 가장 뛰어난지를 가리는 시합에 초대했어요. 그런 작자들은 근육만 발달했지 머리는 텅 빈 걸로 악명이 높으니까요. 무슨 의미인지는 당신도 잘 알겠지요. 아니나 다를까, 그들은 꿀에 파리들이 꼬이듯 모여들었지요. 나는 약간의 돈과 상자를 상으로 내걸었어요. 내가 기억하기로 그 시합의 승자는 브래스켄이라는 사람이었을 거예요." ~ */
  IF ~~ THEN REPLY #45780 /* ~"물어보고 싶은 것들이 더 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 5.2 6.3
  SAY #45781 /* ~"내가 알아낼 수 있었던 건 그것의 이름뿐이에요. 그건 모리도의 상자라고 불려요. 상자의 유래나 모리도가 누구인지는 나도 몰라요."~ */
  IF ~~ THEN REPLY #45782 /* ~"물어보고 싶은 것들이 더 있소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 6.4
  SAY #45783 /* ~"나는 그러한 괴물과 싸우거나 그것을 다른 차원으로 추방시킬 정도로 강하지 못해요. 벌써 그 곳에 가본지 오래되어 확언할 수는 없지만, 위험한 모서리의 골목 한가운데에는 성당이 하나 있을 거예요. 사제나 보다 높은 차원의 존재로부터 힘을 얻는 자라면 당신을 도울 수 있을지도 몰라요."~ */
  IF ~~ THEN REPLY #45784 /* ~"도와줘 고맙소."~ */ DO ~SetGlobal("FedEx","Global",4)
SetGlobal("Delta","Global",2)
SetGlobal("Epsilon","Global",1)
AddexperienceParty(250)
~ JOURNAL #60388 /* ~쉴란드라는 내게 모리도의 상자에 대한 많은 얘기를 들려주었다... 불행히도 그 대부분은 별로 듣고싶지 않은 내용들이었다. 이 상자 안에는 한 마리의 고위 마족이 갇혀 있는 듯하다. 설상가상으로 이 마족을 봉인하고 있는 주문은 점점 약해지고 있다. 놈이 곧 탈출하여 자신을 감금한 데 대한 보복을 하려 하지는 않을까 우려된다. 쉴란드라는 내게 위험한 모서리의 골목 한 가운데에 있는 성당에 가보라고 권했다. 고위의 존재가 마족이 탈출하기 전에 개입하여 놈을 추방하기를 바랄 뿐이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.1
  SAY #45785 /* ~"마법에 능통하지 못한 사람은 이해하지 못할 수도 있겠군요. 특정한 소재는 주문을 위한 재료로서 큰 가치가 있어요. 미안하지만 난 이 주문을 좀 더 연습해야겠어요."~ */
  IF ~~ THEN REPLY #45786 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Shil","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shil","Global",1)
~ THEN BEGIN 16 // from:
  SAY #45787 /* ~"나는 더 이상 당신에게 할 말이 없어요."~ */
  IF ~~ THEN REPLY #45788 /* ~"안녕히 계시오."~ */ EXIT
END
