// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #4513 /* ~Ten schludny, dobrze ubrany mężczyzna zdaje się dokądś zdążać.~ */
  IF ~~ THEN REPLY #25733 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #25734 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25735 /* ~Przystaje i spogląda na ciebie. Twój widok dziwi go trochę. "Czy my... się znamy, panie?"~ */
  IF ~~ THEN REPLY #25736 /* ~"Nie, mam jednak kila pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #25737 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 23
  IF ~~ THEN REPLY #25738 /* ~"Nie. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #25739 /* ~"Mam dość niewiele czasu, panie - spieszę się dokądś... W związku z tym, jeśli nie masz nic przeciwko..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25740 /* ~"Tylko jedno pytanie, dobrze?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25741 /* ~"Tylko jedno pytanie, dobrze?"~ */ GOTO 20
  IF ~~ THEN REPLY #25742 /* ~"*Mam* coś przeciwko. Odpowiedz teraz na moje pytania..."~ */ GOTO 6
  IF ~~ THEN REPLY #25743 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25744 /* ~Przygryza wargę i kiwa przyzwalająco głową. Nie odmówię, tylko błagam, spiesz się z łaski swojej!"~ */
  IF ~~ THEN REPLY #25745 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #25746 /* ~"Czy jest tu coś godnego uwagi?"~ */ GOTO 8
  IF ~~ THEN REPLY #25747 /* ~"Gdzie można znaleźć tu jakąś pracę?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25748 /* ~"Potrzebuję jedynie wskazówek, jak dojść..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25749 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 21
  IF ~~ THEN REPLY #25750 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25751 /* ~Przez chwilę patrzy na ciebie dziwnie. "Czemu? To Dzielnica Urzędników, panie. Czyżbyś... pomylił drogę? Mniejsza z tym... Muszę już iść! Żegnam..."~ */
  IF ~~ THEN REPLY #25752 /* ~"Poczekaj. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #25753 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25754 /* ~"Nie mam czasu, by odpowiedzieć na więcej niż jedno pytanie, panie. Być może w którejś z pobliskich kawiarni znajdziesz kogoś, kto będzie miał więcej czasu. Teraz żegnaj..."~ */
  IF ~~ THEN REPLY #25755 /* ~"Stój. Masz się zatrzymać i odpowiedzieć na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #25756 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25757 /* ~"Pan wybaczy! Nie mam w tej chwili ani czasu, ani ochoty na rozmowy! Proszę mnie zostawić w spokoju, bo inaczej wezwę straże!"~ */
  IF ~~ THEN REPLY #25758 /* ~"Wątpię, czy komukolwiek uda się przybyć na czas, by cię uratować."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25759 /* ~"Jeśli ci życie miłe, nawet nie próbuj wzywać kogokolwiek."~ */ GOTO 7
  IF ~~ THEN REPLY #25760 /* ~"Przyjmij me przeprosiny. Żegnam."~ */ EXIT
  IF ~~ THEN REPLY #25761 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25762 /* ~Zaczyna się cofać i wzywać pomocy: "Straż! Straż!"~ */
  IF ~~ THEN REPLY #25763 /* ~Zaatakuj go.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25764 /* ~Spróbuj odejść, zanim ktokolwiek przybędzie.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25765 /* ~"Dzielnica Urzędników obfituje w miejsca, które warto odwiedzić, panie... Zwłaszcza w tej sekcji jest ich dużo więcej, niż gdzie indziej! Miejski Gmach Rozrywki, przede wszystkim... A także Galeria Sztuki i Osobliwości oraz Przybytek Zaspokajania Żądz Intelektualnych." Wydaje z siebie pełne rozkoszy westchnięcie i zagłębia się w myślach.~ */
  IF ~~ THEN REPLY #25766 /* ~"Coś jeszcze?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25767 /* ~Zastanawia się chwilę. "Hmm. Cóż... Jest warsztat krawiecki, apteka i dom adwokata. A także ciągnące się pod Dzielnicą katakumby. No i ten dziwny sklepik sprzedający osobliwości." Wzrusza ramionami. "Wystarczająco dużo, by się nie nudzić, jak sądzę. Baw się dobrze. Żegnaj."~ */
  IF ~~ THEN REPLY #25768 /* ~"Mam pytanie dotyczące jednego z miejsc, o których wspomniałeś."~ */ GOTO 5
  IF ~~ THEN REPLY #25769 /* ~"Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25770 /* ~"Dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25771 /* ~Zastanawia się chwilę. "Spróbuj w aptece. Albo u adwokata. No i, rzecz jasna, w Miejskim Gmachu Rozrywki... Mogą tam mieć różne zadania do wykonania. Życzę powodzenia, panie... I żegnam."~ */
  IF ~~ THEN REPLY #25772 /* ~"Mam pytanie dotyczące jednego z miejsc, o których wspomniałeś."~ */ GOTO 5
  IF ~~ THEN REPLY #25773 /* ~"Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25774 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25775 /* ~"Jakiego miejsca poszukujesz?"~ */
  IF ~~ THEN REPLY #25776 /* ~"Dom adwokata."~ */ GOTO 12
  IF ~~ THEN REPLY #25777 /* ~"Apteka."~ */ GOTO 13
  IF ~~ THEN REPLY #25778 /* ~"Sklep z dziełami sztuki."~ */ GOTO 14
  IF ~~ THEN REPLY #25779 /* ~"Przybytek."~ */ GOTO 15
  IF ~~ THEN REPLY #25780 /* ~"Ciągnące się pod Dzielnicą katakumby."~ */ GOTO 16
  IF ~~ THEN REPLY #25781 /* ~"Miejski Gmach Rozrywki."~ */ GOTO 17
  IF ~~ THEN REPLY #25782 /* ~"Sklepik osobliwości."~ */ GOTO 18
  IF ~~ THEN REPLY #25783 /* ~"Warsztat krawiecki."~ */ GOTO 19
  IF ~~ THEN REPLY #25784 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25785 /* ~"Dom Iannisa położony jest na południe od bramy wiodącej do niższej dzielnicy - przez którą zapewne przyszedłeś tu za pierwszym razem. Znajdziesz go przy wschodniej stronie drogi."~ */
  IF ~~ THEN REPLY #25786 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25787 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25788 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy prowadzącej do Dzielnicy Niższej - przez którą zapewne przyszedłeś tu za pierwszym razem. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy wschodniej stronie drogi. Na jego frontowej ścianie, wychodzącej na południe, znajdują się trzy witraże."~ */
  IF ~~ THEN REPLY #25789 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25790 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25791 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy prowadzącej do Dzielnicy Niższej - przez którą zapewne przyszedłeś tu za pierwszym razem. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy zachodniej stronie drogi. Jego przód wychodzi na południe i wieńczy go dach, którego dachówki przytrzymywane są przez sporych rozmiarów kamienie."~ */
  IF ~~ THEN REPLY #25792 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25793 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25794 /* ~"Przybytek Zaspokajania Żądz Intelektualnych, ech? To zaraz na wschód od bramy wiodącej do Niższej Dzielnicy - którą zapewne tu przyszedłeś. Będzie to sporych rozmiarów owalny budynek z wejściem wychodzącym na południe."~ */
  IF ~~ THEN REPLY #25795 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25796 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25797 /* ~Marszczy brwi. "Cóż, istnieje więcej niż jedno wejście, tyle wiem. Wiem coś jeszcze. Chcę cię ostrzec, że nic się na powierzchnie z tych katakumb nie wydostaje... Nawet ci, którzy tam wkroczą."~ */
  IF ~~ THEN REPLY #25798 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25799 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25800 /* ~"Wyjątkowo łatwo jest znaleźć Miejski Gmach Rozrywki, panie. To ten masywny budynek znajdujący się w północno-wschodniej części tej sekcji."~ */
  IF ~~ THEN REPLY #25801 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25802 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25803 /* ~"Sam tam co prawda nigdy nie byłem, wiadomo mi jednak, iż znajduje się on w południowo-wschodniej części tej sekcji. Na szczyt tego niepospolitego gmachu wiodą szerokie schody. Raczej ciężko byłoby go przegapić..."~ */
  IF ~~ THEN REPLY #25804 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25805 /* ~"Rozumiem. Dziękuję, że zechciałeś poświęcić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25806 /* ~"Jeśli szukasz warsztatu krawieckiego Gonkalfa, znajdziesz go kierując się nieco na północny wschód od bramy prowadzącej do Niższej Dzielnicy. Tej, którą najpewniej sam przyszedłeś. Gdy zobaczysz szeroki budynek z wejściami wychodzącymi na południe, to będzie właśnie to."~ */
  IF ~~ THEN REPLY #25807 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25808 /* ~"Rozumiem. Dziękuję, że zechciałeś poświęcić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25809 /* ~"Potrząsa przecząco głową. "Być może w którejś z pobliskich kawiarni znajdziesz kogoś, kto będzie miał więcej czasu. Teraz żegnaj..."~ */
  IF ~~ THEN REPLY #25810 /* ~"Stój. Będziesz tu stać i odpowiesz na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #25811 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25812 /* ~"Ech?" Zdaję się być zmieszany przez chwilę... Po czym oczy jego rozbłyskują blaskiem, gdy sobie nagle przypomina. "A! wiedźma nocy, tak? Pamiętam bajki, które mi o niej opowiadano, gdy byłem dzieckiem..."~ */
  IF ~~ THEN REPLY #25813 /* ~"Bajki?"~ */ GOTO 22
  IF ~~ THEN REPLY #25814 /* ~"Rozumiem. Chcę teraz spytać o coś innego."~ */ GOTO 5
  IF ~~ THEN REPLY #25815 /* ~"Dziękuję. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25816 /* ~Kiwa głową. "Tak. Ale to tylko mit, czyż nie? Opowieści o wiedźmie, która próbowała złamać potęgę Sigil?" Jego twarz chmurnieje nagle. "Niestety, muszę już iść, panie... Żegnaj."~ */
  IF ~~ THEN REPLY #25817 /* ~"Poczekaj. Mam inne pytanie..."~ */ GOTO 5
  IF ~~ THEN REPLY #25818 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #25819 /* ~"Nie, panie, w żadnym wypadku!" Śmieje się nerwowo. "No, może trochę..." Wskazuje na twój pokryty bliznami, nagi tors. "Wyglądasz trochę bardziej... heh... dziko, niż typowi mieszkańcy Dzielnicy, nie sądzisz? Bez urazy, panie."~ */
  IF ~~ THEN REPLY #25820 /* ~"Ależ skąd. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #25821 /* ~"Niczego więcej nie potrzebuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25822 /* ~"Miło cię znów spotkać, panie. Wybacz mi, ale - niestety - spiszę się troszkę. Żegnam..."~ */
  IF ~~ THEN REPLY #25823 /* ~"Chwila. Mam jeszcze parę pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #25824 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25825 /* ~"Jak już wspomniałem, panie, spieszę się niezmiernie. Być może w którejś z pobliskich kawiarni uda ci się znaleźć kogoś posiadającego więcej wolnego czasu. Teraz żegnaj."~ */
  IF ~~ THEN REPLY #25826 /* ~"Stój. Będziesz tu stał i odpowiesz na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #25827 /* ~"Żegnaj więc."~ */ EXIT
END
