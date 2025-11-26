// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~이 지루해 보이는 위어랫은 지루함으로부터 탈출할 방법을 필사적으로 찾고 있는 듯하다. "뭘 원하나, 고기?"~ */
  IF ~~ THEN REPLY #23860 /* ~"여기서 나가고 싶소."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~"나는 그냥 당신과 얘기가 하고 싶소."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~아무 것도 아니오. 관두시오."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~"그래? 왜 우리가 만투옥의 명령을 어기고 쥐들의 분노를 사는 위험을 무릅써야 하는 거지?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~"당신 목숨. 만약 지금 당장 날 내보내 준다면, 당신 모숨은 살려 주겠소."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~"당신 목숨. 만약 지금 당장 날 내보내 준다면, 당신 모숨은 살려 주겠소."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~"아무도 내가 한 짓을 모르게 될 거라는 약속... 그리고 나중에 돈을 줄 수도 있다는 약속."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~"그들이 어떻게 알 수가 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~"돈은 어떻소?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~"생각해 보시오, 난 당신에게 위협적인 존재요. 허나 그럼에도 불구하고 난 당신을 나와 동격으로 생각해서 얘기를 하고 있소. 만약 내가 마음을 먹는다면 이런 벽쯤 부시지 못할 거라고 생각하오? 협박이 아니니 오해는 마시오, 하지만 날 보내 주는 것이 당신 신상에 좋을 거라고 충고하고 싶소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~"왜냐하면 나는 언젠가는 이 곳에서 빠져나갈 것이고, 그렇게 되면 관련자들은 무사하지 못할 테니까."~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~"생각해 보니 아무 것도 없는 것 같소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~라이몬은 당신을 아래위로 조심스럽게 살펴본다. 당신 눈에 서린 광폭함과 당신의 강인한 근육을 눈치챈 그는 자물쇠를 열고 당신을 위해 문을 열어 준다. 그는 옆으로 비켜서서 당신의 시선을 피한다. ~ */
  IF ~~ THEN REPLY #23873 /* ~"고맙소, 친구."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~"그럼 이만."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~그는 계속 당신의 시선을 피한다. "제발 날 해치지 마시오... 나는 내 임무를 수행했을 뿐이오."~ */
  IF ~~ THEN REPLY #23876 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~그는 당신을 쳐다보더니 조소한다. "네가 날 해칠 수 있을 같아? 그럴 방법부터 찾아보라고!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~"아무도 내가 한 짓을 모르게 될 거라는 약속... 그리고 나중에 돈을 줄 수도 있다는 약속."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~"날 그냥 내보내 주는 것이 어떻겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~"만약 내가 당신에게 돈을 좀 준다면?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~"생각해 보시오, 난 당신에게 위협적인 존재요. 허나 그럼에도 불구하고 난 당신을 나와 동격으로 생각해서 얘기를 하고 있소. 만약 내가 마음을 먹는다면 이런 벽쯤 부시지 못할 거라고 생각하오? 협박이 아니니 오해는 마시오, 하지만 날 보내 주는 것이 당신 신상에 좋을 거라고 충고하고 싶소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~"왜냐하면 나는 언젠가는 이 곳에서 빠져나갈 것이고, 그렇게 되면 관련자들은 무사하지 못할 테니까."~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~"그럼 방법을 모색하도록 하지. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~"좋은 방법인 것 같군. 난 전부터 만투옥이 이래라 저래라 명령하는 것이 마음에 들지 않았어." 그는 자물쇠를 딴 다음 문을 열고 한쪽으로 비켜선다. "내가 당신을 못 본 채 할 동안 어서 나오라고."~ */
  IF ~~ THEN REPLY #23885 /* ~"알았소. 안녕히 계시오."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~"말인데... 당신이 이 곳에 들어왔을 때 당신 지갑은 꽤 두둑해 보였어. 거기서 내게 동전 백 닢만 꺼내 주면 당신은 여기서 나갈 수가 있지. 물론 당신에게 그만한 여력은 있겠지."~ */
  IF ~~ THEN REPLY #23887 /* ~"좋소."~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~"돈을 쇠창살 사이로 던지면 당신을 내보내 주도록 하지. 당신이 묻기 전에 미리 말해두겠는데, 당신에게는 날 믿는 것 말고는 선택의 여지가 없어. 안 그런가, 쉐듀스?" 그는 자신의 동료를 바라보며 능글맞게 웃는다. ~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~"좋소. 여기 있소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~"내겐 그만한 돈이 없소..."~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~그는 동전을 조심스럽게 센다. 액수가 맞는지를 확인한 후 그는 문을 연다. "당장 나오라고!"~ */
  IF ~~ THEN REPLY #23894 /* ~"좋소, 좋아."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~"그럼 당신은 나갈 수가 없어." 그는 쥐새끼처럼 웃으며 돌아선다. ~ */
  IF ~~ THEN REPLY #23896 /* ~"빌어먹을..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~"그냥 얘기가 하고 싶다고? 흥, 난 너와 얘기할 생각이 없으니 그렇게 알라고!" 그는 당신으로부터 고개를 돌린다. ~ */
  IF ~~ THEN REPLY #23898 /* ~"그럼 날 여기서 내보내는 일에 대해 상담하고 싶소."~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~그는 코웃음친다. "내가 널 믿을 것 같냐?" 그의 콧수염이 씰룩거린다. "어디 다시 해보시지."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~"만약 당신이 지금 당장 날 내보내 준다면, 당신 목숨은 살려 주겠소."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~"만약 당신이 지금 당장 날 내보내 준다면, 당신 목숨은 살려 주겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~"돈은 어떻소?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~"생각해 보시오, 난 당신에게 위협적인 존재요. 허나 그럼에도 불구하고 난 당신을 나와 동격으로 생각해서 얘기를 하고 있소. 만약 내가 마음을 먹는다면 이런 벽쯤 부시지 못할 거라고 생각하오? 협박이 아니니 오해는 마시오, 하지만 날 보내 주는 것이 당신 신상에 좋을 거라고 충고하고 싶소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~"왜냐하면 나는 언젠가는 이 곳에서 빠져나갈 것이고, 그렇게 되면 관련자들은 무사하지 못할 테니까."~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~"관두시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~"대체 뭘 알고 싶은 거지, 이 미친 놈아?"~ */
  IF ~~ THEN REPLY #23908 /* ~"당신과 얘기를 하고 싶소."~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~"여길 떠나는 데 대한 내 의견에 대해 당신과 얘기하고 싶소."~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~아무 것도 아니오. 관두시오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~"대체 왜 아직도 여기서 어슬렁거리는 거야? 어서 가라고!" 그는 고개를 숙이고 당신을 쳐다보려고 하지 않는다.~ */
  IF ~~ THEN REPLY #23912 /* ~"알겠소."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~"염병할... 쉐듀스, 놈을 죽여!" 두 위어랫은 당신을 공격한다.~ */
  IF ~~ THEN REPLY #23914 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
