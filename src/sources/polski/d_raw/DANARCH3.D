// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~Widzisz potężnego mężczyznę o twarzy bez wyrazu i szerokiej szczęce. Jego mięśnie są naprawdę widokiem godnym obejrzenia. Przygląda ci się swoimi martwymi oczami. "Hę?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~"Powiedziano mi, że mogę tu znaleźć komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~"Zapomnij. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~"Hę?"~ */
  IF ~~ THEN REPLY #44548 /* ~"Jeszcze raz, kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~"Powiedziano mi, że mogę tu znaleźć komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~"Nic. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~"Nie ze mną gadać. Z Leeną." Podobną do dębu ręką wskazuje kobietę.~ */
  IF ~~ THEN REPLY #44553 /* ~"Tylko kilka pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~"NIE ZE MNĄ GADAĆ!" Zdaje się być podniecony.~ */
  IF ~~ THEN REPLY #44557 /* ~"Dobrze, dobrze. Żegnaj."~ */ EXIT
END
