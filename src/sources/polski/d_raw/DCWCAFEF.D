// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27654 /* ~Ta bogato odziana kobieta przyszła tu by odpocząć, rozkoszując się świeżym powietrzem i popijając zakupiony w pobliskiej kawiarni napój.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27655 /* ~"Witaj..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #27656 /* ~"Witaj."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 49
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #27657 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #27658 /* ~Zostaw kobietę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #27659 /* ~Jej oczy zwężają się lekko, gdy tylko dostrzega cię nadchodzącego. "Och... i ty bądź pozdrowiony, panie." Uśmiecha się z wyraźnym trudem.~ */
  IF ~~ THEN REPLY #27660 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27661 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 2
  IF ~~ THEN REPLY #27662 /* ~"Czas mi wyruszać... Żegnaj..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 49.4
  SAY #27663 /* ~"W... wstyd mi to przyznać, jednak twój widok sprawił, iż na chwilę opanowało mnie uczucie strachu. Nie często dane jest mi rozmawiać z ludźmi o tak 'światowym' wyglądzie." Skłania głowę w przepraszającym geście. "Mam nadzieję, iż me słowa nie uczyniły ci ujmy, panie."~ */
  IF ~~ THEN REPLY #27664 /* ~"Światowym?"~ */ GOTO 3
  IF ~~ THEN REPLY #27665 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27666 /* ~"Nie przejmuj się tym. Czas mi już wyruszać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27667 /* ~"Być może 'obieżyświat' pasowałoby lepiej do ciebie? Wyglądasz, panie, na osobę trochę... zaniedbaną. Najpewniej właśnie to czyni cię ciut odmiennym. W Sigil jednakże pełno jest przecież dziwnych istot, tyle że my, z Dzielnicy Urzędników, widujemy je znacznie rzadziej niż pozostali mieszkańcy Sigil... Pomijając Miejski Gmach Rozrywki, rzecz jasna."~ */
  IF ~~ THEN REPLY #27668 /* ~"Dzielnica Urzędników?"~ */ GOTO 6
  IF ~~ THEN REPLY #27669 /* ~"Miejski Gmach Rozrywki?"~ */ GOTO 22
  IF ~~ THEN REPLY #27670 /* ~"Chciałaś powiedzieć, że wyglądam, jakbym był martwy? No bo wiesz, taki jestem. Martwy!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27671 /* ~"Hmm. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27672 /* ~"To zrozumiałe, jak sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.10 13.2 15.2 16.2 17.2 18.3 19.3 21.2 22.4 23.4 24.2 25.8 26.2 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1 49.3 52.0 54.0
  SAY #27673 /* ~Kiwa przyzwalająco. "Proszę, pytaj."~ */
  IF ~~ THEN REPLY #27674 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #27675 /* ~"Jest tu coś godnego uwagi?"~ */ GOTO 7
  IF ~~ THEN REPLY #27676 /* ~"Gdzie można tu znaleźć jakąś pracę?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27677 /* ~"Chcę cię zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27678 /* ~"Potrzebuję wskazówek, jak dojść..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27679 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 42
  IF ~~ THEN REPLY #27680 /* ~"Tak właściwie to mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27681 /* ~Spogląda na ciebie tak, jakby sądziła, iż stroisz sobie żarty. Gdy się orientuje, że mówisz poważnie, wybucha salwą rozbrajającego śmiechu.
