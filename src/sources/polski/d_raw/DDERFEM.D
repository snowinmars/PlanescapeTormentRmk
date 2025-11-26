// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERFEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66400 /* ~Widzisz kobietę o znudzonym wyrazie twarzy. Na twój widok, podnosi wzrok i krzywi się.~ */
  IF ~~ THEN REPLY #66401 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #66402 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66403 /* ~Kobieta wzdycha ciężko i powiódłszy spojrzeniem po okolicy, niechętnie podnosi na ciebie oczy. "No, witaj, witaj... Czego chcesz?"~ */
  IF ~~ THEN REPLY #66404 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66405 /* ~"Nie, nic ważnego."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66406 /* ~Grymas na jej twarzy pogłębia się. "Jestem zajęta i nie mam czasu na odpowiadanie na pytania. Proszę, poszukaj sobie oprowadzacza."~ */
  IF ~~ THEN REPLY #66407 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 3
  IF ~~ THEN REPLY #66408 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66409 /* ~"Próbuję skupić się na aukcji i nie mogę w tym momencie poświęcić ci ani pół sekundy." Kobieta odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #66410 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66411 /* ~Widzisz młodą niewiastę. Wygląda na nieźle podekscytowaną. Kiedy do niej podchodzisz, spogląda na ciebie i uśmiecha się.~ */
  IF ~~ THEN REPLY #66412 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #66413 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66414 /* ~"Witaj, śmiałku. Chcesz czegoś?"~ */
  IF ~~ THEN REPLY #66415 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66416 /* ~"Nie. Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66417 /* ~Kobieta krzywi się i wzdycha. "Słuchaj, nie chcę niczego stracić z tego widowiska, dlatego musisz się maksymalnie streszczać."~ */
  IF ~~ THEN REPLY #66418 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #66419 /* ~"Co ty tutaj robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #66420 /* ~"Co tutaj się właściwie odbywa?"~ */ GOTO 9
  IF ~~ THEN REPLY #66421 /* ~"Czy jest w obrębie tej dzielnicy coś wartego szczególnej uwagi?"~ */ GOTO 11
  IF ~~ THEN REPLY #66422 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66423 /* ~"Jestem kimś, kto chciałby skupić się na obserwacji tej wyprzedaży. Dlatego, jeśli łaska, streszczaj się."~ */
  IF ~~ THEN REPLY #66424 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66425 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66426 /* ~"Próbuję podbić cenę jednego ze sług. Tamtego mężczyzny..." Kobieta zająkuje się nieco i rumieni. "No, nic. Mniejsza o to. Życzysz sobie jeszcze czegoś?"~ */
  IF ~~ THEN REPLY #66427 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66429 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66430 /* ~"Ci ludzie popełnili drobne przestępstwa, bądź też zaciągnęli wysokie długi i nie spłacili ich. Teraz zaś będą sprzedani na służbę, aby pieniądze pochodzące z ich sprzedaży, mogły posłużyć do uregulowania ich zobowiązań i spłacenia szkód, jakich dokonali."~ */
  IF ~~ THEN REPLY #66431 /* ~"A co by się stało, gdyby ktoś zdecydował się spłacić ich długi?~ */ GOTO 10
  IF ~~ THEN REPLY #66432 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66433 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66434 /* ~Kobieta uśmiecha się,. "Cóż... Gdyby ktoś zdecydował się zapłacić ich długi, wówczas nieszczęśnicy ci odzyskaliby swój zwykły status obywatelski i zostaliby uwolnieni. Mogliby wtedy mogą zacząć swoje życie od nowa."~ */
  IF ~~ THEN REPLY #66435 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66436 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66437 /* ~"O ile wiem, odbywają się tutaj tylko wyprzedaże. Urzęduje tu jeszcze jeden licytator, ale on sprzedaje tylko przedmioty i różne artykuły. Ale i tam warto zajrzeć." Kobieta uśmiecha.~ */
  IF ~~ THEN REPLY #66438 /* ~"Nie wątpię. A póki co, mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #66440 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66439 /* ~Widzisz gniewnie wyglądającą kobietę. Dostrzega cię kątem oka, a kiedy zbliżasz się do niej, usuwa się na bok, aby uniknąć przyjemności odbycia z tobą rozmowy.~ */
  IF ~~ THEN REPLY #66441 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #66442 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66443 /* ~Kobieta posyła ci pełne poirytowania spojrzenie. "Więc, czegóż chcesz?"~ */
  IF ~~ THEN REPLY #66444 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #66445 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66446 /* ~Kobieta krzywi się. "Nie jestem zainteresowana. Zwróć się do kogoś, kto będzie miał ochotę z tobą rozmawiać."~ */
  IF ~~ THEN REPLY #66447 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 15
  IF ~~ THEN REPLY #66448 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66449 /* ~Grymas na jej twarzy pogłębia cię. "Mam to gdzieś. Zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #66450 /* ~"Nie możesz poświęcić chwili i udzielić mi pewnych informacji?"~ */ GOTO 16
  IF ~~ THEN REPLY #66451 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66452 /* ~Kobieta posyła ci nieprzyjemne spojrzenie, prycha i odwraca się.~ */
  IF ~~ THEN REPLY #66453 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66454 /* ~Widzisz kobietę uczestniczącą w wyprzedaży. Kiedy próbujesz ją zagadnąć, daje ci niedwuznacznymi ruchami dłoni do zrozumienia, abyś poszedł precz.~ */
  IF ~~ THEN REPLY #66455 /* ~Odejdź.~ */ EXIT
END
