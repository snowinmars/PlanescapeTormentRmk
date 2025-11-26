// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~Mladý herec je příliš zaujatý svým představením, než aby ho přerušil a promluvil si s tebou. Všiml sis, že blízko jeho nohou leží klobouk, ve kterém je malá hromádka minci. Občas procházející do klobouku hodí pár minci.~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~Hoď do klobouku minci.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~Když se nebude nikdo dívat, ukradni mince v klobouku.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~Když se nebude nikdo dívat, ukradni mince v klobouku.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~Tvá mince přistála v klobouku s lehkým cinknutím. Herec, aniž by přerušil představení, ti rychle kývl na znamení díků.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~Když se nebude nikdo dívat, ukradni mince v klobouku.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~Když se nebude nikdo dívat, ukradni mince v klobouku.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~Během docela zajímavé části představení jsi z hercova klobouku popadl asi tucet mincí.~ */
  IF ~~ THEN REPLY #46149 /* ~Tiše odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~Někdo tě viděl, jak kradeš mince, a zavolal stráže!~ */
  IF ~~ THEN REPLY #46151 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~Mladý herec je příliš zaujatý svým představením, než aby ho přerušil a promluvil si s tebou.~ */
  IF ~~ THEN REPLY #46153 /* ~Odejdi.~ */ EXIT
END
