// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEF1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1567 /* ~Widzisz mężczyznę w postrzępionym ubraniu. Gdy podchodzisz, nagle zatrzymuje się i przestraszony zaczyna się rozglądać.~ */
  IF ~~ THEN REPLY #1569 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #1568 /* ~"Ty tam! Poczekaj chwilę!"~ */ GOTO 1
  IF ~~ THEN REPLY #1570 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1571 /* ~Mężczyzna wygląda na przestraszonego, cofa się. "Co? Czego chcesz, śmiałku?" Głos mu drży, wydaje się być zaskoczony widokiem twoich blizn. "Nic nie mam, a i moje szmaty nie są warte zachodu."~ */
  IF ~~ THEN REPLY #1572 /* ~"Uspokój się. Nie jestem tu, by cię obrabować. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #1573 /* ~"Spróbuj uciec, a obiecuję, że daleko nie uciekniesz. Mam parę pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1574 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1575 /* ~"Co?" Twój widok wyraźnie nie wywołuje w nim emocji. "Czego chcesz *tym razem*, śmiałku?"~ */
  IF ~~ THEN REPLY #1576 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #1577 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0
  SAY #1578 /* ~Trzyma się w bezpiecznej odległości, a jego oczy biegają z jednej strony na drugą, jak gdyby spodziewał się, że coś wyjdzie z cienia. "Mówisz pytania...? A... eee... jakie to pytania?"~ */
  IF ~~ THEN REPLY #1580 /* ~"Opowiedz mi o tym... mieście?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1579 /* ~"Opowiedz mi o Sigil."~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1581 /* ~"Opowiedz mi o tych slumsach."~ */ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1582 /* ~"Opowiesz mi o Ulu?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1583 /* ~"Opowiesz mi o Pani Bólu?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1584 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1585 /* ~"Szukam dziennika. Widziałeś go może?"~ */ GOTO 27
  IF ~~ THEN REPLY #7126 /* ~"Nic. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.3 5.2 5.3
  SAY #1586 /* ~"Ech..." Patrzy z rezerwą, zakłopotany marszczy brew. "Co chcesz wiedzieć o Ulu, śmiałku?"~ */
  IF ~~ THEN REPLY #1587 /* ~"Dlaczego nazywają go Ulem?"~ */ GOTO 6
  IF ~~ THEN REPLY #1588 /* ~"Jest tu coś ciekawego?"~ */ GOTO 7
  IF ~~ THEN REPLY #1589 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1590 /* ~"Nic. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.1 7.5 8.3 9.0 10.1 11.3 12.0 13.5 14.1 15.1 16.3 17.2 18.1 19.1 20.1 21.3 22.2 23.3 24.2 25.2 26.0 27.0 28.2 29.0 30.0 31.2 32.1 33.1 34.1 35.0 36.2 42.0
  SAY #1591 /* ~"Ech... jakie są te pytania?"~ */
  IF ~~ THEN REPLY #1592 /* ~"Opowiedz mi o tym... mieście?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1593 /* ~"Opowiedz mi o Sigil?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1594 /* ~"Opowiedz mi o tych slumsach."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1595 /* ~"Opowiedz mi o Ulu."~ */ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1596 /* ~"Opowiedz mi o Pani Bólu."~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1597 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1598 /* ~"Szukam dziennika. Widziałeś go? A może wiesz gdzie można go znaleźć?"~ */ GOTO 27
  IF ~~ THEN REPLY #7131 /* ~'Nic. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #1599 /* ~Wygląda na zmieszanego. "No... nie wiem." To, że nie zna odpowiedzi wyraźnie go przeraża. "Może bałagan na ulicach, a może w ludziach."~ */
  IF ~~ THEN REPLY #1600 /* ~"Jest tu coś ciekawego?"~ */ GOTO 7
  IF ~~ THEN REPLY #1601 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1602 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #1603 /* ~"To... ech... zależy. Zależy od tego, co cię interesuje, śmiałku."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1604 /* ~"Szukam dobrej zabawy."~ */ EXTERN ~DMORTE~ 128
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1605 /* ~"Szukam dobrej zabawy."~ */ GOTO 8
  IF ~~ THEN REPLY #1606 /* ~"Szukam pracy."~ */ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1607 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1608 /* ~"Szukam dziennika. Przypadkiem nie wiesz, gdzie mogę go znaleźć?"~ */ GOTO 27
  IF ~~ THEN REPLY #1609 /* ~"Zapomnij. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7132 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1610 /* ~"Cóż..." Oblizuje usta. "Jest Gorejący Człek... i tawerna Grabów... choć nie wyglądasz mi na takiego, który chciałby pić ich bełt... Wszystkie inne miejsca w pobliżu są niebezpieczne, więc pilnuj się."~ */
  IF ~~ THEN REPLY #1611 /* ~"Gdzie to jest?"~ */ GOTO 9
  IF ~~ THEN REPLY #1612 /* ~"Jest tu coś niebezpiecznego?"~ */ GOTO 10
  IF ~~ THEN REPLY #1613 /* ~"'Grabów'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1614 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1615 /* ~"Rozumiem. Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #1616 /* ~"Cóż, Gorejący Człek jest kilka przecznic na iglicę - uch, na południe - od Kostnicy - a bar Grabarzy jest tylko trochę na południowy zachód od Kostnicy."~ */
  IF ~~ THEN REPLY #1731 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1732 /* ~"Dzięki. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #1617 /* ~"Wszędzie w Ulu, gdy tylko zapadnie zmrok. Jest też Aleja Węgłów... lepiej trzymaj się z daleka, chyba że chcesz trafić do księgi umarłych."~ */
  IF ~~ THEN REPLY #1618 /* ~"Dlaczego ta 'Aleja Węgłów' jest tak niebezpieczna?"~ */ GOTO 36
  IF ~~ THEN REPLY #1619 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1620 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2 13.4 14.0 15.0 31.1 32.0
  SAY #1621 /* ~Myśli. "Bardzo niewiele... można tu znaleźć uczciwych ofert pracy, śmiałku. Mówią, że za parę miedziaków możesz zapolować na mózgoszkodniki, zanieść je do Biura od Szkodników, ale zaczynać z nimi to niebezpieczna rzecz. Możesz także zebrać paru truposzy i zanieść do Kostnicy - trochę zarobisz."~ */
  IF ~~ THEN REPLY #1623 /* ~"Gdzie jest to Biuro?"~ */ GOTO 12
  IF ~~ THEN REPLY #1624 /* ~"Mózgoszkodniki?"~ */ GOTO 14
  IF ~~ THEN REPLY #1625 /* ~"Zbierać ciała?"~ */ GOTO 13
  IF ~~ THEN REPLY #1626 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1627 /* ~"Rozumiem. Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.1
  SAY #1622 /* ~"Jest obok rynku Ula. Idź w stronę iglicy - to jest na południowy zachód od Kostnicy - trzy, cztery przecznice, aż znajdziesz się w ślepej uliczce. Łowcy szczurów kręcą się właśnie tam, nie możesz nie zauważyć."~ */
  IF ~~ THEN REPLY #1733 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7133 /* ~"Dzięki. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #1628 /* ~"Tak, Graby płacą za każdego truposza, którego przynosisz do ich bram. Niezbyt dużo, ale wystarczy, żeby Zbieraczom się to opłacało... no i w pobliżu zawsze jest dość truposzy."~ */
  IF ~~ THEN REPLY #1633 /* ~"Zbieraczom?"~ */ GOTO 31
  IF ~~ THEN REPLY #1629 /* ~"Gdzie znajduje się to Biuro, o którym wcześniej wspominałeś?"~ */ GOTO 12
  IF ~~ THEN REPLY #1630 /* ~"Co wspominałeś o 'mózgoszkodnikach'?"~ */ GOTO 14
  IF ~~ THEN REPLY #1631 /* ~"'Graby'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1632 /* ~"Jest jeszcze jakaś praca w Ulu?"~ */ GOTO 11
  IF ~~ THEN REPLY #7134 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7135 /* ~"Rozumiem. Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.2
  SAY #1634 /* ~"Tak, wstrętne, małe zwierzątka." Obnaża zęby niczym szczur. Wygląda to całkiem głupio. "Pojedynczo są właściwie niczym... ale gdy zbiorą się do kupy, są tym mądrzejsze, im jest ich więcej. Stają się tak mądre, jak ludzie..." Potrząsa głową. "Nikt, kto ma dobrze w głowie, nie chce by do tego doszło. Życie wszystkich wokoło byłoby zagrożone."~ */
  IF ~~ THEN REPLY #2528 /* ~"Jest jeszcze jakaś inna praca w Ulu?"~ */ GOTO 11
  IF ~~ THEN REPLY #2527 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7136 /* ~"Dość już usłyszałem. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 8.2 13.3 16.0
  SAY #1635 /* ~"Tak... Graby... Grabarze... bladolicy Martwi, wszyscy ponurzy, żadna to przyjemność o nich rozmawiać. Oczyszczają ulice z trupów, składają do Kostnicy. Oto, co robią w Sigil, głównie dlatego, że nikt inny nie chce."~ */
  IF ~~ THEN REPLY #1638 /* ~"Jest jeszcze jakaś inna praca w Ulu?"~ */ GOTO 11
  IF ~~ THEN REPLY #1636 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1637 /* ~"Rozumiem. Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1639 /* ~"O kim?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #1640 /* ~"Co z tymi Grabarzami..."~ */ GOTO 15
  IF ~  GlobalGT("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #1641 /* ~"Chaosyci... brzmi ciekawie."~ */ EXIT
  IF ~  GlobalGT("Know_Indeps","GLOBAL",0)
~ THEN REPLY #1642 /* ~"Autonomi?"~ */ EXIT
  IF ~~ THEN REPLY #1643 /* ~"Nieważne. Mam jeszcze parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1644 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 17 // from: 3.0 5.0
  SAY #1645 /* ~"Co chcesz wiedzieć o Sigil?"~ */
  IF ~~ THEN REPLY #1646 /* ~"Co *to* za miejsce?"~ */ DO ~SetGlobal(" Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #1647 /* ~"*Gdzie* jest Sigil?"~ */ GOTO 26
  IF ~~ THEN REPLY #1648 /* ~"Właściwie, mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1649 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 3.1 5.1 17.0
  SAY #1650 /* ~"Miasto. Miasto Drzwi, Klatka. Miejsce gdzie są wszystkie drzwi 'z' i 'do'. Centrum Sfer, i cel wszelkiego rodzaju popłuczyn z różnych stron. Niektórzy mówią, że w jakimś momencie każdy tu trafia."~ */
  IF ~~ THEN REPLY #1652 /* ~"'Miasto Drzwi'?"~ */ GOTO 19
  IF ~~ THEN REPLY #1651 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1653 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1654 /* ~"Ech, tak... widzisz, śmiałku, to miasto to..." Marszczy czoło, jak gdyby walczył ze swoimi słowami. "To miasto ma wiele drzwi, rozrzuconych na całej powierzchni... i... widzisz, drzwi..." Znów marszczy czoło, potem wzdycha.~ */
  IF ~~ THEN REPLY #1657 /* ~"Drzwi...?"~ */ GOTO 20
  IF ~~ THEN REPLY #1658 /* ~"Widzę, że zajmie to chwilę. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1659 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1655 /* ~"Spróbuję to ująć bardziej sensownie: Widzisz, w całym Sigil są drzwi, ale nie zawsze wyglądają jak drzwi. Są bardziej jak portale, rozumiesz? I mogą wyglądać jak *cokolwiek*... rama okienna... eee, rama z obrazu, albo sklepione przejście... obręcz beczki, albo przestrzeń między nogami stołu... albo nogami pomnika..."~ */
  IF ~~ THEN REPLY #1656 /* ~"I... mówisz, że te wszystkie rzeczy to drzwi?"~ */ GOTO 21
  IF ~~ THEN REPLY #1661 /* ~"Rozumiem. Mam jeszcze parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1662 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1660 /* ~Znów marszczy czoło. "Drzwi... portale mogą być czymkolwiek, co jest zamknięte ze wszystkich stron. Trudno powiedzieć, gdzie są... chyba że masz do nich klucze. To tak się tu dostałeś, śmiałku? Przez drzwi?"~ */
  IF ~~ THEN REPLY #1663 /* ~"Dlaczego tak mówisz?"~ */ GOTO 22
  IF ~~ THEN REPLY #1666 /* ~"Co to za 'Klucze'?"~ */ GOTO 23
  IF ~~ THEN REPLY #1667 /* ~"Więc te wszystkie drzwi są w mieście... Dokąd prowadzą?"~ */ GOTO 25
  IF ~~ THEN REPLY #1668 /* ~"Może... Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1665 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 22 // from: 21.0 23.2 24.1 25.1
  SAY #1664 /* ~"Eee... no dobra, nie zachowujesz się jakbyś mieszkał gdzieś w pobliżu Sigil, kumasz?"~ */
  IF ~~ THEN REPLY #7137 /* ~"Co to za 'Klucze'?"~ */ GOTO 23
  IF ~~ THEN REPLY #7138 /* ~"Dokąd prowadzą te wszystkie drzwi?"~ */ GOTO 25
  IF ~~ THEN REPLY #7139 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7140 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 25.0
  SAY #1670 /* ~"Każde drzwi mają klucz, który je otwiera, rozumiesz? W większości przypadków *nie wiesz* nawet, czy w pobliżu ciebie są drzwi, *chyba* że masz klucz. Wtedy drzwi się otwierają i możesz przez nie przejść i spotkać przeznaczenie. Jest też mały problem. Pamiętasz jak mówiłem, że drzwi mogą być wszystkim? A więc klucze też. Mogą być melodią, którą nucisz stojąc koło drzwi, myślą o ciastku, albo jakimś małym krokiem tanecznym. Kluczem może też być jakiś obiekt, coś jak kawałek szkła, albo kostka brukowa, albo złamany ząb... cokolwiek."~ */
  IF ~~ THEN REPLY #1673 /* ~"Strasznie to pokręcone."~ */ GOTO 24
  IF ~~ THEN REPLY #1671 /* ~"Dokąd prowadzą te wszystkie drzwi?"~ */ GOTO 25
  IF ~~ THEN REPLY #1672 /* ~"Wcześniej spytałeś, czy przeszedłem przez drzwi. Dlaczego?"~ */ GOTO 22
  IF ~~ THEN REPLY #7141 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7142 /* ~"W porządku... Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1674 /* ~"Przyzwyczaisz się, na pewno."~ */
  IF ~~ THEN REPLY #1676 /* ~"Dokąd prowadzą te wszystkie drzwi?"~ */ GOTO 25
  IF ~~ THEN REPLY #1675 /* ~"Wcześniej spytałeś, czy przeszedłem przez drzwi. Dlaczego?"~ */ GOTO 22
  IF ~~ THEN REPLY #7143 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7144 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 25 // from: 21.2 22.1 23.1 24.0
  SAY #1677 /* ~Wzrusza ramionami. "Drzwi mogą prowadzić *dokądkolwiek*, śmiałku. Niektóre nawet nie prowadzą to tego samego miejsca dwa razy." Wzdycha. "Widzisz, jest tak wiele drzwi, że można nimi dotrzeć do wszystkich miejsc w Sferach... *Gdziekolwiek*. Tyle, że jest ich tak cholernie dużo, że ciężko jest znaleźć ten, który zabierze cię tam, gdzie chcesz dotrzeć.~ */
  IF ~~ THEN REPLY #1678 /* ~"Mówiłeś, że te drzwi mają 'klucze'...?"~ */ GOTO 23
  IF ~~ THEN REPLY #1679 /* ~"Wcześniej spytałeś, czy przeszedłem przez drzwi. Dlaczego?"~ */ GOTO 22
  IF ~~ THEN REPLY #7145 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7146 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 17.1
  SAY #1680 /* ~"Centrum Sfer, tak mówią. Nie wiem tego z doświadczenia." Wzrusza ramionami. "Wyobrażam sobie, że są tu po trosze wszystkie miejsca... w ten, lub inny sposób. Poza tym nie całe Sigil jest takie brzydkie, jak tutaj."~ */
  IF ~~ THEN REPLY #1681 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1682 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 3.6 5.6 7.4
  SAY #1684 /* ~"Zgubiłeś co?" Wygląda na zmieszanego. "Nie mam pojęcia, gdzie można coś takiego znaleźć, śmiałku."~ */
  IF ~~ THEN REPLY #2531 /* ~"Nieważne. Mam jeszcze parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #2532 /* ~"W porządku... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.4 5.4
  SAY #1683 /* ~"Pani Sigil? Nie *słyszałeś* o niej? Musisz być błogosławionym albo tęp... ech, naprawdę niewiele wiesz o Sigil." Lekko się śmieje. "Słowo Pani jest w Sigil prawem." Przez chwilę myśli. "Ale nie mówi dużo. Tak naprawdę, nie mówi nic."~ */
  IF ~~ THEN REPLY #1686 /* ~"To dopiero prawo."~ */ GOTO 29
  IF ~~ THEN REPLY #1687 /* ~"Co jeszcze możesz mi powiedzieć o tej Pani?"~ */ GOTO 29
  IF ~~ THEN REPLY #1688 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1689 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #1685 /* ~Patrzy na ciebie z rezerwą. "Nie chcę o niej zbyt dużo mówić, śmiałku... Nie chcesz się znaleźć w jej cieniu, ani śpiewać jej pieśni pochwalnych, zgadza się? Nie mówmy już o tym. Kłapanie trumną na temat Pani to ponura sprawa."~ */
  IF ~~ THEN REPLY #1692 /* ~"W porządku więc, mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1693 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1690 /* ~"Leże Grabarzy. Ponure miejsce. Nie chcę go oglądać, nawet wtedy, gdy znajdę się w księdze umarłych."~ */
  IF ~~ THEN REPLY #1694 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1695 /* ~"Rozumiem. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 13.0
  SAY #1691 /* ~"Sępy. Wielu z nich ma legowiska na Placu Szmaciarzy. Zbierają sztywniaków, zabierają im wszystko, co ma jakąś wartość, a potem sprzedają Grabarzom w Kostnicy."~ */
  IF ~~ THEN REPLY #1696 /* ~"Dlaczego to robią?"~ */ GOTO 32
  IF ~~ THEN REPLY #1698 /* ~"Jest jeszcze jakaś inna praca w Ulu?"~ */ GOTO 11
  IF ~~ THEN REPLY #1697 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7147 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1699 /* ~"Grabarze płacą ludziom za zbieranie truposzy z ulic i alei. Trochę ułatwia im życie fakt, że inni mieszkańcy Ula zbierają dla nich ciała. Dużo truposzy w Ulu, każdego dnia."~ */
  IF ~~ THEN REPLY #1701 /* ~"Jest jeszcze jakaś inna praca w Ulu?"~ */ GOTO 11
  IF ~~ THEN REPLY #1700 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7148 /* ~"Rozumiem. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 3.5 5.5 7.3
  SAY #1702 /* ~"Nie powiem, żebym je znał, śmiałku. Kim on jest?"~ */
  IF ~~ THEN REPLY #1703 /* ~"Myślę, że jest Zbieraczem."~ */ GOTO 34
  IF ~~ THEN REPLY #1705 /* ~"Sam próbuję się tego dowiedzieć. Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1669 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1707 /* ~Myśli. "Cóż, więc najprawdopodobniej ma swoje leże na Placu Szmaciarzy. Może tam zajrzysz... to znaczy, w dzień. W nocy to nie jest zbyt miłe miejsce."~ */
  IF ~~ THEN REPLY #1708 /* ~"Gdzie znajduje się Plac Szmaciarzy?"~ */ GOTO 35
  IF ~~ THEN REPLY #1709 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1710 /* ~"Dzięki za ostrzeżenie. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1711 /* ~"To kilka przecznic stąd - idź na zachód od Kostnicy, a na pewno na niego wpadniesz. Bądź jednak ostrożny, gdy tam będziesz, śmiałku... Zbieracze nie zawsze czekają aż ktoś umrze, rozumiesz?"~ */
  IF ~~ THEN REPLY #1704 /* ~"Rozumiem. Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #1706 /* ~"Rozumiem. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 10.0
  SAY #1712 /* ~"To miejsce pełne bandytów i rabusiów, śmiałku. Nie idź tam, chyba że chcesz się znaleźć w Kostnicy. Ta aleja to jeden spalony wrak, choć kiedyś była to ulica, zanim pewnej nocy nie spalił jej jakiś stuknięty mag. Mówi się, że go złapali i spalili za karę, a potem wystawili na pokaz w Gorejącym Człeku. Oto cały Ul."~ */
  IF ~~ THEN REPLY #2533 /* ~"Gdzie znajduje się ta Aleja?"~ */ GOTO 42
  IF ~  False()
~ THEN REPLY #2529 /* ~"Gdzie znajduje się ta Aleja?"~ */ GOTO 42
  IF ~~ THEN REPLY #2530 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7149 /* ~"Nieważne. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 3.7 4.3 5.7 6.2 7.6 8.4 9.1 10.2 11.4 12.1 13.6 14.2 15.2 16.4 17.3 18.2 19.2 20.2 21.4 22.3 23.4 24.3 25.3 26.1 28.3 29.1 30.1 31.3 32.2 34.2 35.1 36.3 42.1
  SAY #1713 /* ~"Ech..." Gdy odchodzisz oblizuje usta. "Śmiałku, może myślisz, że..." Przez chwilę bada cię wzrokiem. "Może miałbyś parę miedziaków dla krwawnika, który pomógł ci w twej drodze? Niewielu by to zrobiło, więc zrób to dla starego towarzysza... tylko tyle, żebym mógł zwilżyć usta po tej całej rozmowie. Co ty na to?"~ */
  IF ~~ THEN REPLY #1714 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_5","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #1715 /* ~"Daruję ci życie. Co ty na to?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_2","GLOBALGood",-2)
~ GOTO 40
  IF ~  PartyGoldGT(0)
~ THEN REPLY #1716 /* ~"W porządku." Daj mu miedziaka.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 41
  IF ~  PartyGoldGT(4)
~ THEN REPLY #1717 /* ~Daj pięć miedziaków.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",2)
TakePartyGold(5)
~ GOTO 41
  IF ~  PartyGoldGT(9)
~ THEN REPLY #1718 /* ~Daj dziesięć miedziaków.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",3)
TakePartyGold(10)
~ GOTO 41
  IF ~  PartyGold(0)
~ THEN REPLY #2534 /* ~"Przykro mi, nie mogę ci nic dać."~ */ GOTO 38
  IF ~  PartyGoldGT(0)
~ THEN REPLY #2535 /* ~Kłamstwo: "Przykro mi, nie mogę ci nic dać."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_3","GLOBALGood",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.5 37.6
  SAY #1719 /* ~Wydaje się zawiedziony. "No, dobrze, tak... Pokój z tobą, śmiałku..." Odchodząc mamrocze do siebie.~ */
  IF ~~ THEN REPLY #1723 /* ~"*Co* powiedziałeś?"~ */ GOTO 39
  IF ~~ THEN REPLY #1721 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #1722 /* ~Mężczyzna wydaje się przestraszony i unosi ręce. "Nie, nie, nic, śmiałku! Mówiłem o pogodzie, naprawdę! Nic o tobie!" Patrzy, gotów do ucieczki.~ */
  IF ~~ THEN REPLY #1724 /* ~Zaatakuj go.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1725 /* ~Pozwól mu uciec.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #1726 /* ~"Eeee... wystarczy w zupełności, śmiałku." Uśmiecha się niepewnie. "Pokój z tobą." Odchodzi szybko.~ */
  IF ~~ THEN REPLY #1727 /* ~Zaatakuj go.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1728 /* ~Pozwól mu uciec.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2 37.3 37.4
  SAY #1729 /* ~Rozgląda się wokoło, patrząc czy nikt nie widzi i wsuwa brzdęk w poły płaszcza. "Dziękuję uprzejmie, śmiałku! Oby cień Pani zawsze cię omijał!"~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #1730 /* ~"Poczekaj chwilę... Pani? Co masz na myśli?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",0)
~ GOTO 43
  IF ~~ THEN REPLY #7150 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1
  SAY #7127 /* ~"To na południowy zachód od Kostnicy i na południe od Zebranego Pyłu, wiesz tego baru Grabarzy."~ */
  IF ~~ THEN REPLY #7151 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #7152 /* ~"Dzięki. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #7128 /* ~"Pani Sigil? Nie *słyszałeś* o niej? Musisz być błogosławionym albo tęp... ech, naprawdę niewiele wiesz o Sigil." Lekko się śmieje. "Słowo Pani jest w Sigil prawem." Przez chwilę myśli. "Ale nie mówi dużo. Tak naprawdę, nie mówi nic."~ */
  IF ~~ THEN REPLY #7153 /* ~"To dopiero prawo."~ */ GOTO 44
  IF ~~ THEN REPLY #7154 /* ~"Co jeszcze możesz mi powiedzieć o Pani?"~ */ GOTO 44
  IF ~~ THEN REPLY #7155 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #7129 /* ~Patrzy na ciebie z rezerwą. "Nie chcę o niej zbyt dużo mówić, śmiałku... Nie chcesz się znaleźć w jej cieniu, ani śpiewać jej pieśni pochwalnych, zgadza się? Nie mówmy już o tym. Kłapanie trumną na temat Pani to ponura sprawa."~ */
  IF ~~ THEN REPLY #7156 /* ~"A zatem żegnaj."~ */ EXIT
END
