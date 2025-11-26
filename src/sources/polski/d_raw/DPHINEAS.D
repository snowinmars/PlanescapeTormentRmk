// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHINEAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHINEAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2397 /* ~Widzisz przed sobą krępego mężczyznę, którego skóra jest pokryta wysypką i krostami. Jego ubranie wskazywałoby na jakiegoś urzędnika, ale jest brudne, pomięte i oblepione szczurzą sierścią. Kiedy tak na niego patrzysz, mężczyzna drapie się leniwie swoimi grubymi palcami.~ */
  IF ~  Global("Phineas","GLOBAL",0)
~ THEN REPLY #2398 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #2400 /* ~Zostaw tego mężczyznę w spokoju i rozejrzyj się po biurze.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2402 /* ~"Ajjjjj!" Człowieczek wydaje z siebie krzyk i podskakuje przestraszony, trzymając się za serce. Potem wciąga głęboki wdech i poprawia okulary na pokrytym wysypką nosie. "Tak, tak? Czym mogę służyć?" Mężczyzna drapie się po nosie i ogląda cię z zainteresowaniem, przypatrując się bliznom. "P... ee... prawie nic tu nie mam, więc jeśli przychodzisz tu grabić, to wybrałeś złe miejsce."~ */
  IF ~~ THEN REPLY #2403 /* ~"Nie przychodzę tu 'grabić'. Jak masz na imię?"~ */ GOTO 3
  IF ~~ THEN REPLY #2404 /* ~"'Prawie nic', co? Lepiej daj mi to, co *masz* i rozstańmy się jak przyjaciele."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Phineas_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #2405 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #2406 /* ~"Ajjjjj! Na wszystkie Moce... przestań się do mnie tak *skradać*!" Mężczyzna poprawia sobie okulary na nosie i spogląda na ciebie z wyrzutem. "W czym mogę pomóc *tym* razem, co?"~ */
  IF ~~ THEN REPLY #2401 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2450 /* ~"Przydałoby mi się to, co masz w kasie, a potem już sobie pójdę."~ */ GOTO 13
  IF ~~ THEN REPLY #2451 /* ~"Dzisiaj nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #2407 /* ~"Ja? Jestem Fineasz T. Lort Trzydziesty Dziewiąty, zarządzam oddziałem Biura do Spraw Szkodników i Zapobiegania Chorobom, który znajduje się w Ulu. Pragniemy cię poinformować..." Mężczyzna drapie się po klatce piersiowej i wzdycha. "Poinformować, że zbieramy, to znaczy *my* określające w biurokratycznym tego słowa znaczeniu całą machinę biurokratyczną Sigil, oferujemy nagrody za wszelkiego rodzaju szkodniki panoszące się na ulicach Sigil, które jest środkiem wieloświata, które jest centrum wszystkiego, i według którego mierzy się wszystkie pozostałe miasta."~ */
  IF ~~ THEN REPLY #2408 /* ~"Nagrody?"~ */ JOURNAL #66745 /* ~Rozmawiałem z Inspektorem ds. Tępienia Szkodników, Fineaszem T. Lortem, który oświadczył mi, że wypłaca nagrody pieniężne za każdy ogon czaszkoszczura okazany w biurze, przy stawce jeden miedziak za jeden ogon. W sumie nawet niewielka ilość pieniędzy ma przewagę nad całkowitym brakiem pieniędzy. Może jeżeli przyniosę mu więcej szczurzych ogonów, zmuszę go podwyższenia tej głodowej stawki.~ */ GOTO 4
  IF ~~ THEN REPLY #2409 /* ~"Rozumiem. Chyba wiem już wystarczająco dużo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2410 /* ~"Tak, tak... Trzeba nam, gdzie słowa *nam* określa w biurokratycznym tego słowa znaczeniu całą machinę biurokratyczną Sigil, dostarczyć namacalny dowód zabicia mózgoszkodników, znanych też jako czaszkoszczury, pochodzących z obszaru Ula, gdzie rozmnożyły się dość znacznie w ciągu ostatnich kilku lat - jak pokazują ostatnie badania populacji szkodników. Sigiliańska machina biurokratyczna upoważniła mnie do wypłacenia nagrody w wysokości..." Mężczyzna dramatycznie wciąga powietrze. "...jednego miedziaka za każdego czaszkoszczura dostarczonego do biura mojego oddziału."~ */
  IF ~~ THEN REPLY #2411 /* ~"'Czaszkoszczura'?"~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2412 /* ~"Nie przynoszę żadnych szczurów, ale mam kilka szczurzych ogonów."~ */ GOTO 7
  IF ~~ THEN REPLY #2413 /* ~"Rozumiem. Chyba lepiej już pójdę... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.3
  SAY #2414 /* ~"Czaszkoszczury to gatunek szkodników, które stają się tym inteligentniejsze, im więcej się ich znajdzie w jednym miejscu. Jeden czaszkoszczur może tylko wygryzać dziury w deskach czy w jedzeniu, ale niech się ich zejdzie pięć, dziesięć, albo więcej, a ich inteligencja wzrasta tak bardzo, że przerasta nawet inteligencję istot takich jak ja." Mężczyzna drapie się, po czym dodaje pogardliwie. "Pewnie wystarczyłyby dwa albo trzy czaszkoszczury, żeby przechytrzyć *ciebie*, panie."~ */
  IF ~~ THEN REPLY #2415 /* ~"Jeszcze jeden taki tekst, a będziesz mógł sobie założyć tyłek na głowę."~ */ GOTO 6
  IF ~~ THEN REPLY #2416 /* ~"Jak dużo czaszkoszczurów jest w Sigil?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2417 /* ~"Powiedz mi coś więcej o czaszkoszczurach."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2418 /* ~"Nie przynoszę żadnych szczurów, ale mam kilka szczurzych ogonów."~ */ GOTO 7
  IF ~~ THEN REPLY #2423 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2419 /* ~Fineasz zaczyna mrugać oczyma, wygląda na to, że wreszcie zauważył twój wygląd. "Hmmm. Wycofuję moje słowa, które były tu bardzo nie na miejscu, zwłaszcza w świetle uzyskania przez ciebie wyższości i przewagi fizycznej w ten sytuacji."~ */
  IF ~~ THEN REPLY #2420 /* ~"Jak dużo czaszkoszczurów jest w Sigil?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2421 /* ~"Powiedz mi coś więcej o czaszkoszczurach."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2422 /* ~"Nie przynoszę żadnych szczurów, ale mam kilka szczurzych ogonów."~ */ GOTO 7
  IF ~~ THEN REPLY #2424 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.3 6.2 16.4
  SAY #2425 /* ~"Pięknie! Wspaniale!" Fineasz zaczyna z radością klaskać w dłonie. "Zobaczmy..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
