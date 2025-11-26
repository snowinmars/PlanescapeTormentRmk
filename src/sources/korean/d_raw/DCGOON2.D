// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0707")
~ THEN BEGIN 0 // from:
  SAY #53701 /* ~"넌 여기서 필요가 없어, 다치기 전에 썩 꺼져."~ */
  IF ~~ THEN REPLY #53702 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0707")
~ THEN BEGIN 1 // from:
  SAY #53703 /* ~"제 발로 걸어나갈 마지막 기회를 주지. 저 문으로 나가지 않으면 아주 요절이 날 줄 알라고."~ */
  IF ~~ THEN REPLY #53704 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0707")
~ THEN BEGIN 2 // from:
  SAY #53705 /* ~"말로 해서는 안 되겠군. 넌 떠날 수 있을 때 떠났어야 했어." 칼이 번득인다!~ */
  IF ~~ THEN REPLY #53706 /* ~공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66781 /* ~이 사람의 눈은 피에 굶주려 번득이고 있으며, 그의 목소리는 증오에 불타 비명을 질러댄 탓에 폭삭 쉬었다. 당신은 완전히 무시당하고 있다..~ */
  IF ~~ THEN REPLY #66784 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66782 /* ~"고맙소, 친구. 우리에겐 구해야 할 도시가 있소..."~ */
  IF ~~ THEN REPLY #66783 /* ~"행운을 빌겠소..."~ */ EXIT
END
