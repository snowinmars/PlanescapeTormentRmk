// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHON~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~Widzisz Grabarza o twarzy zastygłej w krzywym uśmiechu. Pomimo tego uśmiechu, jego oczy wciąż pozostają matowe niczym kamienie. Jego prawe ramię jest krótsze od lewego i cały czas trzyma je przyciśnięte do siebie - tak, jakby trzymał małe dziecko.~ */
  IF ~~ THEN REPLY #7289 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~Przygląda ci się przelotnie. "Imię." Wypowiada to słowo w taki sposób, że brzmi to niczym bicie dzwonu.~ */
  IF ~~ THEN REPLY #7292 /* ~"Nie... Nie wiem."~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~"Uch. Przepraszam za najście."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~"Brak imienia, brak imienia, pomóc ci nie mogę." Grabarz wymawia to dziwnie śpiewnym głosem. "Potrzebuję imię, jeśli chcesz wiedzieć, gdzie leży martwy."~ */
  IF ~~ THEN REPLY #7295 /* ~"Co?"~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ JOURNAL #66659 /* ~W pobliżu Kamienia Pamiątkowego Grabarza spotkałem sparaliżowanego Grabarza. Przedstawił mi się jako "Grzebiący Imiona", a jego zajęcie zdaje się polegać na symbolicznym pochówku imion poprzez zapisywanie ich na ścianach Kamienia. Obiekt ten nie budzi zbyt miłych skojarzeń. Kamień to wielki cmentarz dla imion, a każda z jego ścian to ogromny czarny grobowiec.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~"Gdy się rodzimy, dostajemy imię; oddajemy je, gdy już przestaje być potrzebne. Grzebiący Imiona, Grzebiący Imiona." Oczy jego przepływają po monolicie, potem okolicznych ścianach. "Sporo tu imion Grzebiący Imiona pochował. Powiedz imię, a grób wskażę."~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~"Zachariasz."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7303 /* ~"Quentin."~ */ GOTO 13
  IF ~~ THEN REPLY #7304 /* ~"Uch... Nie wiem. Spróbuj 'Adahn'."~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #9766 /* ~"Hmmm. "Czy mógłbyś pogrzebać dla mnie imię?"~ */ GOTO 5
  IF ~~ THEN REPLY #9767 /* ~"Na razie brak imion. Wybacz, że przeszkodziłem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.6 9.10
  SAY #7305 /* ~Potrząsa głową. "Jeszcze nie martwe, nie czas. Nie pogrzebane tutaj. Nie czas, nie czas."~ */
  IF ~~ THEN REPLY #7306 /* ~"Pozwól mi spróbować z innym imieniem..."~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~"Czy mógłbyś pogrzebać dla mnie imię?"~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~"Bardzo... dobrze. Przepraszam za najście."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~Przytakuje, po czym otwiera swą przyciskaną dotychczas do boku małą dłoń. Wygląda na to, że uległa ona atrofii. Ma rozmiary dziecięcej rączki. "Kosztuje brzdęk pogrzebanie imienia. Trzy miedziaki, trzy."~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~"Zachariasz."~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~"Deionarra."~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~"Dhall."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~"Dhall."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7317 /* ~"Quentin."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #9768 /* ~"Quentin."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #9769 /* ~"Hmmmm... Es-Annon."~ */ DO ~TakePartyGold(3)
AddexperienceParty(500)
SetGlobal("Crier_Quest","GLOBAL",2)
~ JOURNAL #26108 /* ~Poleciłem wyryć nazwę miasta Es-Annon na kamieniu pamiątkowym Grabarzy na zewnątrz Kostnicy. Powinienem wrócić i powiedzieć Opłakującemu Es-Annon, że jest już zwolniony z obowiązku wspominania.~ */ GOTO 6
  IF ~  PartyGoldLT(3)
