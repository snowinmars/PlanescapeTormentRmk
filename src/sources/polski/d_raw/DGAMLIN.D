// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~"Ej! Co robisz w moim namiocie?!"~ */
  IF ~~ THEN REPLY #49878 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~"Szukam namiotu Rauka. Czy wiesz, gdzie on jest?"~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~"To mój błąd. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~"Niech cię sama Pani przeklnie! Czego teraz znów chcesz, na wszystkie sfery?"~ */
  IF ~~ THEN REPLY #49882 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~"Szukam namiotu Rauka. Czy wiesz, gdzie on jest?"~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~"Idę. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~"Tak, obaj jesteśmy przyjaciółmi Rauka. I co z tego? To wcale nie znaczy, że muszę z tobą rozmawiać."~ */
  IF ~~ THEN REPLY #49886 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~"Wdzierasz się do mojego namiotu bez zaproszenia i wszystko, co masz mi do powiedzenia, to 'Witaj'!? Ruszaj w drogę, trepie!"~ */
  IF ~~ THEN REPLY #49888 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~"No masz! Znów przyjaciel Rauka? Tak, to jeden z tych jego namiotów, który nazywa domem. Jak widzisz, ten jest pełny po brzegi. Idź do jakiegoś innego."~ */
  IF ~~ THEN REPLY #49890 /* ~"Żegnaj."~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
