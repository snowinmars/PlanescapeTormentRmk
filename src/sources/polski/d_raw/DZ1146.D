// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1146.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1146~

IF ~  Global("Crispy","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6518 /* ~Na czole tego chodzącego trupa wyryto numer "1146", zaś usta zszyto mu grubymi, czarnymi nićmi. Całe jego ciało pokrywają blizny - gorsze nawet od twoich własnych - jak gdyby jego posiadacz spłonął żywcem. Trup nie ma nosa, uszu i kilku palców, przypuszczalnie zwęglonych w jakiejś pożodze bardzo dawno temu. Gdy blokujesz jego drogę, aby zwrócić na siebie uwagę, trup zatrzymuje się i patrzy na ciebie nic nie widzącym wzrokiem.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6521 /* ~"Więc jak... czy widziałeś, żeby działo się tu coś interesującego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6522 /* ~"Więc jak... czy widziałeś, żeby działo się tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6523 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6524 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ DO ~SetGlobal("Crispy","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6525 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #6526 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6519 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #6527 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6520 /* ~Odór dymiącej siarki, spalonych włosów i przypalonej krwi atakuje twoje zmysły, z chwilą gdy dusza powraca do swego niegdysiejszego ciała. Trup pada na podłogę niemal od razu, gwałtownie drżąc i chwytając się samego siebie. Wydaje żałosne jęki. Niemal widać cieniutkie słupy dymu wydobywające się z jego ciała i członków.~ */
  IF ~~ THEN REPLY #6528 /* ~"Czy wszystko... w porządku?"~ */ GOTO 3
  IF ~~ THEN REPLY #9413 /* ~"Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #9414 /* ~Zostaw płonącego ducha.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9398 /* ~Duch otwiera jedno oko. Całkowita biel jego oczu kontrastuje z szarym, pomarszczonym ciałem, które je otacza. Powoli odwraca głowę, aby lepiej ci się przyjrzeć; nabrzmiała i pocięta skóra jego twarzy i karku ściśle owija kości czaszki. W końcu słychać charkot wydobywający się ze zniszczonego gardła: "Nie. Nie... ja nie, ty... szpicuj się, pomyleńcu."~ */
  IF ~~ THEN REPLY #9415 /* ~"Czy jest coś, co mogę zrobić, aby ci pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Crispy_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #9416 /* ~"Mam pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9417 /* ~"No i dobrze, ty cuchnący, płonący durniu; prawdopodobnie zasługujesz na taki los. Żegnaj."~ */ GOTO 6
  IF ~~ THEN REPLY #9418 /* ~Zostaw umęczonego ducha.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9399 /* ~"Heh, heh-HURG!" Duch zaczyna się śmiać, ale nagle przestaje. Dostaje straszliwych skurczów i wymiotuje strugą płynu balsamującego i czarnej mazi. Cały przejęty bólem duch zaczyna krztusić się i kaszleć, od czasu do czasu przerywając sobie, aby móc wypluć żółtawy płyn i luźne szwy spomiędzy swych zniszczonych warg.~ */
  IF ~~ THEN REPLY #9419 /* ~Poczekaj cierpliwie, aż napad kaszlu się skończy.~ */ GOTO 5
  IF ~~ THEN REPLY #9421 /* ~"Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9422 /* ~Zostaw umęczonego ducha jego cierpieniom.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #9400 /* ~Okropny kaszel wreszcie ustępuje. "Nie, trepie... ty... nie możesz. Chyba że... że zatańczysz w Baator i wybawisz mnie, ja jestem w ślepakach. Czas mojej... mojej pokuty." Duch zamyka oko i kładzie głowę na podłodze.~ */
  IF ~~ THEN REPLY #9423 /* ~"Rozumiem. Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9424 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 17.0
  SAY #9401 /* ~Duch wydaje się z siebie wilgotny, warczący odgłos, a poczerniałe wargi odsłaniają zakrzywione, żółte zęby. "Tylko... tylko poczekaj aż... wyrwę się z tej otchłani... Po ciebie przyjdę najpierw, trepie..."~ */
  IF ~~ THEN REPLY #9425 /* ~"Zrób to. Nie należę do ludzi, którzy boją się takich jak ty."~ */ GOTO 7
  IF ~~ THEN REPLY #9426 /* ~Uderz go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Crispy_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crispy_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #9427 /* ~Zignoruj łajdaka, odwróć się i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9402 /* ~Duch wydaje słaby, gardłowy warkot i spluwa w twoim kierunku - nieczystości lądują kilka centymetrów od twoich stóp. Całkiem wyczerpany, truposz opada z powrotem na podłogę i wydaje się, że raz jeszcze życie z niego uchodzi.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9403 /* ~Twój szybki kopniak ląduje na nerce truposza, ale nic to nie daje; nie wygląda na to, aby duch odniósł jakiekolwiek obrażenia. Stoisz tak z niejakim poczuciem niezadowolenia.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
  SAY #9404 /* ~"Czego... czego to *mógłbyś* w ogóle ode mnie chcieć, trepie?" Duch wciąż wije się, poklepując się jak gdyby usiłując ugasić rozmaite małe ogniska na swym ciele.~ */
  IF ~~ THEN REPLY #9428 /* ~"Kim jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #9429 /* ~"Skąd pochodzisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #9430 /* ~"Jak się tutaj znalazłeś? To znaczy, jako zombie?"~ */ GOTO 12
  IF ~~ THEN REPLY #9431 /* ~"Gdzie ty... gdzie twój duch mieszka... teraz?"~ */ GOTO 13
  IF ~~ THEN REPLY #9432 /* ~"Co zrobiłeś, aby sobie zasłużyć na takie męki?"~ */ GOTO 14
  IF ~~ THEN REPLY #9433 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9434 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 16
  IF ~~ THEN REPLY #9435 /* ~"Nic to, nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9405 /* ~"Nie twoja brocha... zostaw mnie... w spokoju..."~ */
  IF ~~ THEN REPLY #9436 /* ~"Nie. Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9437 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #9406 /* ~"Co? Na litość mocy, kogo to... interesuje? Z Sigil, ty... ty szpicu."~ */
  IF ~~ THEN REPLY #9438 /* ~"Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9439 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #9407 /* ~"Jak myślisz, Tępaku?" Ten nagły wybuch wywołuje u niego krótki napad szarpiącego, bolesnego kaszlu. "Oddałem cielsko za... za kawałek brzdęku. Naszpicowani Grabarze... i wtenczas - AKURAT WTEDY, dasz wiarę - jakiś kopnięty czarodziej postanowił wysadzić Ul i posłać go w gorejące zapomnienie, a ja byłem w samym środku!" Duch złowieszczo mruczy coś pod nosem, a z poszarpanych kącików jego ust wydobywa się kipiący płyn.~ */
  IF ~~ THEN REPLY #9440 /* ~"Jakiś czarodziej spalił Ul?"~ */ GOTO 18
  IF ~~ THEN REPLY #9441 /* ~"Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9465 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #9408 /* ~"A jak sądzisz, ty skórogłowy hultaju? W Baator, w tej cuchnącej dziurze, którą zwą Flegetos. Płonę... płonę... płonę... ot, co tam robię. Spaliłem się za życia i teraz płonę po śmierci. Argh!" Duch zgrzyta zębami z wściekłości. "Ta ironia jest obrzydliwa! Kiedy się już stąd wyrwę, wrzucę do tej cholernej dziury całe zastępy gnojków. He he he... *bul*"~ */
  IF ~~ THEN REPLY #9442 /* ~"Czemu pragniesz, aby innym udzielił się twój los?"~ */ GOTO 17
  IF ~~ THEN REPLY #9443 /* ~"Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9444 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY #9409 /* ~"Zasłużyć? NA TO? Nijak! Ja... *hep* ... nic nie zrobiłem. Starałem się tylko jakoś żyć... przetrwać jak każdy... i wtedy 'buum'. Ten cholerny mag podpalił Ul!"~ */
  IF ~~ THEN REPLY #9445 /* ~"Jakiś mag... spalił... Ul?"~ */ GOTO 18
  IF ~~ THEN REPLY #9446 /* ~"Rozumiem. Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9745 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #9410 /* ~"Nic. Nic. Przecież *ci* mówię, trepie. Po prostu... zostaw mnie moim oparzeniom..."~ */
  IF ~~ THEN REPLY #9447 /* ~"Doskonale. W takim razie mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9448 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.6
  SAY #9411 /* ~"Kogo? Co? Nie! Co... co każe ci myśleć, że powiedziałbym ci, gdybym... ty... ty skurlony trepie? Hmpf..."~ */
  IF ~~ THEN REPLY #9449 /* ~"Doskonale. Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #9450 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0
  SAY #9412 /* ~"Zemsta, pomyleńcu! Dorwę... dorwę ich wszystkich, wszystkich tych, którzy mnie wkurzyli. A szczególnie tego czarodzieja! Rozerwę na strzępy te jego drobinki i wepchnę mu je do gardła. A potem wrzucę go do tej cuchnącej dziury, te jego drobinki i wszystko inne też! Jego i paru innych też... co by się wyrównało! He he he..."~ */
  IF ~~ THEN REPLY #9420 /* ~"Jesteś podstępnym, małym człowieczkiem. Wydaje się, że porządnie zasłużyłeś na swój los."~ */ GOTO 6
  IF ~~ THEN REPLY #9451 /* ~"Rozumiem. Mam dla ciebie więcej pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #9452 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0 14.0
  SAY #9458 /* ~"Tak, Ul... najgorszą część Sigil. W życiu nie widziałem takiego ognia... Rzuciłem się w jedną stronę, potem w drugą, próbując się wyrwać, ale wszystko dookoła płonęło! Budynki, ulice, ludzie, dzieciaki... a ten po trzykroć przeklęty czarodziej tylko się śmiał cały czas! Skręciłem za róg, myśląc, że umknąłem na chwilę, ale następną rzeczą, jaką zobaczyłem to była moja głowa w ogniu! To całkiem... poszło w dół..." Oko ducha rozbłyskuje złowieszczym blaskiem.~ */
  IF ~~ THEN REPLY #9459 /* ~"Kim był ten czarodziej?"~ */ GOTO 19
  IF ~~ THEN REPLY #9464 /* ~"Rozumiem. Mam dla ciebie więcej pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #9746 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #9744 /* ~"Nie wiem. Nieźle mnie przysmażyło, zanim ktokolwiek go zatrzymał, o ile ktokolwiek tego dokonał. Chyba pamiętam, jak niektórzy go gonili na samym początku, wykrzykując jego imię... eee... och! Ignis, myślę, że nazywał się Ignis. Ignis. Lub coś w tym stylu. Mam tylko nadzieję, że ten szpicownik jest teraz w gorszej dziurze niż ja!~ */
  IF ~~ THEN REPLY #9747 /* ~"Rozumiem. Mam dla ciebie więcej pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #9748 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  Global("Crispy","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #20099 /* ~"Znowu?"~ */
  IF ~~ THEN REPLY #20100 /* ~"Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20101 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END
