// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUENTIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUENTIN~

IF ~  Global("Quentin","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7410 /* ~Człowiek stojący przed tobą wygląda na średniego wiekiem i wzrostem. Jest tęgi i ma grubą, podobną do byczej, szyję, a jego ramiona są zgarbione, jak gdyby spoczywał na nich wielki ciężar. Wygląda na zniecierpliwionego. Jego wzrok spoczywa na czarnym kamieniu, który przed nim stoi.~ */
  IF ~~ THEN REPLY #7411 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7412 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7413 /* ~Człowiek spogląda w twoją stronę. "Jest dość miejsca, śmiałku. Nie musisz mnie prosić, abym wyszedł, jeśli chcesz tu stać."~ */
  IF ~~ THEN REPLY #7414 /* ~"Tak naprawdę, to chciałem się dowiedzieć, co to za kamień."~ */ DO ~SetGlobal("Quentin","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #7415 /* ~"Dobrze więc. Przepraszam, że przeszkadzam."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 13.0
  SAY #7416 /* ~"To jest nagrobek dla Sfer." Drwi. "Na tej skale wyryte są całe cmentarzyska imion. Mogę mieć tylko nadzieję, że moje imię będzie tym, które rozpołowi ten kamień." Wskazuje na podstawę kamienia. "'Quentin', dokładnie tam, wykute dość mocno, by ta przeklęta rzecz runęła."~ */
  IF ~~ THEN REPLY #7417 /* ~"Nagrobek dla Sfer?"~ */ GOTO 3
  IF ~~ THEN REPLY #7418 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7419 /* ~"Tak," Quentin uśmiecha się ponuro. "Na tym monumencie Grabarze wypisują imiona zmarłych..." Ruchem ręki wskazuje cały obszar wkoło. "Na murach tego miejsca również. Mało miejsca według mnie, ale to nie ma znaczenia... starają się jak mogą. Ledwo można odczytać połowę imion."~ */
  IF ~~ THEN REPLY #7420 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #7421 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.1
  SAY #7422 /* ~"Czytam nowe napisy. Co dzień próbuję znaleźć nowy, próbuję sobie przypomnieć, czy ich znałem, nic więcej."~ */
  IF ~~ THEN REPLY #7423 /* ~"Na tym pomniku Grabarze zapisują imiona wszystkich, którzy zmarli?"~ */ GOTO 5
  IF ~~ THEN REPLY #7424 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7425 /* ~"Tak, wypisują je na tej skale... i wypisują je również na murach tego miejsca." Quentin drwi. "Nie rozumiem, dlaczego zadają sobie trud liczenia zmarłych... Grabarze dbają bardziej o żywych."~ */
  IF ~  Global("Mourn","GLOBAL",0)
~ THEN REPLY #7426 /* ~"Żywych?"~ */ DO ~SetGlobal("Mourn","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Mourn","GLOBAL",0)
~ THEN REPLY #7427 /* ~"Żywych?"~ */ GOTO 6
  IF ~~ THEN REPLY #7428 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #7429 /* ~"Tak... słyszałeś o Grabarzach żałobnikach, którzy przychodzą w to miejsce? Oni nie opłakują martwych, rozumiesz, ale żyjących. Prawie nie można przy nich dojść do słowa inaczej, niż prosząc ich o opłakiwanie jakiegoś biednego, *żywego* jeszcze trepa."~ */
  IF ~~ THEN REPLY #7430 /* ~"Dlaczego opłakują żywych?"~ */ GOTO 7
  IF ~~ THEN REPLY #7431 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7432 /* ~Mężczyzna wzrusza ramionami. "Mógłbyś spróbować ich o to zapytać. Wygląda na to, że zmarli są obdarzani po trzykroć większym współczuciem, niż jakikolwiek biedny skurl żyjący na tym padole." Kiwa głową w kierunku monumentu. "Wierz mi, że każde imię tam wyryte znajduje się w mojej księdze."~ */
  IF ~~ THEN REPLY #7433 /* ~"Znałeś kiedykolwiek kogoś, kto powróciłby między żywych po tym, jak jego imię zostało tu zapisane?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7434 /* ~"Możesz mi powiedzieć, kim jest ten szalony Grabarz po drugiej stronie kamienia?"~ */ GOTO 10
  IF ~~ THEN REPLY #7435 /* ~"Rozumiem. Dziękuję za informacje. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Quentin","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7436 /* ~Widzisz Quentina. Wciąż przygląda się bacznie skale, jak gdyby mógł powalić ją wzrokiem.~ */
  IF ~~ THEN REPLY #7437 /* ~"Witaj, Quentinie."~ */ GOTO 9
  IF ~~ THEN REPLY #7438 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #7439 /* ~"Co?" Quentin rzuca ci spojrzenie i kiwa głową. "Miło cię znowu spotkać, śmiałku. Przybywasz, aby żądać kawałka tej skały na swoje imię?"~ */
  IF ~~ THEN REPLY #7440 /* ~"Jeszcze nie. Chcę ci zadać kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #7441 /* ~"Nie, tylko przechodziłem. Żegnaj, Quentinie."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 13.3
  SAY #7442 /* ~Quentin uśmiecha się głupio. "Nie zjadł wszystkich rozumów, czyż nie? To pomylony 'Grzebiący Imiona'." Quentin naśmiewa się. "Chociaż 'Grzebiący Rozsądek' pasowałoby do niego lepiej."~ */
  IF ~~ THEN REPLY #7443 /* ~"Co on tu robi?"~ */ GOTO 11
  IF ~~ THEN REPLY #7444 /* ~"Rozumiem. Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7445 /* ~"To jest opiekun tego pisanego cmentarza. Wie, gdzie znajdują się wszystkie imiona i może wskazać na dowolne z nich, jeśli zechcesz. Z pewnością jest trochę stuknięty, ale pomógł mi już parę razy." Wzrusza ramionami. "Do jego obowiązków należy również grawerowanie nowych imion, kiedy ich właściciele odejdą do wieczności."~ */
  IF ~~ THEN REPLY #7446 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #7447 /* ~"Rozumiem. Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.2
  SAY #7448 /* ~"Chcesz powiedzieć, że powstał z martwych?" Quentin potrząsa głową. "Nic z tego, śmiałku. Wszystko, co żyje, umiera, i taka jest kolej rzeczy." Wzrusza ramionami. "Jednakże biorąc pod uwagę, że Sfery są wieczne i takie tam, myślę, że wszystko jest możliwe."~ */
  IF ~~ THEN REPLY #7449 /* ~"Myślę, że tak. Powiedzmy, że chcę zadać jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #7450 /* ~"Rozumiem. Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 11.0 12.0
  SAY #7451 /* ~"Nic nie szkodzi zapytać, śmiałku."~ */
  IF ~~ THEN REPLY #7452 /* ~"Możesz mi jeszcze raz powiedzieć co to za pomnik?"~ */ GOTO 2
  IF ~~ THEN REPLY #7453 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #7454 /* ~"Znałeś kiedykolwiek kogoś, kto powróciłby między żywych po tym, jak jego imię zostało tu wyryte?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7455 /* ~"Możesz mi powiedzieć kim jest ten szalony Grabarz po drugiej stronie pomnika?"~ */ GOTO 10
  IF ~~ THEN REPLY #7456 /* ~"Rozumiem. Dzięki."~ */ EXIT
END
