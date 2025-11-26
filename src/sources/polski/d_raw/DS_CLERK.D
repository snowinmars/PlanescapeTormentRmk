// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_CLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_CLERK~

IF ~  Global("S_Stone","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #46336 /* ~Spokojny głos tego mężczyzny stanowi wspaniałe dopełnienie jego pełnej subtelności postawy. "Witaj. Przyszedłeś tu, żeby użyć jednego z kamieni doznań?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46337 /* ~"Tak."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46359 /* ~"Tak."~ */ GOTO 6
  IF ~~ THEN REPLY #46360 /* ~"Nie, ale mam do ciebie parę pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #46361 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 20.2
  SAY #46362 /* ~Mężczyzna przytakuje. "To publiczne sensorium, w którego pomieszczeniach mieszczą się kamienie doznań. Każdy z nich zawiera jakieś doznanie - albo zestaw doznań - którego może doświadczyć ten, kto go użyje. Czuciowcy mogą korzystać z nich bez żadnych ograniczeń, a pozostali muszą uiścić małą opłatę. Czy taka odpowiedź zaspokoiła twoją ciekawość?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46363 /* ~"Raczej tak. Chcę skorzystać z jednego z kamieni."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46364 /* ~"Raczej tak. Chcę skorzystać z jednego z kamieni."~ */ GOTO 6
  IF ~~ THEN REPLY #46365 /* ~"Nie..."~ */ GOTO 2
  IF ~~ THEN REPLY #46366 /* ~"Ujdzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #46367 /* ~"W takim razie nie mogę ci pomóc. Chyba że zdecydujesz się skorzystać z kamieni..."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46368 /* ~"Tak."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46369 /* ~"Tak."~ */ GOTO 6
  IF ~~ THEN REPLY #46370 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0 4.7 20.0
  SAY #46371 /* ~Mężczyzna obdarza cię uśmiechem, po czym zaczyna objaśniać różne doznania, z których możesz skorzystać.

"Czy któreś z nich ci odpowiada?"~ */
  IF ~~ THEN REPLY #46372 /* ~"Wybieram 'Nieunikniony ból'."~ */ DO ~SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46373 /* ~"Wybieram 'Czułą miłość'."~ */ DO ~SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46374 /* ~"Wybieram 'Paraliżującą umysł nudę'."~ */ DO ~SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46375 /* ~"Wybieram 'Prawdziwy zachwyt'."~ */ DO ~SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46376 /* ~"Wybieram 'Pożerającą niecierpliwość'."~ */ DO ~SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46377 /* ~"Wybieram 'Poddanie się wyczerpaniu'."~ */ DO ~SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46378 /* ~"Wybieram 'Nadnaturalną żądzę'."~ */ DO ~SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46379 /* ~"A są może jakieś inne?"~ */ GOTO 4
  IF ~~ THEN REPLY #46380 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.7 5.6
  SAY #46381 /* ~Mężczyzna przytakuje, po czym zaczyna objaśniać różne doznania, z których możesz skorzystać.

"Czy któreś z nich ci odpowiada?"~ */
  IF ~~ THEN REPLY #46382 /* ~"Wybieram 'Psychozę'."~ */ DO ~SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46383 /* ~"Wybieram 'Jątrzącą się zazdrość'."~ */ DO ~SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46384 /* ~"Wybieram 'Gorzką nienawiść'."~ */ DO ~SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46385 /* ~"Wybieram 'Niezmąconą radość'."~ */ DO ~SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46386 /* ~"Wybieram 'Wylęknione podniecenie'."~ */ DO ~SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46387 /* ~"Wybieram 'Zimną determinację'."~ */ DO ~SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46388 /* ~"Wybieram 'Całkowitą konsternację'."~ */ DO ~SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46389 /* ~"A możesz powtórzyć te kilka ostatnich?"~ */ GOTO 3
  IF ~~ THEN REPLY #46390 /* ~"Są jakieś inne?"~ */ GOTO 5
  IF ~~ THEN REPLY #46391 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.8
  SAY #46392 /* ~Mężczyzna przytakuje, po czym zaczyna objaśniać różne doznania, z których możesz skorzystać.

"Czy któreś z nich ci odpowiada?"~ */
  IF ~~ THEN REPLY #46393 /* ~"Wybieram 'Straszliwy żal'."~ */ DO ~SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46394 /* ~"Wybieram 'Wstrząs i wrzenie mściwości'."~ */ DO ~SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46395 /* ~"Wybieram 'Powoli wzrastające przerażenie'."~ */ DO ~SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46396 /* ~"Wybieram 'Nieopisaną frustrację'."~ */ DO ~SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46397 /* ~"Wybieram 'Bardzo ważną tajemnicę'."~ */ DO ~SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46398 /* ~"Wybieram 'Likantropię'."~ */ DO ~SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46399 /* ~"Możesz powtórzyć te ostatnie doznania?"~ */ GOTO 4
  IF ~~ THEN REPLY #46400 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1 1.1 2.1 20.1
  SAY #46401 /* ~"Aktualnie jest dostępnych ponad tuzin standardowych doznań, a oprócz tego dysponujemy także sześcioma bardziej 'ekstrawaganckimi' doświadczeniami. Opłata za skorzystanie ze kamienia standardowego wynosi dziesięć miedziaków, a z kamienia bardziej wyrafinowanego, pięćdziesiąt miedziaków. Mam ci opowiedzieć o doznaniach standardowych, czy ekstrawaganckich?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #46402 /* ~"Standardowych..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46403 /* ~"Ekstrawaganckich..."~ */ GOTO 9
  IF ~~ THEN REPLY #46404 /* ~"Prawdę mówiąc, nie skorzystam z żadnych. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.7 9.6
  SAY #46405 /* ~Mężczyzna obdarza cię uśmiechem, po czym zaczyna objaśniać różne doznania, z których możesz skorzystać.

"Czy któreś z nich ci odpowiada?"~ */
  IF ~~ THEN REPLY #46406 /* ~"Wybieram 'Nieunikniony ból'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46407 /* ~"Wybieram 'Czułą miłość'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46408 /* ~"Wybieram 'Paraliżującą umysł nudę'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46409 /* ~"Wybieram 'Prawdziwy zachwyt'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46410 /* ~"Wybieram 'Pożerającą niecierpliwość'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46411 /* ~"Wybieram 'Poddanie się wyczerpaniu'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46412 /* ~"Wybieram 'Nadnaturalną żądzę'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46413 /* ~"Opowiedz mi o następnych..."~ */ GOTO 8
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46414 /* ~"Prawdę mówiąc, czy możesz przypomnieć te ekstrawaganckie?"~ */ GOTO 9
  IF ~~ THEN REPLY #46415 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7
  SAY #46416 /* ~Mężczyzna przytakuje, po czym zaczyna objaśniać różne doznania, z których możesz skorzystać.

"Czy któreś z nich ci odpowiada?"~ */
  IF ~~ THEN REPLY #46417 /* ~"Wybieram 'Psychozę'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46418 /* ~"Wybieram 'Jątrzącą się zazdrość'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46419 /* ~"Wybieram 'Gorzką nienawiść'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46420 /* ~"Wybieram 'Niezmąconą radość'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46421 /* ~"Wybieram 'Wylęknione podniecenie'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46422 /* ~"Wybieram 'Zimną determinację'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46423 /* ~"Wybieram 'Całkowitą konsternację'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46424 /* ~Poczekaj... Możesz jeszcze raz opisać te ostatnie..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46425 /* ~"Możesz mi opowiedzieć o tych ekstrawaganckich?"~ */ GOTO 9
  IF ~~ THEN REPLY #46426 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.8 8.8
  SAY #46427 /* ~Mężczyzna przytakuje, uśmiecha się, po czym zaczyna objaśniać bardziej wyrafinowane doznania, z których możesz skorzystać.

"Czy któreś z nich ci odpowiada?"~ */
  IF ~~ THEN REPLY #46428 /* ~"Wybieram 'Straszliwy żal'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46429 /* ~"Wybieram 'Wstrząs i wrzenie mściwości'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46430 /* ~"Wybieram 'Powoli wzrastające przerażenie'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46431 /* ~"Wybieram 'Nieopisaną frustrację'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46432 /* ~"Wybieram 'Bardzo ważną tajemnicę'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46433 /* ~"Wybieram 'Likantropię'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46434 /* ~"Możesz mi opowiedzieć o standardowych?"~ */ GOTO 7
  IF ~~ THEN REPLY #46435 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 5.3 9.0 9.3
  SAY #46436 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z większych komnat, trzy pokoje od schodów licząc w stronę przeciwną do ruchu wskazówek zegara. Ma czerwonawo-pomarańczowy kolor."~ */
  IF ~~ THEN REPLY #46437 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.4 9.1 9.4
  SAY #46438 /* ~"Wspaniale. Kamień, którego powinieneś użyć, znajduje się w jednej z większych komnat, dwa pokoje od schodów, licząc w stronę przeciwną do ruchu wskazówek zegara. Ma fioletowy kolor."~ */
  IF ~~ THEN REPLY #46439 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2 5.5 9.2 9.5
  SAY #46440 /* ~"Cudownie. Kamień, którego powinieneś użyć, znajduje się w jednej z większych komnat, jeden pokój od schodów, licząc w stronę przeciwną do ruchu wskazówek zegara. Ma niebiesko-fioletowy kolor."~ */
  IF ~~ THEN REPLY #46441 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 4.0 7.0 8.0
  SAY #46442 /* ~"Dobrze. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, jeden pokój od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma zielonkawo-żółty kolor."~ */
  IF ~~ THEN REPLY #46443 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.1 4.1 7.1 8.1
  SAY #46444 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, dwa pokoje od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma jasnoniebieski kolor."~ */
  IF ~~ THEN REPLY #46445 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2 4.2 7.2 8.2
  SAY #46446 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, trzy pokoje od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma fioletowy kolor."~ */
  IF ~~ THEN REPLY #46447 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.3 4.3 7.3 8.3
  SAY #46448 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, cztery pokoje od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma zielonkawo-żółty kolor."~ */
  IF ~~ THEN REPLY #46449 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.4 4.4 7.4 8.4
  SAY #46450 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, pięć pokoi od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma czerwonawo-pomarańczowy kolor."~ */
  IF ~~ THEN REPLY #46451 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.5 4.5 7.5 8.5
  SAY #46452 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, sześć pokoi od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma fioletowy kolor."~ */
  IF ~~ THEN REPLY #46453 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.6 4.6 7.6 8.6
  SAY #46454 /* ~"Dobry wybór. Kamień, którego powinieneś użyć, znajduje się w jednej z mniejszych komnat, siedem pokoi od schodów, licząc w stronę zgodną z ruchem wskazówek zegara. Ma jasnoniebieski kolor."~ */
  IF ~~ THEN REPLY #46455 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("S_Stone","AR0603",0)
~ THEN BEGIN 20 // from:
  SAY #46456 /* ~"Mam nadzieję, że podobało ci się doznanie? Mogę służyć czymś jeszcze?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46457 /* ~"Chciałbym wykupić jeszcze jedną sesję."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46458 /* ~"Chciałbym wykupić jeszcze jedną sesję."~ */ GOTO 6
  IF ~~ THEN REPLY #46459 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #46460 /* ~"Nic. Żegnaj."~ */ EXIT
END
