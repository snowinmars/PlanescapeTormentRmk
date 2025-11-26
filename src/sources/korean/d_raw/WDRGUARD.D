// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~이 지루해 보이는 위어랫은 지루함으로부터 탈출할 방법을 필사적으로 찾고 있는 듯하다. "뭘 원하나, 고기?"~ */
  IF ~~ THEN REPLY #48222 /* ~"여기서 나가고 싶소."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~"나는 그냥 당신과 얘기가 하고 싶소."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~아무 것도 아니오. 관두시오."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~"그래? 왜 우리가 만투옥의 명령을 어기고 쥐들의 분노를 사는 위험을 무릅써야 하는 거지?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~"당신 목숨. 만약 지금 당장 날 내보내 준다면, 당신 모숨은 살려 주겠소."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~"당신 목숨. 만약 지금 당장 날 내보내 준다면, 당신 모숨은 살려 주겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~"아무도 내가 한 짓을 모르게 될 거라는 약속... 그리고 나중에 돈을 줄 수도 있다는 약속."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~"그들이 어떻게 알 수가 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~"돈은 어떻소?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~"생각해 보시오, 난 당신에게 위협적인 존재요. 허나 그럼에도 불구하고 난 당신을 나와 동격으로 생각해서 얘기를 하고 있소. 만약 내가 마음을 먹는다면 이런 벽쯤 부시지 못할 거라고 생각하오? 협박이 아니니 오해는 마시오, 하지만 날 보내 주는 것이 당신 신상에 좋을 거라고 충고하고 싶소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~"왜냐하면 나는 언젠가는 이 곳에서 빠져나갈 것이고, 그렇게 되면 관련자들은 무사하지 못할 테니까."~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~"생각해 보니 아무 것도 없는 것 같소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~라이몬은 당신을 아래위로 조심스럽게 살펴본다. 당신 눈에 서린 광폭함과 당신의 강인한 근육을 눈치챈 그는 자물쇠를 열고 당신을 위해 문을 열어 준다. 그는 옆으로 비켜서서 당신의 시선을 피한다. ~ */
  IF ~~ THEN REPLY #48235 /* ~"고맙소, 친구."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~"그럼 이만."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~그는 계속 당신의 시선을 피한다. "제발 날 해치지 마시오... 나는 내 임무를 수행했을 뿐이오."~ */
  IF ~~ THEN REPLY #48238 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~그는 당신을 쳐다보더니 조소한다. "네가 날 해칠 수 있을 같아? 그럴 방법부터 찾아보라고!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~"아무도 내가 한 짓을 모르게 될 거라는 약속... 그리고 나중에 돈을 줄 수도 있다는 약속."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~"날 그냥 내보내 주는 것이 어떻겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~"만약 내가 당신에게 돈을 좀 준다면?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~"생각해 보시오, 난 당신에게 위협적인 존재요. 허나 그럼에도 불구하고 난 당신을 나와 동격으로 생각해서 얘기를 하고 있소. 만약 내가 마음을 먹는다면 이런 벽쯤 부시지 못할 거라고 생각하오? 협박이 아니니 오해는 마시오, 하지만 날 보내 주는 것이 당신 신상에 좋을 거라고 충고하고 싶소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~"왜냐하면 나는 언젠가는 이 곳에서 빠져나갈 것이고, 그렇게 되면 관련자들은 무사하지 못할 테니까."~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~"그럼 방법을 모색하도록 하지. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~"좋은 방법인 것 같군. 난 전부터 만투옥이 이래라 저래라 명령하는 것이 마음에 들지 않았어." 그는 자물쇠를 딴 다음 문을 열고 한쪽으로 비켜선다. "내가 당신을 못 본 채 할 동안 어서 나오라고."~ */
  IF ~~ THEN REPLY #48247 /* ~"알았소. 안녕히 계시오."~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~"말인데... 당신이 이 곳에 들어왔을 때 당신 지갑은 꽤 두둑해 보였어. 거기서 내게 동전 백 닢만 꺼내 주면 당신은 여기서 나갈 수가 있지. 물론 당신에게 그만한 여력은 있겠지."~ */
  IF ~~ THEN REPLY #48249 /* ~"좋소."~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~"돈을 쇠창살 사이로 던지면 당신을 내보내 주도록 하지. 당신이 묻기 전에 미리 말해두겠는데, 당신에게는 날 믿는 것 말고는 선택의 여지가 없어. 안 그런가, 쉐듀스?" 그는 자신의 동료를 바라보며 능글맞게 웃는다. ~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~"좋소. 여기 있소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~"내겐 그만한 돈이 없소..."~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~그는 동전을 조심스럽게 센다. 액수가 맞는지를 확인한 후 그는 문을 연다. "당장 나오라고!"~ */
  IF ~~ THEN REPLY #48256 /* ~"좋소, 좋아."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~"그럼 당신은 나갈 수가 없어." 그는 쥐새끼처럼 웃으며 돌아선다. ~ */
  IF ~~ THEN REPLY #48258 /* ~"빌어먹을..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~"그냥 얘기가 하고 싶다고? 흥, 난 너와 얘기할 생각이 없으니 그렇게 알라고!" 그는 당신으로부터 고개를 돌린다. ~ */
  IF ~~ THEN REPLY #48264 /* ~"만약 당신이 지금 당장 날 내보내 준다면, 당신 목숨은 살려 주겠소."~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~"그럼 좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~"그냥 얘기가 하고 싶다고? 흥, 난 너와 얘기할 생각이 없으니 그렇게 알라고!" 그는 당신으로부터 고개를 돌린다. ~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~그는 당신을 조롱한다. "내가 당신을 믿을 것 같소?" 그의 수염이 씰룩거린다. "다시 한 번 해보시지."~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~"만약 당신이 지금 당장 날 내보내 준다면, 당신 목숨은 살려 주겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~"돈은 어떻소?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~"생각해 보시오, 난 당신에게 위협적인 존재요. 허나 그럼에도 불구하고 난 당신을 나와 동격으로 생각해서 얘기를 하고 있소. 만약 내가 마음을 먹는다면 이런 벽쯤 부시지 못할 거라고 생각하오? 협박이 아니니 오해는 마시오, 하지만 날 보내 주는 것이 당신 신상에 좋을 거라고 충고하고 싶소."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~"왜냐하면 나는 언젠가는 이 곳에서 빠져나갈 것이고, 그렇게 되면 관련자들은 무사하지 못할 테니까."~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~"관두시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~"대체 뭘 알고 싶은 거지, 이 미친 놈아?"~ */
  IF ~~ THEN REPLY #48270 /* ~"당신과 얘기를 하고 싶소."~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~"여길 떠나는 데 대한 내 의견에 대해 당신과 얘기하고 싶소."~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~아무 것도 아니오. 관두시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~당신이 철창 쪽으로 다가가자 은빛 섬광과 함께 위어랫 경비병들 중 하나가 무서운 기세로 자기 동료에게 달려든다!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~"그럼 좋소." 그는 라이몬의 시체로부터 열쇠를 꺼내 문을 연다. "당장 떠나라고." 그는 가볍게 인사를 하고 재빨리 그 장소를 떠난다. ~ */
  IF ~~ THEN REPLY #48276 /* ~"그러리다. 고맙소."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~"당신은 내가 왜 그런 짓을 했는지 궁금한 모양이군. 나는 매장된 마을의 주민이였고 내 이름은 쉐듀스였소. 나는 위어랫이 되고 싶은 생각은 추호도 없었고, 이런 병에 걸렸다고 해서 인간을 배신할 생각도 없어. 나와, 당장." 그는 문을 연 후 재빨리 자리를 뜬다. ~ */
  IF ~~ THEN REPLY #48278 /* ~"고맙소, 쉐듀스. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~그는 동료 위어랫을 죽인 후 안나를 정면으로 쳐다본다. "안나, 나야, 쉐듀스라고. 내가 널 내보내 주겠어. 난 네가 이처럼 갇혀 있는 모습은 차마 볼 수가 없어. 마을까지 무사히 도망치게 되면 사람들에게 안부나 전해주고, 그들에게 뭔가 불길한 일이 닥칠 거라고 알려줘... 지금은 정확히 어떤 것인지 말할 수는 없지만 네게는 말해주고 싶었어."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~당신이 철창 쪽으로 다가가자 은빛 섬광과 함께 위어랫 경비병들 중 하나가 무서운 기세로 자기 동료에게 달려든다!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END
