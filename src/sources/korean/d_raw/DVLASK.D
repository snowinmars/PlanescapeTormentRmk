// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~지금까지 당신이 본 다른 수집자들과는 달리 이 사람은 좋은 법복을 걸치고 있다. "아, 또 다른 죽은 자가 우리를 찾아왔군. 어수선해서 미안하오, 내 동료들이 미처 정리하지 못했소."~ */
  IF ~~ THEN REPLY #45718 /* ~"출구가 없소..."~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~블래스크는 조용히 낄낄거린다. "또 당신인가! 내 친구들과 나는 같은 손님을 두 번 보는 일이 매우 드문데 반갑군. 요점만 말하지. 이제 열쇠의 가격은 동전 이백 닢이오."~ */
  IF ~~ THEN REPLY #45720 /* ~"난 당신을 죽이러 돌아왔소."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~"돈을 받으시오."~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~"그만한 돈이 없소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~"물론 있지. 문은 바로 저기 있소. 하지만 전이문을 작동시키려면 이런 게 필요하거든." 그는 작은 유리알처럼 보이는 것을 치켜든다. "자, 가격에 대해 얘기하자고."~ */
  IF ~~ THEN REPLY #45725 /* ~"대신 당신을 죽이는 것이 좋을 것 같군."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~"듣고 있소..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~"간단하지, 당신이 나와 내 친구들에게 동전 백 닢을 주면, 나도 당신에게 전이문 열쇠를 주지."~ */
  IF ~~ THEN REPLY #45728 /* ~"만약 돈을 내고 싶지 않다면?~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~"돈이 여기 있소. 열쇠를 주시오."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~"그만한 돈이 없소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~"나와 내 친구들이 당신 시체를 더스트맨에 팔아야겠군. 어느 쪽으로든 우리는 돈을 버는 거지."~ */
  IF ~~ THEN REPLY #45735 /* ~"대신 당신을 죽이는 것이 좋을 것 같군."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~"돈이 여기 있소. 열쇠를 주시오."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~"그만한 돈이 없소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~"이용해 주신 데 대해 내 친구들을 대신해 감사하오. 유리알을 부수기만 하면 전이문은 작동될 거요."~ */
  IF ~~ THEN REPLY #45739 /* ~"안녕히 계시오."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~"애석하군. 친구들, 이 자를 더스트맨에게 넘길 준비를 하자고."~ */
  IF ~~ THEN REPLY #45741 /* ~"죽을 준비를 하시오..."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
