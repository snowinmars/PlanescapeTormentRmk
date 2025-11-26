// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37100 /* ~Widzisz młodą kobietę o bladej, żółtej skórze. Wydaje się być zajęta oglądaniem jakichś towarów w skrzyni.~ */
  IF ~~ THEN REPLY #37111 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37112 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37101 /* ~Spogląda na ciebie przez ramię, po czym zwraca się przodem. "Ano, to ty. Czego tam?"~ */
  IF ~~ THEN REPLY #37113 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37114 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37102 /* ~Mimo, że wygląda na zirytowaną, uśmiecha się przyjaźnie. "Jeśli będę mogła, pomogę ci. Co tam chcesz wiedzieć?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37115 /* ~"Szukam kogoś, kto nazywa się Lotar, znany jest również jako Pan Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37116 /* ~"Miałem czaszkę i ukradziono mi ją. Znasz kogoś, kto mógłby coś takiego zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #37117 /* ~"Gdzie mogę kupić broń?"~ */ GOTO 7
  IF ~~ THEN REPLY #37118 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 8
  IF ~~ THEN REPLY #37119 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37103 /* ~Oczy jej rozszerzają się i zakreśla nad sercem półokrąg. "Nie umiem ci pomóc. Śpiewka głosi, że jest w dzielnicy, ale nie wiem gdzie."~ */
  IF ~~ THEN REPLY #37120 /* ~"Znasz kogoś, kto mógłby wiedzieć?"~ */ GOTO 4
  IF ~~ THEN REPLY #37121 /* ~"W porządku. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37122 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37104 /* ~Wygląda na zmartwioną. "Nie, śmiałku. Większość ludzi unika kłopotów, a nie szuka ich."~ */
  IF ~~ THEN REPLY #37123 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37124 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37105 /* ~Marszczy przez chwilę brwi, po czym spogląda na ciebie troskliwe. "Ano, Słyszałam o takich, ale nie umiem ci pomóc."~ */
  IF ~~ THEN REPLY #37125 /* ~"Znasz kogoś, kto mógłby wiedzieć?"~ */ GOTO 6
  IF ~~ THEN REPLY #37126 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37127 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37106 /* ~Zastanawia się przez chwilę, a następnie wzrusza ramionami. "Zapytaj chłopca przy piecu. Lubi rozmawiać prawie z wszystkimi. Może on coś słyszał."~ */
  IF ~~ THEN REPLY #37128 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37129 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37107 /* ~Wyciąga rękę w kierunku straganów. "Anze je sprzedaje. Z nim powinieneś porozmawiać."~ */
  IF ~~ THEN REPLY #37130 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37131 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37108 /* ~Wyciąga rękę w kierunku straganów. "Aalek handluje Sztuką. Powinieneś tam spytać."~ */
  IF ~~ THEN REPLY #37132 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37133 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #37109 /* ~Marszczy brwi. "Nie chciałabym być niegrzeczna, ale nie mam czasu na takie gadanie. Zapytaj chłopca przy piecu. On zawsze gada z nieznajomymi."~ */
  IF ~~ THEN REPLY #37134 /* ~"Dobrze. Dziękuję."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37110 /* ~Odwraca się w twoją stronę i uśmiecha. "Dzień dobry, śmiałku. Czego potrzebujesz?"~ */
  IF ~~ THEN REPLY #37135 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37136 /* ~"Żegnaj."~ */ EXIT
END
