// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~Ta ghulica zachowuje się znacznie bardziej władczo niż ci, którzy ją otaczają.
Poza tym jej oczy zdają cię być bardziej klarowne i mniej dzikie. "Mogę... ci w czymś pomóc, krwisty?"~ */
  IF ~~ THEN REPLY #38516 /* ~"Kim jesteś? Co tu robisz?"~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~"Co to za miejce?"~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~"Ja? Jesstem... Alaina. A to moje ghule. Jessteśmy zzwiadowcami i łowcami. Poszszukujemy nowych terytoriów. Ssstaramy się zznaleźć więcej *pożywienia*. Sskoro już ci odpowiedziałam na pytania... Co TY tu robiszsz?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~"Szukam kuli z brązu."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~"Szukam karafki wody."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~"Poszukuję najeżonej pułapkami krypty."~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~"Tylko się tutaj kręcę."~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~"Nie wiem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~"Kuli... zz brązzu? Nie zznaleźliśśmy... nic takiego. Obszszukaj obrzrzeża tego miejssca, a może znajdzieszsz to, czego poszszukujeszsz."~ */
  IF ~~ THEN REPLY #38520 /* ~"Mam parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~"O... dpowiem na tyle, na ile będę potrafić."~ */
  IF ~~ THEN REPLY #38522 /* ~"Kim jesteś? Co tutaj robisz?"~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~"Szukam kuli z brązu."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~"Szukam karafki wody."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~"Poszukuję najeżonej pułapkami krypty."~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~"To Zzatopione Zziemie. To teren naszszych polowań. To... miejssce, gdzie rzrządzimy my, łowcy. Czczego tu szszukasz?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~"Szukam kuli z brązu."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~"Szukam karafki wody."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~"Poszukuję najeżonej pułapkami krypty."~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~"Tylko się tutaj kręcę."~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~"Nie wiem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~"Nie zznaleźliśśmy tu źźródła wody. Najwilgotniej jesst jednak na wsschodzie. Poszszukaj tam, a może zznajdziesz."~ */
  IF ~~ THEN REPLY #38528 /* ~"Mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~"Krypty ssą wszszędzie wokół nass. My sstrzeżemy ich rezzydentów... Nie powiem ci."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~"Znalezienie jej jest niezwykle ważne."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~"Znalezienie jej jest niezwykle ważne."~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~"Bardzo dobrze. Odpowiedz mi w takim razie na kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~"Dobrze. Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~Kapitan ghuli spogląda na ciebie chłodno, oceniając cię. "Poszszukaj na południowym wsschodzie. Nie niepokój pozosstałych mieszszkańców krypt albo będzieszsz *cierpiał*."~ */
  IF ~~ THEN REPLY #38534 /* ~"Dzięki. Mam więcej pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~"W oczach spoglądającej na ciebie kapitan ghuli gotuje się. "*NIE* obchodzi mnie, ile to dla ciebie znaczy, krwista istoto. *NIE* powiem ci."~ */
  IF ~~ THEN REPLY #38538 /* ~"Dobrze, dobrze. Odpowiedz więc jedynie na kilka moich pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~"Powiedz mi, albo zginiesz."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~"Mimo wszystko dziękuje za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~"To... nie jesst zbyt dobre miejsce na kręcenie ssię. Sporo tu niebezpieczeństw. Zazznaczyliśśmy granicę bezzpiecznego terenu totemami... Nie wychodź poza nie, a będzieszsz bezpieczny. Wystrzegaj ssię tutejszszych mieszkańców - ssą zabójczy i pojawiają ssię w ogromnej liczbie."~ */
  IF ~~ THEN REPLY #38545 /* ~"Co to za mieszkańcy?"~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~"Dzięki. Mam więcej pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~"Miejssce to zassiedlone jesst przez... trokopotaki - białe, possiadające rogi isstoty, obdarzone niepohamowanym apetytem i okrutnym ussposobieniem. To równieżż dom wielu wargulców, których liczba zwiększsza się wraz z każdym głupcem, który zzbyt głęboko zzabrnie w katakumby."~ */
  IF ~~ THEN REPLY #38547 /* ~"Rozumiem... Odpowiesz mi na parę innych pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~"Dzięki za wskazówki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~"Nie wieszsz? Nie wieszsz? Być może... powinieneśś sstąd odejśść. To... groźne miejsce dla... krwisstych isstot."~ */
  IF ~~ THEN REPLY #38553 /* ~"Niebezpieczne? W jaki sposób?"~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~"Mam tylko kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~"Znowuśś tu wrócił, co? Czego chceszsz?"~ */
  IF ~~ THEN REPLY #38568 /* ~"Potrzebuję odpowiedzi na kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~"Nic. Żegnaj."~ */ EXIT
END
