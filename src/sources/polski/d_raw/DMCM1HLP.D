// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37212 /* ~Widzisz młodego mężczyznę o bladej, żółtej skórze. Wydaje się być zajęty oglądaniem jakichś towarów w skrzyni.~ */
  IF ~~ THEN REPLY #37226 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37227 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37213 /* ~Zerka na ciebie przez ramię, po czym się odwraca. "Ano, to ty. Czego tam?"~ */
  IF ~~ THEN REPLY #37225 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37228 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37214 /* ~Mimo, że wygląda na zirytowanego, uśmiecha się przyjaźnie. "Jeśli będę mógł, pomogę ci. Co tam chcesz wiedzieć?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37229 /* ~"Szukam kogoś, kto nazywa się Lotar, zwanego również Panem Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37230 /* ~"Miałem czaszkę i ukradziono mi ją. Znasz kogoś, kto mógłby coś takiego zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #37231 /* ~"Gdzie mogę kupić broń?"~ */ GOTO 7
  IF ~~ THEN REPLY #37232 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 8
  IF ~~ THEN REPLY #37233 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 9
  IF ~~ THEN REPLY #37234 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37215 /* ~Wytrzeszcza na ciebie oczy, po czym kreśli nad sercem symbol półokręgu. "Nie mogę ci pomóc. Chodzą słuchy, że gdzieś tu jest, ale nie wiem gdzie dokładnie."~ */
  IF ~~ THEN REPLY #37235 /* ~"Znasz kogoś, kto mógłby wiedzieć?"~ */ GOTO 4
  IF ~~ THEN REPLY #37236 /* ~"W porządku. Mam jeszcze kilka pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37216 /* ~Wygląda na zmartwionego. "Nie, śmiałku. Większość ludzi unika kłopotów, a nie szuka ich."~ */
  IF ~~ THEN REPLY #37237 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37238 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37217 /* ~Marszczy przez chwilę brwi, po czym patrzy z troską na ciebie. "Ano, Słyszałem o takich, ale nie umiem ci pomóc."~ */
  IF ~~ THEN REPLY #37239 /* ~"Znasz kogoś takiego?"~ */ GOTO 6
  IF ~~ THEN REPLY #37240 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37218 /* ~Zastanawia się przez chwilę, a następnie wzrusza ramionami. "Zapytaj chłopca, Lazla, będzie przy piecu. Lubi rozmawiać prawie z wszystkimi. Być może on coś słyszał."~ */
  IF ~~ THEN REPLY #37241 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37242 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37219 /* ~Wyciąga rękę w kierunku straganów. "Anze ją sprzedaje. Z nim powinieneś porozmawiać."~ */
  IF ~~ THEN REPLY #37244 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37220 /* ~Wyciąga rękę w kierunku straganów. "Aalek handluje magią. Powinieneś tam spytać."~ */
  IF ~~ THEN REPLY #37245 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37246 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #37221 /* ~Marszczy brwi. "Słuchaj no, śmiałku. Nie chciałbym być niegrzeczny, ale nie mam czasu na takie gadanie. Zapytaj chłopca, Lazla, będzie przy piecu. On zawsze gada z nieznajomymi."~ */
  IF ~~ THEN REPLY #37247 /* ~"Dobrze. Dziękuję."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37222 /* ~Odwraca się w twoją stronę i uśmiecha. "Dzień dobry, śmiałku. Czego potrzebujesz?"~ */
  IF ~~ THEN REPLY #37223 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37248 /* ~"Żegnaj."~ */ EXIT
END
