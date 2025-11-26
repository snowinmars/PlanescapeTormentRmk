// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACTORCW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DACTORCW~

IF ~  Global("Evil_Actor_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46139 /* ~Młody aktor wygląda na zbyt pochłoniętego swoim przedstawieniem, by przerwać i z tobą porozmawiać. Zauważasz, że u jego stóp stoi futrzana czapa zawierająca niewielką liczbę miedziaków. Od czasu do czasu jakiś przechodzień wrzuca do niej monetę lub dwie.~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #46140 /* ~Wrzuć monetę do czapy.~ */ DO ~DestroyPartyGold(1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46141 /* ~Ukradnij z czapy monety, kiedy nikt nie będzie patrzył.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46142 /* ~Ukradnij z czapy monety, kiedy nikt nie będzie patrzył.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46143 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46144 /* ~Twoja moneta ląduje w czapie z głuchym *dzyń*. Aktor, nie przerywając przedstawienia, kłania ci się w podziękowaniu.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #46145 /* ~Ukradnij z czapy monety, kiedy nikt nie będzie patrzył.~ */ DO ~GiveGoldForce(12)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #46146 /* ~Ukradnij z czapy monety, kiedy nikt nie będzie patrzył.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Actor_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #46147 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46148 /* ~Podczas wybitnie interesującej części przedstawienia zagarniasz około tuzina miedziaków z nakrycia głowy aktora.~ */
  IF ~~ THEN REPLY #46149 /* ~Odejdź cicho.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1
  SAY #46150 /* ~Próbując ukraść monety zostajesz zauważony i ktoś woła straż!~ */
  IF ~~ THEN REPLY #46151 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Evil_Actor_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #46152 /* ~Młody aktor wygląda na zbyt pochłoniętego swoim przedstawieniem, by przerwać i z tobą porozmawiać.~ */
  IF ~~ THEN REPLY #46153 /* ~Odejdź.~ */ EXIT
END
