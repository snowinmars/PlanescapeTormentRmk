// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERMALE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66457 /* ~Widzisz młodego człowieka z wyrazem znudzenia malującym się na twarzy. Kiedy cię dostrzega, kiwa głową.~ */
  IF ~~ THEN REPLY #66458 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #66459 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66460 /* ~"Tak? Czego sobie życzysz?"~ */
  IF ~~ THEN REPLY #66461 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66462 /* ~"Niczego. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66463 /* ~"Hmm. Cóż, nie jestem zbyt dobrze poinformowaną osobą. Chyba powinieneś spytać kogoś innego."~ */
  IF ~~ THEN REPLY #66464 /* ~"Czy możesz mi poświęcić kilka chwil?"~ */ GOTO 3
  IF ~~ THEN REPLY #66465 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66466 /* ~"Cóż. Ciągle wydaje mi się, że powinieneś spytać kogoś innego." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #66467 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66468 /* ~Widzisz młodego człowieka. Kiedy cię zauważa, obrzuca się podejrzliwym i nieco lękliwym spojrzeniem~ */
  IF ~~ THEN REPLY #66469 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #66470 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66471 /* ~"Dobry dzień, śmiałku." Młodzieniec przygląda się twoim bliznom i na twarz wstępuje mu niezbyt pewna mina.~ */
  IF ~~ THEN REPLY #66473 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66474 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66475 /* ~"Hmm. Czemu nie...?"~ */
  IF ~~ THEN REPLY #66476 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #66477 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #66478 /* ~"Możesz mi powiedzieć, co się tutaj odbywa?"~ */ GOTO 9
  IF ~~ THEN REPLY #66479 /* ~"Czy jest w obrębie tej dzielnicy coś godnego zainteresowania?'~ */ GOTO 11
  IF ~~ THEN REPLY #66480 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66481 /* ~"Wolałbym o tym nie mówić. Spytaj o coś innego, śmiałku."~ */
  IF ~~ THEN REPLY #66482 /* ~"Dobrze. Mam kilka pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #66483 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66484 /* ~"Po prostu obserwuję wyprzedaż. Jestem zbyt ubogi, aby cokolwiek sobie kupić, dlatego znajduję przyjemność w samym patrzeniu na przebieg licytacji."~ */
  IF ~~ THEN REPLY #66485 /* ~"Ach tak. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66486 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66487 /* ~Młodzieniec zastanawia się przez chwilę. "Cóż, ci ludzie tutaj popełnili pewne przestępstwa i w związku z tym winni są innym wiele brzdęku. A ponieważ nie mają czym za siebie zapłacić, zostaną sprzedani do darmowych służb. Odpracują tam wszystko, co są winni, co do jednego miedziaka."~ */
  IF ~~ THEN REPLY #66488 /* ~"Czy to znaczy, że staną się niewolnikami?"~ */ GOTO 10
  IF ~~ THEN REPLY #66489 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66490 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66491 /* ~Młodzieniec wzrusza ramionami. "Tak. Można tak powiedzieć. Przynajmniej na pewien czas. Ale większość osób nazywa ich po prostu sługami..."~ */
  IF ~~ THEN REPLY #66492 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66493 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66494 /* ~"Nie, do diaska, nie ma tu nic ciekawego. Życie bywa tu nudne jak flaki z olejem. To dlatego przychodzę tutaj na aukcję, żeby się przynajmniej odrobinę rozerwać."~ */
  IF ~~ THEN REPLY #66495 /* ~"Hmm. Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #66496 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66497 /* ~Widzisz niespokojnie wyglądającego człowieka. Na twój widok uśmiecha się i kiwa uprzejmie ręką.~ */
  IF ~~ THEN REPLY #66498 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #66499 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66500 /* ~"Witaj, śmiałku. Co tam?"~ */
  IF ~~ THEN REPLY #66501 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #66502 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66503 /* ~"Masz kilka pytań? Och... Wobec tego musisz porozmawiać z oprowadzaczem. Nie ze mną." Udzieliwszy ci takich wskazówek, mężczyzna poczyna się od ciebie odwracać.~ */
  IF ~~ THEN REPLY #66504 /* ~"Nie możesz odpowiedzieć na kilka moich pytań?"~ */ GOTO 15
  IF ~~ THEN REPLY #66505 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66506 /* ~"Nie, naprawdę nie. Nie zwykłem udzielać wskazówek i informacji Tępakom." Młodzieniec uśmiecha się złośliwie.~ */
  IF ~~ THEN REPLY #66507 /* ~"A więc nie zechcesz mi pomóc?"~ */ GOTO 16
  IF ~~ THEN REPLY #66508 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66509 /* ~"Nie. Na twoim miejscu rozejrzałbym się za oprowadzaczem."~ */
  IF ~~ THEN REPLY #66510 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66511 /* ~Widzisz mężczyznę uczestniczącego w wyprzedaży. Kiedy próbujesz do niego zagadnąć, daje ci do zrozumienia niedwuznacznymi ruchami dłoni, abyś poszedł precz.~ */
  IF ~~ THEN REPLY #66512 /* ~Odejdź.~ */ EXIT
END
