// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~"Hej! Co děláš v mém stanu?!"~ */
  IF ~~ THEN REPLY #49878 /* ~"Zdravím..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~"Hledám Raukův stan. Nevíš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~"Moje chyba. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~"Ať tě Paní prokleje! Co u všech sfér chceš tentokrát?!"~ */
  IF ~~ THEN REPLY #49882 /* ~"Zdravím..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~"Hledám Raukův stan. Nevíš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~"Už jdu. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~"Jo, ty si Raukův přítel a já jsem taky Raukův přítel. A co? To neznamená, že se s tebou musím bavit."~ */
  IF ~~ THEN REPLY #49886 /* ~"Tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~"Vpadneš do mého stanu nikým nepozván a jediné, co řekneš je 'Zdravím!?' Vypadni, troubo!"~ */
  IF ~~ THEN REPLY #49888 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~"Zatraceně! Ty jsi dalším 'přítelem' Rauka? Jo, toto je jeden ze stanů, kterým říká domov. Jak vidíš, tento už je přeplněný. Jdi do nějakého jiného jeho stanu."~ */
  IF ~~ THEN REPLY #49890 /* ~"Sbohem."~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