~ THEN REPLY #9770 /* ~"Nie mam żadnego... brzdęku. Może innym razem."~ */ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #26086 /* ~"Nie ma dziś imienia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.6
  SAY #7350 /* ~Miedziaki wpadają do dłoni Grzebiącego Imiona. Ten zaś z powrotem przyciąga swe ramię do boku. Jego oczy, teraz nagle ożywione, biegną ku tyłowi głowy, następnie rzucają się na przód i zaczynają penetrować monolit oraz ściany miejsca pamięci.~ */
  IF ~~ THEN REPLY #7351 /* ~Poczekaj...~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7352 /* ~Wypatruje w ścianie puste miejsce, po czym błyskawicznie do niego dobiega. Następnie pochyla się i zaczyna kuć w ścianie. Po kilku chwilach kończy, prostuje się i wraca do ciebie. "Pogrzebane." Słowo to niesie w sobie pewną nieodwracalność, która sprawia, że czujesz się nieswojo.~ */
  IF ~~ THEN REPLY #7353 /* ~"Chcę, żebyś sprawdził dla mnie imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~"Chcę pogrzebać kolejne imię."~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~Widzisz Grzebiącego Imiona. Stoi przy pomniku z takim samym krzywym uśmiechem, jak poprzednio, z tak samo zwiniętą przy boku ręką.~ */
  IF ~~ THEN REPLY #7357 /* ~"Witaj."~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~Ponownie obrzuca cię przelotnym spojrzeniem. "Imię." Wypowiada to słowo w taki sposób, że brzmi ono niczym bicie dzwonu.~ */
  IF ~~ THEN REPLY #7360 /* ~"Nie... Nie wiem."~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~"Chcę pogrzebać imię..."~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~"Zachariasz."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Know_Xixi","GLOBAL",1)
GlobalLT("Xixi_Back","GLOBAL",2)
~ THEN REPLY #7366 /* ~"Xixi."~ */ GOTO 4
  IF ~  Global("Know_Xixi","GLOBAL",1)
Global("Xixi_Back","GLOBAL",3)
~ THEN REPLY #7367 /* ~"Xixi."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7368 /* ~"Quentin."~ */ GOTO 13
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #9771 /* ~"Es-Annon."~ */ GOTO 10
  IF ~~ THEN REPLY #9772 /* ~"Uch... 'Adahn'?"~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #26109 /* ~"Wybacz, że kłopotałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
  SAY #7369 /* ~Przewraca oczami w tył, a później w przód. Z dzikim błyskiem jego oczy zaczynają wędrować w poprzek ścian pomnika, studiując imiona z nieludzką szybkością. Następnie wskazuje on miejsce na ścianie. "Pogrzebane."~ */
  IF ~~ THEN REPLY #7370 /* ~Sprawdź miejsce, które wskazał.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~"Mam następne imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~"Chcę pogrzebać imię..."~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~"Sprawdzam tylko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~Wykute w czarnym kamieniu, z użyciem małych, wąskich liter - oto imię, o które prosiłeś. Prawie zagubione w oceanie otaczających go imion.~ */
  IF ~~ THEN REPLY #7375 /* ~"Mam następne imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~"Chcę pogrzebać imię..."~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~"Sprawdzam tylko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~Potrząsa głową. "Pogrzebane."~ */
  IF ~~ THEN REPLY #7380 /* ~"Mam następne imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~"Chcę pogrzebać imię..."~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~"Sprawdzam tylko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.8
  SAY #7384 /* ~Przewraca oczami w tył, później w przód. Z dzikim błyskiem jego oczy zaczynają wędrować w poprzek ścian pomnika, studiując imiona z nieludzką szybkością. Następnie wskazuje on miejsce u podstawy pomnika. "Pogrzebane."~ */
  IF ~~ THEN REPLY #7386 /* ~Sprawdź miejsce, na które on wskazuje.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~"Mam następne imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~"Chcę pogrzebać imię..."~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~"Sprawdzam tylko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~Wykute w czarnym kamieniu, z użyciem małych, wąskich liter - oto imię Quentina. Nieszczęśliwie dla Quentina, zdaje się, że imię to nie posiada takiej mocy, by - jak miał on nadzieję - spowodować w pomniku pęknięcie.~ */
  IF ~~ THEN REPLY #7392 /* ~"Mam następne imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~"Chcę pogrzebać imię..."~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~"Sprawdzam tylko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~Miedziaki wpadają do dłoni Grzebiącego-Imiona. Ten zaś z powrotem przyciąga swe ramię do boku. Jego oczy, teraz nagle ożywione, biegną ku tyłowi głowy, następnie rzucają się na przód i zaczynają penetrować monolit oraz ściany miejsca pamięci.~ */
  IF ~~ THEN REPLY #7405 /* ~Poczekaj...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7406 /* ~Obraca się w stronę podstawy monumentu, po czym dobiega do niej szybko. Schyla się i zaczyna wykuwać w pomniku. Nieszczęśliwie dla Quentina, pomnik nie pęka, gdy zostaje na nim wypisane jego imię. Po kilku chwilach kończy, prostuje się i wraca do ciebie. "Pogrzebane." Słowo to niesie w sobie pewną nieodwracalność, która sprawia, że czujesz się nieswojo.~ */
  IF ~~ THEN REPLY #7407 /* ~"Chcę, żebyś sprawdził dla mnie imię..."~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~"Chcę pogrzebać kolejne imię."~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END
