// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~Похоже, этот молодой актер слишком увлечен своим представлением, чтобы прерваться и поговорить с тобой. Ты замечаешь у его ног фетровую шляпу, в которой лежит немного медяков. Время от времени прохожие бросают в шляпу пару монет.~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~Бросить монету в шляпу.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~Незаметно для всех украсть монеты из шляпы.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~Незаметно для всех украсть монеты из шляпы.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~Твоя монета падает в шляпу тихим *дзинь*. Актер, не прекращая представления, быстро кивает тебе в знак благодарности.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~Незаметно для всех украсть монеты из шляпы.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~Незаметно для всех украсть монеты из шляпы.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~Делая вид, что ты интересуешься представлением, ты крадешь из шляпы актера около дюжины медных монет.~ */
  IF ~~ THEN REPLY #46149 /* ~Тихо уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~Кто-то заметил твою попытку украсть деньги и начал звать стражников!~ */
  IF ~~ THEN REPLY #46151 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~Похоже, этот молодой актер слишком увлечен своим представлением, чтобы прерваться и поговорить с тобой.~ */
  IF ~~ THEN REPLY #46153 /* ~Уйти.~ */ EXIT
END
