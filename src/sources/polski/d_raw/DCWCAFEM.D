// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27334 /* ~Ten bogato odziany, zadbany mężczyzna przyszedł tu by odpocząć, rozkoszując się świeżym powietrzem i popijając zakupiony w pobliskiej kawiarni napój.~ */
  IF ~~ THEN REPLY #2895 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #2896 /* ~Zostaw mężczyznę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27335 /* ~"Witaj..." Przerywa, gdy tylko przyjrzał ci się dokładniej. "Ach... i ty, panie." Uśmiecha się z trudem.~ */
  IF ~~ THEN REPLY #2897 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #2898 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 2
  IF ~~ THEN REPLY #27383 /* ~"Czas mi już w drogę... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #27336 /* ~"Nie, panie. To moja wina. Nie jestem przyzwyczajony do przebywania w towarzystwie osób, o takim jak twój... światowym... wyglądzie." Przymyka na mement oczy i kładzie swą dłoń na klatce piersiowej w przepraszającym geście. "Mam nadzieję, iż wybaczysz mi tę reakcję, gdy cię po raz pierwszy ujrzałem, panie."~ */
  IF ~~ THEN REPLY #27384 /* ~"Światowym?"~ */ GOTO 3
  IF ~~ THEN REPLY #27385 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27386 /* ~"Nie martw się. Odejdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27337 /* ~"'Obieżyświat', jeśli ci to bardziej pasuje. Jakby to powiedzieć, panie, twój wygląd - cóż, jest odrobinę niedbały, nieokiełznany. Sprawia to, iż wyglądasz nieco odmiennie. Ale przecież Sigil pełne jest dziwnych osobników, nieprawdaż? Sądzę jedynie, że w Dzielnicy Urzędników widuje się ich znacznie rzadziej niż w innych częściach miasta, to wszystko. Za wyjątkiem Miejskiego Gmachu Rozrywki, rzecz jasna."~ */
  IF ~~ THEN REPLY #27387 /* ~"Dzielnica Urzędników?"~ */ GOTO 6
  IF ~~ THEN REPLY #27388 /* ~"Miejski Gmach Rozrywki?"~ */ GOTO 22
  IF ~~ THEN REPLY #27389 /* ~"Chciałeś powiedzieć, że wyglądam, jakbym był martwy? Cóż, prawdę mówiąc to... jestem martwy!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27390 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27391 /* ~"To zrozumiałe, jak sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.9 13.2 15.2 17.2 18.3 20.2 21.2 22.4 23.4 24.2 25.8 26.1 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1
  SAY #27338 /* ~"Pytaj o co tylko zechcesz... Jeśli będę w stanie, udzielę ci odpowiedzi."~ */
  IF ~~ THEN REPLY #27392 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #27393 /* ~"Jest tu coś godnego uwagi?"~ */ GOTO 7
  IF ~~ THEN REPLY #27394 /* ~"Gdzie mogę znaleźć tu jakąś pracę?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27395 /* ~"Chcę cię zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27396 /* ~"Potrzebuję wskazówek, jak dojść..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27397 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 42
  IF ~~ THEN REPLY #27398 /* ~"Tak właściwie to mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27339 /* ~Zdaje się być zaskoczony. "Och, przecież to Dzielnica Urzędników! Jesteś panie nowy w Sigil, czyż nie? Ale... Wyglądasz mi na takiego, który raczej szuka odpowiedzi, nie pytań... Kontynuuj więc dalej i nie zważaj na moje pytanie." Uśmiecha się.~ */
  IF ~~ THEN REPLY #27399 /* ~"Co mógłbyś mi powiedzieć o dzielnicy?"~ */ GOTO 6
  IF ~~ THEN REPLY #27400 /* ~"Racja. Mam jednak jeszcze inne pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27401 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27340 /* ~"Cóż, przeważająca część dzielnicy - w której to skazany jestem spędzać większość czasu - zdaje się być opanowana przez archiwa i budynki administracyjne. Ta sekcja jednakże jest od nich wolna."~ */
  IF ~~ THEN REPLY #27402 /* ~"Czemuż to jesteś 'skazany', by tam pozostać?"~ */ GOTO 10
  IF ~~ THEN REPLY #27403 /* ~"Co sprawia, iż ta sekcja jest odmienna od pozostałych?"~ */ GOTO 7
  IF ~~ THEN REPLY #27404 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27405 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27341 /* ~"Na początek Miejski Gmach Rozrywki. A także Przybytek Zaspokajania Żądz Intelektualnych... Ale wiesz, to nie jest typowy przybytek. Zaspokaja raczej potrzeby związane z umysłem. Jakże to zwodnicze!" Uśmiecha się przebiegle.~ */
  IF ~~ THEN REPLY #27406 /* ~"Mów dalej."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27407 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27408 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27342 /* ~"Inne warte wzmianki miejsca..." Wymieniając je, liczy je na palcach. "...dom adwokata, apteka, Galeria Sztuki i Osobliwości, katakumby leżące pod dzielnica i warsztat krawiecki. Ach! O mało nie zapomniałem... Jest też 'sklepik osobliwości' sprzedający różności rozmaite."~ */
  IF ~~ THEN REPLY #27409 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27410 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27343 /* ~Mężczyzna odchrząkuje i marszczy brew. "Pozwolę sobie przypuścić, panie, iż nie interesuje cię stała praca. Powinieneś móc znaleźć jakieś tymczasowe zajęcie w domu adwokata tudzież w aptece. Miejski Gmach Rozrywki również należy do tych miejsc, w których się nieustannie coś dzieje... Coś się tam pewnie znajdzie dla ciebie."~ */
  IF ~~ THEN REPLY #27411 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27412 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27344 /* ~Wzrusza ramionami, na jego twarzy zarysowuje się boleść. "Moje obowiązki, sens mojego życia. - to wszystko się tu znajduje, panie. To miejsce mej pracy."~ */
  IF ~~ THEN REPLY #27414 /* ~"Czym się zajmujesz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27415 /* ~"Co sprawia, iż ta sekcja jest odmienna od reszty dzielnicy?"~ */ GOTO 7
  IF ~~ THEN REPLY #27416 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27417 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27345 /* ~Wznosi w górę ręce i potrząsa głową. "O nie, panie. Teraz nie chcę poruszać tego tematu. O żadnych polityce i papierkowej robocie, gdy jestem od nich z dala, mówić nie będę. I zdania tego nie zmienię." Uśmiecha się uprzejmie.~ */
  IF ~~ THEN REPLY #27418 /* ~"Co sprawia, iż ta część jest odmienna od reszty dzielnicy?"~ */ GOTO 7
  IF ~~ THEN REPLY #27419 /* ~"Mam parę innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27420 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 20.1 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27346 /* ~"Tak? O jakie?"~ */
  IF ~~ THEN REPLY #27421 /* ~"Dom adwokata."~ */ GOTO 13
  IF ~~ THEN REPLY #27423 /* ~"Apteka."~ */ GOTO 16
  IF ~~ THEN REPLY #27468 /* ~"Sklep z działami sztuki."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27469 /* ~"Przybytek."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27470 /* ~"Przybytek."~ */ GOTO 19
  IF ~~ THEN REPLY #27471 /* ~"Ciągnące się pod dzielnicą katakumby."~ */ GOTO 21
  IF ~~ THEN REPLY #27472 /* ~"Miejski Gmach Rozrywki."~ */ GOTO 22
  IF ~~ THEN REPLY #27473 /* ~"Sklepik osobliwości."~ */ GOTO 23
  IF ~~ THEN REPLY #27474 /* ~"Warsztat krawiecki."~ */ GOTO 24
  IF ~~ THEN REPLY #27475 /* ~"Mniejsza z tym. Pozwól, że spytam o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27476 /* ~"Nic, nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27347 /* ~"Adwokaci bywają bardzo pomocni w wyszukiwaniu argumentów popierających daną sprawę. Wykonują też odpowiednią dokumentację sądową, a także stają się oficjalnymi przedstawicielami swych klientów. Ten tuż obok, imieniem Iannis, należy do grona osób cieszących się znacznym poważaniem i można na nim polegać. Mieszka i pracuje w dzielnicy już spory kawał czasu."~ */
  IF ~~ THEN REPLY #27477 /* ~"Jak dojść do domu Iannisa?"~ */ GOTO 26
  IF ~~ THEN REPLY #27478 /* ~"Chcę cię zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27479 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27480 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #27348 /* ~"Adwokaci bywają bardzo pomocni w wyszukiwaniu argumentów popierających daną sprawę. Wykonują też odpowiednią dokumentację sądową, a także stają się oficjalnymi przedstawicielami swych klientów."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27349 /* ~"Ten tuż obok, imieniem Iannis, należy do grona osób cieszących się znacznym poważaniem i można na nim polegać. Mieszka i pracuje w dzielnicy już spory kawał czasu."~ */
  IF ~~ THEN REPLY #27481 /* ~"Jak dojść do domu Iannisa?"~ */ GOTO 26
  IF ~~ THEN REPLY #27482 /* ~"Chcę cię jeszcze o coś zapytać..."~ */ GOTO 12
  IF ~~ THEN REPLY #27483 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27484 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 27.0
  SAY #27350 /* ~"Apteka zajmuje się sprzedażą rozmaitych maści, eliksirów, ziół i pokrewnym asortymentem." Zamyśla się. "Właściciele tego miejsca zachowują się co prawda trochę dziwacznie, nieustannie sprawdzając jakość towaru, jednak, mimo wszystko, to dobrzy ludzie."~ */
  IF ~~ THEN REPLY #27485 /* ~"Którędy idzie się do apteki?"~ */ GOTO 27
  IF ~~ THEN REPLY #27486 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27487 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 28.0
  SAY #27351 /* ~"Galeria Sztuki i Osobliwości Yvanny to jedno z najbardziej niezwykłych miejsc. Mieści w sobie zbiory dzieł sztuki, antyków i artefaktów z każdego zakątka sfer."~ */
  IF ~~ THEN REPLY #27488 /* ~"Jak mogę dojść do sklepu z dziełami sztuki?~ */ GOTO 28
  IF ~~ THEN REPLY #27489 /* ~"Chcę cię zapytać o inne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27490 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27491 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.3 29.0
  SAY #27352 /* ~"To przybytek Czuciowców, którego funkcją jest zaspokajanie potrzeb umysłowych i zmysłowych." Przymyka na moment oczy, twarz jego przybiera wyrażający szczęście uśmiech. "Prowadzi go Nie-Sława - najcudowniejsza kobieta, jaką można sobie wyobrazić. Jeśli to twój pierwszy pobyt w dzielnicy, panie, gorąco polecam ci to miejsce."~ */
  IF ~~ THEN REPLY #27492 /* ~"Czuciowców?"~ */ GOTO 36
  IF ~~ THEN REPLY #27493 /* ~"Gdzie mogę znaleźć Przybytek?~ */ GOTO 29
  IF ~~ THEN REPLY #27494 /* ~"Chcę jeszcze zapytać o inne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27495 /* ~"Mam kilka kolejnych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27496 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.4 29.1
  SAY #27353 /* ~"To przybytek Czuciowców, którego funkcją jest zaspokajanie potrzeb umysłowych i zmysłowych. Prowadzi go przecudowna kobieta o imieniu Nie-Sława." Przerywa i obdarza Sławę głębokim ukłonem.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 126
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27354 /* ~"Och, tyś jest tą, która zasługuje na najwyższe uznanie, Pani Sławo. To dla mnie zaszczyt móc obdarzać twą osobę takimi komplementami." Skończywszy, ponownie odwraca się w twoją stronę.~ */
  IF ~~ THEN REPLY #27497 /* ~"Wyleciało mi z pamięci... Jak dojść do Przybytku?"~ */ GOTO 29
  IF ~~ THEN REPLY #27498 /* ~"Chcę cię jeszcze o coś zapytać..."~ */ GOTO 12
  IF ~~ THEN REPLY #27499 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27500 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5 30.0
  SAY #27355 /* ~"Pozostaje to dla mnie zagadką, dlaczego dabusy ich jeszcze nie zamknęły. Pełno w nich przecież potworów, tak przynajmniej mawiają... Przerażających istot, które czyhają w ciemnościach."~ */
  IF ~~ THEN REPLY #27501 /* ~"Gdzie szukać wiodących w dół wejść?"~ */ GOTO 30
  IF ~~ THEN REPLY #27502 /* ~"Chcę cię jeszcze o coś zapytać..."~ */ GOTO 12
  IF ~~ THEN REPLY #27503 /* ~"Mam kilka kolejnych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27504 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.6 31.0
  SAY #27356 /* ~"Główna siedziba frakcji Czuciowców to jedno z najwspanialszych miejsc w całym Sigil. Jego sława obiegła cały Wieloświat - za sprawą organizowanych tam koncertów, wystaw i odczytów. Tym jednak, co fascynuje w nim najbardziej, są jego sensoria."~ */
  IF ~~ THEN REPLY #27505 /* ~"Czuciowcy?"~ */ GOTO 36
  IF ~~ THEN REPLY #27506 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27507 /* ~"Gdzie usytuowany jest Miejski Gmach Rozrywki?"~ */ GOTO 31
  IF ~~ THEN REPLY #27508 /* ~"Jest jeszcze coś, o co chcę zapytać..."~ */ GOTO 12
  IF ~~ THEN REPLY #27509 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27510 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7 32.0
  SAY #27357 /* ~"Nie twierdzę, że byłem tam osobiście... Wiem jednak, że zarządza nim osoba zajmująca się importem dóbr rozmaitych. To pół-bies, uściślając, której towary pochodzą z Niższych Sfer."~ */
  IF ~~ THEN REPLY #27511 /* ~"Pół-bies?"~ */ GOTO 35
  IF ~~ THEN REPLY #27512 /* ~"Sfery Niższe?"~ */ GOTO 34
  IF ~~ THEN REPLY #27513 /* ~"Gdzie szukać tego miejsca?"~ */ GOTO 32
  IF ~~ THEN REPLY #27514 /* ~"Jest jeszcze coś, o co chcę zapytać..."~ */ GOTO 12
  IF ~~ THEN REPLY #27515 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27516 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.8 33.0
  SAY #27358 /* ~"Gonkalf jest wyśmienitym krawcem, miewa jednak zmienne nastroje i łatwo go urazić. Pragnę cię również ostrzec, iż osądza on innych po ich wyglądzie... Z tego też powodu raczej trudno by ci było zyskać jego przyjaźń."~ */
  IF ~~ THEN REPLY #27517 /* ~"Gdzie leży Warsztat Gonkalfa?"~ */ GOTO 33
  IF ~~ THEN REPLY #27518 /* ~"Chcę cię zapytać o inne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27519 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27520 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27359 /* ~"Dokąd, panie?"~ */
  IF ~~ THEN REPLY #27521 /* ~"Dom adwokata."~ */ GOTO 26
  IF ~~ THEN REPLY #27522 /* ~"Apteka."~ */ GOTO 27
  IF ~~ THEN REPLY #27523 /* ~"Sklep z dziełami sztuki."~ */ GOTO 28
  IF ~~ THEN REPLY #27524 /* ~"Przybytek."~ */ GOTO 29
  IF ~~ THEN REPLY #27525 /* ~"Katakumby rozciągające się pod dzielnicą."~ */ GOTO 30
  IF ~~ THEN REPLY #27526 /* ~"Miejski Gmach Rozrywki."~ */ GOTO 31
  IF ~~ THEN REPLY #27527 /* ~"Sklepik osobliwości."~ */ GOTO 32
  IF ~~ THEN REPLY #27528 /* ~"Warsztat krawiecki."~ */ GOTO 33
  IF ~~ THEN REPLY #27529 /* ~"Nie ważne. Chciałby zapytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27530 /* ~"Nic, nie ważne. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27360 /* ~"Dom Iannisa położony jest na południe od bramy wiodącej do Niższej Dzielnicy - przez którą najpewniej przyszedłeś tu za pierwszym razem. Znajdziesz go przy wschodniej stronie drogi."~ */
  IF ~~ THEN REPLY #27531 /* ~"Co możesz mi powiedzieć o adwokacie?"~ */ GOTO 13
  IF ~~ THEN REPLY #27533 /* ~"Dzięki. Pozwól mi spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27534 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27361 /* ~"Podążaj tą drogą, która wiedzie od bramy do Dzielnicy Niższej - przez którą najpewniej przyszedłeś tu za pierwszym razem. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy wschodniej stronie drogi. Na jego frontowej ścianie, wychodzącej na południe, znajdują się trzy witraże."~ */
  IF ~~ THEN REPLY #27535 /* ~"Co możesz mi o tym miejscu powiedzieć?"~ */ GOTO 16
  IF ~~ THEN REPLY #27536 /* ~"Dziękuję. Pozwól, że spytam o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27537 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27362 /* ~"Podążaj tą drogą, która wiedzie od bramy do Dzielnicy Niższej - przez którą najpewniej przyszedłeś tu za pierwszym razem. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy zachodniej stronie drogi. Jego przód wychodzi na południe i wieńczy go dach, którego dachówki przytrzymywane są przez sporych rozmiarów kamienie."~ */
  IF ~~ THEN REPLY #27538 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #27542 /* ~"Dzięki. Pozwól mi teraz spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27543 /* ~"Rozumiem. Dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 20.0 25.3
  SAY #27363 /* ~"Przybytek Zaspokajania Żądz Intelektualnych, tak? To zaraz na wschód od bramy wiodącej do Niższej dzielnicy - którą zapewne tu przyszedłeś. Będzie to sporych rozmiarów owalny budynek z wejściem wychodzącym na południe.~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27544 /* ~"Co możesz mi powiedzieć o Przybytku?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27545 /* ~"Co możesz mi powiedzieć o Przybytku?"~ */ GOTO 19
  IF ~~ THEN REPLY #27546 /* ~"Dzięki. Chcę cię jeszcze o coś zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27547 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27364 /* ~Marszczy brwi. "Hrm. Istnieje więcej niż jedno wejście. Tyle wiem... Wiem też coś jeszcze. Pragnę cię ostrzec, że nic się na powierzchnie z tych katakumb nie wydostaje... Nawet ci, którzy tam wkroczą."~ */
  IF ~~ THEN REPLY #27548 /* ~"Co jeszcze mógłbyś mi o nich powiedzieć?"~ */ GOTO 21
  IF ~~ THEN REPLY #27549 /* ~"Dzięki. Chcę cię jeszcze o coś zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27550 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27365 /* ~"Wyjątkowo łatwo jest znaleźć Miejski Gmach Rozrywki, panie. To ten masywny budynek znajdujący się w północno-wschodniej części tej sekcji."~ */
  IF ~~ THEN REPLY #27553 /* ~"Co mógłbyś mi powiedzieć o Miejskim Gmachu Rozrywki?"~ */ GOTO 22
  IF ~~ THEN REPLY #27554 /* ~"Dzięki. Chcę cię jeszcze o coś zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27555 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27366 /* ~"Sam tam co prawda nigdy nie byłem, wiadomo mi jednak, iż znajduje się on w części południowo-wschodniej. Na szczyt tego niepospolitego gmachu wiodą szerokie schody. Doprawdy ciężko byłoby go przegapić..."~ */
  IF ~~ THEN REPLY #27556 /* ~"Co wiesz o ty miejscu?"~ */ GOTO 23
  IF ~~ THEN REPLY #27557 /* ~"Dzięki. Chcę cię jeszcze o coś zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27558 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27367 /* ~"Jeśli szukasz warsztatu krawieckiego Gonkalfa, znajdziesz go kierując się nieco na północny-wschód od bramy prowadzącej do Niższej Dzielnicy - tej, przez którą najpewniej przyszedłeś tu za pierwszym razem. Gdy zobaczysz szeroki budynek z wejściami wychodzącymi na południe, to będzie właśnie to."~ */
  IF ~~ THEN REPLY #27559 /* ~"Mógłbyś mi o tym miejscu opowiedzieć?"~ */ GOTO 24
  IF ~~ THEN REPLY #27560 /* ~"Dzięki. Chcę cię jeszcze o coś zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27561 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27368 /* ~Kiwa głową i szepcze cicho. "Wiesz, panie... Baator, Otchłań i tym podobne... Przerażające miejsca."~ */
  IF ~~ THEN REPLY #27562 /* ~"Powiedziałeś, że jest pół-biesem?"~ */ GOTO 35
  IF ~~ THEN REPLY #27563 /* ~"Gdzie mogę znaleźć ten sklepik z osobliwościami?"~ */ GOTO 32
  IF ~~ THEN REPLY #27564 /* ~"Chcę cię zapytać o inne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27565 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27566 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27369 /* ~"Racz zauważyć panie, że to nie żadne diabelstwo, ale właściwy pół-bies. To córka Inkuba i śmiertelniczki, tak przynajmniej słyszałem. Ale nie daję posłuchu plotkom, zakończmy więc dyskusję na jej temat."~ */
  IF ~~ THEN REPLY #27567 /* ~"Powiadasz, że jej towary pochodzą ze Sfer Niższych?"~ */ GOTO 34
  IF ~~ THEN REPLY #27568 /* ~"Gdzie szukać tego sklepu z osobliwościami?"~ */ GOTO 32
  IF ~~ THEN REPLY #27569 /* ~"Dzięki. Chcę jeszcze spytać o inne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27570 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27571 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 22.0
  SAY #27370 /* ~"Tak. Ich oficjalna nazwa to 'Stronnictwo Doznań'. Wierzą, że jedynie drogą bezpośrednich doświadczeń jesteśmy w stanie odkryć prawdziwą naturę wieloświata."~ */
  IF ~~ THEN REPLY #27572 /* ~"Rozumiem. Mów dalej."~ */ GOTO 48
  IF ~~ THEN REPLY #27573 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27574 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27371 /* ~"Udało im się odkryć sposób dzielenia się własnymi doświadczeniami z innymi osobnikami - za pomocą sensoriów."~ */
  IF ~~ THEN REPLY #27575 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27576 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27577 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27372 /* ~"Czuciowcom udało się odkryć sposób, dzięki któremu mogą rejestrować w kamieniach doznane przez nich przeżycia i udostępniać je *innym*. Przemierzają oni Sfery, przeczesują swą świadomość w poszukiwaniu doznań, którymi mogliby się z pozostałymi podzielić. Praktycznie wszystko to, co kiedykolwiek odczuwali bądź doświadczali, można znaleźć w ich sensoriach."~ */
  IF ~~ THEN REPLY #27578 /* ~"Gdzie mogę znaleźć te sensoria?"~ */ GOTO 39
  IF ~~ THEN REPLY #27579 /* ~"Te doświadczenia... Podobne są do wspomnień?"~ */ GOTO 40
  IF ~~ THEN REPLY #27580 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27581 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27373 /* ~"We wnętrzu Miejskiego Gmachu Rozrywki znaleźć można zarówno sensoria ogólnie dostępne, jak i te przeznaczone jedynie dla Czuciowców. By z nich skorzystać, trzeba wnieść drobną opłatę, niewielka to jednak cena za takie doznania."~ */
  IF ~~ THEN REPLY #27582 /* ~"Gdzie znajdę Miejski Gmach Rozrywki?"~ */ GOTO 31
  IF ~~ THEN REPLY #27583 /* ~"Te doświadczenia... Podobne są do wspomnień?"~ */ GOTO 40
  IF ~~ THEN REPLY #27584 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27585 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27374 /* ~"W pewnym *sensie* tak, jednak o znacznie większej intensywności... I nie będą to twe przeszłe doznania, lecz innej osoby... Te, które zapisano we wnętrzu kamienia."~ */
  IF ~~ THEN REPLY #27586 /* ~"Zapisano? Czy nie tracą oni wspomnień bądź doświadczeń, gdy zostaną one zapisane w kamieniu?"~ */ GOTO 41
  IF ~~ THEN REPLY #27587 /* ~"Gdzie znajdują się te sensoria?"~ */ GOTO 39
  IF ~~ THEN REPLY #27588 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27589 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27375 /* ~"Nie..." Marszczy brwi. "Ja przynajmniej uważam, że nie. Sądzę, iż kamień *kopiuje* w jakiś sposób doświadczenia zmysłowe. Jeśli chcesz się upewnić, możesz zapytać o to Czuciowców... Ja rozumiem to właśnie w ten sposób."~ */
  IF ~~ THEN REPLY #27590 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27591 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27376 /* ~"Brzmi znajomo... Czy to któraś z władczyń? A może postać z którejś z książek...? Nie mogę sobie przypomnieć."~ */
  IF ~~ THEN REPLY #27592 /* ~"Mniejsza z tym. Mam jeszcze inne pytania..."~ */ GOTO 4
  IF ~~ THEN REPLY #27593 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27377 /* ~"Ach, po raz kolejny Obieżyświat wchodzi mi w drogę." Mężczyzna uśmiecha się do ciebie znad swej filiżanki. "Kolejna porcja pytań, czyż nie?"~ */
  IF ~~ THEN REPLY #27594 /* ~"Zgadza się."~ */ GOTO 4
  IF ~~ THEN REPLY #27595 /* ~"Prawdę mówiąc nie... Przechodziłem tylko... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27378 /* ~Mężczyzna unosi jedną z brwi. "Słucham, panie?"~ */
  IF ~~ THEN REPLY #27596 /* ~"Powiedziałem: 'Jestem martwy!' Martwy, martwy, la-la! Martwy, martwy, la-la..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27597 /* ~"W takim razie mniejsza z tym. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27598 /* ~"Nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27379 /* ~Jego wypowiedzi stają się nieufne. "No, tak... Czyż... wszyscy nie jesteśmy... Muszę już iść, panie, mam do załatwienia kilka spraw nie cierpiących zwłoki."~ */
  IF ~~ THEN REPLY #27599 /* ~"Poczekaj! Nie powiedziałem ci jeszcze, *dlaczego* jestem martwy..."~ */ GOTO 46
  IF ~~ THEN REPLY #27600 /* ~"Poczekaj chwilę. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27601 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27380 /* ~Cofa się o jeden krok. "Przyznam, że zdecydowanie mnie to ni interesuje, panie." Zaczyna się rozglądać tak, jakby szukał kogoś, kto mógłby mu przyjść z pomocą."~ */
  IF ~~ THEN REPLY #27602 /* ~"Ponieważ zabiłem zbyt wielu ludzi w moich poprzednich wcieleniach."~ */ GOTO 47
  IF ~~ THEN REPLY #27603 /* ~"W takim razie mniejsza z tym. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27604 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27381 /* ~"Straż!"~ */
  IF ~~ THEN REPLY #27605 /* ~Zaatakuj go.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27606 /* ~Spróbuj odejść, zanim przybędą inni.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27382 /* ~"Ich życie wypełnia tylko jeden cel: doświadczyć tak wiele z tego, co oferuje wieloświat, jak to tylko możliwe. Sporo podróżują, zarówno przemierzając Sfery, jak i zagłębiając się we wnętrzu własnych umysłów i uczuć. A nawet posuwają się o krok dalej, wiesz..."~ */
  IF ~~ THEN REPLY #27607 /* ~"Jak to?"~ */ GOTO 37
  IF ~~ THEN REPLY #27608 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27609 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
