// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORA~

IF ~  Global("Dolora","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Ta ciemnowłosa kobieta o bladej karnacji wygląda na kulturalną i wytworną osobę. Gdy się do ciebie odwraca, dostrzegasz, że jej oczy - które wcześniej wydawały ci się być szare - mają kolor wypolerowanej stali.~ */
  IF ~~ THEN REPLY #34366 /* ~"Witaj..."~ */ DO ~SetGlobal("Dolora","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41352 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41282 /* ~Jej głos brzmi delikatnie, spokojnie, wyrównanie - wydaje się być jakoś tak 'odległy', jakby w jakiś sposób był o niej oddzielony. "Witaj... Nazywam się Dolora. W czym mogę ci służyć?"~ */
  IF ~~ THEN REPLY #41353 /* ~"W jaki sposób możesz mi służyć, Doloro?"~ */ GOTO 2
  IF ~~ THEN REPLY #41354 /* ~"Raczej nie. Mam jednak kilka pytań..."~ */ GOTO 32
  IF ~~ THEN REPLY #41355 /* ~"Nie, chciałem cię tylko poznać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 38.0 64.0
  SAY #41283 /* ~Mruga oczami, po czym przykłada dłoń do serca i skłania się lekko. "Mogę całkiem wprawnie prowadzić dysputy dotyczące dowolnych spraw naukowych bądź akademickich, jeśli sobie tego życzysz. Jestem też nieźle wyszkolona w rozmaitych rozgrywkach strategicznych. Jeśli wyrazisz życzenie, możemy w jakąś zagrać, mam tu jednakże materiały umożliwiające rozegranie zaledwie paru z nich."~ */
  IF ~~ THEN REPLY #41356 /* ~"Miałem nadzieję, że będzie to coś bardziej 'fizycznej' natury..."~ */ GOTO 3
  IF ~~ THEN REPLY #41357 /* ~"Prowadzić dysputy, mówisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #41358 /* ~"Moglibyśmy zagrać teraz w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41359 /* ~"Właściwie to... Czy mogę zadać ci parę pytań?"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41360 /* ~"Właściwie to... Czy mogę zadać ci parę pytań?"~ */ GOTO 44
  IF ~~ THEN REPLY #41361 /* ~"Po namyśle sądzę, że muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #41284 /* ~Zdaje się to ani nie intrygować, ani nie odrzucać Dolory i wciąż odpowiada ona tym samym, stanowczym tonem. "W takim razie pomyliłeś się co do natury tego miejsca. Przybytek zaspokaja żądze umysłowe, nie seksualne. Mogę cię w każdym razie zapewnić, że byłabym wyjątkowo niezadowalającą partnerką."~ */
  IF ~~ THEN REPLY #41362 /* ~"Och? Dlaczego tak sądzisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #41363 /* ~"Wspominałaś o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~~ THEN REPLY #41364 /* ~"Moglibyśmy zagrać teraz w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41365 /* ~"W takim wypadku mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41366 /* ~"W takim wypadku mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41367 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #41285 /* ~"Taka jest po prostu moja natura. Pozwól, że ci pokażę." Wyciąga rękę, by dotknąć twego ramienia...~ */
  IF ~~ THEN REPLY #41368 /* ~Pozwól jej cię dotknąć.~ */ GOTO 5
  IF ~~ THEN REPLY #41369 /* ~Odsuń się od niej.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #41286 /* ~Dolora przesuwa zewnętrzną stroną dłoni wzdłuż twego ramienia. Skóra jej jest gładka i sucha, ale i zimna niczym chłodne żelazo. Dotyk ów sprawia, iż dreszcz przechodzi wzdłuż twego kręgosłup, zaś włosy na ramieniu stają ci dęba. "Nie kłopocz się pytaniami kim jestem lub czym się zajmuję. Powiem ci jedynie, że taka jest po prostu moja natura."~ */
  IF ~~ THEN REPLY #41370 /* ~"Dobrze. Wspomniałaś o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~~ THEN REPLY #41371 /* ~"W porządku. Czym moglibyśmy zagrać teraz w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41372 /* ~"W takim wypadku mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41373 /* ~"W takim wypadku mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41374 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #41287 /* ~Nim udaje się jej ciebie dotknąć, odsuwasz ramię. "Niech tak będzie. Chciałam jedynie zilustrować ci moją wypowiedź. Nie miałam złych zamiarów."~ */
  IF ~~ THEN REPLY #41375 /* ~"Dobrze... Pokaż mi w takim razie."~ */ GOTO 5
  IF ~~ THEN REPLY #41376 /* ~"Mniejsza a tym. Wspominałaś o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~~ THEN REPLY #41377 /* ~"Moglibyśmy zagrać teraz w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41378 /* ~"W takim wypadku mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41379 /* ~"W takim wypadku mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41380 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 3.1 5.0 6.1 22.1 23.0 24.1 25.1 27.1 28.1 30.1 31.1
  SAY #41288 /* ~Dolora przytakuje. "To prawda. Nie jestem ni księgą, ni nauczycielem. Nie pragnę dokształcać mych gości. A oto tematy, na jakie mogę poprowadzić dysputę... Piętnaście frakcji i ich wpływ na sigilijską politykę; najskuteczniejsze strategie militarne dla walczących w Acheron; znaczenie istnienia samego w sobie... Możliwość dobierania kontrargumentów i wciągania cię głębiej w dysputę będzie dla mnie wielką przyjemnością."~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41381 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41382 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41383 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41384 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #41385 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41386 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #57371 /* ~Wybierz temat i sprawdź, czy uda ci się ją 'pokonać'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41387 /* ~"Hmm. Moglibyśmy zagrać teraz w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41388 /* ~"Właściwie to... Pozwól, że zadam ci parę pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41389 /* ~"Właściwie to... Pozwól, że zadam ci parę pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41390 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #41289 /* ~Już po kilku minutach rozmowy Dolora z naturalną łatwością odpiera każdy z twych argumentów. Jej riposty na twe nieudolne próby zabrania głosu w dyspucie sprawiają, iż twa sytuacja jawi się żałośnie i dziecinie. Dolora zdaje się nie czerpać ze zwycięstwa przyjemności, proponuje jedynie: "Jeśli chcesz, możemy ponownie przeprowadzić dysputę na ten sam temat... Tym razem ja mogę popierać twe poglądy, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #41391 /* ~"Poczekaj... Czy zawsze jesteś w czasie dysputy taka bezlitosna?"~ */ GOTO 9
  IF ~~ THEN REPLY #41392 /* ~"Nie, dzięki. Czy moglibyśmy zagrać w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41393 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41394 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41395 /* ~"Na razie wystarczy. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0 14.0
  SAY #41290 /* ~Dolora przytakuje. "Pani Sława wyszkoliła mnie, bym nie okazywała litości, inną zaś uczennicę, by po dłuższej debacie zawsze pozwalała swemu gościowi zwyciężyć. To Pani Sława pragnęła, bym dostarczała klientom odmiennych doświadczeń."~ */
  IF ~~ THEN REPLY #41396 /* ~"Rozumiem. Czy moglibyśmy zagrać teraz w jakąś grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41397 /* ~"Rozumiem. Mam kilka pytań do ciebie..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41398 /* ~"Rozumiem. Mam kilka pytań do ciebie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41399 /* ~"Brzmi sensownie. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY #41291 /* ~Dokładasz wszelkich starań, jednak na próżno. Dolora, dzięki swej nieomylnej zdolności logicznego myślenia, z łatwością i zdecydowaniem odpiera każdy z twych argumentów. Dolora zdaje się nie czerpać ze zwycięstwa przyjemności, proponuje jedynie: "Jeśli chcesz, możemy ponownie przeprowadzić dysputę na ten sam temat... Tym razem ja mogę popierać twe poglądy, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #41400 /* ~"Poczekaj... Czy zawsze jesteś w czasie dysputy taka bezlitosna?"~ */ GOTO 9
  IF ~~ THEN REPLY #41401 /* ~"Nie, dzięki. Czy moglibyśmy zagrać w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41402 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41403 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41404 /* ~"Na razie wystarczy. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #41292 /* ~Wybierasz temat i rozpoczynasz. Z początku wydaje ci się, że nieźle ci idzie... Z czasem jednak twa pozycja słabnie, gdy Dolora miażdży twe argumenty jeden po drugim dzięki swej nieomylnej zdolności logicznego myślenia. Dolora zdaje się nie czerpać ze zwycięstwa przyjemności, proponuje jedynie: "Jeśli chcesz, możemy ponownie przeprowadzić dysputę na ten sam temat... Tym razem ja mogę popierać twe poglądy, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #41405 /* ~"Poczekaj... Czy zawsze jesteś w czasie dysputy taka bezlitosna?"~ */ GOTO 9
  IF ~~ THEN REPLY #41406 /* ~"Nie, dzięki. Czy moglibyśmy zagrać w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41407 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41408 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41409 /* ~"Na razie wystarczy. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY #41293 /* ~Wybierasz temat i rozpoczynasz... W czasie tej długiej debaty wasza dwójka wymienia między sobą argumenty i kontrargumenty, każde z was stara się cały czas osłabić pozycję drugiego. Gdy mówisz, zdaje się cię nachodzić dziwne uczucie... Wspomnienie usiłujące przebić się na powierzchnię..."~ */
  IF ~~ THEN REPLY #41410 /* ~Pozwól, by wspomnienie się ujawniło.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 56
  IF ~~ THEN REPLY #41411 /* ~Stłum wspomnienie.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 59.0
  SAY #41294 /* ~Mimo iż wyjątkowo ciężko jest jej z tobą wygrać, ostatecznie jednak... jej nieomylna zdolność logicznego myślenia pokonuje nawet najbłyskotliwsze z twych argumentów. Dolora zdaje się nie czerpać ze zwycięstwa przyjemności, przytakuje jedynie. "Jesteś wyjątkowo utalentowanym dysputantem, nie da się temu zaprzeczyć. Czuję, że gdyby dano ci czas na wnikliwsze badania, mogłabym cię nie pokonać."~ */
  IF ~~ THEN REPLY #41412 /* ~"Dzięki..."~ */ GOTO 14
  IF ~~ THEN REPLY #41413 /* ~"Nie wiem... Jesteś niezłym przeciwnikiem."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 15.0 15.1 17.0 17.1 18.0 18.1
  SAY #41295 /* ~Dolora przytakuje. "Jeśli chcesz, możemy ponownie przeprowadzić dysputę na ten sam temat... Tym razem ja mogę popierać twe poglądy, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #41414 /* ~"Poczekaj... Czy zawsze jesteś w czasie dysputy taka bezlitosna?"~ */ GOTO 9
  IF ~~ THEN REPLY #41415 /* ~"Nie teraz, dzięki. Może zagramy w grę?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41416 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41417 /* ~"W porządku. Mam jednakże kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41418 /* ~"Na razie wystarczy. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY #41296 /* ~Wybierasz temat i rozpoczynasz... W czasie tej długie debaty wasza dwójka wymienia między sobą argumenty i kontrargumenty, każde z was stara się cały czas osłabić pozycję drugiego. Mimo iż wyjątkowo ciężko jest jej z tobą wygrać, ostatecznie jednak... jej nieomylna zdolność logicznego myślenia pokonuje nawet najbłyskotliwsze z twych argumentów. Dolora zdaje się nie czerpać ze zwycięstwa przyjemności, przytakuje jedynie z uznaniem. "Jesteś wyjątkowo utalentowanym dysputantem, nie da się temu zaprzeczyć. Czuję, że gdyby dano ci czas na wnikliwsze badania, mogłabym cię nie pokonać."~ */
  IF ~~ THEN REPLY #41419 /* ~"Dzięki..."~ */ GOTO 14
  IF ~~ THEN REPLY #41420 /* ~"Nie wiem... Jesteś niezłym przeciwnikiem."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 7.5
  SAY #41297 /* ~Wybierasz temat i rozpoczynasz... W czasie tej długie debaty wasza dwójka wymienia między sobą argumenty i kontrargumenty, każde z was stara się cały czas osłabić pozycję drugiego. Gdy mówisz, zdaje się cię nachodzić dziwne uczucie... Wspomnienie usiłujące przebić się na powierzchnie...~ */
  IF ~~ THEN REPLY #41421 /* ~Pozwól, by wspomnienie się ujawniło.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 56
  IF ~~ THEN REPLY #41422 /* ~Stłum wspomnienie.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 59.1
  SAY #41298 /* ~Mimo iż wyjątkowo trudno jest ci pokonać nieomylną zdolność logicznego myślenia Dolory, ostatecznie jednak udaje ci się wygrać. Kiwa ona jedynie głową z uznaniem. "Jesteś wyjątkowo utalentowanym dysputantem, nie da się temu zaprzeczyć. Czuję jednak, że gdybym miała czas na wnikliwsze badania, mógłbyś mnie nie pokonać."~ */
  IF ~~ THEN REPLY #41423 /* ~"Dzięki..."~ */ GOTO 14
  IF ~~ THEN REPLY #41424 /* ~"Może, może nie. Będę to więc uważał za nieuczciwą przewagę."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 7.6
  SAY #41299 /* ~Wybierasz temat i rozpoczynasz... W czasie tej długie debaty wasza dwójka wymienia między sobą argumenty i kontrargumenty, każde z was stara się cały czas osłabić pozycję drugiego. Mimo iż wyjątkowo trudno jest ci pokonać nieomylną zdolność logicznego myślenia Dolory, ostatecznie jednak udaje ci się wygrać. Dolora skłania jedynie z uznaniem głową. "Jesteś wyjątkowo utalentowanym dysputantem, nie da się temu zaprzeczyć. Czuję jednak, że gdybym miała czas na wnikliwsze badania, mógłbyś mnie nie pokonać."~ */
  IF ~~ THEN REPLY #41425 /* ~"Dzięki..."~ */ GOTO 14
  IF ~~ THEN REPLY #41426 /* ~"Może, może nie. Będę to więc uważał za nieuczciwą przewagę."~ */ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 2.2 3.2 5.1 6.2 7.7 8.1 9.0 10.1 11.1 14.1
  SAY #41300 /* ~"Oczywiście. Czy jest coś konkretnego, w co chcesz zagrać?"~ */
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #41427 /* ~"Niech będzie ta, w którą graliśmy poprzednio."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 67
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #41428 /* ~"Nie... W zasadzie to nie pamiętam żadnych gier..."~ */ GOTO 20
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41429 /* ~"Właściwie to... Pozwól, że zamiast tego zadam ci parę pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41430 /* ~"Właściwie to... Pozwól, że zamiast tego zadam ci parę pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41431 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #41301 /* ~"W takim razie pozwól, że ci pokaże jedną." Dolora wyciąga niezbyt szerokie, lakierowane pudełko, które rozkłada się w niewielkich rozmiarów planszę z zaznaczonymi kratkami. W pudełku zaś znajduje się pewna liczba wypolerowanych kamiennych pionków. Połowa z nich jest czarna, druga połowa biała. "Gra ta ma wiele nazw. Wyjaśnić ci jej zasady?"~ */
  IF ~~ THEN REPLY #41432 /* ~"Tak, proszę."~ */ DO ~SetGlobal("Dolora_Go","AR0605",1)
~ GOTO 21
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41433 /* ~"Właściwie to... Pozwól, że zamiast tego zadam ci parę pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41434 /* ~"Właściwie to... Pozwól, że zamiast tego zadam ci parę pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41435 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #41302 /* ~Dolora objaśniła ci zasady gry - to, jak poruszają się pionki i jak zbija się nimi pionki przeciwnika. Wydaje się to być tobie tak jakoś trochę znajome. "Zasady są proste, prawda? Jednakże złożoność leży w głównej mierze w samej grze. Opanowanie jej w stopniu mistrzowskim zajmuje bardzo dużo czasu. Zagramy?"~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41436 /* ~"Dobrze."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41437 /* ~"Dobrze."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41438 /* ~"Dobrze."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41439 /* ~"Dobrze."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41440 /* ~"Dobrze."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41441 /* ~"Dobrze."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41442 /* ~"Dobrze."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41443 /* ~"Właściwie to... Pozwól, że zamiast tego zadam ci parę pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41444 /* ~"Właściwie to... Pozwól, że zamiast tego zadam ci parę pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41445 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #41303 /* ~Mimo pewności, iż dane ci było już kiedyś w to grać, idzie ci wyjątkowo kiepsko... Dolora pokonuje cię błyskawicznie i to z łatwością, która wręcz budzi śmiech. Ona się ani nie śmieje, ani nie okazuje satysfakcji - zaczyna odkładać w milczeniu grę na bok. "Obawiam się, iż przydałaby ci się odrobina czasu i praktyki - zdaje się, iż po prostu nie rozumiesz tego typu gier."~ */
  IF ~~ THEN REPLY #41446 /* ~"Zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41447 /* ~"Może nie. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41448 /* ~"Hmm. Mam parę pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41449 /* ~"Hmm. Mam parę pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41450 /* ~"Nie dostarczyło mi zbytniej rozrywki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 24.0 25.0 27.0 28.0 30.0 31.0
  SAY #41304 /* ~Dolora kiwa głową. "Pani Sława poleciła mi grać bez skrupułów. Innej zaś uczennicy - by grała tak, aby przeciwnikowi zawsze udawało się wygrać. To Pani Sława pragnęła, bym dostarczała innego rodzaju doświadczeń - prawdziwego wyzwania, nie zaś czegoś zaspokajającego czyjeś ego."~ */
  IF ~~ THEN REPLY #41451 /* ~"Rozumiem. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41452 /* ~"Rozumiem. Mam kilka pytań do ciebie..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41453 /* ~"Rozumiem. Mam kilka pytań do ciebie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41454 /* ~"Brzmi sensownie. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #41305 /* ~Mimo pewności, iż dane ci już kiedyś było w to grać, Dolora z łatwością cię pokonuje. Nie uśmiecha się ona, ani nie okazuje satysfakcji - zaczyna odkładać w milczeniu grę na bok. "Zdajesz się wykazywać przyzwoite zrozumienie tej gry. Z czasem możesz zdobyć wprawę."~ */
  IF ~~ THEN REPLY #41455 /* ~"Zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41456 /* ~"Może. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41457 /* ~"Dzięki. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41458 /* ~"Dzięki. Mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41459 /* ~"Poćwiczę być może, jeśli tylko będę mieć więcej czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY #41306 /* ~W czasie gry uświadamiasz sobie, że już to kiedyś wcześniej robiłeś. Jednak nawet twe najlepsze zagrania są niczym przeciwko dobrze wyważonym strategiom Dolory... Stopniowo idzie ci coraz gorzej, po czym zostajesz zwyciężony. Dolora nie uśmiecha się ani nie okazuje satysfakcji, spokojnie zaczyna odkładać grę na bok. "Zdajesz się wykazywać dobre zrozumienie gry. Z czasem możesz stać się całkiem niezłym graczem."~ */
  IF ~~ THEN REPLY #41460 /* ~"Zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41461 /* ~"Może. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41462 /* ~"Dzięki. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41463 /* ~"Dzięki. Mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41464 /* ~"Poćwiczę być może, jeśli tylko będę mieć więcej czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY #41310 /* ~W czasie gry uświadamiasz sobie, że już to kiedyś wcześniej robiłeś. Przypominasz sobie zagrania i strategie, dzięki którym wygrałeś poprzednie rozgrywki i wypróbowujesz wszystkie znane ci sztuczki, by pokonać Dolorę. Niespodziewanie, nachodzi cię dziwne uczucie... Wspomnienie usiłujące przebić się na powierzchnie...~ */
  IF ~~ THEN REPLY #41465 /* ~Pozwól, by wspomnienie się ujawniło.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 60
  IF ~~ THEN REPLY #41466 /* ~Stłum wspomnienie.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 62.0
  SAY #41311 /* ~Podczas gry Dolora przeciwdziała wszystkim twym przebiegłym ruchom jeden po drugim. Pomimo najlepszych starań, ostatecznie przegrywasz z jej rozmyślnymi strategiami. Dolora nie uśmiecha się ani nie okazuje satysfakcji, spokojnie zaczyna odkładać grę na bok. "Jesteś świetnym graczem. Jestem pewna, że z czasem możesz stać się mistrzem tej gry."~ */
  IF ~~ THEN REPLY #41467 /* ~"Dzięki... Czy zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41468 /* ~"Może. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41469 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41470 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 44
END

IF ~~ THEN BEGIN 28 // from: 21.4
  SAY #41312 /* ~W czasie gry uświadamiasz sobie, że już to kiedyś wcześniej robiłeś. Przypominasz sobie zagrania i strategie, dzięki którym wygrałeś poprzednie rozgrywki i wypróbowujesz wszystkie znane ci sztuczki, by pokonać Dolorę.
Nadal jednak udaje się jej przeciwdziałać wszystkim twym przebiegłym ruchom jeden po drugim. Pomimo najlepszy starań, ostatecznie przegrywasz z jej rozmyślnymi strategiami. Dolora nie uśmiecha się ani nie okazuje satysfakcji, spokojnie zaczyna odkładać grę na bok. "Jesteś świetnym graczem. Jestem pewna, że z czasem możesz stać się mistrzem tej gry."~ */
  IF ~~ THEN REPLY #41471 /* ~"Dzięki... Czy zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41472 /* ~"Może. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41473 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41474 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41475 /* ~"Poćwiczę być może, jeśli tylko będę mieć więcej czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.5
  SAY #41313 /* ~Grając uświadamiasz sobie, że już to kiedyś wcześniej robiłeś. Przypominasz sobie zagrania i strategie, dzięki którym wygrałeś poprzednie rozgrywki i wypróbowujesz wszystkie znane ci sztuczki, by pokonać Dolorę. Niespodziewanie, nachodzi cię dziwne uczucie... Wspomnienie usiłujące przebić się na powierzchnie...~ */
  IF ~~ THEN REPLY #41476 /* ~Pozwól, by wspomnienie się ujawniło.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 60
  IF ~~ THEN REPLY #41477 /* ~Stłum wspomnienie.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 62.1
  SAY #41314 /* ~Dolora gra znakomicie, przeciwdziałając twym sprytnym ruchom, ostatecznie jednak twe zwody i wypracowane manewry wygrywają z jej przebiegłymi strategiami. Dolora kiwa z uznaniem głową i zaczyna odkładać grę na bok. "Jesteś świetnym graczem, może nawet mistrzem. Posiadasz godne pochwały umiejętności."~ */
  IF ~~ THEN REPLY #41478 /* ~"Dzięki... Czy zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41479 /* ~"Dzięki. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41480 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41481 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41482 /* ~"Tak, zdaje się jednak, że już w to wcześniej grałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.6
  SAY #41315 /* ~Grając uświadamiasz sobie, że już to kiedyś wcześniej robiłeś. Przypominasz sobie zagrania i strategie, dzięki którym wygrałeś poprzednie rozgrywki i wypróbowujesz wszystkie znane ci sztuczki, by pokonać Dolorę. Ona gra znakomicie, przeciwdziałając twym sprytnym ruchom, ostatecznie jednak twe zwody i wypracowane manewry wygrywają z jej przebiegłymi strategiami. Dolora kiwa z uznaniem głową i zaczyna odkładać grę na bok. "Jesteś świetnym graczem, może nawet mistrzem. Posiadasz godne pochwały umiejętności."~ */
  IF ~~ THEN REPLY #41483 /* ~"Dzięki... Czy zawsze grywasz tak bezlitośnie?"~ */ GOTO 23
  IF ~~ THEN REPLY #41484 /* ~"Dzięki. Wspominałaś wcześniej o prowadzeniu dysputy?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41485 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41486 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41487 /* ~"Tak, zdaje się jednak, że już w to wcześniej grałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.1 2.3 3.3 5.2 6.3 7.8 8.2 9.1 10.2 11.2 14.2 19.2 20.1 21.7 22.2 23.1 24.2 25.2 27.2 28.2 30.2 31.2 38.1 67.0
  SAY #41316 /* ~Dolora kieruje wzrok na podłogę i wydaje z siebie odgłos, który mógłby być smutnym westchnięciem. "Jestem chętna, by służyć ci jako gospodarz, teraz jednak na inne pytania nie chcę odpowiadać. Przykro mi, ale obawiam się, że chwilowo będziesz musiał z nimi trochę poczekać."~ */
  IF ~~ THEN REPLY #41488 /* ~"Coś nie tak? Czy mogę ci jakoś pomóc?"~ */ JOURNAL #66740 /* ~Dolora, jedna z kobiet w Przybytku Zaspokajania Żądz Intelektualnych odmawia udzielania odpowiedzi na te z moich pytań, które nie dotyczą bezpośrednio jej pracy jako 'kurtyzany'... Zachowanie takie wydaje mi się dość intrygujące i odnoszę wrażenie, że akurat ona może posiadać informacje, które mają dla mnie dużą wartość.~ */ GOTO 33
  IF ~~ THEN REPLY #41489 /* ~"Porozmawiam z tobą kiedy indziej. Żegnaj."~ */ JOURNAL #66740 /* ~Dolora, jedna z kobiet w Przybytku Zaspokajania Żądz Intelektualnych odmawia udzielania odpowiedzi na te z moich pytań, które nie dotyczą bezpośrednio jej pracy jako 'kurtyzany'... Zachowanie takie wydaje mi się dość intrygujące i odnoszę wrażenie, że akurat ona może posiadać informacje, które mają dla mnie dużą wartość.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41317 /* ~Podnosi wzrok z podłogi i spogląda ci w oczy. Po raz kolejny uderza cię bladość jej gładkiej skóry i chłodna głębia jej srebrzystych oczu. "Nie... Nie. Obawiam się, że nie. Moje problemy to sprawa uczuć. Sądzę, że z czasem wszystko powinno się ułożyć."~ */
  IF ~~ THEN REPLY #41490 /* ~"Jesteś pewna, że nie mogę nic dla ciebie zrobić?"~ */ GOTO 34
  IF ~~ THEN REPLY #41491 /* ~"Porozmawiam z tobą kiedy indziej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #41318 /* ~"Pewna?" Dolora przerywa, zastanawiając się jakby. "Nie, nie jestem. Ma pierwsza miłość, Wesołek, wciąż posiada klucze do mego serca. Tak długo, jak je ma, nie wolno mi pokochać kogoś innego. Oto przyczyna mojej melancholii."~ */
  IF ~~ THEN REPLY #41492 /* ~"Dlaczego go nie poszukasz, nie porozmawiasz z nim?"~ */ GOTO 35
  IF ~~ THEN REPLY #41493 /* ~"W takim razie poszukam tego Wesołka i pomówię z nim w twoim imieniu."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~Zgodziłem się poszukać człowieka zwanego Wesołkiem, pierwszą miłość Dolory, i porozmawiać z nim w jej imieniu. Powiedziała mi, że jest on członkiem Stronnictwa Doznań, więc powinienem pytać o niego w Gmachu Rozrywki.~ */ GOTO 36
  IF ~~ THEN REPLY #41494 /* ~"Masz szczęście. Mogę poszukać Wesołka... za odpowiednią zapłatę."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~W zamian za nagrodę, zgodziłem się poszukać człowieka zwanego Wesołkiem, pierwszą miłość Dolory, i porozmawiać z nim w jej imieniu. Powiedziała mi, że jest on członkiem Stronnictwa Doznań, więc powinienem pytać o niego w Gmachu Rozrywki.~ */ GOTO 37
  IF ~~ THEN REPLY #41495 /* ~"Rozumiem. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41319 /* ~Potrząsa głową. "Nie mogę opuścić tego miejsca. Powody tego mają wyjątkowo osobistą naturę i nie powinnam się nimi dzielić z nieznajomymi. Nawet z tymi, który są wobec mnie uprzejmi. Wystarczy więc jak powiem, iż nie mogę poszukać Wesołka osobiście."~ */
  IF ~~ THEN REPLY #41496 /* ~"W takim razie poszukam tego Wesołka i pomówię z nim w twoim imieniu."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~Zgodziłem się poszukać człowieka zwanego Wesołkiem, pierwszą miłość Dolory, i porozmawiać z nim w jej imieniu. Powiedziała mi, że jest on członkiem Stronnictwa Doznań, więc powinienem pytać o niego w Gmachu Rozrywki.~ */ GOTO 36
  IF ~~ THEN REPLY #41497 /* ~"Masz szczęście. Mogę poszukać Wesołka... za odpowiednią zapłatę."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~W zamian za nagrodę, zgodziłem się poszukać człowieka zwanego Wesołkiem, pierwszą miłość Dolory, i porozmawiać z nim w jej imieniu. Powiedziała mi, że jest on członkiem Stronnictwa Doznań, więc powinienem pytać o niego w Gmachu Rozrywki.~ */ GOTO 37
  IF ~~ THEN REPLY #41498 /* ~"Rozumiem. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #41320 /* ~Dolora przytakuje i na jej ustach pojawia się delikatny cień uśmiechu. Pochyla głowę. "Jeżeli znajdziesz Wesołka i pomówisz z nim, będę niezmiernie wdzięczna. Jest on członkiem Stronnictwa Doznań, dlatego możesz o niego zapytać w Miejskim Gmachu Rozrywki."~ */
  IF ~~ THEN REPLY #41499 /* ~"Wrócę, gdy go odnajdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1
  SAY #41321 /* ~"Posiadam trochę oszczędności pod postacią biżuterii, którą kiedyś dostałam w podarunku. Jeśli to wystarczy, oddam ci ją w zamian. Wesołek jest członkiem Stronnictwa Doznań, możesz więc zapytać o niego w Miejskim Gmachu Rozrywki."~ */
  IF ~~ THEN REPLY #41500 /* ~"Dobrze. Wrócę, jeśli go znajdę. Żegnaj."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",1)
~ THEN BEGIN 38 // from:
  SAY #41322 /* ~Dolora obrzuca cię przelotnym spojrzeniem swych chłodnych, stalowych oczu, gdy się do niej zbliżasz. "Witaj. W czym mogę ci służyć?"~ */
  IF ~~ THEN REPLY #41501 /* ~"W jaki sposób możesz mi służyć, Doloro?"~ */ GOTO 2
  IF ~~ THEN REPLY #41502 /* ~"W zasadzie to mam jedynie parę pytań..."~ */ GOTO 32
  IF ~~ THEN REPLY #41503 /* ~"Tylko tędy przechodzę. Żegnaj."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",2)
~ THEN BEGIN 39 // from:
  SAY #41323 /* ~Oczy Dolory rozbłyskują, gdy cię dostrzega. "Znalazłeś go? Zgodził się zwrócić klucze do mego serca?"~ */
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41504 /* ~"Nie, jeszcze nie. Żegnaj."~ */ EXIT
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41506 /* ~"Tak... Mam klucze do twego serca. Oto one."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #39471 /* ~Po odnalezieniu Wesołka, wróciłem do Dolory i oddałem klucze do jej serca.~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY #41324 /* ~Przez chwilę przygląda ci się w milczeniu. "Gdzie one są?"~ */
  IF ~~ THEN REPLY #41507 /* ~"Ech... Wrócę, gdy będę je mieć."~ */ DO ~SetGlobal("Dolora","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1 43.0
  SAY #41325 /* ~"Nareszcie..." Gdy bierze od ciebie klucze, jej dłoń muska twoją. Skórą ma suchą, ale chłodną w dotyku niczym zimny metal. "Będą mi bardzo pomocne. Dziękuję."~ */
  IF ~  Global("Good_Dolora_1","GLOBAL",1)
~ THEN REPLY #41508 /* ~"Oczywiście, Doloro. Mam parę pytań..."~ */ GOTO 44
  IF ~  Global("Evil_Dolora_1","GLOBAL",1)
~ THEN REPLY #41510 /* ~"Oczywiście. A moja zapłata...?"~ */ DO ~GiveItemCreate("Silbra",Protagonist,1,0,0)
GiveItemCreate("Silbra",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #41509 /* ~"Cieszę się, że mogłem pomóc. Żegnaj, Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #41326 /* ~Dolora przytakuje, po czym wyjmuje w sakiewki parę bransolet. "Teraz są twoje. Weź je, należą ci się."~ */
  IF ~~ THEN REPLY #41511 /* ~"Mam teraz parę pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41512 /* ~"Dobrze. Żegnaj, Doloro."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",3)
~ THEN BEGIN 43 // from:
  SAY #41327 /* ~Jej oczy rozbłyskują, gdy cię dostrzega. "Klucze do mego serca... Znalazłeś to, co utraciłam?"~ */
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41513 /* ~"Tak... Oto one."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",3)
AddexperienceParty(30000)
~ GOTO 41
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41514 /* ~"Nie... Wrócę jednak, gdy będę go mnieć."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 2.4 3.4 5.3 6.4 7.9 8.3 9.2 10.3 11.3 14.3 19.3 20.2 21.8 22.3 23.2 24.3 25.3 27.3 28.3 30.3 31.3 41.0 42.0 45.2 46.1 47.1 48.3 49.2 50.0 51.0 52.1 53.0 54.0 55.0 63.0 64.1 65.0 66.0 67.1
  SAY #41328 /* ~"Oczywiście. Odpowiem na wszystko, na co tylko będę w stanie."~ */
  IF ~~ THEN REPLY #41515 /* ~"Miałem nadzieję, że dowiem się czegoś więcej o twojej naturze."~ */ GOTO 45
  IF ~~ THEN REPLY #41516 /* ~"Czym się tu zajmujesz?"~ */ GOTO 48
  IF ~~ THEN REPLY #41517 /* ~"Możesz mi o tym miejscu powiedzieć?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41518 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora zdradziła mi, że Ecco - milcząca kurtyzana, nie może mówić, bo skradziono i zniszczono jej głos. Dolora powiedziała, że niegdyś Ecco zalecała się do kochanka boginki o imieniu Paramisha. Paramisha, w przypływie gniewu i zazdrości, wydarła jej głos, wcisnęła go do kryształowej fiolki i rzuciła go do pyska megogalandragi. Dolora powiedziała mi, że Ecco na zawsze utraciła swój głos i przemówi dopiero wtedy, kiedy ktoś obdaruje ją nowym głosem. W sumie dość bajkowa historia, ale Dolora bije się w piersi, że usłyszała ją z ust właśnie owego kochanka Paramishy, który był pośrednim sprawcą całej tragedii Ecco.~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67843 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora zdradziła mi, że Ecco - milcząca kurtyzana, nie może mówić, bo skradziono i zniszczono jej głos. Dolora powiedziała, że niegdyś Ecco zalecała się do kochanka boginki o imieniu Paramisha. Paramisha, w przypływie gniewu i zazdrości, wydarła jej głos, wcisnęła go do kryształowej fiolki i rzuciła go do pyska megogalandragi. Dolora powiedziała mi, że Ecco na zawsze utraciła swój głos i przemówi dopiero wtedy, kiedy ktoś obdaruje ją nowym głosem. W sumie dość bajkowa historia, ale Dolora bije się w piersi, że usłyszała ją z ust właśnie owego kochanka Paramishy, który był pośrednim sprawcą całej tragedii Ecco.~ */ GOTO 66
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41519 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ JOURNAL #66743 /* ~Spytałem się jednej z kurtyzan, czy to prawda, że Kesai-Serris jest córką Raveli. Kobieta ta poradziła mi, abym zapytał o to Julię. Zdaje się, że zanim Julia poznała Monteka, była dobrą przyjaciółką Kesai-Serris.~ */ GOTO 65
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41520 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ JOURNAL #66727 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o osobistym zapachu Vivian. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41521 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ JOURNAL #66728 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o zniknięciu karmazynowego welonu. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 54
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41522 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ JOURNAL #66742 /* ~Kiedy zapytałem się o Ravelę jednej z kurtyzan z Przybytku, dziewczyna poradziła mi, abym porozmawiał na temat Raveli z Yves. Powiedziano mi, że Yves zwykła kolekcjonować wszystkie plotki i opowiastki i na pewno znajdzie w swoim repertuarze coś na temat Raveli.~ */ GOTO 55
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #41523 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 63
  IF ~~ THEN REPLY #41524 /* ~"W zasadzie to mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #41329 /* ~Dolora mruga. "Wesołek nigdy nie mówił zbyt dużo o mej budowie. Niewiele wiem o moich wewnętrznych narządach - pewnie tyle, ile ty wiesz o swoich. Na pozór pod każdym względem jestem zwykłą kobietą... pomijając strukturę i temperaturę mego ciała. Czy zaspokaja to twoją ciekawość?"~ */
  IF ~~ THEN REPLY #41525 /* ~"Co z twymi emocjami, twoim umysłem?"~ */ GOTO 46
  IF ~~ THEN REPLY #41526 /* ~"Do czego właściwie służą te klucze?"~ */ GOTO 47
  IF ~~ THEN REPLY #41527 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41528 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #41330 /* ~"Jego działanie jest dla mnie zagadką. Podobnie jak działanie jakiegoś ludzkiego. Kiedy pojawiłam się tu po raz pierwszy, nie rozumiałam emocji, sama ich nie miałam. Teraz mam... uczucia, chociaż dopiero zaczynam je rozumieć."~ */
  IF ~~ THEN REPLY #41529 /* ~"Co tak właściwie robią te klucze?"~ */ GOTO 47
  IF ~~ THEN REPLY #41530 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41531 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #41331 /* ~"Mogę jedynie założyć, iż Wesołek stworzył te klucze po to, by uniknąć ryzyka, że odejdę od niego, nim on znudzi się już swoim eksperymentem. Teraz ja mam je w swym posiadaniu. Mogę swobodnie mieć własne emocje i rozwijać je."~ */
  IF ~~ THEN REPLY #41532 /* ~"Czy masz uczucia? Jak funkcjonuje twój umysł?"~ */ GOTO 46
  IF ~~ THEN REPLY #41533 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41534 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY #41332 /* ~"Ja, podobnie jak i inne znajdujące się tu kobiety, jestem uczennicą Pani Sławy. Szkoli nas ona w sposobach wypowiadania się i prowadzenia dyskusji. Większość studentów podąży dalej i zacznie samodzielnie się kształcić, by przygotować się do ceremonii inicjacyjnej Stronnictwa Doznań."~ */
  IF ~~ THEN REPLY #41535 /* ~"Czy przebywanie tutaj sprawia ci przyjemność?"~ */ GOTO 49
  IF ~~ THEN REPLY #41536 /* ~"Opowiedz mi o tym Stronnictwie Doznań."~ */ GOTO 50
  IF ~~ THEN REPLY #41537 /* ~"Ceremonii inicjacyjnej?"~ */ GOTO 50
  IF ~~ THEN REPLY #41538 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41539 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41333 /* ~"Dużo się uczę. Tak, sprawia mi to przyjemność." Uśmiecha się na chwilę - co wygląda dość dziwnie na jej bladej twarzy, jakby było dla niej czymś obcym.~ */
  IF ~~ THEN REPLY #41540 /* ~"Wspomniałaś o Stronnictwie Doznań..."~ */ GOTO 50
  IF ~~ THEN REPLY #41541 /* ~"Wspomniałaś coś o ceremonii inicjacyjnej?"~ */ GOTO 50
  IF ~~ THEN REPLY #41542 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41543 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1 48.2 49.0 49.1
  SAY #41334 /* ~"Najlepiej zrobisz, jeśli poszukasz odpowiedzi na to pytanie u Pani Sławy. Ona wyjaśni to lepiej niż ja jestem w stanie."~ */
  IF ~~ THEN REPLY #41544 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41545 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 44.2
  SAY #41335 /* ~"Tak, mogę. Przybytek Zaspokajania Żądz Intelektualnych to szkoła. Uczęszczające tu kurtyzany szkoli się w sposobach wypowiadania się i prowadzenia dyskusji. Jeśli potrzebujesz dokładniejszego wyjaśnienia, polecam ci rozmowę z prowadzącą to miejsce, Panią Sławą."~ */
  IF ~~ THEN REPLY #41546 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41547 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 44.6
  SAY #41336 /* ~"Rozumiem, że chodzi ci o jej osobisty zapach, który - jak twierdzi ona - został jej ukradziony przez jedną z tutejszych kurtyzan? Nie wiem, u kogo się on teraz znajduje. Możesz się jednak spytać Nenny. Zdaje się ona widzieć sporo z tego, co tu się dzieje."~ */
  IF ~~ THEN REPLY #41548 /* ~"Jak można *ukraść* czyjś zapach?"~ */ GOTO 53
  IF ~~ THEN REPLY #41549 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41550 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41337 /* ~"Vivian wykorzystuje aspekt Sztuki, by tworzyć, zmieniać i ulepszać właściwości zapachowe obiektów, zarówno żywych jak i martwych. Być może złodziej również posiadał któreś z tych umiejętności. Jej zapach spocznie jednak w obiekcie, nie na złodzieju - to właśnie problem. Inaczej Vivian poznałaby go po zapachu."~ */
  IF ~~ THEN REPLY #41551 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41552 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 44.7
  SAY #41338 /* ~Dolora potrząsnęła głową. "Nie widziałam welonu Marissy odkąd po raz ostatni nosiła go poza swymi komnatami. Było to jakiś czas temu." Przymyka na chwilę oczy, po czy przemówia ponownie. "Nenny widzi sporo z tego, co się tutaj dzieje. Dobrze zrobisz pytając ją, czy nie widziała czegoś, co mogłoby ci pomóc."~ */
  IF ~~ THEN REPLY #41553 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41554 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 44.8
  SAY #41339 /* ~"Wiem, że była - lub jest, jeśli wciąż wlicza się w poczet żyjących - wiedźmą nocy, wyjątkowo potężną i nieobliczalnie złą. Pani Bólu zesłała ją do pozawymiarowego więzienia za zbrodnie, których dokonała przeciwko miastu Sigil. Dobrze by było, gdybyś zapytał o nią Yves. Zna ona sporo rozmaitych opowieści i najprawdopodobniej opowie ci te o Raveli."~ */
  IF ~~ THEN REPLY #41555 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41556 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.0 16.0
  SAY #41340 /* ~W umyśle twym formuje się wspomnienie ogromnej sali... przepastnego miejsca wypełnionego przez wykwintnie ubranych przedstawicieli elit... Odbywał się tam uroczysty bal. Przed tobą stał niski, nienagannie ubrany mężczyzna noszący złoty medalion; widniał na nim symbol, który rozpoznałeś jako "Znak Jedynego". Staliście obaj w kręgu utworzonym przez gapiów, którzy zebrali się, by posłuchać waszej debaty.~ */
  IF ~~ THEN REPLY #41557 /* ~Pozwól wspomnieniu trwać dalej.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41341 /* ~"Ależ... Ależ to jest niemożliwe!" odrzekł mężczyzna, wyglądając na zmieszanego.

"Och, ależ jest." Przypomniałeś sobie swą odpowiedź. "Wysunąłem kilka niepodważalnych argumentów i przedstawiłem ci parę przykładów. Po prostu nie istniejesz."

"Ależ... nie możesz! Gdybym się zgodził, to... to..."~ */
  IF ~~ THEN REPLY #41558 /* ~Pozwól wspomnieniu trwać dalej.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #41342 /* ~"Tak. Przestałbyś istnieć."

I tak, bez żadnych rozbłysków światła czy kłębów dymu - bez jakichkolwiek fanfar - mężczyzna po prostu zniknął.~ */
  IF ~~ THEN REPLY #41559 /* ~Pozwól wspomnieniu trwać dalej.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #41343 /* ~Rozległy się *ochy* i *achy* widzów, niektórzy bili brawo... Pamiętasz, że skłoniłeś się zamaszyście, po czym odszedłeś z delikatnym uśmiechem zadowolenia na ustach.

Zdajesz sobie nagle sprawę, że Dolora przygląda ci się uważnie. "Dobrze się czujesz? Możemy dokończyć naszą dyskusję innym razem, jeśli chcesz..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41560 /* ~"Nie... Kontynuujmy dysputę..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41561 /* ~"Nie... Kontynuujmy dysputę..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 60 // from: 26.0 29.0
  SAY #41344 /* ~Umysł twój zaczynają wypełniać wspomnienia pokrytego dymem pola bitwy... Na szczycie wzgórza, obserwując bitwę, siedziałeś ty, usadowiony na potężnej, czworonożnej bestii. Ryczenie rogów niosło w sobie rozkazy dla znajdujących się poniżej oddziałów."~ */
  IF ~~ THEN REPLY #41562 /* ~Pozwól wspomnieniu trwać dalej.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #41345 /* ~Gdy na nie patrzyłeś, twe odziały podzieliły się, uciekając na prawo i lewo, gdy wróg wyrąbywał sobie drogę na szczyt wzgórza, by zabić wrogiego dowódcę - ciebie.~ */
  IF ~~ THEN REPLY #41563 /* ~Pozwól wspomnieniu trwać dalej.~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #41346 /* ~"Głupcy," pomyślałeś, formując usta w dziki uśmiech. "Moi rycerze wykonają szarżę w dół wzgórza i powstrzymają ich błyskawicznie... A w tym momencie moja 'wycofująca się' piechota wkroczy, by przełamać ich flanki! Ach, wkrótce osiągnę kolejne zwycięstwo..."

Zdajesz sobie nagle sprawę, że Dolora przygląda ci się uważnie. "Dobrze się czujesz? Możemy dokończyć naszą grę kiedy indziej, jeśli sobie życzysz..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41565 /* ~"Nie... Kontynuujmy grę..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41566 /* ~"Nie... Kontynuujmy grę..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 63 // from: 44.9
  SAY #41347 /* ~Potrząsnęła głową. "Obawiam się, że jesteś w błędzie. Nikt nie zaczynał ostatnio nauki i nie ma dziesiątej studentki."~ */
  IF ~~ THEN REPLY #41567 /* ~"Mam teraz inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41568 /* ~"Mniejsza więc z tym. Żegnaj."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",4)
~ THEN BEGIN 64 // from:
  SAY #41348 /* ~Twarz Dolory zdaje się rozjaśnić, gdy cię dostrzega. "Witaj ponownie. Czym mogę ci służyć?"~ */
  IF ~~ THEN REPLY #41569 /* ~"A w jaki sposób możesz mi służyć, Doloro?"~ */ GOTO 2
  IF ~~ THEN REPLY #41570 /* ~"W zasadzie to mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41571 /* ~"Przechodzę tędy jedynie, Doloro. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 44.5
  SAY #41349 /* ~"Ja również słyszałam takie plotki, nie wiem jednak. Być może inne przebywające tu kobiety będą mogły udzielić ci odpowiedzi, jeśli nie sama Kesai. Zapytaj się Julii... Ona i Kesai były kiedyś bliskimi przyjaciółkami, póki Kesai nie spotkała Wesołka."~ */
  IF ~~ THEN REPLY #41572 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41573 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 44.3 44.4
  SAY #41350 /* ~"Na imię ma Ecco. Głos jej, a także wszelkie inne sposoby komunikowania się zostały jej skradzione bądź unicestwione. Za pomocą swych słów odrzuciła ona kiedyś kochanka bożka Paramishy. Paramisha wpadł w straszliwy gniew i wydarł głos Ecco, zamknął go w kryształowej fiolce i wetknął go do paszczy megogalamdragi. Ecco utraciła swój głos na zawsze. Tylko inny, nowy głos mógłby przywrócić jej zdolność komunikowania się. Wiem to, ponieważ osobiście rozmawiałam z kochankiem Paramishy."~ */
  IF ~~ THEN REPLY #41574 /* ~"Mam inne pytanie..."~ */ GOTO 44
  IF ~~ THEN REPLY #41575 /* ~"To już wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 19.0
  SAY #41351 /* ~Kończysz grę z takim samym rezultatem jak poprzednio.

"Wyjątkowo wciągająca gra. Jeszcze raz?"~ */
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41576 /* ~"Nie teraz. Mam kilka pytań..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41577 /* ~"Nie teraz. Mam kilka pytań..."~ */ GOTO 44
  IF ~~ THEN REPLY #41578 /* ~"Może kiedy indziej, Doloro. Żegnaj."~ */ EXIT
END