~ THEN REPLY #2452 /* ~Oddaj szczurzy ogon i odbierz nagrodę.~ */ DO ~IncrementGlobal("Sold_Rat","GLOBAL",1)
DestroyPartyItem("Tail",FALSE)
GiveGoldForce(1)
~ GOTO 15
  IF ~~ THEN REPLY #2453 /* ~"Jeszcze przez chwilę je zatrzymam. Mam do ciebie kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2454 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.0
  SAY #2432 /* ~"Więcej niż trzeba, żeby wyżywić łowcę nagród przez całe życie... a może nawet przez kilka żyć."~ */
  IF ~~ THEN REPLY #2433 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2434 /* ~"Rozumiem. Dziękuję za twój czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 6.1
  SAY #2435 /* ~"Im więcej czaszkoszczurów znajdzie się w jednym miejscu, tym stają się groźniejsze... Niektóre z nich nabywają umiejętności rzucania magicznych zaklęć, mogą uodpornić się na czary, które chce się na nie rzucić, a w dodatku umieją używać pewnych... chytrych podstępów." Mężczyzna poprawia sobie okulary na nosie. "Jak pewnie się domyślasz, zależy nam na zmniejszeniu ich populacji w Sigil."~ */
  IF ~~ THEN REPLY #2436 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2437 /* ~"Rozumiem. Dziękuję za twój czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.1 16.2
  SAY #2438 /* ~"To dość długa opowieść... Widzisz, urodziłem się tutaj, w Sigil..."~ */
  IF ~~ THEN REPLY #2439 /* ~"Uch..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 11 // from:
  SAY #2440 /* ~"...a potem zdałem sobie sprawę, że musiałem czymś obrazić swoich kolegów, bo zostałem 'awansowany' na kierownika tego oddziału i jestem tu już od kilku ostatnich... od *wielu* lat." Fineasz wzdycha, a potem zaczyna leniwie drapać się po nosie.~ */
  IF ~~ THEN REPLY #2441 /* ~"Uch... *ziewnięcie* ...Mam do ciebie kilka pytań..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 16
  IF ~~ THEN REPLY #2442 /* ~"Rozumiem. Dziękuję za twój czas. Żegnaj."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.5
  SAY #2443 /* ~"Moja wysypka? Zaraźliwa? Nie, nie... Przynajmniej mi się tak nie wydaje. Obawiam się, że to oznaka mojego stanowiska. Ta praca naprawdę zaczyna rzucać się człowiekowi na zdrowie." Fineasz znowu zaczyna się drapać.~ */
  IF ~~ THEN REPLY #2444 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2445 /* ~"Rozumiem. Dziękuję za twój czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.1
  SAY #2446 /* ~"Ee... ależ oczywiście..." Fineasz sięga do kasy znajdującej się pod ladą i usiłuje złowić tam coś ręką. Po chwili wyciąga rękę zaciskającą kilka monet i podaje je tobie. "Mam nadzieję, że poczujesz za to choć trochę winy. Bez tych skąpych funduszy biuro naszego oddziału nie będzie mogło opłacić kosztów swojej działalności."~ */
  IF ~~ THEN REPLY #2447 /* ~"Moje serce krwawi. Żegnaj."~ */ DO ~SetGlobal("Phineas","GLOBAL",4)
