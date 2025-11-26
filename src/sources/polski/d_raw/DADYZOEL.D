// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~Ten nieco kobiecy, dobrze odziany młody człowiek przygląda się pogardliwie przechodniom. Jego dłoń spoczywa na bogato zdobionej, wyłożonej klejnotami rękojeści szabli. W jedwabnych szatach i zamszowych butach wygląda wybitnie nie na miejscu.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~"Witaj..."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~"Witaj..."~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~Omiń mężczyznę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~Pomimo iż z tak delikatnymi rysami twarzy i pełnymi ustami mógłby ujść za atrakcyjną kobietę, to jego głos, mimo miękkości, należy z pewnością do mężczyzny. "Mmm, obcy. Kolejny 'śmiałek'..." Wypluwa to słowo, jakby jego smak go obrażał. "...Przybyłeś zmierzyć się z moim ostrzem?"~ */
  IF ~~ THEN REPLY #15354 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~"Czemu nie? Owszem."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~"Czemu nie? Owszem."~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~"Tak, ale czy nie chciałbyś założyć się, co do wyniku?"~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~"Tak, ale czy nie chciałbyś założyć się, co do wyniku?"~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~"Zatem precz. Nie mam czasu dla takich typów jak ty." Odprawia cię gestem ręki.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~"Nie doceniłeś mnie zatem, 'panie'. Czy wysłuchasz moich pytań, czy nie?"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~"Nie spiesz się. I tak odpowiesz na moje pytania."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~"Nie spiesz się. I tak odpowiesz na moje pytania."~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~"Nie będę zatem marnował twojego czasu, kundlu z podłego domu."~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~Oczy młodzieńca błyszczą, jak płonący lód. Lodowaty pół-uśmiech wypełza mu na usta. "Słucham? Powtórz to, ty potężne, zwaliste cielsko. Co do mnie mówiłeś?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~"Słyszałaś, kobieto."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~"Słyszałaś, kobieto."~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~"Nic. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~Dostrzegasz tylko smugę i jego szabla jest w gotowości. On sam oblizuje usta i śmieje się cicho. "Postaraj się nie zachlapać mi butów krwią, dobrze?" Za nim, brudna odziana w togę postać przygląda ci się z chciwością w oczach...~ */
  IF ~~ THEN REPLY #15368 /* ~Broń się.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~Uciekaj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~"Nie, nie, nie... to nie takie proste." Zamyka oczy i potrząsa głową, w udawanym żalu. "Odchodzisz albo jako trup, albo jako tchórz. Pozostaje ci wybór między nimi dwoma."~ */
  IF ~~ THEN REPLY #15370 /* ~"Z pewnością jest trzecie wyjście?"~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~"Patrzę na jedynego trupa w tym miejscu."~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~Odwróć się i odejdź.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~Dostrzegasz tylko smugę i jego szabla jest w gotowości. "Widzisz po prostu siebie w moich oczach, bestio. Postaraj się nie zachlapać mi butów krwią, dobrze?" Za nim, brudna odziana w togę postać przygląda ci się z chciwością w oczach...~ */
  IF ~~ THEN REPLY #15373 /* ~Broń się.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~Uciekaj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~Gdy odchodzisz, mówi: "Tak jak myślałem. Tchórz." Słyszysz jak ktoś za nim wydaje ciche westchnienie rozczarowania.~ */
  IF ~~ THEN REPLY #15375 /* ~Odwróć się i zaatakuj go.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~Zignoruj uwagę, odejdź.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~Zignoruj uwagę, odejdź.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~Przez chwilę zdaje się być zaskoczony, po czym przytakuje. "*Zawsze* jest, prawda? Hmm... sądzę, że mógłbyś błagać mnie o wybaczenie i modlić się do jakiejś Mocy, żebym był w szczodrym nastroju."~ */
  IF ~~ THEN REPLY #15378 /* ~"Nigdy. Będziemy walczyć."~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~"Zatem proszę cię o wybaczenie. Przejęzyczyłem się."~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~"Tego nie zrobię. Żegnaj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~Marszczy się, wywracając oczy. "Dobrze, ja na..." Nagle milknie, skonfundowany, i przykłada dłonie do skroni.~ */
  IF ~~ THEN REPLY #15381 /* ~Czekaj i zobacz, co się stanie.~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~"Czy dobrze się czujesz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~Zaatakuj go, gdy się nie spodziewa.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~Odejdź, kiedy nie patrzy.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~"Ja... ech... nie, nie ma przebaczenia!" Potrząsa głową, a jego twarz przestaje wyrażać zmieszanie i zmienia się w ponure zdecydowanie. "Uciekaj lub giń!"~ */
  IF ~~ THEN REPLY #15385 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~Odejdź.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~Woła za tobą, gdy odchodzisz: "Wracaj tu, ty mięczaku!"~ */
  IF ~~ THEN REPLY #15387 /* ~Odwróć się i zmierz się z nim.~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~Idź dalej.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~Gdy odwracasz się, by się z nim zmierzyć, jego szabla znajduje się gotowości w ułamku sekundy. "Ach, dobrze. Zatem będziesz walczył! Postaraj się nie zachlapać mi butów krwią, dobrze?" Za nim, brudna odziana w togę postać przygląda ci się z chciwością w oczach...~ */
  IF ~~ THEN REPLY #15389 /* ~Broń się.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~Uciekaj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~Śmieje się gorzko. "Nie przestraszysz mnie, brutalu. Sugeruję, żebyś sobie poszedł, zanim stwierdzisz, że twoje życie ścieka do rynsztoka Sigil."~ */
  IF ~~ THEN REPLY #15391 /* ~Prawda: "Dam ci ostatnią szansę, żebyś ze mną porozmawiał, zanim złamię na pół ciebie i twój piękny mieczyk."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~Blef: "Dam ci ostatnią szansę, żebyś ze mną porozmawiał, zanim złamię na pół ciebie i twój piękny mieczyk."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~Odejdź.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~"Nie doceniłem? Hmm... twoja impertynencja jest zadziwiająca, Ulowiczu. Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #15394 /* ~"Kim jesteś?"~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~"Co tu robisz?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~"Chcę się pojedynkować."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~"Chcę się pojedynkować."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~"Szukam zgubionego dziennika."~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~"Imiona... 'ludzi'... tutaj nie interesują mnie. Nie znałbym tego Faroda, nawet gdybym go spotkał."~ */
  IF ~~ THEN REPLY #15401 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~"Zatem żegnaj."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~"Zatem żegnaj."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~"Zatem żegnaj."~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~"Potrafisz *czytać*?" Chichocze do siebie. "Więc... zgubiłeś go tutaj? Niewątpliwie został skradziony, prawdopodobnie użyto go jako pościel lub materiał na podpałkę przez miejscowych degeneratów. Na twoim miejscu zapomniałbym, że go kiedyś miałeś. Z pewnością nie chciałbyś go, gdybyś teraz go znalazł."~ */
  IF ~~ THEN REPLY #15405 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~"Zatem żegnaj."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~"Zatem żegnaj."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~"Zatem żegnaj."~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~"Możesz mówić do mnie Adyzoel z Domu Eriane-Ard."~ */
  IF ~~ THEN REPLY #15409 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~"Może jeszcze pogadamy, Adyzoelu. Żegnaj."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~"Może jeszcze pogadamy, Adyzoelu. Żegnaj."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~"Może jeszcze pogadamy, Adyzoelu. Żegnaj."~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~Uśmiecha się złowrogo. Jego zęby, doskonale białe jak niedawno spadły śnieg, mogą równie dobrze być ostre jak noże. "Och, to i tamto. Sprawdzam swoje umiejętności, szukam kłopotów. 'Uluję', jak to się mówi."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~"Sądzę, że będę dobrym testem twoich umiejętności."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~"Sądzę, że będę dobrym testem twoich umiejętności."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~"Zatem mam nadzieję, że znajdziesz swoje kłopoty. Żegnaj."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~"Zatem mam nadzieję, że znajdziesz swoje kłopoty. Żegnaj."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~"Zatem mam nadzieję, że znajdziesz swoje kłopoty. Żegnaj."~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~Oczy młodzieńca błyszczą, jak płonący lód. Lodowaty pół-uśmiech wypełza mu na usta. "Doskonale..." Dostrzegasz tylko smugę i jego szabla jest w gotowości. "Postaraj się nie zachlapać mi butów krwią, dobrze?" Za nim, brudna odziana w togę postać przygląda ci się z chciwością w oczach...~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~"Zaczekaj..."~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~Broń się.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~Uciekaj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~Jego oczy rozbłyskują. "Cóż, tak, to dos..." Nagle milknie, skonfundowany, i przykłada dłonie do skroni.~ */
  IF ~~ THEN REPLY #15422 /* ~Czekaj i zobacz, co się stanie.~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~"Czy dobrze się czujesz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~Zaatakuj go, gdy się nie spodziewa.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~Odejdź, gdy cię nie widzi.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~"Ja... ech... nie, żadnych zakładów! Wygrywasz, żyjesz. Przegrywasz, umierasz. To proste."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~"Bardzo dobrze. Walczmy."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~"Bardzo dobrze. Walczmy."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~"Zatem zapomnij o tym. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~"Zatem nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~"Dobrze, dobrze. Pytaj."~ */
  IF ~~ THEN REPLY #15430 /* ~"Kim jesteś?"~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~"Co tu robisz?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~"Chcę się pojedynkować."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~"Chcę się pojedynkować."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~"Szukam zgubionego dziennika."~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~"Nieważne. Żegnaj."~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~Widząc cię Adyzoel nieznacznie się skłania. "Ach, znowu wróciłeś. Tym razem aby skrzyżować ostrza, czy zamęczać mnie pytaniami?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~"Jestem tu, aby walczyć."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~"Jestem tu, aby walczyć."~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~"Ani jedno, ani drugie. Żegnaj."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~"Ani jedno, ani drugie. Żegnaj."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~Stwierdza kurtuazyjnie: "'Żegnaj' i ty. Muszę cię prosić, abyś nie kłopotał mnie ponownie, o ile nie przyjdziesz tu mnie wyzwać."~ */
  IF ~~ THEN REPLY #15444 /* ~Odejdź.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~Adyzoel stwierdza z pogardą, gdy odwracasz się, by odejść: "Powiedziałem ci ostatnim razem, jak rozmawialiśmy, nie kłopocz mnie, o ile nie przyjdziesz mnie wyzwać. Jeśli się spotkamy ponownie, uznam, iż taki jest twój cel. Będziemy się bić, czy tego chcesz, czy nie."~ */
  IF ~~ THEN REPLY #15445 /* ~Odejdź.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~Przypominasz sobie, że Adyzoel prosił, aby mu nie przeszkadzać, o ile nie przyjdziesz go wyzwać.~ */
  IF ~~ THEN REPLY #15446 /* ~Porozmawiaj z nim mimo to.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~Przypominasz sobie, jak Adyzoel stwierdził, iż jeżeli ponownie się do niego zbliżysz, on uzna to za wyzwanie i zaatakuje cię.~ */
  IF ~~ THEN REPLY #15448 /* ~Porozmawiaj z nim mimo to.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~"Ha! Tchórzliwy brutal powrócił!"~ */
  IF ~~ THEN REPLY #15450 /* ~"Mam kilka pytań..."~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~"Czy słyszałem szczekającego psa? Przyszedłem walczyć, ty zapluskwiony kundlu."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~"Czy słyszałem szczekającego psa? Przyszedłem walczyć, ty zapluskwiony kundlu."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~Odwróć się i odejdź.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~Parska, odwracając się od ciebie. "Nie zamienię ani słowa z takim mięczakiem jak ty. Walcz ze mną albo odejdź."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~"Zatem będę z tobą walczyć."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~"Zatem będę z tobą walczył."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~"Odejdę. Żegnaj."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~"Nie pozwolę, abyś dalej zajmował mi czas błahostkami, tchórzu. Nie chcę cię widzieć ponownie, o ile nie przyjdziesz się ze mną zmierzyć. Jeśli się jeszcze raz spotkamy, uznam, że tak jest. Będziemy się bić, czy tego chcesz, czy nie."~ */
  IF ~~ THEN REPLY #15457 /* ~Odejdź.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~Adyzoel wygląda na wyjątkowo zaskoczonego. "Co, znowu? Skąd się wyczołgałeś, brutalu? Byłem pewien, że cię wykończyłem."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~"Nie całkiem. Wróciłem, aby ponownie się z tobą zmierzyć."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~"Nie całkiem. Wróciłem, aby ponownie się z tobą zmierzyć."~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~"Nie. Mam kilka pytań..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~"Pomyliłeś się. Żegnaj."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~Młodzieniec, zaskoczony, po prostu wpatruje się przez chwilę w Mortego. "A *ty* kim jesteś?"~ */
  IF ~~ THEN REPLY #15462 /* ~"Po prostu zignoruj go. On jest niegroźny."~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~Niech Morte mówi.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~Wszystko, co mężczyzna był w stanie z siebie wydusić to na wpół słyszalny pomruk. Kropelki śliny wytrysnęły mu z ust: "Argh!" Obnaża szablę w mgnieniu oka, twarz ma gorejącą od gniewu. "Dość! *ŻĄDAM* satysfakcji!"~ */
  IF ~~ THEN REPLY #15464 /* ~"Mogę tylko prosić cię, abyś wybaczył mojemu towarzyszowi."~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~"Cóż, Morte? Masz zamiar się z nim pojedynkować?"~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~"Bardzo dobrze... ale będziesz musiał walczyć z nami oboma."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~"Dobrze! Zatem zginiecie obaj!" Gdy przygotowuje się do walki, zauważasz brudną odzianą w togę postać przyglądającą ci się z chciwością w oczach...~ */
  IF ~~ THEN REPLY #15467 /* ~Broń się.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~Uciekaj.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~"Co?" Mężczyzna patrzy na Mortego z niewiarą. "To, mówiąc oględnie, cokolwiek *dziwny* mimir!"~ */
  IF ~~ THEN REPLY #15469 /* ~"Mimir?"~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~"Czy możesz wybaczyć mu jego ostre słowa?"~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~"Będziemy walczyć... ale będziesz musiał zmierzyć się z nami oboma."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~"Cisza, bredzący głupcze!" Uspokaja się, chowając szablę. "Wy dwaj: walczcie lub uciekajcie, na nic innego się nie zgodzę." Pomimo iż powstrzymał swój gniew, jego oczy lśnią lodowatą nienawiścią.~ */
  IF ~~ THEN REPLY #15472 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~Odwróć się i odejdź.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~"Ty tam, zostaw tego mięczaka w spokoju. Czyż nie jest on wystarczająco żałosny, żebyś jeszcze musiał go obrażać?"~ */
  IF ~~ THEN REPLY #15474 /* ~"To nie twoja sprawa."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~"Uważaj na to, co mówisz, albo będziesz następny."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~"Będzie moja, jeśli tak mi się spodoba. A teraz zostaw tę żałosną istotę w spokoju albo będę musiał ci odpłacić."~ */
  IF ~~ THEN REPLY #15477 /* ~"Po pierwsze powiedz mi, czemu w ogóle ma to dla ciebie znaczenie."~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~"Chcesz mi odpłacić? Odważ się tylko spróbować."~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~"Ponieważ... ponieważ..." Milknie, zagubiony, i przykłada dłoń do skroni. Zdaje się być skołowany.~ */
  IF ~~ THEN REPLY #15480 /* ~"Czy dobrze się czujesz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~Poczekaj.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~Odejdź, gdy nie patrzy.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~Otrząsa się z rozkojarzenia. "To nie twoja sprawa. Postawiono przed tobą ultimatum. Walcz ze mną albo odejdź."~ */
  IF ~~ THEN REPLY #15483 /* ~"Będzie moja, jeśli tak mi się spodoba. A teraz powiedz mi."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~"Będziemy walczyć."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~"Będziemy walczyć."~ */ EXTERN ~DMORTE~ 169
END
