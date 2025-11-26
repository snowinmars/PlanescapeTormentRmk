// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRIER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRIER~

IF ~  Global("Crier","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26006 /* ~Strumienie łez utworzyły wyżłobienia na pokrytej kurzem twarzy tego mężczyzny. Zdaje się on być mnichem lub jakimś innym świętobliwym mężem, jednak z powodu pokrywającej jego ciało warstwy brudu praktycznie nie można dostrzec, jak w istocie wygląda. Śpiewa i kiwa głową w tył i w przód - wygląda to na jakiś rytuał.~ */
  IF ~~ THEN REPLY #26007 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #26008 /* ~Zostaw świętego męża w spokoju.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #26523 /* ~Widzisz Opłakującego Es-Annon. Z jego ust wydobywa się zdławiony szloch, a po policzkach spływają mu łzy, gdy wyśpiewuje on nazwę umarłego miasta.~ */
  IF ~  Global("Crier_Quest","GLOBAL",0)
~ THEN REPLY #26524 /* ~"Muszę zapytać: Dlaczego opłakujesz miasto?"~ */ GOTO 8
  IF ~  Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #26526 /* ~"Nie udało mi się jeszcze znaleźć nagrobka, ma którym można by było wypisać nazwę Es-Annon."~ */ GOTO 3
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #26527 /* ~"Dzięki moim staraniom nazwa Es-Annon pozostanie w pamięci. Została wyżłobiona w pomniku z czarnego kamienia, ustawionym na zewnątrz Kostnicy."~ */ DO ~SetGlobal("Crier","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26530 /* ~Dopilnowałem tego, żeby nazwa Es-Annon została wyryta na Kamieniu Pamiątkowym Grabarzy. Wróciłem i powiedziałem o tym Opłakującemu, a jego potok łez się zakończył. Był wdzięczny za moje starania i wydaje się, że nareszcie odnalazł spokój.~ */ GOTO 23
  IF ~~ THEN REPLY #26528 /* ~Pozostaw Opłakującego w spokoju.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #26525 /* ~Dostrzegasz Opłakującego Es-Annon. Wygląda na odprężonego, a jego spojrzenie niesie w sobie spokój, którego tam nie było, gdy po raz pierwszy z nim rozmawiałeś. "Dziękuję, przyjacielu. Już wkrótce udam się na poszukiwanie mych braci, by im powiedzieć, że nadszedł kres naszej żałoby."~ */
  IF ~~ THEN REPLY #26531 /* ~"Świetnie. Życzę ci, by szczęście sprzyjało cię w czasie podróży. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #26529 /* ~Opłakujący potrząsa głową. "Obawiałem się, że tak będzie. Opłakujący Es-Annon są jedynymi, którzy mogą wziąć ciężar na swoje barki. Nie musisz już dalej szukać, przyjacielu..."~ */
  IF ~~ THEN REPLY #26532 /* ~"Nie. Nadal będę szukać nagrobka i wrócę, gdy znajdzie się na nim nazwa Es-Annon."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26533 /* ~Mężczyzna przerywa swe niezrozumiałe śpiewy i spogląda na ciebie zaczerwionymi od łez oczami. Otwiera spieczone usta, by coś powiedzieć, jednak cichy charkot stanowi wszystko, co jest on w stanie wymówić.~ */
  IF ~~ THEN REPLY #26534 /* ~"Co się stało? Dlaczego ronisz łzy?"~ */ GOTO 5
  IF ~~ THEN REPLY #26535 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #26536 /* ~"Ja..." Głos jego brzmi tak szorstko, jakby człowiek ów obywał się bez wody przez wiele dni. Gdy na niego patrzysz, dostrzegasz łzę spływającą po jego twarzy. "Ja... jestem Opłakującym Es-Annon."~ */
  IF ~~ THEN REPLY #26537 /* ~"Es-Annon? Kim on jest?"~ */ DO ~SetGlobal("Crier","GLOBAL",1)
~ JOURNAL #26540 /* ~Na ulicach Ula spotkałem Opłakującego Es-Annon. Zgodnie z tym co mówił, Es-Annon było miastem które zostało zniszczone dawno temu, a on (i pozostali przy życiu mieszkańcy) podróżują teraz po sferach, opłakując miasto przed wszystkimi, którzy zechcą ich wysłuchać. Ich życzeniem jest, aby Es-Annon zostało zapamiętane.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26541 /* ~"Ki... *Kim* jest Es-Annon?!" Odrzuca głowę do tyłu i wydobywa z siebie chrapliwy śmiech, który niesie w sobie znamiona brutalności i porażki. "Es-Annon... to nie człowiek, tylko miasto!"~ */
  IF ~~ THEN REPLY #26542 /* ~"Dlaczego opłakujesz miasto?"~ */ GOTO 7
  IF ~~ THEN REPLY #26543 /* ~"Obawiam się, że stałem się powodem twojego zmartwienia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26544 /* ~"Opłakujemy jego imię, ponieważ nie wolno zapomnieć o Es-Annon. Każdy z Opłakujących Es-Annon dźwiga na swych barkach ten ciężar."~ */
  IF ~~ THEN REPLY #26545 /* ~"Opłakujesz *miasto*? Po co to robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #26546 /* ~"Rozumiem. Pozostawię cię sam na sam z twoimi przemyśleniami. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 7.0
  SAY #26547 /* ~"Ponieważ jego nazwa jest wszystkim, co pozostało. Jego pełne światła aleje, jego wspaniałe wijące się parki... Gdy zostało zniszczone i stało się jedynie wspomnieniem, ocalało nas zaledwie trzykroć po dwudziestu spośród jego ludu. Dopilnowanie, by ta nazwa nie została w Sferach zapomniana, leżało w naszym obowiązku. Wielu Opłakujących Es-Annon umarło w służbie, by tę pamięć zachować... Wielu..."~ */
  IF ~~ THEN REPLY #26549 /* ~"Jeśli stwarza to dla was ryzyko, dlaczego nie przestaniecie tego robić?"~ */ GOTO 9
  IF ~~ THEN REPLY #26550 /* ~"Przepełnia mnie żal z powodu zagłady twojego miasta i twych pobratymców. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26551 /* ~"Łzy, które ronię, kurz, który mnie pokrywa... To wszystko jest niczym w porównaniu z tym, co powinienem poświęcić, dźwigając ten święty ciężar. MUSIMY sprawić, by jego imię przetrwało. Jesteśmy żywymi pomnikami jego śmierci."~ */
  IF ~~ THEN REPLY #26552 /* ~"Skoro tak, to co się stanie, gdy wszyscy umrzecie?"~ */ GOTO 10
  IF ~~ THEN REPLY #26553 /* ~"Przepełnia mnie żal z powodu zagłady twojego miasta i twych pobratymców. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26555 /* ~Kolejna łza formuje się w oku Opłakującego. Nawet jego oblepiona kurzem twarz nie jest w stanie ukryć jego rozpaczy. "NIE WIEM. My, Opłakujący Es-Annon, nie możemy trwać w żałobie po wieczność... Już teraz kurz pokrywa nasze szaty, ślina wysycha w ustach, nasze ciała wiotczeją i umierają."~ */
  IF ~~ THEN REPLY #26556 /* ~"Czy mogę ci jakoś pomóc?"~ */ GOTO 11
  IF ~~ THEN REPLY #26557 /* ~"Przepełnia mnie żal z powodu zagłady twojego miasta i twych pobratymców. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26558 /* ~"Miło, że pytasz..." Opłakujący potrząsa głową. "Jeśli nie jesteś w stanie uwiecznić Es-Annon, nie potrzebuję pomocy."~ */
  IF ~~ THEN REPLY #26560 /* ~"Czy to koniecznie ty musisz opłakiwać nazwę Es-Annon?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26562 /* ~"Czy musi być uwieczniane przez człowieka? Nie mógłby ku temu posłużyć nagrobek?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26561 /* ~"Czy musi być uwieczniane przez człowieka? Nie mógłby ku temu posłużyć nagrobek?"~ */ GOTO 16
  IF ~~ THEN REPLY #26563 /* ~"Przepełnia mnie żal z powodu zagłady twojego miasta i twych pobratymców. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26564 /* ~"Czy to ma jakieś znaczenie? Kolejny człowiek może opłakiwać nazwę, ale wtedy i on umrze." Łza zaczyna się powoli formować w kąciku jego oka, po czym spływa po jego policzku. "Nic nie można uczynić. Gdy umrą Opłakujący Es-Anno, samo Es-Annon również umrze."~ */
  IF ~~ THEN REPLY #26565 /* ~"A może tak właśnie powinno się stać? Skoro miasto, jak powiadasz, przestało istnieć, zapomnienie jest mu przeznaczone."~ */ GOTO 13
  IF ~~ THEN REPLY #26567 /* ~"Wygląda na to, że działania podejmowane w celu podtrzymanie pamięci Es-Annon są dla ocalałych ryzykowne. Czy to jest tego warte?"~ */ GOTO 13
  IF ~~ THEN REPLY #26568 /* ~"A co powiesz na nagrobek?"~ */ GOTO 16
  IF ~~ THEN REPLY #26569 /* ~"Przepełnia mnie żal z powodu zagłady twojego miasta i twych pobratymców. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #26570 /* ~Otaczająca jego twarz warstwa brudu pęka, on zaś dobywa z siebie warknięcie. "O niczym nie wiesz! Nic z jego piękna nie widziałeś! Nic z jego wspaniałości! Czy odrzuciłbyś takie wspomnienia, tak przepiękne wspomnienia, gdybyś je posiadał?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26571 /* ~"Śmierć jest przeznaczeniem każdej rzeczy. Są one skazane na zapomnienie. To właśnie ma rada dla ciebie, Opłakujący Es-Annon... Skoro zabierzesz pamięć o mieście do swego grobu, na co się zda taka służba?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26573 /* ~"Śmierć jest przeznaczeniem każdej rzeczy. Są one skazane na zapomnienie. To właśnie ma rada dla ciebie, Opłakujący Es-Annon... Skoro zabierzesz pamięć o mieście do swego grobu, na co się zda taka służba?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26574 /* ~"Śmierć jest przeznaczeniem każdej rzeczy. Są one skazane na zapomnienie. To właśnie ma rada dla ciebie, Opłakujący Es-Annon... Skoro zabierzesz pamięć o mieście do swego grobu, na co się zda taka służba?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26575 /* ~"Niemądrze byłoby, gdybym pozwolił, by - poprzez narażanie ostatnich, którzy są jej świadomi, na ryzyko - pamięć taka przestała istnieć. Byłoby lepiej, gdybyś spędził resztę swoich dni na wspominaniu Es-Annon razem z twymi braćmi."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26576 /* ~"Niemądrze byłoby, gdybym pozwolił, by - poprzez narażanie ostatnich, którzy są jej świadomi, na ryzyko - pamięć taka przestała istnieć. Byłoby lepiej, gdybyś spędził resztę swoich dni na wspominaniu Es-Annon razem z twymi braćmi."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26577 /* ~"Niemądrze byłoby, gdybym pozwolił, by - poprzez narażanie ostatnich, którzy są jej świadomi, na ryzyko - pamięć taka przestała istnieć. Byłoby lepiej, gdybyś spędził resztę swoich dni na wspominaniu Es-Annon razem z twymi braćmi."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #26578 /* ~"W takim razie co powiesz na nagrobek?"~ */ GOTO 16
  IF ~~ THEN REPLY #26579 /* ~"W takim razie mniejsza z tym. Pozostawię cię sam na sam z twoimi przemyśleniami. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.2 13.3 13.4 13.5
  SAY #26580 /* ~Opłakujący pogrąża się w milczeniu, ty zaś dostrzegasz pojedynczą łzę formującą się w jego oku. Po chwili zaczyna on mówić brzmiącym niczym żwir, przepełnionym emocjami głosem. "W tym... co mówisz, kryje się prawda."~ */
  IF ~~ THEN REPLY #26581 /* ~"Ciężka to prawda, zarówno by jej słuchać, jak i zaakceptować."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #26582 /* ~Łza, która kręciła się w jego oku, znika nagle. Dzieje się to tak szybko, że nachodzi cię wątpliwość, czy w ogóle tam była. "Mimo wszystko zgodzę się na to. I postaram się, by moi bracia również wyrazili zgodę."~ */
  IF ~  Global("Crier_Answer","GLOBAL",1)
~ THEN REPLY #26583 /* ~"Świetnie. W takim razie żegnaj."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26585 /* ~Przekonałem Opłakującego Es-Annon, aby porzucił swą pielgrzymkę. Nie było już dłużej potrzeby, aby przemierzał sfery i dokładał starań kultywując pamięć o czymś, co w końcu zostanie zapomniane. Zgodził się ze mną i wkrótce powiadomi o tym swoich braci.~ */ EXIT
  IF ~  Global("Crier_Answer","GLOBAL",2)
~ THEN REPLY #26584 /* ~"Świetnie. W takim razie żegnaj."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26586 /* ~Przekonałem Opłakującego Es-Annon, aby porzucił swą pielgrzymkę. Powiedziałem, że zarówno on jak i pozostali Opłakujący, nie powinni wystawiać pamięci Es-Annon na ryzyko podróżując po sferach. Zgodził się ze mną i wkrótce pójdzie powiedzieć o tym swoim braciom.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 11.2 12.2 13.6
  SAY #26587 /* ~Opłakujący mruga oczami. "Na... grobek?"~ */
  IF ~~ THEN REPLY #26588 /* ~"To kamień, który przechowuje imię człowieka, historię jego życia, także panegiryk na cześć zmarłego. Skoro służy ludziom, czemu by nie miał posłużyć martwemu miastu?"~ */ GOTO 17
  IF ~~ THEN REPLY #26589 /* ~"Mniejsza z tym. Zapomnij o moich słowach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26590 /* ~"Kamienie są w stanie dokonać czegoś takiego?"~ */
  IF ~~ THEN REPLY #26591 /* ~"Tak. Czas ich istnienia jest znaczenie dłuższy niż żywota człowieka. Jeśli wyryje się nazwę miasta w kamieniu, czy wypełni się służba pamięci Es-Annon?"~ */ GOTO 18
  IF ~~ THEN REPLY #26592 /* ~"Mniejsza z tym. Zapomnij o moich słowach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26593 /* ~Mężczyzna przerywa. "Czy inni będą mogli ujrzeć tę nazwę?"~ */
  IF ~~ THEN REPLY #26594 /* ~"Tak. Każdy będzie mógł ją zobaczyć - jeszcze prze wiele lat po twojej śmierci."~ */ GOTO 19
  IF ~~ THEN REPLY #26595 /* ~"Mniejsza z tym. Zapomnij o moich słowach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26596 /* ~Przytakuje. "Jeśli można zrobić coś takiego..." Odwraca się w twoją stronę. "Gdzie szukać takiego kamienia?"~ */
  IF ~~ THEN REPLY #26597 /* ~"Mogę się za jakimś rozejrzeć. Jeśli znajdę takowy, postaram się, by wyryto na nim nazwę Es-Annon."~ */ GOTO 20
  IF ~~ THEN REPLY #26598 /* ~"W zamian za parę miedziaków pójdę poszukać nagrobka i postaram się, by wyryto na nim nazwę Es-Annon."~ */ GOTO 21
  IF ~~ THEN REPLY #26599 /* ~"Mniejsza z tym. Zapomnij o moich słowach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26600 /* ~"Zro... zro... zrobiłbyś to? Ja..." Jego oczy ponownie wypełniają się łzami. "Twoje działanie uwolniłoby wszystkich Opłakujących Es-Annon. A zostało nas zaledwie dwudziestu... Nadejdzie kres dźwigania balastu pamięci - po TYLU latach..."~ */
  IF ~~ THEN REPLY #26601 /* ~"Zrobię tak. Wrócę, gdy nazwa zostanie wyryta."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ JOURNAL #26539 /* ~Zgodziłem się znaleźć Opłakującemu nagrobek, na którym można będzie wyryć nazwę Es-Annon.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26602 /* ~"Zro... zro... zrobiłbyś to? Ja..." Jego oczy ponownie wypełniają się łzami. "Twoje działanie uwolniłoby wszystkich Opłakujących Es-Annon. A zostało nas zaledwie dwudziestu... Nadejdzie kres dźwigania balastu pamięci - po TYLU latach... I cała zapłata, jakiej żądasz, to zaledwie kilka miedziaków?"~ */
  IF ~~ THEN REPLY #26603 /* ~"Tak."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
GivePartyGold(5)
IncrementGlobalOnceEx("GLOBALEvil_Crier_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #26604 /* ~"Mniejsza z tym. Zrobię to za darmo. Wrócę, gdy nazwa zostanie wyryta."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26605 /* ~"A więc weź je." Opłakujący sięga wewnątrz swej szaty i wydobywa pięć miedzianych monet, następnie odlicza je tobie. "To wszystko, co mam. Mam nadzieję, że to wystarczy."~ */
  IF ~~ THEN REPLY #26606 /* ~"Będzie musiało. Nie martw się. Wrócę, gdy tylko umieszczę w kamieniu nazwę Es-Annon."~ */ JOURNAL #26608 /* ~W zamian za niewielką ilość miedzi, zgodziłem się znaleźć Opłakującemu nagrobek, na którym będzie można wyryć nazwę Es-Annon.~ */ EXIT
  IF ~~ THEN REPLY #26607 /* ~"Zależało mi tylko na twoich miedziakach... Żadnego nagrobka dla Es-Annon nie będzie. Żegnaj."~ */ DO ~Enemy()
IncrementGlobalOnceEx("GLOBALEvil_Crier_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crier_1","GLOBALLaw",-1)
Attack(Protagonist)
~ JOURNAL #26609 /* ~W zamian za pewną sumę miedzi, zgodziłem się znaleźć nagrobek, na którym wyryję dla Opłakującego nazwę Es-Annon... ale kiedy ten naiwniak wręczył mi swoje ostatnie monety wyśmiałem jego ciemnotę i powiedziałem, że nie będę załatwiał jego głupich spraw. Mógł przecież wiedzieć, że w Ulu nie można nikomu ufać.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #26611 /* ~W powietrzu zdaje się nagle słyszeć cichy szept. Wysychają oczy mężczyzny. Jedna z jego łez, która spływała akurat po jego policzku, po prostu znika. "Służba Es-Annon wypełniła się. Opowiem mym Współopłakującym o kamieniu, w którym, za twoją sprawą, wyryto nazwę. Jestem ci bardzo wdzięczny."~ */
  IF ~  Global("Evil_Crier_1","GLOBAL",0)
~ THEN REPLY #26612 /* ~"Ech... Dopilnowanie, by nazwa miasta została wyryta w kamieniu, kosztowało mnie parę miedziaków. Czy jesteś w stanie poświęcić kilka takowych, by pokryć moje wydatki?~ */ DO ~GivePartyGold(5)
IncrementGlobalOnceEx("Evil_Crier_1","GLOBAL",-1)
~ GOTO 24
  IF ~~ THEN REPLY #26613 /* ~"Drobnostka. Żegnaj... Mam nadzieję, że ty i twoi bracia spędzicie resztę waszych dni zaznając spokoju."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26615 /* ~Przytakuje i sięga w głąb swej szaty. "Oddaję ci wszystko, co mam." Odlicza pięć miedziaków i wręcza je tobie. "Przyjmij je wraz z moją wdzięcznością."~ */
  IF ~~ THEN REPLY #26616 /* ~"Praktycznie rzecz biorąc... nie ma za co. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #26617 /* ~"Miło będzie cię znowu ujrzeć. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END
