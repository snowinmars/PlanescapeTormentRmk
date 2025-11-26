// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~Widzisz przed sobą strażnika Harmonium. Kiedy do niego podchodzisz, obserwuje cię podejrzliwie.~ */
  IF ~~ THEN REPLY #37930 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~Strażnik kiwa głową na powitanie. "Dzień dobry, obywatelu."~ */
  IF ~~ THEN REPLY #37932 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~Strażnik przecząco kiwa głową. "Jestem na służbie, obywatelu. Nie mam czasu na żadne pytania. Idź z nimi gdzie indziej."~ */
  IF ~~ THEN REPLY #37934 /* ~"To zajmie ci tylko chwilkę."~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~Mężczyzna marszczy czoło. "Nie mam czasu na twoje pytania, obywatelu. Proszę stąd odejść."~ */
  IF ~~ THEN REPLY #37936 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~Widzisz przed sobą strażnika Harmonium. Kiedy do niego podchodzisz, marszczy czoło. "Witaj znowu, obywatelu."~ */
  IF ~~ THEN REPLY #37937 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~"Żegnaj."~ */ EXIT
END
