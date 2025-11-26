// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~Ten gnijący trup kobiety z początku wydaje się być całkowicie nieświadomy twej obecności. Jednakże gdy podchodzisz, odwraca się i kiwa głową, jak gdyby na powitanie.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~Zostaw zombicę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~W odpowiedzi zombica jęczy cicho: "Ggnhuuu... fnnnuuugh..." Przy każdym jej wydechu w powietrzu roznosi się odór gnijącego ciała.~ */
  IF ~~ THEN REPLY #19557 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~"Stuuuhhh... mmmaaa-uuhrrr." Zombica wydaje serię niezrozumiałych jęków... Nie jesteś w stanie zrozumieć niczego, co ona mówi.~ */
  IF ~~ THEN REPLY #19559 /* ~"Nie rozumiem cię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~W odpowiedzi zombica jęczy cicho. Tylko dzięki twoim umiejętnościom komunikowania się z umarłymi, możesz zrozumieć jej słowa: "Wiii-taj."~ */
  IF ~~ THEN REPLY #19560 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~Przed udzieleniem odpowiedzi trup przystaje na chwilę, przenosząc ciężar ciała z nogi na nogę. "Py-ta-nie?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~"Dlaczego mnie uwięziono?"~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~"Gdzie ja jestem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~"Pozwól, że zapytam cię o jedną osobę w szczególności..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~"Czy widziałaś gdzieś tutaj małą, brązową kulę?"~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~Głowa trupa potakuje sennie. "Py-ta-nia."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~"Dlaczego mnie uwięziono?"~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~"Gdzie ja jestem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~"Pozwól, że zapytam cię o jedną osobę w szczególności..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~"Czy widziałaś gdzieś tutaj małą, brązową kulę?"~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~Zalega długa cisza. "Yyyyyy?" Zombica wzrusza ramionami, przy czym jedno z jej ramion nie unosi się tak wysoko, jak drugie. "Ssspytaj Mmmary, Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19578 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~"Dooom. Mmmój dom." Resztkami mięśni twarzy usiłuje ściągnąć usta, aby się uśmiechnąć. "Zzziemiaaa Miiilczącego Króóóla, Zieeemie Umaaarłych."~ */
  IF ~~ THEN REPLY #19581 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~Zombica przygląda ci się przez chwilę. "Tooo móóój ooobowiąąązek. Moooja praaaca dlaaa Miiilcząceeego Króóóla. Dooobrze sssłużę sweeemu dooomu."~ */
  IF ~~ THEN REPLY #19584 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~"Wieeelu. Myyy, szszszkieleeety, ghuuule." Unosi ramię i wskazuje na wschód. "Szszszczuryyy." Jej ramię obraca się ciężko wokół własnej osi i wskazuje na ciebie. "Żyyywi."~ */
  IF ~~ THEN REPLY #19587 /* ~"Czy oprócz mnie jest tutaj jeszcze ktoś żywy?"~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~"Opowiedz mi o swej rasie."~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~"Opowiedz mi o innych nieumarłych."~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~"Opowiedz mi o szczurach."~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~"Wieeelu. Myyy, kośśści, ghuuule." Unosi ramię i wskazuje na wschód. "Szszszczuryyy."~ */
  IF ~~ THEN REPLY #19593 /* ~"Opowiedz mi o... swojej rasie."~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~"Opowiedz mi o innych nieumarłych."~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~"Opowiedz mi o szczurach."~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~Głowa trupa kołysze się w tył i w przód, w tył i w przód. "Sssoooeeee..."~ */
  IF ~~ THEN REPLY #19598 /* ~"Kto to jest Soe?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~"Grrra-baaa-rrrz. Ssspytaj Mmmary, Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19603 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~Zombica składa gnijące ręce na piersi pooranej bliznami rozpadu. "Siiilna!" Jedną ręką wskazuje na stopy, potem na skroń. "Poowwooolna. Hhhehhh..." Trup wydaje z siebie drażniący, bulgotający odgłos, który w jakiś sposób przypomina ci chichot. "Prrrowadzeni przez Czerssstwą Mmmaary..."~ */
  IF ~~ THEN REPLY #19608 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~"Ktooo? Kooości? Ghuuule?"~ */
  IF ~~ THEN REPLY #19613 /* ~"Kości... szkielety?"~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~"Ghule."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~"Nieważne. Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~"Nieważne. Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~"Kooości!" W jej głosie dostrzec można podziw. "Prooowadzi nasss, ssstoi na czeeele. Raaazem buuudujemy Zieeemmie Ummmaarłyyych."~ */
  IF ~~ THEN REPLY #19619 /* ~"Prowadzą was szkielety?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~"Hhhargrimmm prooowadzi kooości. Rooozmawiaaa z Miiilczącym Królem, poooten rooozmawia z Czerssstwą Mmmary. Mmmary rooozmawia z naaami, zleeeca naam praace." Kiwa głową.~ */
  IF ~~ THEN REPLY #19624 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~Ponownie jej ręka powoli podnosi się i huśta, wskazując jakiś punkt na wschodzie. "Szczuuury..." Wilgotne strzępy jej górnej wargi rozsuwają się w szyderczym uśmiechu; czarny, zaropiały płyn ścieka po brązowawo-żółtych zębach. "Jeeedzą zmarłych... jeeedzą... złeee. Boooją sięęę teeeraz ghuuuli. Trzyyymają się zzz daaala."~ */
  IF ~~ THEN REPLY #19630 /* ~"Szczury zjadają tutaj ciała?"~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~"Macie pakt ze szczurami?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~"Uuuhn... ssspytaj Mmmary, Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19636 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~Zombica wskazuje na swój brzuch, gdzie gnijące dziury w ciele wydobywają na światło dzienne rozmaite organy wewnętrzne. "Zaaawszeee głooodniii. Miiilczący Krról unieeemożliiiwia im jeeedzenie zmaaarłych tuuutaj przyyy pooomocy praaawaaa. Ghuuule słuuużą pooomocą w naaszej ochrooonie i ssstrzeeegą tyyych saaal."~ */
  IF ~~ THEN REPLY #19641 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~"Przed kim strzegą tych gmachów?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~"Szszszczuryyy. I..." Unosi ramię, wskazując prosto w górę. "...żyyywi, z góóóry. Przyyychodzą kraaaść zmarłych, przeeeszkaaadzać iiim."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~"Ooonaaa naaas prooowadzi. Strzeeeże nasss. Przekazuuuje naaam słooowa Miiilczącego Krróla."~ */
  IF ~~ THEN REPLY #19651 /* ~"Opowiedz mi o... Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~"Paaan Zieeem Umaaarłych. Ssspytaj Mmmary. Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19654 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~Trup stoi nieruchomo, wpatrując się w ciebie. W końcu odzywa się. "Nieee. Ssspytaj Mmmary. Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19657 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~Gdy zombica tak stoi naprzeciwko ciebie, coś jakby iskierka wspomnienia zapala się w jej martwych oczach. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~Zostaw zombicę w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~Ten gnijący trup kobiety z początku wydaje się być całkowicie nieświadomy twej obecności. Jednakże gdy podchodzisz, odwraca się i kiwa głową, jak gdyby na powitanie.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~Trup kręci przecząco głową. Ssspytaj Mmmary. Czerssstwej Mmmary."~ */
  IF ~~ THEN REPLY #19663 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~Ten gnijący trup kobiety z początku wydaje się być całkowicie nieświadomy twej obecności. Jednakże gdy podchodzisz, odwraca się i kiwa głową, jak gdyby na powitanie.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~"Witaj..."~ */ GOTO 1
END
