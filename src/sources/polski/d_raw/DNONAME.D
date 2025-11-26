// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNONAME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNONAME~

IF ~  Global("NoName","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23470 /* ~Gnijący trup kobiety kręci głową i smutno jęczy. Jednak kiedy podchodzisz, zombica wstaje, obraca się i wyciąga do ciebie ręce, jak gdyby prosiła o pomoc.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23518 /* ~"Witaj..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23519 /* ~"Witaj..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23520 /* ~Zostaw zombicę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 18.1
  SAY #23491 /* ~Zombica jęczy: "Ggnhuuuu... fnnnnnuuuuuf?" Z każdym 'słowem' powietrze wypełnia się odorem gnijącego mięsa.~ */
  IF ~~ THEN REPLY #23521 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #23522 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #23492 /* ~"Stuuuhhh... mmmaaaa-uurrr?" Nie możesz zrozumieć jęków zombicy, ale wygląda na to, że chce cię o coś poprosić.~ */
  IF ~~ THEN REPLY #23523 /* ~"Nie rozumiem co mówisz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 18.0
  SAY #23493 /* ~W odpowiedzi zombica pojękuje cicho. Tylko dzięki swoim umiejętnościom prowadzenia rozmowy z umarłymi zawdzięczasz to, że potrafisz ją zrozumieć: "Imiiiię? Znaaasz mooje iiimiię?"~ */
  IF ~~ THEN REPLY #23524 /* ~"Nie... czy dlatego jesteś taka smutna?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_NoName_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #23525 /* ~"Nie. A powinienem?"~ */ GOTO 4
  IF ~~ THEN REPLY #23526 /* ~"Nie. Mam do ciebie kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #23527 /* ~"Nie. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #23494 /* ~"Zaaaapoomniiiałam mmoojego iiimiiiienia... mmoooje imiiię!" Jej mleczne oczy wzbierają jakąś czarną, śluzowatą substancją - to jedyny sposób, w jaki zombica może zapłakać.~ */
  IF ~~ THEN REPLY #23528 /* ~"Może jednak pomogę ci odszukać twoje imię?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23529 /* ~"A może powinnaś wybrać sobie nowe imię?"~ */ GOTO 8
  IF ~~ THEN REPLY #23530 /* ~"Dlaczego to jest dla ciebie takie ważne?"~ */ GOTO 7
  IF ~~ THEN REPLY #23531 /* ~"Szkoda. Ciągle mam do ciebie kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_NoName_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #23532 /* ~"Mam nadzieję, że je odnajdziesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 7.1 15.0
  SAY #23495 /* ~Zombica powoli przytakuje. "Mmóójj gróób..." Wskazuje na południe. "Moookrreee kaaatakkkuubmy..."~ */
  IF ~~ THEN REPLY #23533 /* ~"Ale jak go poznam?"~ */ JOURNAL #23566 /* ~Zombica poprosiła, bym odnalazł jej imię. Powiedziała, że powinno być napisane na jej grobowcu. Ma on się znajdować obok przybitej do ziemi 'kolczastej skrzyni' w katakumbach Zatopionych Ziem, na południowy zachód od Ziem Umarłych gdzie ją spotkałem.~ */ GOTO 6
  IF ~~ THEN REPLY #23534 /* ~"W takim razie pójdę poszukać twojego imienia. Do zobaczenia."~ */ EXIT
  IF ~~ THEN REPLY #23537 /* ~"Może odszukam twoje imię. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23496 /* ~"Ssskrzzzynnnia... ssszkrzyynia z kooolcaaaaami, przzzzymoocowaaana... koołło moojjego grrroobu..."~ */
  IF ~~ THEN REPLY #23539 /* ~"Dlaczego po prostu nie wybierzesz sobie nowego imienia?"~ */ GOTO 8
  IF ~~ THEN REPLY #23543 /* ~"Dlaczego to jest dla ciebie takie ważne?"~ */ GOTO 7
  IF ~~ THEN REPLY #23545 /* ~"W takim razie pójdę poszukać twojego imienia. Do zobaczenia."~ */ EXIT
  IF ~~ THEN REPLY #23547 /* ~"Może odszukam twoje imię. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1 19.3
  SAY #23497 /* ~Wyciąga do siebie gnijące ręce. Gdy spoglądasz na nie, odpada jeden paznokieć i spada na podłogę z lekkim stuknięciem. "Gggnniję... juużż nieeddługgoo nicc niee zoostanniee... tyylllkoo kośścci i iiiimmmmmię..."~ */
  IF ~~ THEN REPLY #23557 /* ~"Sam nie mam imienia. Jestem pewien, że i bez tego można się obejść."~ */ GOTO 14
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23560 /* ~"W takim razie może pomogę ci odszukać twoje imię?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23573 /* ~"Dlaczego po prostu nie wybierzesz sobie innego imienia?"~ */ GOTO 8
  IF ~~ THEN REPLY #23576 /* ~"Rozumiem. Mam do ciebie klika pytań..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23579 /* ~"Mam nadzieję, że je odnajdziesz. Żegnaj."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23582 /* ~"W takim razie będę szukał dalej. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 6.0 7.2 15.1 19.2 23.0
  SAY #23498 /* ~Zombica stoi, patrząc na ciebie bez słowa.~ */
  IF ~~ THEN REPLY #23586 /* ~"Rozumiesz? Możesz wybrać sobie nowe imię."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #23499 /* ~Zombica kręci przecząco głową i cofa się, jakby była przestraszona. "Alle... niiiee..."~ */
  IF ~~ THEN REPLY #23588 /* ~"Czy nie widzisz, jak bardzo się zmieniłaś? Czy twoje prawdziwe imię dalej by do ciebie pasowało?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23500 /* ~Zatrzymuje się na chwilę i przykłada ręce do policzków. Potem przygryza dolną wargę.~ */
  IF ~~ THEN REPLY #23591 /* ~"Widzisz? Teraz możesz dać sobie spokój ze swoim starym imieniem. Stań się kimś nowym."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23501 /* ~"Aalee... kiiim? Jaaakiee imięę?" Wydaje się być zbita z tropu.~ */
  IF ~~ THEN REPLY #23593 /* ~"Jakie tylko sobie życzysz."~ */ GOTO 12
  IF ~~ THEN REPLY #23594 /* ~"Zastanowię się nad tym. Do zobaczenia."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #23502 /* ~Zombica stoi przez chwilę bez słowa, wpatrując się w podłogę. Nagle podnosi głowę. "Tttyyy... naazwaać mnieee? Nnadddać miii iiimiię?"~ */
  IF ~~ THEN REPLY #23599 /* ~Pomyśl, jakie imię można by jej nadać.~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #67827 /* ~Znalazłem imię dla bezimiennej zombicy, a ona przyjęła je z widocznym ukontentowaniem.~ */ GOTO 13
  IF ~~ THEN REPLY #23602 /* ~"Chyba najlepiej by było, jakbyś wybrała sobie własne imię. Do zobaczenia."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 19.1
  SAY #23504 /* ~Myślisz o imieniu, ale zanim jesteś w stanie je wymówić, zombica ucisza cię, przyciąga do siebie i przykłada rękę do ucha. Szepczesz jej imię... zombica przytakuje, a potem uśmiecha się. "Taaakkk... dddzzzięęękuję ciii..."~ */
  IF ~~ THEN REPLY #23603 /* ~"Oczywiście. Ciągle mam do ciebie parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #23606 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #23506 /* ~"Jaaaak mooożeesz czuuuuć siiięęę... kooommmpplettnny?"~ */
  IF ~~ THEN REPLY #23608 /* ~Prawda: "Może i masz rację, ale wydaje mi się, że brakuje mi czegoś więcej niż tylko imienia."~ */ GOTO 15
  IF ~~ THEN REPLY #23610 /* ~Kłamstwo: "Czuję się kompletny, z imieniem czy bez."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_1","GLOBALLaw",-1)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #23507 /* ~Zombica po prostu kręci cicho głową.~ */
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23617 /* ~"W takim razie może pomogę ci odszukać imię?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23618 /* ~"Dlaczego po prostu nie wybierzesz sobie nowego imienia?"~ */ GOTO 8
  IF ~~ THEN REPLY #23620 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23622 /* ~"W takim razie mam nadzieję, że je odnajdziesz. Żegnaj."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23625 /* ~"Idę szukać dalej. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3 7.3 13.0 15.2 19.4 20.1 21.0 22.0
  SAY #23508 /* ~Nastaje długa chwila ciszy. "Ccoooo?" Zombica wzrusza ramionami, choć jedno z nich nie jest tak wysokie jak drugie. "Ssssspytaj Mmmary, Czzersstweej Mmmary."~ */
  IF ~~ THEN REPLY #23631 /* ~"Opowiedz mi o... Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #23634 /* ~"Może. Bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #23509 /* ~"Ooonna nnaaamm przzzeewooodzzzi. Obbbsserrwujeeee nassss."~ */
  IF ~~ THEN REPLY #23637 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #23510 /* ~Kiedy zombica się do ciebie obraca, w jej martwych oczach pojawia się błysk, jakby cię rozpoznawała. "Uuuucchhhh." Wyciąga do ciebie swoje gnijące ręce, jakby prosiła o pomoc.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23640 /* ~"Witaj..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23645 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #23646 /* ~Zostaw zombicę w spokoju.~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #23511 /* ~Kiedy zombica się do ciebie obraca, w jej martwych oczach pojawia się błysk, jakby cię rozpoznawała. "Moojjeee iimiiiiięę... zznnnnaaaszz juuż mooojeee iiiimiię?"~ */
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23650 /* ~Prawda: "Odszukałem grobowiec, ale nie można było odczytać imienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_NoName_1","GLOBALLaw",1)
~ JOURNAL #23659 /* ~Powiedziałem bezimiennej zombicy, że imię na grobowcu nie dało się odczytać... była zrozpaczona.~ */ GOTO 23
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23653 /* ~Kłamstwo: "Tak, twoje imię brzmi... ee..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_2","GLOBALLaw",-1)
SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23660 /* ~Skłamałem i powiedziałem bezimiennej zombicy, że można było odczytać imię na jej grobie, podając jej imię wymyślone przeze mnie. Była z tego zadowolona.~ */ GOTO 13
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23655 /* ~"Nie... ale dlaczego po prostu nie wybierzesz sobie innego imienia?"~ */ GOTO 8
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23656 /* ~"Jeszcze nie. Dlaczego to jest dla ciebie takie ważne?"~ */ GOTO 7
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23657 /* ~"Jeszcze nie, ale mam do ciebie kilka pytań..."~ */ GOTO 16
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23658 /* ~"Nie, ale będę szukać dalej."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #23512 /* ~Zombica reaguje energicznie, gdy cię zauważa. "Iiimięę! Wyyybbbrałłam iiimiięę..."~ */
  IF ~~ THEN REPLY #23661 /* ~"Naprawdę? Jakie?"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Bezimienna zombica przyjęła w końcu moją radę i wybrała dla siebie imię - 'Lisza'.~ */ GOTO 21
  IF ~~ THEN REPLY #23662 /* ~"Dobrze. Cieszę się. Mam do ciebie parę pytań..."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Bezimienna zombica przyjęła w końcu moją radę i wybrała dla siebie imię - 'Lisza'.~ */ GOTO 16
  IF ~~ THEN REPLY #23663 /* ~"To dobrze. Muszę już iść... Żegnaj."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Bezimienna zombica przyjęła w końcu moją radę i wybrała dla siebie imię - 'Lisza'.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23513 /* ~"Llleeiiichaaa..."~ */
  IF ~~ THEN REPLY #23665 /* ~"Interesujące... pasuje do ciebie. Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #23666 /* ~"To dobrze. Żegnaj, Lisza."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #23514 /* ~Trup posuwa się w twoim kierunku z uśmiechem na twarzy. "Dzzziiiiękuuuję... zzaa pooomoc w ooooddzyskaaaniuuu iiimieeeniaaa..."~ */
  IF ~~ THEN REPLY #23667 /* ~"Oczywiście. Mam do ciebie kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #23668 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0
  SAY #23515 /* ~"N... n... nieee..." Zombica przytrzymuje trzęsącą się głowę rękami. "Nniiieee mooożeee byyyć..."~ */
  IF ~~ THEN REPLY #23669 /* ~"A może powinnaś wybrać sobie nowe imię?"~ */ GOTO 8
  IF ~~ THEN REPLY #23670 /* ~"Przepraszam... Żegnaj."~ */ DO ~SetGlobal("NoName","GLOBAL",5)
~ EXIT
END

IF ~  Global("NoName","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #23516 /* ~Zombica spogląda w dal, z otwartymi ustami.~ */
  IF ~~ THEN REPLY #23671 /* ~"Mam kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #23672 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23517 /* ~Zombica nie mówi ani słowa... Nie zauważa cię.~ */
  IF ~~ THEN REPLY #23673 /* ~Zostaw ją w spokoju.~ */ EXIT
END
