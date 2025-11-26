// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~몸에 꼭 끼는 가죽 코르셋과 레깅스를 입은 젊은 여자가 보인다. 그녀로부터는 싸구려 향수 냄새가 약간 나며, 그녀의 얼굴은 아름답기는 하나 지나치게 야한 화장을 하고 있다. 그녀는 당신을 보자 수줍은 듯 미소짓는다. "같이 즐거운 시간을 보낼 사람을 원하시나요, 자기?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~"혹시 당신이 아마리스요?"~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~"미안해요, 하지만 난 행인의 질문에 대답해주려고 여기 서 있는 게 아니에요. 정말 같이 즐거운 시간을 보낼 친구가 필요 없으세요?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~"아니오. 하지만 혹시 당신이 아마리스가 아니오?"~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~그녀는 당신을 한동안 조용히 쳐다본 후 입을 연다: "오래 전에 그런 이름으로 불린 적이 있어요. 당신은 누구죠?"~ */
  IF ~~ THEN REPLY #22785 /* ~"나는 당신 오빠 노드의 부탁을 받고 당신을 찾으러 왔소. 그는 당신에 대해 걱정하고 있으며, 내가 당신 소재를 알아와 주기를 바랐소."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~"노... 노드? 그가 살아 있어요? 어디 있죠? 왜 그가 직접 날 찾아오지 않았나요?"~ */
  IF ~~ THEN REPLY #22787 /* ~"내 생각에 그는 창피해 하는 것 같소. 이제 그는 수집자로 넝마주이 광장에서 어렵게 살고 있소. 그는 머리가 좀... 이상한 것 같소."~ */ JOURNAL #22632 /* ~아마리스는 내게 노드의 어릴 적 이름이 "토더스"라고 말해주었다. ~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~"그래요, 어릴 때부터 오빠는 약간 이상했죠. 그의 이름은 토더스였어요. 아, 난 오빠가 정말 보고 싶었어요! 부끄럽다고요? 하! 내가 하는 일도 별로 자랑스러운 건 아니죠! 어쨌든 적어도 난 벌통 주민치고는 그럭저럭 잘 살고 있는 편이에요. 난 곧 그를 찾아갈 생각이에요." 그는 당신과 대화를 시작한 이래 처음으로 당신을 자세히 본다. "당신은 노드의 친구인가요, 아니면...?"~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~"그렇다고 할 수 있소. 그건 왜 물어본 거요?"~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~"아니오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~"그렇진 않소. 난 돈을 받고 일을 해줄 뿐이오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~거짓말: "그렇소. 그건 왜 물어본 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~"혹시..." 그녀는 무슨 생각을 하는 듯 입술을 깨물며 눈살을 찌푸린다. "이걸 그에게 전해줄 수 있겠어요?" 그는 당신에게 가까이 다가와 동전이 백 닢 정도 든 주머니를 내민다.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~"물론이오. 그에게 전해주겠다고 맹세하오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~나는 아마리스에게 넝마주이 광장에 있는 그녀의 오빠 노드에게 돈을 전달해 주겠다고 맹세했다.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~"물론이오. 그에게 전해주겠다고 맹세하오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~나는 아마리스에게 넝마주이 광장에 있는 그녀의 오빠 노드에게 돈을 전달해 주겠다고 맹세했다.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~"물론이오. 그에게 전해주겠소."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~"아니, 그러지 않는 것이 좋을 것 같소. 하지만 그에게 당신이 곧 방문할 거라고 얘기해주겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~"아니, 그러지 않는 것이 좋을 것 같소. 하지만 그에게 당신이 곧 방문할 거라고 얘기해주겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~그녀는 주머니를 건넨다. "고마워요. 가서 노드에게 내 대신 안부를 전해주세요. 내가 오빠를 얼마나 걱정하고 있는지도!"~ */
  IF ~~ THEN REPLY #22799 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~"미안하지만 그걸 오빠에게 꼭 전해 주겠다고 맹세할 수 있겠어요? 그건 적어도 내게는 큰 돈이에요..."~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~"물론이오. 그에게 전해주겠다고 맹세하오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~나는 아마리스에게 넝마주이 광장에 있는 그녀의 오빠 노드에게 돈을 전달해 주겠다고 맹세했다.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~"물론이오. 그에게 전해주겠다고 맹세하오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~나는 아마리스에게 넝마주이 광장에 있는 그녀의 오빠 노드에게 돈을 전달해 주겠다고 맹세했다.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~"아니, 그러지 않는 것이 좋을 것 같소. 하지만 그에게 당신이 곧 방문할 거라고 얘기해주겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~"아니, 그러지 않는 것이 좋을 것 같소. 하지만 그에게 당신이 곧 방문할 거라고 얘기해주겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~"흠. 어쨌든 고마워요. 가서 노드에게 내 대신 안부를 전해주세요. 내가 오빠를 얼마나 걱정하고 있는지도!"~ */
  IF ~~ THEN REPLY #22806 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~아마리스는 기대에 부푼 얼굴로 당신을 쳐다본다. "노드와 얘기를 했나요?"~ */
  IF ~~ THEN REPLY #22808 /* ~"아니, 아직 아니오."~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~"그럼 가서 노드에게 내 대신 안부를 전해주세요. 내가 오빠를 얼마나 걱정하고 있는지도!"~ */
  IF ~~ THEN REPLY #22811 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~"나는 당신이 노드에게 내 안부를 전해주었다는 얘기를 들었어요. 고마워요."~ */
  IF ~~ THEN REPLY #22813 /* ~"천만의 말씀이오. 하지만 어떻게 알았소?"~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~"나는 벌통 안에 친구가 많거든요." 그녀는 당신에게 윙크한다. "다시 한 번 감사해요,"~ */
  IF ~~ THEN REPLY #22816 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~아마리스가 보인다. 하지만 아직 그녀는 당신을 알아보지 못한 것 같다.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~그녀에게 말을 건다.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~그녀에게 말을 건다.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~당신을 보자 그녀의 눈은 분노로 불타고 있다. 그녀는 당신이 미처 입을 열기도 전에 한 손에 칼을 쥐고 비명을 지르며 당신에게 달려든다. "이 개자식! 내가 내 불쌍한 오빠에 대해 듣지 못했을 거라고는 생각하지 마... 난 널 죽일 거야!"~ */
  IF ~~ THEN REPLY #22822 /* ~그녀의 공격에 대처한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~당신을 보자 그녀의 눈은 분노로 불타고 있다. 그녀는 당신이 미처 입을 열기도 전에 한 손에 칼을 쥐고 비명을 지르며 당신에게 달려든다. "이 날강도 같은 놈! 난 네가 무슨 짓을 했는지 다 들었어! 내 오빠에게 전해 달라고 한 돈을 가로채다니... 난 널 죽일 거야!"~ */
  IF ~~ THEN REPLY #22825 /* ~그녀의 공격에 대처한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