"Jesteś w Dzielnicy Urzędników, panie."~ */
  IF ~~ THEN REPLY #27682 /* ~"Co mogłabyś mi powiedzieć o dzielnicy?"~ */ GOTO 6
  IF ~~ THEN REPLY #27683 /* ~"Racja. Ale w zasadzie mam jeszcze parę innym pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27684 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27685 /* ~"No cóż, zdecydowanie większą część Dzielnicy - tam, gdzie obowiązki zatrzymują mnie najczęściej - zajmują składowiska akt i budynki administracyjne. Tutaj jednakże jest inaczej."~ */
  IF ~~ THEN REPLY #27686 /* ~"Twoje obowiązki?"~ */ GOTO 10
  IF ~~ THEN REPLY #27687 /* ~"Co sprawia, iż ta część jest odmienna od pozostałych?"~ */ GOTO 7
  IF ~~ THEN REPLY #27688 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27689 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27690 /* ~"Miejski Gmach Rozrywki, rzecz jasna. A także Galeria Sztuki i Osobliwości..."~ */
  IF ~~ THEN REPLY #27691 /* ~"Mów dalej..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27692 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27693 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27694 /* ~"Do innych miejsc godnych uwagi zaliczyć można chociażby dom adwokata, aptekę, Przybytek Zaspokajania Żądz Intelektualnych, ciągnące się pod Dzielnicą katakumby i warsztat krawiecki... A także ten dziwny sklepik sprzedający osobliwości."~ */
  IF ~~ THEN REPLY #27695 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27696 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27697 /* ~"Interesuje cię tylko tymczasowa praca, zgadza się? Nie wyglądasz mi na takiego, który by chciał się tu osiedlić, o nie..." Przerywa na chwilę i lustruje cię wzrokiem. "Radziłabym zacząć poszukiwania od domu adwokata, apteki lub Miejskiego Gmachu Rozrywki. Zawsze się tam można na jakieś zajęcie załapać..."~ */
  IF ~~ THEN REPLY #27698 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27699 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27700 /* ~Kiwa głową i przewraca oczami. "Mam do wypełnienia obowiązki, panie... Wobec mojego pracodawcy... Pracuję w jednym z budynków administracyjnych, których tu, w Dzielnicy, znaleźć można na pęczki."~ */
  IF ~~ THEN REPLY #27701 /* ~"Czym się tam zajmujesz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27702 /* ~"Co sprawia, iż ta część jest odmienna od reszty Dzielnicy?"~ */ GOTO 7
  IF ~~ THEN REPLY #27703 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27704 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27705 /* ~Kiwa głową uśmiechając się. "Panie, proszę, bądź łaskaw nie poruszać tego tematu, dobrze? Nie tutaj. Staram się choć przez chwilę odpocząć."~ */
  IF ~~ THEN REPLY #27706 /* ~"Co sprawia, iż ta część jest odmienna od reszty Dzielnicy?"~ */ GOTO 7
  IF ~~ THEN REPLY #27707 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27708 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 19.2 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27709 /* ~"Podzielę się z tobą mą niezbyt rozległa wiedzą..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27710 /* ~"Dom adwokata."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27711 /* ~"Dom adwokata."~ */ GOTO 14
  IF ~~ THEN REPLY #27712 /* ~"Apteka."~ */ GOTO 16
  IF ~~ THEN REPLY #27713 /* ~"Sklep z działami sztuki."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27714 /* ~"Przybytek."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27715 /* ~"Przybytek."~ */ GOTO 19
  IF ~~ THEN REPLY #27716 /* ~"PodSigil, Kraina Poniżej."~ */ GOTO 21
  IF ~~ THEN REPLY #27717 /* ~"Miejski Gmach Rozrywki."~ */ GOTO 22
  IF ~~ THEN REPLY #27718 /* ~"Sklepik osobliwości."~ */ GOTO 23
  IF ~~ THEN REPLY #27719 /* ~"Warsztat krawiecki."~ */ GOTO 24
  IF ~~ THEN REPLY #27720 /* ~"Nie ważne. Pozwól, że spytam o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27721 /* ~"Nigdzie, nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27722 /* ~"Adwokaci bywają bardzo pomocni w wyszukiwaniu argumentów popierających daną sprawę. Wykonują też odpowiednią dokumentację sądową, a także stają się oficjalnymi przedstawicielami swych klientów. Ten tuż obok, imieniem Iannis, należy do grona osób cieszących się znacznym poważaniem i można na nim polegać. Mieszka i pracuje w dzielnicy już spory kawał czasu."~ */
  IF ~~ THEN REPLY #27723 /* ~"Jak dojść do domu Iannisa?"~ */ GOTO 26
  IF ~~ THEN REPLY #27724 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27725 /* ~"Mam parę innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27726 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 26.1
  SAY #27727 /* ~"Adwokaci bywają bardzo pomocni w wyszukiwaniu argumentów popierających daną sprawę. Wykonują też odpowiednią dokumentację sądową, a także stają się oficjalnymi przedstawicielami swych klientów."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 267
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27729 /* ~"Ten tuż obok, imieniem Iannis, należy do grona osób cieszących się znacznym poważaniem i można na nim polegać. Mieszka i pracuje w dzielnicy już spory kawał czasu."~ */
  IF ~~ THEN REPLY #27730 /* ~"Jak dojść do domu Iannisa?"~ */ GOTO 26
  IF ~~ THEN REPLY #27731 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27732 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27733 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 27.0
  SAY #27734 /* ~"Apteka zajmuje się sprzedażą rozmaitych maści, eliksirów, ziół i podobnego asortymentu." Zamyśla się. "Właściciele tego miejsca zachowują się co prawda trochę dziwacznie, nieustannie sprawdzając jakość towaru, jednak, mimo wszystko, to dobrzy ludzie."~ */
  IF ~~ THEN REPLY #27735 /* ~"Którędy idzie się do apteki?"~ */ GOTO 27
  IF ~~ THEN REPLY #27736 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27737 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27738 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.3 28.0
  SAY #27739 /* ~"Galeria Sztuki i Osobliwości Yvanny to jedno z najbardziej niezwykłych miejsc. Mieści w sobie zbiory dzieł sztuki, antyków i artefaktów z każdego zakątka sfer."~ */
  IF ~~ THEN REPLY #27740 /* ~"Jak mogę dojść do sklepu z dziełami sztuki?~ */ GOTO 28
  IF ~~ THEN REPLY #27741 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27742 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27743 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.4 29.0
  SAY #27744 /* ~"To przybytek Czuciowców, którego funkcją jest zaspokajanie potrzeb umysłowych i zmysłowych. Prowadzi go rzecz jasna sukkub, no bo jakżeby inaczej? Zwie się ona Nie-Sława."~ */
  IF ~~ THEN REPLY #27745 /* ~"Czuciowcy?"~ */ GOTO 36
  IF ~~ THEN REPLY #27746 /* ~"Jak dojść do Przybytku?"~ */ GOTO 29
  IF ~~ THEN REPLY #27747 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27748 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27749 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.5 29.1
  SAY #27750 /* ~"To przybytek Czuciowców, którego funkcją jest zaspokajanie potrzeb umysłowych i zmysłowych. Prowadzi go sukkub, bo jakżeby inaczej?" Kłania się uprzejmie Nie-Sławie.~ */
  IF ~~ THEN REPLY #27751 /* ~"Czuciowcy?"~ */ GOTO 36
  IF ~~ THEN REPLY #27752 /* ~"Jak dojść do Przybytku?"~ */ GOTO 29
  IF ~~ THEN REPLY #27753 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27754 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27755 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27756 /* ~.~ */
  IF ~~ THEN REPLY #27757 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6 30.0
  SAY #27758 /* ~Twarz kobiety przybiera zamyślony wyraz. "Dziwi mnie to, iż nie zamknięto jeszcze wszystkich bram prowadzących do tego miejsca. Jak mniemam, Kraina Poniżej stanowi jedynie jedno wielkie źródło kłopotów i jest zagrożeniem dla każdego, komu uda się do niej dostać."~ */
  IF ~~ THEN REPLY #27759 /* ~"Jak znaleźć drogę wiodącą tam, na dół?"~ */ GOTO 30
  IF ~~ THEN REPLY #27760 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27761 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27762 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.7 31.0
  SAY #27763 /* ~"Główna siedziba frakcji Czuciowców to jedno z najwspanialszych miejsc w całym Sigil. Jego sława obiegła cały Wieloświat - za sprawą organizowanych tam koncertów, wystaw i odczytów. Tym jednak, co fascynuje w nim najbardziej, są jego sensoria."~ */
  IF ~~ THEN REPLY #27764 /* ~"Czuciowcy?"~ */ GOTO 36
  IF ~~ THEN REPLY #27765 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27766 /* ~"Gdzie mogę znaleźć Miejski Gmach Rozrywki?"~ */ GOTO 31
  IF ~~ THEN REPLY #27767 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27768 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27769 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.8 32.0
  SAY #27770 /* ~"Nie twierdzę, że byłam tam osobiście... Wiem jednak, że zarządza nim osoba zajmująca się importem dóbr rozmaitych. To pół-bies, uściślając, której towary pochodzą z Niższych Sfer."~ */
  IF ~~ THEN REPLY #27771 /* ~"Pół-bies?"~ */ GOTO 35
  IF ~~ THEN REPLY #27772 /* ~"Sfer Niższych?"~ */ GOTO 34
  IF ~~ THEN REPLY #27773 /* ~"Gdzie mogę znaleźć to miejsce?"~ */ GOTO 32
  IF ~~ THEN REPLY #27774 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27775 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27776 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.9 33.0
  SAY #27777 /* ~"Gonkalf jest wyśmienitym krawcem, miewa jednak zmienne nastroje i łatwo go urazić. Pragnę cię również ostrzec, iż osądza on innych po ich wyglądzie... Z tego też powodu raczej trudno by ci było zyskać jego przyjaźń."~ */
  IF ~~ THEN REPLY #27778 /* ~"Gdzie znajduje się warsztat krawiecki Gonkalfa?"~ */ GOTO 33
  IF ~~ THEN REPLY #27779 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27780 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27781 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27782 /* ~"Hę? Dokąd?"~ */
  IF ~~ THEN REPLY #27783 /* ~"Dom adwokata."~ */ GOTO 26
  IF ~~ THEN REPLY #27784 /* ~"Apteka."~ */ GOTO 27
  IF ~~ THEN REPLY #27785 /* ~"Sklep z dziełami sztuki."~ */ GOTO 28
  IF ~~ THEN REPLY #27786 /* ~"Przybytek."~ */ GOTO 29
  IF ~~ THEN REPLY #27787 /* ~"PodSigil, Kraina Poniżej."~ */ GOTO 30
  IF ~~ THEN REPLY #27788 /* ~"Miejski Gmach Rozrywki."~ */ GOTO 31
  IF ~~ THEN REPLY #27789 /* ~"Sklepik osobliwości."~ */ GOTO 32
  IF ~~ THEN REPLY #27790 /* ~"Warsztat krawiecki."~ */ GOTO 33
  IF ~~ THEN REPLY #27791 /* ~"Nie ważne. Chciałbym zapytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27792 /* ~"Nigdzie, nie ważne. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27793 /* ~"Dom Iannisa położony jest na południe od bramy wiodącej do Niższej Dzielnicy - przez którą najpewniej przyszedłeś tu za pierwszym razem. Znajdziesz go przy wschodniej stronie drogi."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27794 /* ~"Co możesz mi powiedzieć o adwokacie?"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27795 /* ~"Co mogłabyś mi powiedzieć o adwokacie?"~ */ GOTO 14
  IF ~~ THEN REPLY #27796 /* ~"Dzięki. Chcę jeszcze spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27797 /* ~"Rozumiem. Dzięki, że zechciałaś poświęcić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27798 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy prowadzącej do Dzielnicy Niższej - przez którą najpewniej przyszedłeś tu za pierwszym razem. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy wschodniej stronie drogi. Na jego frontowej ścianie, wychodzącej na południe, znajdują się trzy witraże."~ */
  IF ~~ THEN REPLY #27799 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 16
  IF ~~ THEN REPLY #27800 /* ~"Dzięki. Pragnę jeszcze spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27801 /* ~"Rozumiem. Dzięki, że zechciałaś poświecić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27802 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy prowadzącej do Dzielnicy Niższej - przez którą najpewniej przyszedłeś tu za pierwszym razem. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy zachodniej stronie drogi. Jego przód wychodzi na południe i wieńczy go dach, którego dachówki przytrzymywane są przez sporych rozmiarów kamienie."~ */
  IF ~~ THEN REPLY #27803 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #27804 /* ~"Dzięki. Pozwól mi teraz spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27805 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 19.1 25.3
  SAY #27806 /* ~Wykonuje wskazujący gest, potrząsając głową. "To zaraz na wschód od bramy wiodącej do Niższej Dzielnicy - którą zapewne tu przyszedłeś. Będzie to sporych rozmiarów owalny budynek z wejściem wychodzącym na południe."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27807 /* ~"Co możesz mi powiedzieć o Przybytku?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27808 /* ~"Co możesz mi powiedzieć o Przybytku?"~ */ GOTO 19
  IF ~~ THEN REPLY #27809 /* ~"Dzięki. Chcę cię o coś jeszcze zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27810 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27811 /* ~Wzrusza ramionami. "Nie mam pojęcia. Gdybym jednak wiedziała, gdzie to znaleźć, byłabym bardziej ostrożna. Powiadają, że z Krainy Poniżej nic się na powierzchnie nie wydostaje... Nawet ci, którzy tam wkroczą."~ */
  IF ~~ THEN REPLY #27812 /* ~"Czy mogłabyś mi o tym coś więcej powiedzieć?"~ */ GOTO 21
  IF ~~ THEN REPLY #27813 /* ~"Dzięki. Chcę cię o coś jeszcze zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27814 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27815 /* ~"Wyjątkowo łatwo jest znaleźć Miejski Gmach Rozrywki, panie. To ten masywny budynek znajdujący się w północno-wschodniej części Dzielnicy."~ */
  IF ~~ THEN REPLY #27816 /* ~"Co mogłabyś mi powiedzieć o Miejskim Gmachu Rozrywki?"~ */ GOTO 22
  IF ~~ THEN REPLY #27817 /* ~"Dzięki. Chcę jeszcze spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27818 /* ~"Rozumiem. Dzięki, że zechciałaś poświęcić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27819 /* ~"Znajduje się on w części południowo-wschodniej. Na szczyt tego niepospolitego gmachu wiodą szerokie schody. Sama tam nigdy nie byłam... Myśl o nim jednak przepełnia mnie dziwnym uczuciem."~ */
  IF ~~ THEN REPLY #27820 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 23
  IF ~~ THEN REPLY #27821 /* ~"Dzięki. Chcę jeszcze spytać o coś innego..."~ */ GOTO 4
  IF ~~ THEN REPLY #27822 /* ~"Rozumiem. Dzięki, że zechciałaś poświęcić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27823 /* ~"Jeśli szukasz warsztatu krawieckiego, znajdziesz go kierując się nieco na północny wschód od bramy prowadzącej do Niższej Dzielnicy. Tej, przez którą najpewniej przyszedłeś tu za pierwszym razem. Gdy zobaczysz szeroki budynek z wejściami wychodzącymi na południe, to będzie właśnie to."~ */
  IF ~~ THEN REPLY #27824 /* ~"Co mogłabyś mi powiedzieć o tym miejscu?"~ */ GOTO 24
  IF ~~ THEN REPLY #27825 /* ~"Dziękuje. Pozwól mi o coś jeszcze zapytać..."~ */ GOTO 4
  IF ~~ THEN REPLY #27826 /* ~"Rozumiem. Dzięki, że zechciałaś poświęcić mi tyle czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27827 /* ~Kiwa głową i zniża swój głos do szeptu. "Wiesz, panie... Baator, Otchłań i tym podobne... Przerażające miejsca."~ */
  IF ~~ THEN REPLY #27828 /* ~"Powiedziałaś, że jest pół-biesem?"~ */ GOTO 35
  IF ~~ THEN REPLY #27829 /* ~"Gdzie mogę znaleźć ten sklepik osobliwości?"~ */ GOTO 32
  IF ~~ THEN REPLY #27830 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27831 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27832 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27833 /* ~"Zauważ, że to nie żadne diabelstwo, ale właściwy pół-bies. To córka inkuba i śmiertelniczki, tak słyszałam. Ale nie daję posłuchu plotkom, zakończmy więc dyskusję na jej temat."~ */
  IF ~~ THEN REPLY #27834 /* ~"Powiedziałaś, że jej towary pochodzą ze Sfer Niższych?"~ */ GOTO 34
  IF ~~ THEN REPLY #27835 /* ~"Gdzie mogę znaleźć ten sklepik osobliwości?"~ */ GOTO 32
  IF ~~ THEN REPLY #27836 /* ~"Chcę cię jeszcze zapytać o pewne miejsce..."~ */ GOTO 12
  IF ~~ THEN REPLY #27837 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27838 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 19.0 22.0
  SAY #27839 /* ~"Tak. Ich pełna nazwa to 'Stronnictwo Doznań'. Wierzą, że jedynie drogą bezpośrednich doświadczeń jesteśmy w stanie odkryć prawdziwą naturę Wieloświata."~ */
  IF ~~ THEN REPLY #27840 /* ~"Rozumiem. Mów dalej."~ */ GOTO 48
  IF ~~ THEN REPLY #27841 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27842 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27843 /* ~"Zaiste, udało im się odkryć sposób dzielenia się własnymi doświadczeniami z innymi osobnikami - za pomocą sensoriów."~ */
  IF ~~ THEN REPLY #27844 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27845 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27846 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27847 /* ~"Czuciowcom udało się odkryć sposób, dzięki któremu mogą rejestrować w kamieniach doznane przez nich przeżycia i udostępniać je *innym*. Przemierzają oni Sfery, przeczesują swą świadomość w poszukiwaniu doznań, którymi mogliby się z pozostałymi podzielić. Praktycznie wszystko to, co kiedykolwiek odczuwali bądź doświadczali, można znaleźć w ich sensoriach."~ */
  IF ~~ THEN REPLY #27848 /* ~"Gdzie mogę znaleźć te sensoria?"~ */ GOTO 39
  IF ~~ THEN REPLY #27849 /* ~"Te doświadczenia... Podobne są do wspomnień?"~ */ GOTO 40
  IF ~~ THEN REPLY #27850 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27851 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27852 /* ~"We wnętrzu Miejskiego Gmachu Rozrywki znaleźć można zarówno sensoria ogólnie dostępne, jak i te przeznaczone jedynie dla Czuciowców. By z nich skorzystać, trzeba wnieść drobną opłatę, niewielka to jednak cena za takie doznania."~ */
  IF ~~ THEN REPLY #27853 /* ~"Gdzie jest Miejski Gmach Rozrywki?"~ */ GOTO 31
  IF ~~ THEN REPLY #27854 /* ~"Te doświadczenia... Przypominają wspomnienia?~ */ GOTO 40
  IF ~~ THEN REPLY #27855 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27856 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27857 /* ~"W pewnym *sensie* tak, jednak o znacznie większej intensywności... I nie będą to twe przeszłe doznania, lecz innej osoby... Te, które zapisano we wnętrzu kamienia."~ */
  IF ~~ THEN REPLY #27858 /* ~"Zapisano? Czy nie tracą oni wspomnień bądź doświadczeń, gdy zostaną one zapisane w kamieniu?"~ */ GOTO 41
  IF ~~ THEN REPLY #27859 /* ~"Gdzie znajdują się te sensoria?"~ */ GOTO 39
  IF ~~ THEN REPLY #27860 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27861 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27862 /* ~"Nie..." Marszczy brwi. "Ja przynajmniej uważam, że nie. Sądzę, iż kamień *kopiuje* w jakiś sposób doświadczenia zmysłowe. Jeśli chcesz się upewnić, możesz zapytać o to Czuciowców... Ja rozumiem to właśnie w ten sposób."~ */
  IF ~~ THEN REPLY #27863 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27864 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27865 /* ~"Imię to brzmi znajomo... Czy to jakaś postać literacka? Czarny charakter z kart którejś z powieści? Nie? Nie mogę sobie przypomnieć."~ */
  IF ~~ THEN REPLY #27866 /* ~"Mniejsza z tym. Mam jeszcze inne pytania..."~ */ GOTO 4
  IF ~~ THEN REPLY #27867 /* ~"W takim razie mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27868 /* ~"Miło mi znów cię ujrzeć, panie." Uśmiecha się do ciebie znad swojej filiżanki. "Kolejna porcja pytań, mam rację?"~ */
  IF ~~ THEN REPLY #27869 /* ~"Zgadza się."~ */ GOTO 4
  IF ~~ THEN REPLY #27870 /* ~"Prawdę mówiąc to nie. Przechodziłem tylko... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27871 /* ~Wygląda na zakłopotaną. "Mógłbyś powtórzyć, panie?~ */
  IF ~~ THEN REPLY #27872 /* ~"Powiedziałem: 'Jestem martwy!' Martwy, martwy, la-la! Martwy, martwy, la-la..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27873 /* ~"Mmiejsza z tym. Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27874 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27875 /* ~Jej wyraz twarzy staje się nieufny. "No, tak... Czyż... wszyscy nie jesteśmy... Muszę już iść, panie, mam do załatwienia kilka spraw nie cierpiących zwłoki."~ */
  IF ~~ THEN REPLY #27876 /* ~"Poczekaj! Nie powiedziałem ci jeszcze, *dlaczego* jestem martwy..."~ */ GOTO 46
  IF ~~ THEN REPLY #27877 /* ~"Poczekaj chwilę. Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27878 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27879 /* ~Cofa się o jeden krok. "Przyznam, że zdecydowanie mnie to nie interesuje, panie." Zaczyna się rozglądać tak, jakby szukała kogoś, kto mógłby jej przyjść z pomocą.~ */
  IF ~~ THEN REPLY #27880 /* ~"Ponieważ zabiłem zbyt wielu ludzi w moich poprzednich wcieleniach."~ */ GOTO 47
  IF ~~ THEN REPLY #27881 /* ~"W takim razie mniejsza z tym. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27882 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27883 /* ~Upuściwszy filiżankę zaczyna krzyczeć: "Straż! Straż!"~ */
  IF ~~ THEN REPLY #27884 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27885 /* ~Spróbuj odejść, zanim przybędą inni.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27886 /* ~"Ich życie wypełnia tylko jeden cel: doświadczyć tak wiele z tego, co oferuje Wieloświat, jak to tylko możliwe. Sporo podróżują, zarówno przemierzając Sfery, jak i zagłębiając się we wnętrzu własnych umysłów i uczuć. A nawet posuwają się o krok dalej, wiesz..."~ */
  IF ~~ THEN REPLY #27887 /* ~"Jak to?"~ */ GOTO 37
  IF ~~ THEN REPLY #27888 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27889 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.1
  SAY #27890 /* ~Oczy jej rozszerzają się nieznacznie, gdy tylko widzi, że się zbliżasz. Uśmiecha się z wyraźnym trudem. "O, witaj..." Jej wzrok ogniskuje się nagle na Mortem. "Och! Jaki śliczny, malutki mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #27891 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 268
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27892 /* ~"Czyż nie? Lubi, gdy drapie się go po czubku czaszki."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27893 /* ~"Na twoim miejscu nie dotykałbym go. Gryzie."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 272
  IF ~~ THEN REPLY #27894 /* ~"Jasne... Mam jeszcze parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27895 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 2
  IF ~~ THEN REPLY #27896 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #27897 /* ~Kobieta uśmiecha się. "Niesamowite! Potrafi nawet mówić samodzielnie!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 269
END

IF ~~ THEN BEGIN 51 // from: 53.0
  SAY #27899 /* ~Potrząsa przecząco głowo. "Nie, żaden z tych, które widziałam. To przecież tylko przedmioty, czyż..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 271
END

IF ~~ THEN BEGIN 52 // from:
  SAY #27901 /* ~Wzrusza ramionami. "Być może."~ */
  IF ~~ THEN REPLY #27902 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27903 /* ~"Czas mi już w drogę... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.1
  SAY #27904 /* ~"Doprawdy?" Dalej się uśmiecha, choć spogląda podejrzliwie. "Najpewniej żarty sobie stroisz, panie. Przecież to zwykły mimir..."~ */
  IF ~~ THEN REPLY #27905 /* ~"Co przez to rozumiesz? Czyż nie sprawia im to przyjemności?~ */ GOTO 51
  IF ~~ THEN REPLY #27906 /* ~"Skądże. Mówię prawdę. Spróbuj."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 54
  IF ~~ THEN REPLY #27907 /* ~"Zapomnijmy o nim. Mam kilka innych pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #27908 /* ~Wyciąga rękę i z wielką ostrożnością dotyka Mortego. Ten zaś, odpowiednio zresztą, zaczyna się łasić do jej ręki, szczerząc się przy tym dziko i mrugając do ciebie przez cały czas. Kobieta śmieje się z trudem: "Jakież to dziwne!"~ */
  IF ~~ THEN REPLY #27909 /* ~"No... cóż. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #27910 /* ~"Tak to już bywa. Żegnaj."~ */ EXIT
END
