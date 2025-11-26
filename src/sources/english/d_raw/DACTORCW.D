// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~This young actor seems far too involved with giving his performance to pause and speak with you. You notice that, near his feet, is a felt cap containing a small sum of copper. Occasionally, a passerby will drop a coin or three into the cap.~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~Drop a coin into the cap.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~Steal the coins in the hat when no one's looking.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~Steal the coins in the hat when no one's looking.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~Your coin lands in the cap with a soft *clink.* The actor, without stopping his performance, gives you a quick nod of thanks.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~Steal the coins in the hat when no one's looking.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~Steal the coins in the hat when no one's looking.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~During a particularly interesting part of the performance, you swipe the dozen or so copper coins out of the actor's hat.~ */
  IF ~~ THEN REPLY #46149 /* ~Leave quietly.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~You're seen trying to steal the coins, and someone calls for the guard!~ */
  IF ~~ THEN REPLY #46151 /* ~Leave.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~This young actor seems far too involved with giving his performance to pause and speak with you.~ */
  IF ~~ THEN REPLY #46153 /* ~Leave.~ */ EXIT
END