GiveGoldForce(53)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 24 25 26 30 even though they appear after this state */
~  Global("Phineas","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #2448 /* ~"Mogę się tylko domyślać, że obrabowanie mnie z wszystkiego jeszcze ci nie wystarczyło. Po co wracasz tym razem?"~ */
  IF ~~ THEN REPLY #51468 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #51469 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #2455 /* ~Fineasz nuci coś radośnie, gdy wasza transakcja dobiega końca. "Dziękuję, dziękuję, dobry panie. Miasto Sigil i ja szczerze doceniamy twoje wysiłki."~ */
  IF ~~ THEN REPLY #2456 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2457 /* ~"Dzięki. Wrócę jeśli zdobędę więcej szczurzych ogonów."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 7.1 8.0 9.0 11.0 12.0 14.0 15.0 24.1 25.1 30.1 31.0
  SAY #2458 /* ~"Hmmm? A te pytanie będą dotyczyły...?"~ */
  IF ~~ THEN REPLY #2459 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #2460 /* ~"Co tutaj robisz?"~ */ GOTO 10
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #2461 /* ~"Jak ktoś tak... znakomity jak ty skończył w takim miejscu?"~ */ GOTO 10
  IF ~~ THEN REPLY #2462 /* ~"Opowiedz mi o tych czaszkoszczurach."~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2463 /* ~"Przynoszę kilka szczurzych ogonów. Chcę za nie odebrać nagrodę."~ */ GOTO 7
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY #2464 /* ~"Czy ta twoja wysypka jest zaraźliwa?"~ */ GOTO 12
  IF ~~ THEN REPLY #2465 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 30 even though they appear after this state */
~  GlobalGT("Sold_Rat","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #51476 /* ~"Ajjjj! Proszę, nie zabijaj mnie..." Przestraszony Fineasz zaczyna krzyczeć i skakać. Spogląda na ciebie, jakby oczekiwał kogoś innego. "Dzięki Mocom, to tylko ty..." Przerywa i próbuje odzyskać spokój.~ */
  IF ~~ THEN REPLY #51477 /* ~"Nie zabijać cię? Czyżbyś miał jakieś kłopoty?"~ */ GOTO 18
  IF ~~ THEN REPLY #51478 /* ~"Mam już dość tego miejsca. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51479 /* ~Fineasz przełyka ślinę i spogląda wkoło. "To czaszkoszczury... Wygląda na to, że bardzo im zależy na pozbyciu się mojej osoby. Zbyt gorliwie wypełniałem moje obowiązki w Biurze do Spraw Szkodników i Zapobiegania Chorobom." Mężczyzna spogląda na ciebie proszącym wzrokiem.~ */
  IF ~~ THEN REPLY #51480 /* ~"O czym ty mówisz?"~ */ GOTO 19
  IF ~~ THEN REPLY #51481 /* ~"Wiem już wystarczająco dużo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #51482 /* ~"Dzisiaj znalazłem tu, w moim własnym biurze, dużego szczura. Złapałem go i zaciągnąłem do piwnicy, żeby się go pozbyć." Oczy Fineasza zaczynają się powiększać, a oddech staje się ciężki. "Na moich oczach zmienił się w duże stworzenie wielkości człowieka i powiedział, że przysłano go, by mnie zabić za zbrodnie przeciwko czaszkoszczurom!"~ */
  IF ~~ THEN REPLY #51483 /* ~"No i co zrobiłeś?"~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #51484 /* ~"Wiem już wystarczająco dużo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51485 /* ~"Zacząłem uciekać! Dziękuję Mocom, że udało mi się dobiec tutaj, do mojego biura. Zamknąłem za sobą drzwi, więc na pewno to stworzenie jest uwięzione na dole." Fineasz zaczyna się w ciebie wpatrywać i wodzić oczyma po twoich licznych bliznach. Wasze spojrzenia znowu się spotykają. "Zabij dla mnie tę bestię... Postaram się, żeby ci się to opłaciło."~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51486 /* ~"Co mi dasz, jeśli ci pomogę?"~ */ GOTO 21
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51487 /* ~"Co mi dasz, jeśli ci pomogę?"~ */ GOTO 22
  IF ~~ THEN REPLY #51488 /* ~"Zastanowię się, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #51489 /* ~Mężczyzna zamyśla się na chwilę, a potem na jego twarzy pojawia się uśmiech. "Zapomnę o twojej napaści na mnie i nie doniosę o tym władzom miasta..." Mężczyzna przerywa na chwilę, żeby ocenić twoją reakcję. "Oprócz tego zapłacę ci sto miedziaków."~ */
  IF ~~ THEN REPLY #51490 /* ~"W porządku. Pomogę ci."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51491 /* ~"Zastanowię się, żegnaj."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51492 /* ~"Nie chcę się mieszać w nie swoje sprawy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #51493 /* ~Mężczyzna zamyśla się na chwilę, a potem na jego twarzy pojawia się uśmiech. "Zapłacę ci dwieście miedziaków, jeśli pozbędziesz się tego potwora z mojej piwnicy."~ */
  IF ~~ THEN REPLY #51494 /* ~"W porządku. Pomogę ci."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51495 /* ~"Zastanowię się, żegnaj."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51496 /* ~"Nie chcę się mieszać w nie swoje sprawy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 24.0 25.0
  SAY #51497 /* ~Fineasz uśmiecha się i wykonuje przed tobą lekki ukłon. "Wspaniale. Oto klucz do piwnicy. Zajmij się tą bestią, a dostaniesz zapłatę."~ */
  IF ~~ THEN REPLY #51498 /* ~Zabierz klucz i odejdź.~ */ DO ~GiveItemCreate("PhinKey",Protagonist,1,0,0)
~ JOURNAL #53636 /* ~Poszedłem do Biura do Spraw Szkodników i Zapobiegania Chorobom, żeby zobaczyć się z Fineaszem T. Lortem. Sprawiał wrażenie oszalałego ze strachu i bez przerwy mówił coś bez składu i ładu o szczurołaku zamieszkującym w jego piwnicy. Zgodziłem się, w zamian za nagrodę, uśmiercić to stworzenie.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #51499 /* ~Widzisz przed sobą Fineasza. Spogląda na ciebie znad swoich okularów. "A więc jeszcze raz zaszczycasz mnie swoją obecnością. Może przychodzisz, żeby przyjąć moją ofertę i pomóc mi w zabiciu tej bestii, którą uwięziłem w mojej piwnicy?"~ */
  IF ~~ THEN REPLY #51500 /* ~"W porządku. Pomogę ci."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51501 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #51502 /* ~"Raczej nie, żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #51503 /* ~Widzisz przed sobą Fineasza. Spogląda na ciebie znad swoich okularów. "A więc jeszcze raz zaszczycasz mnie swoją obecnością. Może przychodzisz, żeby pomóc mi w zabiciu tej bestii, którą uwięziłem w mojej piwnicy?"~ */
  IF ~~ THEN REPLY #51504 /* ~"W porządku. Pomogę ci."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51505 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #51506 /* ~"Raczej nie, żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #51507 /* ~Widzisz przed sobą Fineasza. Spogląda na ciebie znad swoich okularów. "A więc jeszcze raz zaszczycasz mnie swoją obecnością. Czy udało ci się wypełnić zadanie, które ci dałem?"~ */
  IF ~  Dead("Thesik")
~ THEN REPLY #51508 /* ~"Tak, potwór nie żyje, a ja przychodzę po swoją nagrodę."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",4)
~ GOTO 27
  IF ~  !Dead("Thesik")
~ THEN REPLY #51509 /* ~"Jeszcze nie."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51510 /* ~Fineasz obdarza cię szerokim uśmiechem. "To wspaniała wiadomość. Jaką to nagrodę ci obiecywałem?"~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51511 /* ~"Sto miedziaków, a poza tym miałeś zapomnieć o tym, że... pożyczyłeś mi pieniądze ze swojej kasy."~ */ DO ~GivePartyGold(100)
AddexperienceParty(500)
~ GOTO 28
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51512 /* ~"Dwieście miedziaków."~ */ DO ~GivePartyGold(200)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #51513 /* ~"Dziękuję za twoje usługi. Jestem twoim dłużnikiem." Mężczyzna wykonuje przed tobą ukłon.~ */
  IF ~~ THEN REPLY #51514 /* ~"Żegnaj."~ */ JOURNAL #54870 /* ~Zabiłem szczurołaka i odebrałem od Fineasza nagrodę. Nawiasem mówiąc, biorąc pod uwagę, ile mnie ta rozprawa ze szczurołakiem kosztowała, zapłata była wyjątkowo skromna. Ale pieniądze pozostają pieniędzmi.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #51515 /* ~Mężczyzna marszczy brwi. "Będę bardzo zadowolony, jeśli jak najszybciej zajmiesz się tą sprawą. Do widzenia."~ */
  IF ~~ THEN REPLY #51516 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Snuff_Rat","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #64156 /* ~Widzisz przed sobą Fineasza, który poprawia okulary na nosie i spogląda na ciebie przyjaźnie. "Ach, mój przyjacielu. Co mogę dla ciebie zrobić *tym* razem, hmmm?"~ */
  IF ~~ THEN REPLY #64157 /* ~"Nie wyskoczyłeś ze swojej skóry, kiedy przyszedłem tym razem."~ */ GOTO 31
  IF ~~ THEN REPLY #64158 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #64159 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64160 /* ~Mężczyzna wzdycha, po czym obdarza cię uśmiechem. "Po twoim heroicznym czynie czuję się... spokojny. Muszę przyznać, że od lat nie czułem się tak spokojny." Nagle przerywa i zamyśla się na chwilę. "Dziękuję ci za to. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #64161 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #64162 /* ~"Nic, żegnaj."~ */ EXIT
END
