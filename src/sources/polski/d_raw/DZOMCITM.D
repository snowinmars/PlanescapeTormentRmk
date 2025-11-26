// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19349 /* ~Ten gnijący trup mężczyzny z początku wydaje się być całkowicie nieświadomy twej obecności. Jednakże gdy podchodzisz, odwraca się i kiwa głową, jak gdyby na powitanie.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19397 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19398 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #19399 /* ~Zostaw zombiego w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1
  SAY #19350 /* ~W odpowiedzi zombie jęczy cicho: "Ggnhuuu... fnnnuuugh..." Przy każdym jego wydechu w powietrzu roznosi się odór gnijącego ciała.~ */
  IF ~~ THEN REPLY #19400 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #19401 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19351 /* ~"Stuuuhhh... mmmaaa-uuhrrr." Zombie wydaje serię niezrozumiałych jęków... Nie jesteś w stanie zrozumieć niczego, co on mówi.~ */
  IF ~~ THEN REPLY #19402 /* ~"Nie rozumiem cię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0
  SAY #19352 /* ~W odpowiedzi zombie jęczy cicho. Tylko dzięki twoim umiejętnościom komunikowania się z umarłymi, możesz zrozumieć jego słowa: "Wiii-taj."~ */
  IF ~~ THEN REPLY #19403 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #19404 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19353 /* ~Przed udzieleniem odpowiedzi trup przystaje na chwilę, przenosząc ciężar ciała z nogi na nogę. "Py-ta-nie?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19405 /* ~"Dlaczego mnie uwięziono?"~ */ GOTO 6
  IF ~~ THEN REPLY #19407 /* ~"Gdzie ja jestem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19408 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~  !Dead("Soego2")
