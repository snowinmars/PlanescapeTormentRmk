// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPILLAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPILLAR~

IF ~  Global("Pillar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51733 /* ~Widok tego czegoś - tego okropnego, górującego nad tobą, pulsującego *czegoś* - przyprawia cię o mdłości, wywołuje obrzydzenie, ale i zarazem jest jakoś dziwnie znajomy. Niezliczone gnijące głowy, z których stworzono słup, wydają się ciągle ruszać, na przemian to kłócąc się i płacząc, to rozmawiając, krzycząc i szepcząc coś do siebie. W nieskończonym cyklu jedne głowy pojawiają się na powierzchni, podczas gdy inne zapadają się gdzieś w plugawym wnętrzu.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #51734 /* ~Zwróć na siebie uwagę Słupa.~ */ EXTERN ~DMORTE~ 512
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53326 /* ~Zwróć na siebie uwagę Słupa.~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #53327 /* ~Odejdź od Słupa zanim cię zauważy.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 53.1 53.2
  SAY #53328 /* ~Ostrożnie stawiasz jeszcze jeden krok w kierunku słupa, który nagle *milknie*. Tuzin głów, które właśnie znajdują się na jego powierzchni, powoli obraca się w twoją stronę. Patrzą na ciebie w ciszy, a ty czujesz na sobie ich cuchnący, wilgotny oddech.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53329 /* ~"Mam kilka pytań, Słupie..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53330 /* ~"Mam kilka pytań, Słupie..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53331 /* ~"Mam kilka pytań, Słupie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53332 /* ~"Mam kilka pytań, Słupie..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53333 /* ~"Mam kilka pytań, Słupie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53334 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #68082 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 56.0 56.1 61.0 61.1 63.0 63.1
  SAY #53335 /* ~Wszystkie głowy z powierzchni słupa zaczynają mówić w tym samym momencie, tworząc jeden głos - okropny dźwięk, który wydobywa się z ich ust, śmierdzi cuchnącymi oparami i zgnilizną. "TA WOŃ JEST SILNA. PONIESIE SIĘ PRZEZ SFERY, I JUŻ WKRÓTCE PRZYBĘDZIE BEL."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53336 /* ~"Woń? O co wam chodzi?"~ */ GOTO 3
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53337 /* ~"Woń? O co wam chodzi?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53338 /* ~Oczy wszystkich głów obracają się, by spojrzeć na Nie-Sławę. "TEN ZAPACH... JEJ WOŃ... *WOŃ* TANAR'RI. GORZKO-SŁODKA WOŃ *PONIESIE SIĘ* I PRZYCIĄGNIE BAATEZU, JUŻ WKRÓTCE. ICH WŁADCA, BEL, BĘDZIE ZŁY."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53339 /* ~"Rozumiem..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53340 /* ~"Rozumiem..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #53341 /* ~Oczy wszystkich głów obracają się, by spojrzeć na Annę. "TEN ZAPACH... JEJ WOŃ... *WOŃ* KRWI TANAR'RI. GORZKO-SŁODKA WOŃ *PONIESIE SIĘ* I PRZYCIĄGNIE BAATEZU, JUŻ WKRÓTCE. ICH WŁADCA, BEL, BĘDZIE ZŁY."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53342 /* ~"Rozumiem..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53343 /* ~"Rozumiem..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #53344 /* ~Głowy zwracają na ciebie swój wzrok, choć parę z nich ciągle coś mamroczą. "JEŚLI MASZ DO NAS *PYTANIA*, TO LEPIEJ SIĘ *POSPIESZ*. Kilka głów spogląda na ciebie spod zmrużonych oczu i coś bulgotają, jakby się z ciebie śmiały.~ */
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",0)
~ THEN REPLY #53345 /* ~"Jak już wspominałem: Mam do..."~ */ DO ~SetGlobal("Pillar_Pharod","AR1001",1)
~ GOTO 6
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",1)
~ THEN REPLY #53346 /* ~"Jak już wspominałem: Mam do was kilka pytań..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #68075 /* ~"Jak już wspominałem: Mam do was kilka pytań..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53347 /* ~Zanim możesz dokończyć swoje słowa, część słupa zaczyna się poruszać i na powierzchnię wydostaje się następna głowa. Kiedy już zdążyła z niej ścieknąć oślizgła masa, rozpoznajesz w niej głowę Faroda. Najpierw wypluwa ona z siebie trochę krwawych cyst, a potem krzyczy zachrypłym głosem: "Anno, moje kochane dziecko! Czy to ty?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 263
END

IF ~~ THEN BEGIN 7 // from:
  SAY #53348 /* ~Kiedy Farod przemawia, większość głów milczy... Tylko kilka z nich szepcze coś do siebie, raz po raz spoglądając na Annę, to znowu na głowę jej przybranego ojca. "Myliłem się co do Kuli. To nie wystarczyło, a teraz patrz, gdzie skończyłem... Błagam cię, kochana Anno! Uratuj swojego biednego ojca! Uratuj mnie! Och, proszę, uratuj mnie! Urat..." Nie dokończywszy tych słów, głowa Faroda zaczyna z powrotem zapadać się do wnętrza Słupa...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 264
END

IF ~~ THEN BEGIN 8 // from:
  SAY #53352 /* ~"DOSYĆ," Grzmią cuchnące głowy słupa. "MAMY DOŚĆ TWOJEJ NIC NIE ZNACZĄCEJ GADANINY I CHCEMY WIEDZIEĆ, CZEGO OD NAS CHCESZ."~ */
  IF ~~ THEN REPLY #53353 /* ~"Pytania. Chcę was o coś spytać..."~ */ GOTO 12
  IF ~~ THEN REPLY #53354 /* ~"Mniejsza z tym. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #53355 /* ~Ostrożnie stawiasz jeszcze jeden krok w kierunku słupa, który nagle *milknie*. Tuzin głów, które właśnie znajdują się na jego powierzchni, powoli obraca się w twoją stronę. Patrzą na ciebie w ciszy, a ty czujesz na sobie ich cuchnący oddech... aż do chwili, gdy zauważają za tobą Mortego.~ */
  IF ~~ THEN DO ~SetGlobal("Pillar","GLOBAL",1)
SetGlobal("Pillar_Morte","AR1001",1)
~ EXTERN ~DMORTE~ 525
END

IF ~~ THEN BEGIN 10 // from:
  SAY #53356 /* ~Wszystkie głowy z powierzchni słupa zaczynają mówić w tym samym momencie, tworząc jeden głos - okropny dźwięk, który wydobywa się z ich ust, śmierdzi cuchnącymi oparami i zgnilizną. "TO ZNOWU *TY*... MINĘŁO JUŻ DUŻO CZASU." Wiele głów zaczyna coś bełkotać i ślinić się, skandując "...czaszka, czaszka, czaszka..." Jednocześnie ich wzrok jest utkwiony w Mortego. Widzisz, jak niektóre z nich oblizują się na jego widok.~ */
  IF ~~ THEN REPLY #53357 /* ~"Co masz na myśli?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53358 /* ~"CISZA! NIE MÓWIMY DO CIEBIE, ALE DO CZASZKI. WITAJ Z POWROTEM. CZY NARESZCIE ZDECYDOWAŁEŚ SIĘ POWRÓCIĆ DO NAS I POGODZIĆ SIĘ Z LOSEM, ŻEBY JESZCZE RAZ PODJĄĆ SWÓJ ŚWIĘTY OBOWIĄZEK?" Kilka głów wypływa z wnętrza Słupa na powierzchnię, zgrzytając zębami i zawodząc: "Tak, wróć do nas! Wróć do nas, czaszko! Czaszko..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 526
END

IF ~~ THEN BEGIN 12 // from: 1.2 1.3 1.4 5.1 5.2 8.0 14.0 30.0 37.3 38.2 39.1 40.1 43.1 44.1 45.1 46.1 47.0 48.0 49.0 56.2 56.3 56.4 61.2 61.3 61.4 63.2 63.3 63.4
  SAY #53359 /* ~Głowy powoli zmieniają swoje miejsce na powierzchni sługa, przytakując i mrucząc coś do siebie, a potem przemawiają upiornym głosem: "ZADAJ NAM PYTANIE, A POTEM PRZYGOTUJ SIĘ NA WYSŁUCHANIE NASZYCH ŻĄDAŃ - A ŻĄDANIE TO BĘDZIE POLEGAŁO NA WYŚWIADCZENIU NAM PEWNEJ PRZYSŁUGI."~ */
  IF ~~ THEN REPLY #53360 /* ~"Kim jesteście?"~ */ GOTO 13
  IF ~~ THEN REPLY #53361 /* ~"Jak mogę się dostać do Fortecy Żalu?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",2)
~ GOTO 15
  IF ~~ THEN REPLY #53362 /* ~"Kim ja jestem?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",3)
~ GOTO 15
  IF ~~ THEN REPLY #53363 /* ~"Kto jest moim zabójcą?"~ */ GOTO 49
  IF ~  Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #53364 /* ~"Jak mogę opuścić to miejsce?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",4)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53365 /* ~"Mniejsza z tym. Żegnajcie."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53366 /* ~"Mniejsza z tym. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53367 /* ~W odpowiedzi, przez zmurszałe usta głów wydobywa się zachrypnięty głos: "ODPOWIEMY NA TWOJE PYTANIE, JEŚLI WYŚWIADCZYSZ NAM PRZYSŁUGĘ..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53368 /* ~"Dobrze, czego żądacie?"~ */ EXTERN ~DMORTE~ 527
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #53369 /* ~"Dobrze, czego żądacie?"~ */ EXTERN ~DGRACE~ 172
  IF ~  NearbyDialog("Dnordom")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
~ THEN REPLY #53370 /* ~"Dobrze, czego żądacie?"~ */ EXTERN ~DNORDOM~ 131
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
~ THEN REPLY #53371 /* ~"Dobrze, czego żądacie?"~ */ EXTERN ~DANNAH~ 270
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
~ THEN REPLY #53372 /* ~"Dobrze, czego żądacie?"~ */ EXTERN ~DDAKKON~ 184
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53373 /* ~"Dobrze, czego żądacie?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53374 /* ~"Dobrze, czego żądacie?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
~ THEN REPLY #53375 /* ~"Dobrze, czego żądacie?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53376 /* ~"Mniejsza z tym. Żegnajcie."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53377 /* ~"Mniejsza z tym. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #53378 /* ~Głowy przerywają: "CISZA! SWOJĄ PROSTACKĄ MOWĄ OBRAŻASZ NASZ WYSOKI URZĄD!" A najbardziej szkaradna głowa woła: "A nazwanie *wszystkich* nas kłamcami było..." Niestety, nim kończy te słowa, zostaje wciągnięta do obmierzłego serca słupa.~ */
  IF ~~ THEN REPLY #53379 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53380 /* ~"Muszę już iść. Żegnajcie."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53381 /* ~"Muszę już iść. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 12.2 12.4
  SAY #53382 /* ~W odpowiedzi, przez zmurszałe usta głów wydobywa się zachrypnięty głos: "ODPOWIEMY NA TWOJE PYTANIE, JEŚLI WYŚWIADCZYSZ NAM PRZYSŁUGĘ..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53383 /* ~"Czego żądacie?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53384 /* ~"Czego żądacie?"~ */ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53385 /* ~"Czego żądacie?"~ */ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53386 /* ~"Czego żądacie?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53387 /* ~"Czego żądacie?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53388 /* ~"Czego żądacie?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53389 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53390 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #53391 /* ~Wszystkie głowy zwracają swój wzrok na Mortego. "CZASZKA... ŻĄDAMY CZASZKI JAKO TRYBUTU. ZWRÓĆ GO NAM, A DOSTANIESZ ODPOWIEDŹ NA SWOJE PYTANIE."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 528
END

IF ~~ THEN BEGIN 17 // from:
  SAY #53392 /* ~"SKOŃCZ SWOJE BEZSILNE PROTESTY, CZASZKO! NIE TOBIE O TYM DECYDOWAĆ!" Wszystkie głowy ze słupa powoli zwracają się w twoim kierunku. "JUŻ ZBYT DŁUGO UDAWAŁO MU SIĘ OSZUKIWAĆ PRZEZNACZENIE, ON JEST *NASZ*. JEŚLI NAM GO ZWRÓCISZ, BĘDZIEMY CI BARDZO WDZIĘCZNE... PRAGNIEMY NACIESZYĆ SIĘ JEGO KRZYKAMI..."~ */
  IF ~  Global("Where_Fhjull","AR1001",1)
~ THEN REPLY #53393 /* ~"Zgoda... możecie go sobie wziąć."~ */ GOTO 18
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53394 /* ~"Zgoda... możecie go sobie wziąć."~ */ EXTERN ~DMORTE~ 532
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53395 /* ~"Podarunek? Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53396 /* ~"Podarunek? Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53397 /* ~"Podarunek? Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53398 /* ~"Podarunek? Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53399 /* ~"Podarunek? Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53400 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53401 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #53402 /* ~"TAKKK..." Słup czaszek zaczyna się wić i gotować, głowy wystrzeliwują na powierzchnię tylko po to, by zawyć, po czym szybko z powrotem toną w czeluści. Słyszysz jak się ślinią i zawodzą: "Nie mogę się doczekać, żeby nacieszyć się jego krzykami!" Głos jednej z nich wybija się ponad inne: "Komuś tak denerwującemu jak on należą się *męki*! Wyrwę mu zęby i wsadzę do środka, a potem potrząsnę nim jak grzechotką!" A inna woła: "Oo! Oo! Wyżrę mu oczy!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 529
END

IF ~~ THEN BEGIN 19 // from: 13.5 15.1 17.2
  SAY #53403 /* ~Słup nachyla się do ciebie, a oczy jego głów zaczynają się zwężać. "MASZ *WIEDZĘ*, KTÓRĄ CHCEMY POSIĄŚĆ. GDZIE PRZEBYWA BIES O IMIENIU FHJULL ROZDWOJONY JĘZYK? POWIEDZ NAM, A ODPOWIEMY NA TWOJE PYTANIE." Kiedy słup czeka na odpowiedź, twoje ciało otacza jego gorący, cuchnący oddech...~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53404 /* ~"W Krainach Zewnętrznych, gdzie Ul-Goris, ojciec wszystkich goristro poległ w Wojnie Kraterów. Fhjull mieszka w jego szkielecie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53405 /* ~"W Krainach Zewnętrznych, gdzie Ul-Goris, ojciec wszystkich goristro poległ w Wojnie Kraterów. Fhjull mieszka w jego szkielecie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  CheckStatLT(Protagonist,18,CHR)
~ THEN REPLY #53406 /* ~Kłamstwo: "Jest... Ukrył się gdzieś w Krainach Zewnętrznych. Pod wielką górą."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,17,CHR)
~ THEN REPLY #53407 /* ~Kłamstwo: "Fhjull ukrył się w pewnej pół-sferze stworzonej dawno temu przez czarnoksiężnika, który już nie żyje. W Sigil ukazuje się tylko od czasu do czasu i właśnie tam udało mi się go spotkać."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53408 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53409 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53410 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53411 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53412 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53413 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.6 15.2 17.3 19.4 24.2
  SAY #53414 /* ~Przez chwilę głowy na słupie milczą - słychać tylko świst ohydnych oparów wydobywających się z rys na jego stęchłej powierzchni. W końcu słup odpowiada: "W TWOIM POSIADANIU ZNAJDUJE SIĘ PRZEDMIOT, KTÓRY CHCEMY MIEĆ. TO KOSTKA MODRONA: DAJ JĄ NAM, A ODPOWIEMY NA TWOJE PYTANIE."~ */
  IF ~~ THEN REPLY #53415 /* ~"Proszę."~ */ DO ~DestroyPartyItem("cube",FALSE)
~ GOTO 25
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53416 /* ~"Nie mogę tego zrobić. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53417 /* ~"Nie mogę tego zrobić. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53418 /* ~"Nie mogę tego zrobić. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53419 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53420 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.3 17.4 19.5 20.1 24.3
  SAY #53421 /* ~Głowy słupa wydają się być niezadowolone, ich oczy wodzą po całym otoczeniu. Nagle ich wzrok spoczywa na Nie-Sławie. "ONA BĘDZIE DOBRA... TAK. TANAR'RI. DAJ JĄ NAM... ZJEMY JĄ ŻYWCEM, SKĄPIEMY SIĘ W JEJ SŁODKIEJ KRWI... POTEM ODPOWIEMY NA TWOJE PYTANIE." Wiele głów zaczyna zawodzić i wołać do Sławy: "Tak, Tanar'ri, słodki sukkubie, nie sprzeciwiaj się nam..."~ */
  IF ~~ THEN REPLY #53422 /* ~"Dobrze. Weźcie ją sobie."~ */ EXTERN ~DGRACE~ 173
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53423 /* ~"Nie mogę tego zrobić. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53424 /* ~"Nie mogę tego zrobić. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53425 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53426 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.4 17.5 19.6 20.2 21.1 24.4
  SAY #53427 /* ~Z wnętrza słupa dochodzi głębokie dudnienie, na powierzchnię wydostaje się jeszcze więcej głów, które wręcz patroszą was swoimi szkarłatnymi oczyma. W końcu ich wzrok odnajduje Annę. "KADUK! ODDAJ NAM TĘ KADUCZĄ DZIEWCZYNĘ, TAK... ROZEDRZEMY JĄ NA STRZĘPY, BĘDZIEMY SIĘ ROZKOSZOWAŁY JEJ SŁODKĄ, OGNISTĄ KRWIĄ... POTEM ODPOWIEMY NA TWOJE PYTANIE."~ */
  IF ~~ THEN REPLY #53428 /* ~"Dobrze. Weźcie ją sobie."~ */ EXTERN ~DANNAH~ 271
  IF ~~ THEN REPLY #53429 /* ~"Nie mogę tego zrobić. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53430 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53431 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.7 15.5 17.6 19.7 20.3 21.2 22.1 24.5
  SAY #53432 /* ~Usta wszystkich głów na powierzchni słupa rozdzielają się w ohydnym uśmiechu. Coś do siebie chichotają i burczą, ale jest pewne, że się z ciebie śmieją. "NIE MASZ *NIC*, CO BYŁOBY NAM POTRZEBNE... OPRÓCZ SAMEGO SIEBIE. PÓJDŹ, NIEŚMIERTELNY... DAJ NAM ZASMAKOWAĆ TWOJEJ NIEUMIERAJĄCEJ KRWI. POTEM ODPOWIEMY NA TWOJE PYTANIE." Głowy zaczynają zgrzytać zębami, śliniąc się i oblizując swoje wargi pokryte śluzem...~ */
  IF ~~ THEN REPLY #53433 /* ~"Dobrze. Zgadzam się na wasze żądania."~ */ GOTO 26
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53434 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53435 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY #53436 /* ~Słup Czaszek wybucha szyderczym śmiechem. "NIE PRÓBUJ NAS OKŁAMYWAĆ, GŁUPCZE. GDZIE - JEST - *FHJULL*? POWIEDZ NAM, A ZAPOMNIMY O TWOIM ŁGARSTWIE I ODPOWIEMY NA TWOJE PYTANIE."~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53437 /* ~"W Krainach Zewnętrznych, gdzie Ul-Goris, ojciec wszystkich goristro poległ w Wojnie Kraterów. Fhjull mieszka w jego szkielecie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53438 /* ~"W Krainach Zewnętrznych, gdzie Ul-Goris, ojciec wszystkich goristro poległ w Wojnie Kraterów. Fhjull mieszka w jego szkielecie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53439 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53440 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53441 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53442 /* ~"Nie powiem. Jaki *inny* podarunek zgodziłybyście się przyjąć?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53443 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53444 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.0
  SAY #53445 /* ~Rzucasz kostkę w kierunku Słupa Czaszek, w którym na jego przyjęcie otwiera się wielka, cuchnąca wyrwa. Już za chwilę ani po wyrwie, ani po kostce nie ma ani śladu. Głowy bulgoczą coś radośnie, powoli zamieniając się miejscami na powierzchni słupa.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #53446 /* ~"W TAKIM RAZIE PODEJDŹ... TAK, PODEJDŹ BLIŻEJ..." Kiedy zbliżasz się do Słupa, wydaje ci się, że głowy na jego powierzchni się chowają...~ */
  IF ~~ THEN REPLY #53447 /* ~Podejdź bliżej.~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53448 /* ~"Zastanowiłem się nad tym jeszcze raz. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53449 /* ~"Zastanowiłem się nad tym jeszcze raz. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #53450 /* ~Choć udało ci się wykonać tylko jeden krok bliżej, nagle spostrzegasz, że jesteś o wiele za blisko wijącej się powierzchni słupa. Zanim możesz coś zrobić, napiera na ciebie jak fala połamanych kości i gnijącego mięsa, w którym zagnieździły się już robaki. Powoli ogarnia cię cuchnąca ciemność, a głowy ze słupa zaczynają zjadać się żywcem...~ */
  IF ~~ THEN REPLY #53451 /* ~Zapadnij w ciemność...~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,15)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #53452 /* ~Stoisz przed Słupem Czaszek, wszystko cię boli i do końca nie wiesz, co się przed chwilą stało. Masz tylko jedną pewność, że w wyniku tego, co przeszło twoje ciało, stało się ono jakoś *słabsze*. Groteskowe głowy spoglądają z góry na ciebie szczerząc zęby i oblizując usta...~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 19.0 19.1 19.3 24.0 24.1 25.0 28.0
  SAY #53453 /* ~Przez chwilę słup rozkoszuje się twoim podarunkiem, a wszystkie głowy mruczą i szepczą coś do siebie.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53454 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ JOURNAL #53458 /* ~Słup Czaszek powiedział mi, że zbudowano go z głów ludzi, którzy kłamstwem zaprowadzili innych do śmierci. Słup może odpowiedzieć na wiele pytań, ale też i niemało wymaga w zamian za swoją wiedzę.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53455 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53456 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53457 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Leave_Baator","GLOBAL",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 30 // from: 29.0 52.0
  SAY #53460 /* ~"JESTEŚMY TYMI, KTÓRZY W TRAKCIE SWEGO DAWNO JUŻ ZAPOMNIANEGO ŻYCIA ZROBILI COŚ, CO DOPROWADZIŁO DO ŚMIERCI KOGOŚ INNEGO. NIEKTÓRZY NAZYWAJĄ NAS 'KŁAMCAMI' - ALE CZYMŻE JEST 'PRAWDA' JEŚLI NIE INNĄ NAZWĄ NA KŁAMSTWO? PRAWDA TAK CZĘSTO PRZYKRYWA PODSTĘP..." Głowy szemrają coś do siebie i potakują, a potem zwracają wzrok na ciebie. "WIEMY WIELE... ALE I DUŻO ŻĄDAMY OD TEGO, KTO BĘDZIE CHCIAŁ ZADAĆ NAM PYTANIE."~ */
  IF ~~ THEN REPLY #53461 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53462 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53463 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 52.1
  SAY #53464 /* ~"POSIADASZ JUŻ PRZY SOBIE KLUCZ, MUSISZ TYLKO ODSZUKAĆ POŁOŻENIE PORTALU, KTÓRY CIĘ TAM ZAPROWADZI. NIE WIEMY, GDZIE GO SZUKAĆ, ALE MOŻEMY WYJAWIĆ CI KLUCZ DO NIEGO, TO 'ŻAL'" Wiele głów zaczyna płakać i zawodzić: "Tak, żal! Żal!"~ */
  IF ~~ THEN REPLY #53465 /* ~"Żal?"~ */ DO ~SetGlobal("Chaotic_Adyzoel_1","GLOBAL",1)
~ JOURNAL #53459 /* ~Słup Czaszek stwierdził, że 'żal' to klucz do portalu, który prowadzi do Fortecy Żalu. Nie myślę kwestionować tej opinii. Tak, czy siak, Słup Czaszek nie potrafił mi wskazać drogi do portalu.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #53469 /* ~"TAK... BY DOSTAĆ SIĘ DO FORTECY, MUSISZ ŻAŁOWAĆ. WYPISZ TO, ZA CO ŻAŁUJESZ, NA SKRAWKU SWOJEGO CIAŁA, A OTWORZYSZ SOBIE PRZEJŚCIE PRZEZ PORTAL."~ */
  IF ~~ THEN REPLY #53470 /* ~"A portal... mówicie, że *nie* wiecie, gdzie on jest?"~ */ DO ~SetGlobal("Know_Fortress_Location_Forgot","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #53473 /* ~"TAK... TYLKO TRZY OSOBY WIEDZIAŁY, JAK SIĘ TAM DOSTAĆ. TY JESTEŚ JEDNĄ Z NICH... CHOĆ TERAZ OPUŚCIŁA CIĘ TWOJA PAMIĘĆ. DRUGA OSOBA, KTÓRA ZNAŁA DROGĘ, LEŻY POZA PORTALEM I NIE POJAWI SIĘ. TRZECIA..."~ */
  IF ~~ THEN REPLY #53474 /* ~"Trzecia...?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #53478 /* ~"...TRZECIĄ OSOBĘ UDAŁO CI SIĘ JUŻ SPOTKAĆ. ON WIE O TYM, CO SIĘ Z TOBĄ DZIEJE, O FORTECY I O TYM, ŻE MUSISZ SIĘ TAM DOSTAĆ... ALE NIE POMOŻE CI. JEGO TARCZA JEST WYKUTA Z ZIMNYCH METALI KŁAMSTW I OSZUSTW, NIE POKONASZ JEJ SAMYMI SŁOWAMI. MUSISZ Z NIM STOCZYĆ BITWĘ."~ */
  IF ~~ THEN REPLY #53479 /* ~"Kto to jest?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #53483 /* ~Przez chwilę głowy milczą, uśmiechając się tylko do ciebie. W końcu zaczynają mówić: "KŁAMCA *POJAWIŁ SIĘ* JUŻ NA TWOJEJ DRODZE - I TO NIE PIERWSZY RAZ. KŁAMCA WIE... ALE CI NIE POWIEDZIAŁ. *MAŁA* ZDRADA POMIĘDZY NIEŚMIERTELNYMI..." Niektóre z rozkładających się głów przewracają oczyma i rechoczą z ciebie.~ */
  IF ~~ THEN REPLY #53484 /* ~"Fhjull Rozdwojony Język?"~ */ GOTO 36
  IF ~~ THEN REPLY #53485 /* ~"Lotar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53486 /* ~"Ravela?"~ */ GOTO 36
  IF ~~ THEN REPLY #53487 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53491 /* ~Słup Czaszek powiedział mi, że Trias, którego nazwał 'Triasem Zdrajcą' zapewne potrafiłby wskazać mi drogę do portalu prowadzącego do Fortecy Żalu.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 35.2 36.0 36.1 36.2
  SAY #53492 /* ~Głowy wybuchają chichotem. "NIE. ZGADUJ DALEJ..."~ */
  IF ~~ THEN REPLY #53493 /* ~"Fhjull Rozdwojony Język?"~ */ GOTO 36
  IF ~~ THEN REPLY #53494 /* ~"Lotar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53495 /* ~"Ravela?"~ */ GOTO 36
  IF ~~ THEN REPLY #53496 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53500 /* ~Słup Czaszek powiedział mi, że Trias, którego nazwał 'Triasem Zdrajcą' zapewne potrafiłby wskazać mi drogę do portalu prowadzącego do Fortecy Żalu.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.3 36.3
  SAY #53501 /* ~"O, TAK... CHOĆ MY ZNAMY JEGO *PEŁNE* IMIĘ: TRIAS ZDRAJCA!" Słup zaczyna trząść się radośnie, a gnijące głowy śmieją się z twojego nieszczęścia. Kilka z nich zaczyna skandować szyderczo: "Zdrajca... Zdrajca... Trias Zdrajca..."~ */
  IF ~~ THEN REPLY #53502 /* ~"Ale... Powiedział, że nie wie..."~ */ GOTO 38
  IF ~~ THEN REPLY #53503 /* ~"Dlaczego miałby mnie okłamywać?"~ */ GOTO 39
  IF ~~ THEN REPLY #53504 /* ~"Jak się o tym dowiedział?"~ */ GOTO 40
  IF ~~ THEN REPLY #53505 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53506 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53507 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #53508 /* ~"*OKŁAMAŁ* CIĘ." Parę głów patrzy na ciebie z ukosa, lekko chichocząc i naśmiewając się z ciebie. "STRZEŻ SIĘ SŁÓW NASĄCZONYCH MIODEM, BO PRZYCIĄGAJĄ WSZYSTKIE RODZAJE OS."~ */
  IF ~~ THEN REPLY #53509 /* ~"Dlaczego miałby mnie okłamywać?"~ */ GOTO 39
  IF ~~ THEN REPLY #53510 /* ~"Jak się o tym dowiedział?"~ */ GOTO 40
  IF ~~ THEN REPLY #53511 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53512 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53513 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.0 40.0
  SAY #53514 /* ~"NIE MOŻEMY DAĆ CI ODPOWIEDZI. TO TY MUSISZ GO ODSZUKAĆ I SPYTAĆ."~ */
  IF ~~ THEN REPLY #53515 /* ~"Jak się o tym dowiedział?"~ */ GOTO 40
  IF ~~ THEN REPLY #53516 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53517 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53518 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2 38.1 39.0
  SAY #53519 /* ~"KIEDYŚ, DAWNO TEMU, GDY ZNAŁEŚ JESZCZE DROGĘ, ROZMAWIAŁAŚ Z TRIASEM. TWOJE SŁOWA POCHODZIŁY PROSTO Z SERCA, A ON - TAK JAK WSZYSCY ZDRAJCY - SŁUCHAŁ CIĘ, ŻEBY WZBUDZIĆ TWOJE ZAUFANIE. ROZMOWA BYŁA KRÓTKA, ALE WYPEŁNIONA *SENSEM*. TO WŁAŚNIE SENSU I ŚMIERCI POSZUKUJESZ... DLA NORMALNYCH LUDZI TO DWIE RÓŻNE RZECZY. ALE DLA CIEBIE... TO JEDNO."~ */
  IF ~~ THEN REPLY #53520 /* ~"Dlaczego miałby mnie okłamywać?"~ */ GOTO 39
  IF ~~ THEN REPLY #53521 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53522 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53523 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.2 52.2
  SAY #53524 /* ~"NIE *KIM* - CZYM. ZOSTAŁEŚ PODZIELONY. JESTEŚ JEDNYM Z WIELU LUDZI - JEDEN W WIELU LUDZIACH. KAŻDY Z NICH - CZY DOBRY CZY ZŁY - TO POTWÓR, KTÓRY RZUCA CIEŃ NA ISTNIENIE."~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN REPLY #53525 /* ~"Cień... na istnienie?"~ */ JOURNAL #53527 /* ~Słup Czaszek powiedział mi, że moja obecność "rzuca cienie na całość istnienia", i że za każdym razem, kiedy przychodzi mi umrzeć, śmierć zabiera kogoś innego na moje miejsce. Ci, którzy w ten sposób umierają, stają się istotami w sferze cieni i wedle wszelkiego prawdopodobieństwa czekają na mnie gromadnie w Fortecy Żalów.~ */ GOTO 42
  IF ~  !NearbyDialog("Dvhail")
~ THEN REPLY #53526 /* ~"Cień... na istnienie?"~ */ JOURNAL #53527 /* ~Słup Czaszek powiedział mi, że moja obecność "rzuca cienie na całość istnienia", i że za każdym razem, kiedy przychodzi mi umrzeć, śmierć zabiera kogoś innego na moje miejsce. Ci, którzy w ten sposób umierają, stają się istotami w sferze cieni i wedle wszelkiego prawdopodobieństwa czekają na mnie gromadnie w Fortecy Żalów.~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #53528 /* ~"O TAK." Na twarzach ze słupa pojawia się groteskowy uśmiech. "ZA KAŻDYM RAZEM, KIEDY UMIERASZ, 'NIEŚMIERTELNY', RZUCASZ CIEŃ... ZA KAŻDYM RAZEM, KIEDY UMIERASZ, 'KTOŚ INNY' GINIE ZAMIAST CIEBIE. TE CIENIE... ZBIERAJĄ SIĘ I CZEKAJĄ NA CIEBIE W FORTECY ŻALU. ILE RAZY STRACIŁEŚ ŻYCIE, O BEZIMIENNY? ILE SETEK... TYSIĘCY... ZGINĘŁO, *PRZEZ CIEBIE*?" Słup zaczyna się trząść z dzikiej radości, jego głowy robią różne miny i naśmiewają się z ciebie. Nagle włosy na twojej głowie stają dęba... Odwracasz się i spostrzegasz Vhailora, którego wpatrzone w ciebie oczy płoną jaśniej niż kiedykolwiek...~ */
  IF ~~ THEN REPLY #53529 /* ~"Vhailor...?"~ */ EXTERN ~DVHAIL~ 11
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #53530 /* ~"O TAK." Na twarzach ze słupa pojawia się groteskowy uśmiech. "ZA KAŻDYM RAZEM, KIEDY UMIERASZ, 'NIEŚMIERTELNY', RZUCASZ CIEŃ... ZA KAŻDYM RAZEM, KIEDY UMIERASZ, 'KTOŚ INNY' GINIE ZAMIAST CIEBIE. TE CIENIE... ZBIERAJĄ SIĘ I CZEKAJĄ NA CIEBIE W FORTECY ŻALU. ILE RAZY STRACIŁEŚ ŻYCIE, O BEZIMIENNY? ILE SETEK... TYSIĘCY... ZGINĘŁO, *PRZEZ CIEBIE*?" Słup zaczyna się trząść z dzikiej radości, jego głowy robią różne miny i naśmiewają się z ciebie.~ */
  IF ~~ THEN REPLY #53531 /* ~"Czy to wszystko, co macie mi do powiedzenia?"~ */ GOTO 44
  IF ~~ THEN REPLY #53532 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53533 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53534 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #53535 /* ~Głowy nagle przestają się śmiać. "NIE. NOSISZ WIELE IMION, A KAŻDE Z NICH ZOSTAWIŁO BLIZNĘ NA TWOIM CIELE:"~ */
  IF ~~ THEN REPLY #53536 /* ~"Mówcie dalej..."~ */ GOTO 45
  IF ~~ THEN REPLY #53537 /* ~"Czekajcie... Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53538 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53539 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #53540 /* ~"ZAGUBIONY... NIEŚMIERTELNY... OSTATNIA INKARNACJA... CZŁOWIEK TYSIĄCA ŚMIERCI... SKAZANY NA ŻYCIE... NIESPOKOJNY... JEDEN Z WIELU... WIĘZIEŃ ŻYCIA... TEN KTÓRY SPROWADZA CIENIE... ZRANIONY... PRZYNOSZĄCY NIESZCZĘŚCIE... YEMET..."~ */
  IF ~~ THEN REPLY #53541 /* ~Słuchaj dalej.~ */ GOTO 46
  IF ~~ THEN REPLY #53542 /* ~"Czekajcie... Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53543 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53544 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #53545 /* ~"JESTEŚ POSREBRZANYM SZKŁEM, KTÓRE ROZBIŁO SIĘ... A JEGO CZĘŚCI ROZSYPAŁY SIĘ POŚRÓD HISTORII. TYLKO JEDNA CZĘŚĆ JEST WAŻNA. ODZYSKAJ JĄ, A ODZYSKASZ ŻYCIE. BĘDZIESZ MUSIAŁ ZAPŁACIĆ CENĘ. ZA TĘ CENĘ ZDOBĘDZIESZ SZANSĘ. BEZ TEJ SZANSY, TWÓJ LOS JEST PRZESĄDZONY..."~ */
  IF ~~ THEN REPLY #53546 /* ~"Mówcie dalej..."~ */ GOTO 47
  IF ~~ THEN REPLY #53547 /* ~"Czekajcie... Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53548 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53549 /* ~"Mniejsza z tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #53550 /* ~"STRACIŁEŚ TO, CO MIAŁO BYĆ NIEODŁĄCZNĄ CZĘŚCIĄ CZŁOWIEKA. ZABRANO CI TWOJĄ ŚMIERTELNOŚĆ... ONA GDZIEŚ ISTNIEJE, ALE MUSISZ JĄ ODSZUKAĆ ZANIM STRACISZ TAKŻE ROZUM."~ */
  IF ~~ THEN REPLY #53551 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53552 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53553 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 52.3
  SAY #53554 /* ~"OPUŚĆ TO MIEJSCE I UDAJ SIĘ BEZPOŚREDNIO NA ZACHÓD, WZDŁUŻ GŁAZÓW, KTÓRE WYZNACZAJĄ WYPALONĄ KOTLINĘ. W KOŃCU DOJDZIESZ DO JEJ DALEKIEGO KOŃCA, TAM POSZUKASZ MIEJSCA POMIĘDZY KAMIENIAMI, KTÓRE TWORZĄ PORTAL. KLUCZEM DO NIEGO JEST OBSYDIAN, NIEDAWNO SPALONY PŁOMIENIAMI AVERNUSA - ZNAJDZIESZ GO WIELE WKOŁO PORTALU. UMIEŚĆ JEDEN ODŁAMEK W SWOICH USTACH I PRZYGRYŹ GO TAK, ŻEBY PRZECIĄŁ CI JĘZYK - W TEN SPOSÓB SAM STANIESZ SIĘ KLUCZEM."~ */
  IF ~~ THEN REPLY #53555 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53556 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53557 /* ~"Nie mam już więcej pytań. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 12.3
  SAY #53558 /* ~Słup ciągle dziwnie milczy, niektóre z głów na jego powierzchni po prostu odwróciły od ciebie wzrok, a inne wzruszają ramionami. W końcu zbierają się i zaczynają mówić: "MY... NIE WIEMY. GŁOWY, KTÓRE KIEDYŚ ZAWIERAŁY WIEDZĘ O TYM ZOSTAŁY ZNISZCZONE - KTOŚ JE Z NAS USUNĄŁ. NIE MOŻEMY ODPOWIEDZIEĆ CI NA TO PYTANIE."~ */
  IF ~~ THEN REPLY #53559 /* ~"W takim razie, mam jeszcze jedno pytanie..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53560 /* ~"W takim razie, żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53561 /* ~"W takim razie, żegnajcie."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.5 12.5 13.8 14.1 15.6 17.7 19.8 20.4 21.3 22.2 23.1 24.6 26.1 30.1 37.4 38.3 39.2 40.2 43.2 44.2 45.2 46.2 47.1 48.1 49.1
  SAY #53562 /* ~Kiedy zabierasz się już do odejścia, słup nagle cię zatrzymuje: "STÓJ - DAJ NAM CZASZKĘ. NIE POZWOLIMY, ŻEBY ODSZEDŁ. ON JEST *NASZ*. *NIE* OPUŚCI AVERNUSA." Głowy zaczynają zwodzić i kusić Mortego: "Tak, Czaszko, nie wstydź się... wracaj do nas... tu jest tak przyjemnie... wracaj, wracaj... to nie boli... to naprawdę dobra zabawa, być bez ciała i mieszkać w słupie z tysiącem innych, kłamliwych głów..."~ */
  IF ~~ THEN REPLY #53563 /* ~Złap Mortego i wrzuć go do Słupa Czaszek.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~~ THEN REPLY #53564 /* ~"Zapomnijcie o tym. Żegnajcie."~ */ DO ~SetGlobal("Pillar_Warning","GLOBAL",1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #53566 /* ~Wściekłe głowy zaczynają wyć i grzmieć, a ich głos niesie się poprzez wszystkie sfery. Nawet ziemia pod twoimi nogami zaczyna drżeć, a grzmiąca kakofonia dźwięków zaraz cię ogłuszy...~ */
  IF ~~ THEN REPLY #53567 /* ~Odejdź... szybko.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #53568 /* ~Głowy ze słupa zaczynają bełkotać i rżeć nieczystą radością, gdy Słup zaczyna wciągać krzyczącego Mortego do swojego ohydnego wnętrza, gdzie niewątpliwie czekają go niekończące się męki z 'rąk' innych odciętych głów. Kiedy wszystko zaczyna się uspokajać, głowy szepczą coś do siebie. Nagle Morte zostaje wyrzucony na powierzchnię i krzyczy: "Aiieee! Wyciągnij mnie stąd! Proszę! Proszę! Przysięgam, że już nigdy nie będę kła..." Ale nagle, tak szybko jak pojawił się na powierzchni, Morte niknie w czeluściach słupa.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53569 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Wtrąciłem Mortego z powrotem do Słupa Czaszek. Nie trzeba dodawać, że nie był tym zajściem zachwycony.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53570 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Wtrąciłem Mortego z powrotem do Słupa Czaszek. Nie trzeba dodawać, że nie był tym zajściem zachwycony.~ */ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53571 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Wtrąciłem Mortego z powrotem do Słupa Czaszek. Nie trzeba dodawać, że nie był tym zajściem zachwycony.~ */ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53572 /* ~"A moja odpowiedź...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
SetGlobal("Leave_Baator","GLOBAL",1)
~ JOURNAL #53574 /* ~Wtrąciłem Mortego z powrotem do Słupa Czaszek. Nie trzeba dodawać, że nie był tym zajściem zachwycony.~ */ GOTO 48
  IF ~  Global("Pillar_Question","AR1001",0)
~ THEN REPLY #53573 /* ~"Żegnaj, Słupie."~ */ DO ~SetGlobal("Pillar","GLOBAL",3)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #53575 /* ~Jeszcze raz stoisz przed Słupem Czaszek. Niezliczone gnijące głowy, z których stworzono słup, wydają się ciągle ruszać, na przemian to kłócąc się i płacząc, to rozmawiając, krzycząc i szepcząc coś do siebie. W nieskończonym cyklu jedne głowy pojawiają się na powierzchni, podczas gdy inne zapadają się gdzieś w plugawym wnętrzu.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #53576 /* ~Zwróć na siebie uwagę Słupa.~ */ EXTERN ~DMORTE~ 512
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",1)
~ THEN REPLY #53577 /* ~Zwróć na siebie uwagę Słupa.~ */ GOTO 1
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53578 /* ~Zwróć na siebie uwagę Słupa.~ */ GOTO 1
  IF ~~ THEN REPLY #53579 /* ~Odejdź od Słupa zanim cię zauważy.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",3)
~ THEN BEGIN 54 // from:
  SAY #53580 /* ~Jeszcze raz stoisz przed Słupem Czaszek. Niezliczone gnijące głowy, z których stworzono słup, wydają się ciągle ruszać, na przemian to kłócąc się i płacząc, to rozmawiając, krzycząc i szepcząc coś do siebie. W nieskończonym cyklu jedne głowy pojawiają się na powierzchni, podczas gdy inne zapadają się gdzieś w plugawym wnętrzu.~ */
  IF ~~ THEN REPLY #53581 /* ~Zwróć na siebie uwagę Słupa.~ */ GOTO 55
  IF ~~ THEN REPLY #53582 /* ~Odejdź od Słupa zanim cię zauważy.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #53583 /* ~Ostrożnie stawiasz jeszcze jeden krok w kierunku słupa, który nagle *milknie*. Tuzin głów, które właśnie znajdują się na jego powierzchni, powoli obraca się w twoją stronę. Patrzą na ciebie w ciszy, która nagle zostaje przerwana przez straszny krzyk. To Morte wyskakuje na powierzchnię: "Aaaaa! Szefie! Wyciągnij mnie stąd! Błagam! Błagam!"~ */
  IF ~~ THEN REPLY #53584 /* ~Zignoruj Mortego i poczekaj, aż znowu schowa się pod powierzchnią.~ */ GOTO 56
  IF ~~ THEN REPLY #53585 /* ~Spróbuj wyciągnąć Mortego.~ */ GOTO 57
  IF ~~ THEN REPLY #53586 /* ~Odwróć się i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 57.5
  SAY #53587 /* ~Morte, którego twarz jest zalana łzami zmieszanymi z krwią i cuchnącym śluzem, błaga o uwolnienie: "Szefie, proszę, błagam cię! Musisz mnie stąd wyciągnąć, proszę! Przysięgam, że już nigdy nie będę kła..." Ale nagle, tak szybko jak pojawił się na powierzchni, Morte niknie w czeluściach słupa.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53588 /* ~"Mam do was kilka pytań..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53589 /* ~"Mam do was kilka pytań..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53590 /* ~"Mam do was kilka pytań..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53591 /* ~"Mam do was kilka pytań..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53592 /* ~"Mam do was kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #53593 /* ~"Tylko tędy przechodzę. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #53594 /* ~Szybko wyciągasz swoje ręce i łapiesz Mortego zanim z powrotem zostanie wciągnięty do wnętrza Słupa. Inne głowy krzyczą z oburzeniem: "NIE! NIE! PRZESTAŃ! NIE ZABIERZESZ GO NAM JESZCZE RAZ!" Potem zaczynają dosięgać twoich rąk i nadgarstków i gryźć je swoimi okrutnymi, karbowanymi zębami...~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53595 /* ~Walcz dalej i wydrzyj Mortego ze słupa.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 58
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53596 /* ~Użyj swojej znajomości Sztuki i skieruj surową energię, by w ten sposób uwolnić Mortego.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53597 /* ~Wycofaj się i udaj, że ustępujesz, a potem wyszarpnij Mortego zanim Słup zorientuje się, co się dzieje.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 60
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPGT(Protagonist,10)
~ THEN REPLY #53598 /* ~Walcz dalej i wydrzyj Mortego ze słupa.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 61
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPLT(Protagonist,11)
~ THEN REPLY #53599 /* ~Walcz dalej i wydrzyj Mortego ze słupa.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 62
  IF ~~ THEN REPLY #53600 /* ~Poddaj się i pozwól Mortemu zniknąć pod powierzchnią Słupa.~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #53601 /* ~Słup Czaszek zaczyna zajadle walczyć, ale w końcu okazuje się, że nie jest w stanie sprostać tak potężnemu wojownikowi jak ty. Odpychasz atakujące głowy, kopiąc je, uderzając własną głową, a nawet gryząc je, aż w końcu udaje ci się wyciągnąć Mortego, czemu towarzyszy dźwięk rozrywanego mięsa. Niestety, bitwa sprawiła, że opuściły cię siły... zdajesz sobie sprawę z tego, że nie masz już tak wielu sił co przedtem.~ */
  IF ~~ THEN REPLY #53602 /* ~"Widzisz, Morte? I po co... się tak... martwiłeś..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #53603 /* ~Słup Czaszek zaczyna zajadle walczyć, ale w końcu okazuje się, że nie jest w stanie sprostać tak potężnej magii jak twoja. Używając swoich rąk, kierujesz w stronę Słupa czystą, rozproszoną mana, nękając go tak długo, aż udaje ci się uwolnić Mortego. Niestety, bitwa sprawiła, że opuściły cię siły... zdajesz sobie sprawę z tego, że nie masz już tak wielu sił co przedtem.~ */
  IF ~~ THEN REPLY #53604 /* ~"Widzisz, Morte? I po co... się tak... martwiłeś..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #53605 /* ~Widząc, że Słup szykuje się do zajadłej walki, udajesz, że się cofasz. Dokładnie w momencie, kiedy Morte zaczyna z powrotem tonąć w czeluściach Słupa, skaczesz do przodu i łapiesz go ze wszystkich sił. Robisz to tak szybko, że tylko jedna głowa miała czas wgryźć się w twoje przedramię... Wsadzasz jej kciuk w oko i w końcu udaje cię uwolnić swojego starego towarzysza. Niestety, ugryzienie ohydnej głowy sprawiło, że opuściły cię siły... zdajesz sobie sprawę z tego, że nie masz już tak wielu sił co przedtem.~ */
  IF ~~ THEN REPLY #53606 /* ~"Widzisz, Morte? I po co... się tak... martwiłeś..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.3
  SAY #53607 /* ~Słup Czaszek, nie chcąc ci oddać Mortego, podejmuje zaciętą walkę. W końcu musisz ustąpić. Kiedy widzisz, jak Morte zapada się z krzykiem na ustach pod powierzchnię słupa, robisz krok w tył. Twoje ramiona pokrywają krwawiące rany w miejscach, w których głowom udało się oderwać kawałki ciała. Nawet teraz naśmiewają się z ciebie, zlizując twoją krew ze swoich gnijących warg.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53608 /* ~"Mam do was kilka pytań..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53609 /* ~"Mam do was kilka pytań..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53610 /* ~"Mam do was kilka pytań..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53611 /* ~"Mam do was kilka pytań..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53612 /* ~"Mam do was kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #53613 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.4
  SAY #53614 /* ~Słup Czaszek, nie chcąc ci oddać Mortego, podejmuje zaciętą walkę. W końcu musisz ustąpić. Kiedy widzisz, jak Morte zapada się z krzykiem na ustach pod powierzchnię słupa, robisz krok w tył. Twoje ramiona pokrywają krwawiące rany w miejscach, w których głowom udało się oderwać kawałki ciała. Nawet teraz naśmiewają się z ciebie, zlizując twoją krew ze swoich gnijących warg...~ */
  IF ~~ THEN REPLY #53615 /* ~Giń.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",4)
~ THEN BEGIN 63 // from:
  SAY #53616 /* ~Głowy ze słupa zaczynają zgrzytać zębami i pluć na ciebie żółcią ze złości. "ON JEST NASZ! NASZ! NASZ!" Nagle, niespodziewanie się uspokajają: "DOBRZE. DELEKTUJ SIĘ SWOIM ZWYCIĘSTWEM, 'NIEŚMIERTELNY'. TAK CZY INACZEJ, I TAK W KOŃCU BĘDZIE NASZ."~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53617 /* ~"W porządku. Mam do was parę pytań..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53618 /* ~"W porządku. Mam do was parę pytań..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53619 /* ~"W porządku. Mam do was parę pytań..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53620 /* ~"W porządku. Mam do was parę pytań..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53621 /* ~"W porządku. Mam do was parę pytań..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #53622 /* ~"Tak, tak. Żegnajcie."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ EXIT
END
