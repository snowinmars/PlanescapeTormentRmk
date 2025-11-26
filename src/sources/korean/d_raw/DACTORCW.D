// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~이 젊은 배우는 잠시 멈추고 당신과 얘기하기에는 자신의 연기에 너무 몰입해 있다. 보니까 그의 발 옆에 적은 액수의 동전이 들어 있는 펠트제 모자가 있다. 때때로 지나가는 사람이 모자에 몇 닢의 동전을 넣고 간다. ~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~모자에 동전을 한 닢 떨어트린다.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~아무도 보지 않을 때 모자 안에 있는 동전을 훔친다.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~아무도 보지 않을 때 모자 안에 있는 동전을 훔친다.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~당신이 던진 동전이 작은 *쨍* 소리를 내며 모자 안쪽 바닥에 떨어진다. 배우는 연기를 계속 하면서도 고개를 끄덕여 당신에게 감사의 표시를 한다.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~아무도 보지 않을 때 모자 안에 있는 동전을 훔친다.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~아무도 보지 않을 때 모자 안에 있는 동전을 훔친다.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~연기가 절정에 달했을 때 당신은 열 몇 닢의 동전을 배우의 모자에서 훔친다.~ */
  IF ~~ THEN REPLY #46149 /* ~조용히 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~누군가 당신이 동전을 훔치는 것을 발견하고는 경비병을 부른다!"~ */
  IF ~~ THEN REPLY #46151 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~이 젊은 배우는 잠시 멈추고 당신과 얘기하기에는 자신의 연기에 너무 몰입해 있다. ~ */
  IF ~~ THEN REPLY #46153 /* ~떠난다.~ */ EXIT
END
