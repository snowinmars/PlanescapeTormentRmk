// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63508 /* ~Widzisz kobietę o znudzonym wyrazie twarzy. Na twój widok, podnosi wzrok i krzywi się.~ */
  IF ~~ THEN REPLY #63509 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #63510 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63511 /* ~Kobieta wzdycha ciężko i powiódłszy spojrzeniem po okolicy, niechętnie podnosi na ciebie oczy. "No, witaj, witaj... Czego chcesz?"~ */
  IF ~~ THEN REPLY #63512 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #63513 /* ~"Niczego. Mniejsza o to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63514 /* ~Grymas na jej twarzy pogłębia się. "Kilka pytań... Wsadź je sobie, trepie. Jestem zajęta i nie mam czasu na odpowiadanie na żadne pytania."~ */
  IF ~~ THEN REPLY #63515 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 3
  IF ~~ THEN REPLY #63516 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63517 /* ~"Nie mam dla ciebie żadnych chwil." Kobieta zaczyna rozglądać się po okolicy. "Szpicuj się albo zawołam straże."~ */
  IF ~~ THEN REPLY #63518 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63519 /* ~Widzisz kobietę. Wygląda na nieźle podekscytowaną. Kiedy do niej podchodzisz, spogląda na ciebie i uśmiecha się.~ */
  IF ~~ THEN REPLY #63520 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #63521 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63522 /* ~"Tak, tak. Witaj i tak dalej... Chcesz czegoś?"~ */
  IF ~~ THEN REPLY #63523 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63524 /* ~"Niczego. Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63525 /* ~Kobieta krzywi się nieznacznie i wzdycha. "Dobrze, ale proszę streszczaj się. Nie chcę zbyt wiele stracić z tego widowiska."~ */
  IF ~~ THEN REPLY #63526 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #63527 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #63528 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 9
  IF ~~ THEN REPLY #63529 /* ~"Czy w obrębie tej dzielnicy znajduje się coś szczególnie godnego uwagi?"~ */ GOTO 11
  IF ~~ THEN REPLY #63530 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63531 /* ~"A co? A do czego ci to potrzebne, jeśli wolno wiedzieć? Jestem po prostu kimś, kto próbuje trochę podbić cenę i rozruszać licytację. Nie widzę powodu, dla którego miałbyś znać moje imię." Kobieta posyła ci poirytowane spojrzenie.~ */
  IF ~~ THEN REPLY #63532 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63533 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63534 /* ~"Próbuję podbić cenę na pewne rzeczy, które wyprzedaje licytator... Słuchaj, byłoby miło, gdybyś zadał mi od razu jakieś istotne pytanie, bo tym sposobem i ty mógłbyś pójść szybciej w swoją stronę, i ja mogłabym wrócić do swojego zajęcia."~ */
  IF ~~ THEN REPLY #63535 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63536 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63537 /* ~"To naprawdę cudowne miejsce. Rozejrzyj się tylko. Masz tu kupieckie stragany, masz tu targowiska, masz tu wyprzedaże..." Najwyraźniej zabrakło jej już słów, aby wyrazić ogrom tutejszych atrakcji. "Jest tu mnóstwo rzeczy..."~ */
  IF ~~ THEN REPLY #63538 /* ~"A co można tutaj kupić?"~ */ GOTO 10
  IF ~~ THEN REPLY #63539 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #63540 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63541 /* ~Kobieta uśmiecha się nieco złośliwie, "Cóż... Właściwie niemal wszystko. Z wyjątkiem większej ilości mojego czasu i uwagi... Zakończyłeś już swoje odpytywanie?"~ */
  IF ~~ THEN REPLY #63542 /* ~"Niezupełnie. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #63543 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63544 /* ~Kobieta marszczy brwi. "Nie wiem... Mieszkam tu całe życie i nigdy się nad tym nie zastanawiałam." Wzrusza ramionami. "Rozejrzyj się dookoła, z pewnością znajdziesz tu dla siebie coś ciekawego."~ */
  IF ~~ THEN REPLY #63545 /* ~"Nie wątpię. A póki co, mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #63546 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63547 /* ~Widzisz gniewnie wyglądającą kobietę. Dostrzega cię kątem oka, a kiedy zbliżasz się do niej, usuwa się na bok, aby uniknąć przyjemności odbycia z tobą rozmowy.~ */
  IF ~~ THEN REPLY #63548 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #63549 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63550 /* ~Kobieta obrzuca się niechętnym, ale i lekko trwożliwym spojrzeniem. "Hm... Witaj." Zdaje się, że twoje towarzystwo jej nie służy.~ */
  IF ~~ THEN REPLY #63551 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #63552 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63553 /* ~"Nie zawracaj mi głowy. Odejdź." Kobieta krzywi się.~ */
  IF ~~ THEN REPLY #63554 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 15
  IF ~~ THEN REPLY #63555 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63556 /* ~Grymas na jej obliczu pogłębia się. "Nie. Nie zawracaj mi głowy! Odejdź. Rozumiesz, co do ciebie mówię, trepie?"~ */
  IF ~~ THEN REPLY #63557 /* ~"Nie."~ */ GOTO 16
  IF ~~ THEN REPLY #63558 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63559 /* ~Kobieta posyła ci nieprzyjemne spojrzenie, prycha i odwraca się.~ */
  IF ~~ THEN REPLY #63560 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63561 /* ~Widzisz kobietę uczestniczącą w wyprzedaży. Kiedy próbujesz ją zagadnąć, daje ci znać niedwuznacznymi ruchami dłoni do zrozumienia, abyś poszedł precz.~ */
  IF ~~ THEN REPLY #63562 /* ~Odejdź.~ */ EXIT
END
