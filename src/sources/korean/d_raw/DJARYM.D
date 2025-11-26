// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~"뭐...? 누구지...?"~ */
  IF ~~ THEN REPLY #47885 /* ~"안녕하시오."~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~"또 당신인가?!"~ */
  IF ~~ THEN REPLY #47888 /* ~"안녕하시오."~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~"돌아왔군. 루비는 구했소?"~ */
  IF ~~ THEN REPLY #47891 /* ~"아니오. 아직 찾는 중이오."~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~"내가 뭘 찾아야 하는지 다시 말해주겠소?"~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~"당신이 찾는 게 이거요?"~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~"다시 만나 반갑소. 미안하지만 이제 영창에 필요한 보석을 손에 넣었으니 당신은 그만 떠나 주어야겠소."~ */
  IF ~~ THEN REPLY #47895 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~"정말 내게는 당신과 얘기할 시간이 없소. 나는 핵심 재료가 없는 상태에서 어떻게 내 주문을 완성할 지에 대해 연구하고 있는 중이오."~ */
  IF ~~ THEN REPLY #47897 /* ~"내가 도울 수 있을지도 모르오."~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~"그럼 이만 실례하겠소. 안녕히 계시오." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~자림은 잠시 멈춘다. "뭐, 해가 될 건 없겠군, 나는 내 주문을 완성하기 위해 루비를 구하고 있소. 그것은 시장에서 파는 하급품과는 달리 최상급품이어야만 하오. 만약 당신이 그런 루비를 찾아오면 상응하는 보수를 주겠소."~ */
  IF ~~ THEN REPLY #47900 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~자림이라는 마법사가 자신의 주문을 완성하기 위해 루비를 필요로 하고 있다. 만약 내가 루비를 넝마주이 광장에 있는 그의 집까지 가져다준다면 내 노고에 합당한 보상을 해주겠다고 약속했다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~"포기하지 마시오. 어딘가에 루비가 반드시 있을 거요."~ */
  IF ~~ THEN REPLY #47902 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~"당신은 루비를 구해와야 하오, 기억하시오? 구하거든 돌아오시오."~ */
  IF ~~ THEN REPLY #47904 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~"그건 완벽하오! 대체 어디서 그런 걸... 상관없소. 자, 받으시오." 자림은 당신으로부터 보석을 받은 후, 상당한 액수의 동전을 건네준다." 미안하지만 이제 나는 내 주문을 준비하는 작업에 들어가야겠소."~ */
  IF ~~ THEN REPLY #47906 /* ~"안녕히 계시오."~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~자림은 내가 가져온 루비에 대해 만족한 것 같다. 만약 내가 그것의 모리도의 상자에서 나온 것이라고 했더라도 같은 반응을 보였을까?~ */ EXIT
END
