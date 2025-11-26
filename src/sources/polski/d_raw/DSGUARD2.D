// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~Widzisz przed sobą strażnika Harmonium. Kiedy się do niego zbliżasz, zaczyna machać ręką. "Ruszaj się, obywatelu. Nie ma tu nic do oglądania."~ */
  IF ~~ THEN REPLY #37944 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~Strażnik marszczy czoło. "Czego w *ruszaj się* nie zrozumiałeś? Nie ma tu nic do oglądania. Odejdź stąd."~ */
  IF ~~ THEN REPLY #37946 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~Strażnik spogląda na ciebie drwiącym wzrokiem. "Och, masz pytania. No tak, to zupełnie inna sprawa..." Strażnik obrzuca cię złowrogim spojrzeniem. "Nie mam czasu na żadne pytania. Ruszaj stąd."~ */
  IF ~~ THEN REPLY #37948 /* ~"To zabrałoby ci tylko chwilkę."~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~"Nie poświęcę ci ani chwili, obywatelu. Ruszaj stąd." Strażnik macha ręką, żebyś odszedł.~ */
  IF ~~ THEN REPLY #37950 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~Widzisz przed sobą strażnika Harmonium. Kiedy się do niego zbliżasz, marszczy czoło. "Nie mam czasu na pogawędki, obywatelu. Ruszaj stąd."~ */
  IF ~~ THEN REPLY #37951 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~"Żegnaj."~ */ EXIT
END
