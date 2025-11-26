// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~"이봐, 당장 여가서 나가... 뭐가 네 신상에 좋은 줄 안다면."~ */
  IF ~~ THEN REPLY #53696 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~"귀가 나쁜 모양이군. 여기서 나가. 더는 얘기하지 않겠어."~ */
  IF ~~ THEN REPLY #53698 /* ~"좋소. 떠나겠소.".~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~"난 분명히 기회를 줬어. 넌 떠날 수 있을 때 떠났어야 했어." 깡패가 공격한다!~ */
  IF ~~ THEN REPLY #53700 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~"당신은 여기서 수다만 떨 거요, 아니면 우릴 구할 생각이 있는 거요? 빨리 움직이시오!"~ */
  IF ~~ THEN REPLY #66760 /* ~"좋소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~잿빛 사내는 경멸하는 표정으로 당신을 본다. "뭘 원하시오? 당신 눈에는 우리가 우릴 카케리로 밀어 넣은 쓰레기들을 청소하느라 바쁜 게 보이지고 않소? 이 쓰레기를 처치하면 다 잘 될 거요. 우린 아웃랜즈로 돌아가게 될 거요."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~"당신들의 폭도 성향이 이 도시로 하여금 카케리에 한층 더 굳게 뿌리내리도록 만들고 있소. 그를 용서하고 이 도시를 덮치고 있는 악을 물리치기 위해 힘을 모으시오, 그러는 편이 당신들이 '잘 살게' 될 가능성이 더 클 거요."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~"당신들의 폭도 성향이 이 도시로 하여금 카케리에 한층 더 굳게 뿌리내리도록 만들고 있소. 그를 용서하고 이 도시를 덮치고 있는 악을 물리치기 위해 힘을 모으시오, 그러는 편이 당신들이 '잘 살게' 될 가능성이 더 클 거요."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~"왜 그를 죽이는 것이 당신들 문제를 해결할 것이라고 생각하오? 이 사람들을 설득해 도시를 괴물들로 부터 지키도록 하시오. 정치가들에 대한 최대의 복수는 그들에게 그들이 당신들에게 아무런 영향력도 없다는 것을 보여주는 것이오."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~"왜 그를 죽이는 것이 당신들 문제를 해결할 것이라고 생각하오? 이 사람들을 설득해 도시를 괴물들로 부터 지키도록 하시오. 정치가들에 대한 최대의 복수는 그들에게 그들이 당신들에게 아무런 영향력도 없다는 것을 보여주는 것이오."~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~"거기서 멈추시오, 내가 있는 한 린치는 용납될 수 없소."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~"나는 다른 할 일이 있소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~"하지만 그는.. 그는... 좋소, 그렇게 하겠소." 그는 군중들이 들을 수 있도록 큰 목소리로 말한다. "그를 풀어 주시오! 우린 이 도시 전체를 구해야 하오!"~ */
  IF ~~ THEN REPLY #66777 /* ~"고맙소, 친구. 행운을 빌겠소."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~"닥치시오. 우린 처리해야 할 일이 있소!" 그는 동조자들 쪽으로 돌아선다! "그를 죽이시오!"~ */
  IF ~~ THEN REPLY #66779 /* ~공격한다.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~지켜본다.~ */ EXIT
END
