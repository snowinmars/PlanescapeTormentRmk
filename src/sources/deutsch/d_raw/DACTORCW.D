// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~Dieser junge Schauspieler scheint zu sehr in seine Darbietung vertieft, als daß er sich mit dir unterhalten könnte. Auf dem Boden vor ihm bemerkst du einen Filzhut mit ein paar Kupfermünzen. Gelegentlich werfen Passanten ein oder zwei Münzen hinein.~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~Wirf eine Münze in den Hut.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~Klau die Münzen aus dem Hut, wenn gerade niemand hinschaut.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~Klau die Münzen aus dem Hut, wenn gerade niemand hinschaut.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~Deine Münze landet mit einem weichen *Kling* in der Mütze. Ohne seine Darbietung zu unterbrechen, nickt dir der Schauspieler zum Dank kurz zu.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~Klau die Münzen aus dem Hut, wenn gerade niemand hinschaut.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~Klau die Münzen aus dem Hut, wenn gerade niemand hinschaut.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~Bei einem besonders interessanten Teil der Aufführung stiehlst du die zehn, fünfzehn Münzen aus dem Hut des Schauspielers.~ */
  IF ~~ THEN REPLY #46149 /* ~Geh ganz leise fort.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~Jemand hat beobachtet, wie du die Münzen geklaut hast, und ruft die Wachen!~ */
  IF ~~ THEN REPLY #46151 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~Dieser junge Schauspieler scheint zu sehr in seine Darbietung vertieft, als daß er sich mit dir unterhalten könnte.~ */
  IF ~~ THEN REPLY #46153 /* ~Geh weg.~ */ EXIT
END