~ THEN REPLY #19410 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Dead("Soego2")
~ THEN REPLY #19523 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19411 /* ~"Pozwól, że zapytam o jedną osobę w szczególności..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19413 /* ~"Czy widziałeś gdzieś tutaj małą, brązową kulę?"~ */ GOTO 23
  IF ~~ THEN REPLY #19415 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 25.1
  SAY #19357 /* ~Głowa trupa potakuje sennie. "Py-ta-nia."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19417 /* ~"Dlaczego mnie uwięziono?"~ */ GOTO 6
  IF ~~ THEN REPLY #19418 /* ~"Gdzie ja jestem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19419 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19420 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19421 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19422 /* ~"Pozwól, że zapytam o jedną osobę w szczególności..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19423 /* ~"Czy widziałeś tu gdzieś małą, brązową kulkę?"~ */ GOTO 23
  IF ~~ THEN REPLY #19424 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19358 /* ~Zalega długa cisza. "Yyyyyy?" Zombie wzrusza ramionami, przy czym jedno z jego ramion nie unosi się tak wysoko, jak drugie. "Ssspytaj Mmmary, Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19425 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19426 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19427 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19359 /* ~"Dooom. Mmmój dom." Resztkami mięśni twarzy usiłuje ściągnąć usta, aby się uśmiechnąć. "Zzziemiaaa Miiilczącego Króóóla, Zieeemie Umaaarłych."~ */
  IF ~~ THEN REPLY #19428 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19429 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19430 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19375 /* ~Zombie przygląda ci się przez chwilę. "Tooo móóój ooobowiąąązek. Moooja praaaca dlaaa Miiilcząceeego Króóóla. Dooobrze sssłużę sweeemu dooomu."~ */
  IF ~~ THEN REPLY #19431 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19432 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19433 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19377 /* ~"Wieeele. Myyy, szszszkieleeety, ghuuule." Unosi ramię i wskazuje na wschód. "Szszszczuryyy." Jego ramię obraca się ciężko wokół własnej osi i wskazuje na ciebie. "Żyyywi."~ */
  IF ~~ THEN REPLY #19434 /* ~"Czy oprócz mnie jest tutaj jeszcze ktoś żywy?"~ */ GOTO 11
  IF ~~ THEN REPLY #19435 /* ~"Opowiedz mi o swej rasie."~ */ GOTO 13
  IF ~~ THEN REPLY #19436 /* ~"Opowiedz mi o innych nieumarłych."~ */ GOTO 14
  IF ~~ THEN REPLY #19437 /* ~"Opowiedz mi o szczurach."~ */ GOTO 17
  IF ~~ THEN REPLY #19438 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19439 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19380 /* ~"Wieeele. Myyy, kośśści, ghuuule." Unosi ramię i wskazuje na wschód. "Szszszczuryyy."~ */
  IF ~~ THEN REPLY #19440 /* ~"Opowiedz mi o swojej rasie."~ */ GOTO 13
  IF ~~ THEN REPLY #19441 /* ~"Opowiedz mi o innych nieumarłych."~ */ GOTO 14
  IF ~~ THEN REPLY #19442 /* ~"Opowiedz mi o szczurach."~ */ GOTO 17
  IF ~~ THEN REPLY #19443 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19444 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19382 /* ~Głowa trupa kołysze się w tył i w przód, w tył i w przód. "Sssoooeee..."~ */
  IF ~~ THEN REPLY #19445 /* ~"Kim jest Soe?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19446 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19447 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19448 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19449 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19383 /* ~"Grrra-baaa-rrrz. Ssspytaj Mmmary, Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19450 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19451 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19452 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19453 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19454 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19384 /* ~Zombie składa gnijące ręce na piersi pooranej bliznami rozpadu. "Siiilny!" Jedną ręką wskazuje na stopy, potem na skroń, gdzie kawałek ciała zliniał, odsłaniając pod spodem nagą czaszkę. "Wooolnyyy. Hhhehhh..." Trup wydaje z siebie drażniący, bulgotający odgłos, który w jakiś sposób przypomina ci chichot. "Prrrowadzeni przez Czerssstwą Mmmary..."~ */
  IF ~~ THEN REPLY #19455 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19456 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19457 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19458 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19459 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19385 /* ~"Ktooo? Kooości? Ghuuule?"~ */
  IF ~~ THEN REPLY #19460 /* ~"Kości... szkielety?"~ */ GOTO 15
  IF ~~ THEN REPLY #19461 /* ~"Ghule."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19462 /* ~"Nieważne. Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19463 /* ~"Nieważne. Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19464 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19465 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19386 /* ~"Kooości!" W jego głosie dostrzec można podziw. "Prooowadzi nasss, ssstoi na czeeele. Raaazem buuudujemy Zieeemie Umaaarłych."~ */
  IF ~~ THEN REPLY #19466 /* ~"Prowadzą was szkielety?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19467 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19468 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19469 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19470 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19387 /* ~"Hhhargrimmm prooowadzi kooości. Rooozmawiaaa z Miiilczącym Królem, poooten rooozmawia z Czerssstwą Mmmary. Mmmary rooozmawia z naaami, zleeeca naam praace." Kiwa głową.~ */
  IF ~~ THEN REPLY #19471 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19472 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19473 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19474 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19475 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19476 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19388 /* ~Ponownie jego ręka powoli podnosi się i huśta, wskazując jakiś punkt na wschodzie. "Szczuuury..." Wilgotne strzępy jego górnej wargi rozsuwają się w szyderczym uśmiechu; czarny, zaropiały płyn ścieka po brązowawo-żółtych zębach. "Jeeedzą zmarłych... jeeedzą... złeee. Boooją sięęę teeeraz ghuuuli. Trzyyymają się zzz daaala."~ */
  IF ~~ THEN REPLY #19477 /* ~"Szczury zjadają tutaj ciała?"~ */ GOTO 18
  IF ~~ THEN REPLY #19478 /* ~"Macie pakt ze szczurami?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19479 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19480 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19481 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19482 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19389 /* ~"Uuuhn... ssspytaj Mmmary, Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19483 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19484 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19485 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19486 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19487 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19390 /* ~Zombie wskazuje na swój brzuch, gdzie gnijące dziury w ciele wydobywają na światło dzienne rozmaite organy wewnętrzne. "Zaaawszeee głooodniii. Miiilczący Król unieeemożliiiwia im jeeedzenie zmaaarłych tuuutaj przyyy pooomocy praaawaaa. Ghuuule słuuużą pooomocą w naaszej ochrooonie i ssstrzeeegą tyyych saaal."~ */
  IF ~~ THEN REPLY #19488 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19489 /* ~"Przed kim strzegą te gmachy?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19490 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19491 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19492 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19493 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19391 /* ~"Szszszczuryyy. I..." Unosi ramię, wskazując prosto w górę. "...żyyywi, z góóóry. Przyyychodzą kraaaść zmarłych, przeeeszkaaadzać iiim."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19494 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19495 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19496 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19497 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 25.0
  SAY #19392 /* ~"Ooonaaa naaas prooowadzi. Strzeeeże nasss. Przekazuuuje naaam słooowa Miiilczącego Króla."~ */
  IF ~~ THEN REPLY #19498 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19499 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19500 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19393 /* ~"Paaan Zieeem Umaaarłych. Ssspytaj Mmmary. Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19501 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19502 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19503 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19394 /* ~Trup stoi nieruchomo, wpatrując się w ciebie. W końcu odzywa się. "Nieee. Ssspytaj Mmmary. Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19504 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19505 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19506 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19395 /* ~Gdy zombie tak stoi naprzeciwko ciebie, coś jakby iskierka wspomnienia zapala się w jego martwych oczach. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19507 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19508 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #19509 /* ~Zostaw zombiego w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.5 5.5
  SAY #19396 /* ~Trup kręci przecząco głową. Ssspytaj Mmmary. Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19510 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19511 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19512 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
