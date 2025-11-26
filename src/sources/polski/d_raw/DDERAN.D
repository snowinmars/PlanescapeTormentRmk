// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #35792 /* ~Widzisz hałaśliwego licytatora. Zachowuje się on bardzo żywo, sporo krzyczy, wrzeszczy i tupie. Zdaje się mieć teatralne zamiłowania; stroi wiele dziwnych min, machając rękami...~ */
  IF ~~ THEN REPLY #35834 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #35835 /* ~Zignoruj mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #35793 /* ~Spogląda na ciebie i daje tłumowi znak, że robi sobie przerwę. "Tak oto, witam cię po tysiąckrotne, panie!" Kiedy spogląda na twe blizny, dopowiada. "Wiesz, wystarczyło mi jedno spojrzenie mego wyrobionego oka, by stwierdzić, iż widzę człowieka, który przyszedł na targ w poszukiwaniu leczniczych czarów."~ */
  IF ~~ THEN REPLY #35836 /* ~"Masz jakieś zaklęcia?"~ */ GOTO 2
  IF ~~ THEN REPLY #35837 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35838 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35794 /* ~Spogląda na ciebie zszokowany i wskazuje na siebie wyniośle. "Czy ja, Deran, mam jakieś zaklęcia?" Przerywa dla podkreślenia efektu. "Nie, panie. Nie mam... Niechaj cię jednakże ten fakt nie zraża. Mam na sprzedaż wiele innych rzeczy."
Wskazuje na tył terenu aukcyjnego, gdzie stoi grupka ludzi zakutych w łańcuchy.~ */
  IF ~~ THEN REPLY #35839 /* ~"Sprzedajesz niewolników?"~ */ GOTO 3
  IF ~~ THEN REPLY #35840 /* ~"Mam kilka pytań do ciebie..."~ */ GOTO 7
  IF ~~ THEN REPLY #35841 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 22.0
  SAY #35795 /* ~Potrząsa przecząco głową. "Nie, panie! To skazani na okresową służbę, a nie niewolnicy. Większość z nich winna jest pomniejszych przestępstw. Dochody z ich sprzedaży przeznaczone zostaną na spłatę ich powinności wobec miasta. Gdy czas ich służby dobiegnie końca, znów staną się wolnymi ludźmi."~ */
  IF ~~ THEN REPLY #35842 /* ~Prawda: "W dalszym ciągu uważam to za niewolnictwo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deran_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #35843 /* ~Prawda: "Zdaje się to być dobrym sposobem na zapłacenie zaciągniętych wobec społeczeństwa długów."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deran_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #35844 /* ~Prawda: "Nieważne, nie obchodzi mnie to."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #35796 /* ~Obdarza cię łagodnym uśmiechem. "Nie zaprzątam swej głowy takimi myślami. Mam za zadanie sprzedać ich kontrakty, zgodnie z wyrokiem sądów w Sigil." Nachyla się i zaczyna mówić cichszym głosem. "Oraz odbierać procenty za moje starania, rozumiesz." Wyprostowuje się.~ */
  IF ~~ THEN REPLY #35845 /* ~"Powiedziałeś, że są oni winni zbrodni. Jakie przestępstwa popełnili?"~ */ GOTO 6
  IF ~~ THEN REPLY #35846 /* ~"Mam kilka pytań do ciebie..."~ */ GOTO 7
  IF ~~ THEN REPLY #35847 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #35803 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #35801 /* ~Wzrusza przesadnie ramionami. "Nie wiem dokładnie, ale zgaduję, że kradzieże, napady lub niemożność spłacenia długów. To najpospolitsze wykroczenia."~ */
  IF ~~ THEN REPLY #35848 /* ~"Rozumiem... Mam do ciebie kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35849 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1 4.1 6.0 8.1 14.3 15.3 16.2 17.2 18.2 19.0 20.0 22.1
  SAY #35802 /* ~Potrząsa głową. "Nie mam zbytnio czasu na tego typu pogaduszki, przyjacielu. Wzywają mnie interesy! Mów szybko!"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #35850 /* ~"Szukam osobnika zwanego Lotarem lub Panem Kości..."~ */ GOTO 8
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #35851 /* ~"Miałem czaszkę i ktoś mi ją ukradł. Nie wiesz, kto mógłby zrobić coś takiego?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35852 /* ~"Chcę cię zapytać o Tristę."~ */ GOTO 23
  IF ~~ THEN REPLY #35853 /* ~"Kim jesteś?"~ */ GOTO 22
  IF ~~ THEN REPLY #35854 /* ~"Możesz mi coś powiedzieć o tej dzielnicy?"~ */ GOTO 14
  IF ~~ THEN REPLY #35855 /* ~"Możesz mi opowiedzieć o Sigil?"~ */ GOTO 19
  IF ~~ THEN REPLY #35856 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 13.0
  SAY #35804 /* ~Spogląda na ciebie z udawaną troską. "Muszę przyznać, że powiedzenie tego byłoby niebezpieczną rzeczą, przyjacielu... Nie chcę narażać cię na niebezpieczeństwo."~ */
  IF ~~ THEN REPLY #35857 /* ~"Tak się składa, że lubię ryzyko. Naraź mnie więc na nie."~ */ GOTO 9
  IF ~~ THEN REPLY #35858 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35859 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35805 /* ~Śmieje się hałaśliwie. "Dobrze więc, przyjacielu. Lotar jest Panem i władcą słynnych Kości Nocy. To biblioteka, gdzie umarli sami służą za jego źródło wiedzy tajemnej. Wszyscy umarli z Sigil i Sfer wyszeptują mu tajemnice w jego Gabinecie Czaszek."~ */
  IF ~~ THEN REPLY #35860 /* ~"Gdzie mogę znaleźć to miejsce?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35806 /* ~"Spróbuj na południowym wschodzie od części handlowej tej dzielnicy... Jeśli natrafisz na zrujnowany budynek i znajdziesz kościaną drabinę wiodącą na dół, to być może będzie właśnie ta drabina, która cię doprowadzi do Gabinetu Czaszek."~ */
  IF ~~ THEN REPLY #35861 /* ~"Dzięki. Mam kilka innych pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #35862 /* ~"Czas mi już odejść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #35807 /* ~Uśmiecha się. "Nie, przyjacielu. Na więcej pytań już ci nie odpowiem. Rozmawiałem znacznie dłużej, niż powinienem - o rzeczach, o których nie powinienem mówić. Muszę teraz wrócić i zająć się moimi klientami." Odchodzi od ciebie.~ */
  IF ~~ THEN REPLY #35863 /* ~"Rozumiem. Żegnaj."~ */ DO ~SetGlobal("Deran_Questions","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #35808 /* ~"Czaszkę?" Wprawia go to w zakłopotanie. "Nie ma na nie zbytu, szczególnie na takie oddzielone od ciała..." Zastanawia się, po czym znów kieruje się ku tobie, radykalnie ściszając głos. "Jeśli oczywiście nie..."~ */
  IF ~~ THEN REPLY #35864 /* ~"Mów dalej..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #35809 /* ~"No cóż, przypadek znikających czaszek może być całkiem poważną sprawą, całkiem niebezpieczną sprawą. Widzisz, gdyby ktoś chciał handlować czaszkami, mogłoby to robić jedynie kilka osób w Sigil..." Przerywa na chwilę. "To wręcz pewne, przyjacielu, że jedną z nich jest..." Rozgląda się na prawo i na lewo, po czym kontynuuje konspiracyjnym szeptem. "...sam Lotar, Pan Kości!"~ */
  IF ~~ THEN REPLY #36237 /* ~"Opowiedz mi o tym Lotarze."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 7.4
  SAY #35810 /* ~Zakreśla wokół siebie szeroki łuk. "To, panie, jest Niższa Dzielnica. To dom pospolitych ludzi i mało tu rzeczy godnych uwagi. Jedynymi wartymi wzmianki są: Kuźnia, targ pod gołym niebiem i wieża oblężnicza."~ */
  IF ~~ THEN REPLY #35865 /* ~"Opowiedz mi o Kuźni."~ */ GOTO 15
  IF ~~ THEN REPLY #35866 /* ~"Opowiedz mi o wieży oblężniczej."~ */ GOTO 17
  IF ~~ THEN REPLY #35867 /* ~"Opowiedz mi o tym targu pod gołym niebiem."~ */ GOTO 18
  IF ~~ THEN REPLY #35868 /* ~"Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35869 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0 18.0
  SAY #35811 /* ~Rozpościera ramiona i spogląda w kierunku nieba. "Warsztat wszelkiego stworzenia, gdzie stal i ludzką duszę przerabia się na dzieło sztuki. Pośród tych ścian zmieniać można samą istotę tworzenia..." Spogląda na ciebie ponownie. "Tak powiadają Bogowcy."~ */
  IF ~~ THEN REPLY #35870 /* ~"Bogowcy?"~ */ GOTO 16
  IF ~~ THEN REPLY #35871 /* ~"Opowiedz mi o wieży oblężniczej."~ */ GOTO 17
  IF ~~ THEN REPLY #35872 /* ~"Opowiedz mi o tym targu pod gołym niebem."~ */ GOTO 18
  IF ~~ THEN REPLY #35873 /* ~"Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35874 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #35812 /* ~Uśmiecha się. "Szlachetna frakcja - każdy może stać się jednym z Bogów, jeśli tylko uda mu się w czasie swojego życia zdobyć wystarczająco dużo wiedzy, by rozwinąć się i stać się lepszym duchem! Czyż możesz sobie wyobrazić bardziej szlachetną frakcję?"~ */
  IF ~~ THEN REPLY #35875 /* ~"Opowiedz mi o tej wieży oblężniczej."~ */ GOTO 17
  IF ~~ THEN REPLY #35876 /* ~"Opowiedz mi o tym targu pod gołym niebiem."~ */ GOTO 18
  IF ~~ THEN REPLY #35877 /* ~"Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35878 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1 16.0 18.1
  SAY #35813 /* ~"Prawdziwa tajemnica, nawet dla mnie. Po prostu pojawiła się pewnego dnia. Nikt nie zdołał tam wejść i nic z niej nie wyszło."~ */
  IF ~~ THEN REPLY #35879 /* ~"Opowiedz mi o Kuźni."~ */ GOTO 15
  IF ~~ THEN REPLY #35880 /* ~"Opowiedz mi o tym targu pod gołym niebem."~ */ GOTO 18
  IF ~~ THEN REPLY #35881 /* ~"Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35882 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2 15.2 16.1 17.1
  SAY #35814 /* ~"Targ jest położony na południe stąd. Jest on w stanie zaspokoić każde zapotrzebowanie. Polecam ci odwiedzenie tego miejsca."~ */
  IF ~~ THEN REPLY #35883 /* ~"Opowiedz mi o Kuźni."~ */ GOTO 15
  IF ~~ THEN REPLY #35884 /* ~"Opowiedz mi o wieży oblężniczej."~ */ GOTO 17
  IF ~~ THEN REPLY #35885 /* ~"Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35886 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #35815 /* ~Śmieje się i rozkłada ramiona tak, jakby chciał nimi objąć całe miasto. "Wspaniałe złote miasto. Miasto, z którego wychodzą wszystkie drzwi..." Uśmiecha się i unosi brwi. "...i dokąd wszystkie drzwi prowadzą! Nie da się opowiedzieć o Sigil, trzeba go samemu doświadczyć!"~ */
  IF ~~ THEN REPLY #35887 /* ~"Mam kilka innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35888 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #35816 /* ~Widzisz Derana, licytatora. Uśmiecha się, gdy się do niego zbliżasz. "Miło cię znowu widzieć! Cóż mogę dla ciebie uczynić w ten wspaniały, przepełniony smogiem dzionek?"~ */
  IF ~  !Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35889 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35890 /* ~"Mam kilka pytań..."~ */ GOTO 21
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35891 /* ~"Chcę cię zapytać o Tristę."~ */ GOTO 23
  IF ~~ THEN REPLY #35892 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #35817 /* ~Uśmiecha się niewesoło. "Nie odpowiem już na żadne z twoich pytań, panie. Już naraziłem nas na niebezpieczeństwo i nie widzę powodu, by dalej kontynuować..."~ */
  IF ~~ THEN REPLY #35893 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.3
  SAY #35818 /* ~"Deran się zowię, przyjacielu! Jak to możliwe, że o mnie nie słyszałeś? To dla mnie rana, doprawdy!" Uśmiecha się szerzej, udając, że został zraniony. "Nie ma nikogo znamienitszego i słynniejszego, jeśli chodzi o gromadzenie ludzi, którzy chcą innych ludzi." Wskazał na tył strefy aukcyjnej, gdzie stoi grupka ludzi zakutych w łańcuchy. "Chcesz kogoś, przyjacielu?"~ */
  IF ~~ THEN REPLY #35894 /* ~"Sprzedajesz niewolników?"~ */ GOTO 3
  IF ~~ THEN REPLY #35895 /* ~"Mam parę innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #35896 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.2 20.2
  SAY #35819 /* ~Marszczy na moment brwi, po czym wzrusza ramionami. "No dobrze, panie. Co chcesz wiedzieć o Triście?"~ */
  IF ~~ THEN REPLY #35897 /* ~"Mogę kupić jej kontrakt?"~ */ GOTO 24
  IF ~~ THEN REPLY #35898 /* ~"Mówi, że nie powinno jej tu być."~ */ GOTO 31
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35899 /* ~"Mam dowód, że nie popełniła ona żadnego przestępstwa."~ */ GOTO 33
  IF ~~ THEN REPLY #35900 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #35820 /* ~Marszczy brwi. "Oczywiście, panie... Jeśli tylko spełniasz wymagania stawiane przez sądy Sigil i jesteś w stanie zapłacić za kontrakt." Uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #35901 /* ~"A jakie są wymagania?"~ */ GOTO 25
  IF ~~ THEN REPLY #35902 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 27.0
  SAY #35821 /* ~Zaczyna wyliczać na palcach jednej dłoni. "Po pierwsze, musisz być mieszkańcem Sigil. Po drugie, musisz udowodnić, że masz tu stałe miejsce zamieszkania i że możesz zapewnić służbie odpowiednie warunki i ją utrzymać. Ostatnie, sam nie możesz mieć na swym koncie żadnych przestępstw."~ */
  IF ~~ THEN REPLY #35903 /* ~"Rozumiem... Ile kosztuje jej kontrakt?"~ */ GOTO 26
  IF ~~ THEN REPLY #35904 /* ~"A co jeśli mogę udowodnić, że nie jest winna postawionym jej zarzutom?"~ */ GOTO 28
  IF ~~ THEN REPLY #35905 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #35822 /* ~Obrzuca cię szerokim uśmiechem, po czym wskazuje na pobliski tłum. "Rozpocznę licytowanie od pięciuset miedziaków, panie."~ */
  IF ~~ THEN REPLY #35906 /* ~"A co, jeśli chcę odkupić jej kontrakt bezpośrednio?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #35823 /* ~Spogląda na ciebie z udawaną przykrością i potrząsa głową. "Zlicytowana zostanie temu, kto zaoferuje najwyższą stawkę, panie. Takie jest prawo."~ */
  IF ~~ THEN REPLY #35907 /* ~"Rozumiem... Jakie są wymagania, by móc zakupić służącego?"~ */ GOTO 25
  IF ~~ THEN REPLY #35908 /* ~"A co, jeśli mogę udowodnić, że nie jest winna postawionym jej zarzutom?"~ */ GOTO 28
  IF ~~ THEN REPLY #35909 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1 27.1 31.0
  SAY #35824 /* ~Śmieje się i spogląda na ciebie kpiąco. "Jako pomocnik sądów, mogę się przed nimi stawić z nowym dowodem i oczyścić Tristę ze wszystkich zarzutów. Czy masz taki dowód?"~ */
  IF ~~ THEN REPLY #35910 /* ~"Nie w tej chwili."~ */ GOTO 29
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35911 /* ~"Tak."~ */ GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #35825 /* ~Przytakuje. "Masz zamiar poszukać takich dowodów na rzecz Tristy?"~ */
  IF ~~ THEN REPLY #35912 /* ~"Tak."~ */ GOTO 30
  IF ~~ THEN REPLY #35913 /* ~"Nie wiem..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #35826 /* ~Przez chwilę się w ciebie wpatruje, starając się ocenić, czy mówisz poważnie. "Dobrze... Na razie nie będę licytował Tristy, panie. Życzę ci powodzenia. Teraz już mnie zostaw i zajmij się tym."~ */
  IF ~~ THEN REPLY #35914 /* ~"Dziękuję. Żegnaj."~ */ JOURNAL #66524 /* ~Rozmawiałem z licytatorem Deranem o Triście. Powiedziałem mu, że zamierzam odnaleźć dowód jej niewinności i namówiłem go, aby chwilowo powstrzymał się od wystawiania jej na sprzedaż.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY #35827 /* ~Wzdycha, po czym spogląda na ciebie z dezaprobatą. "A czy tym nie powiedziałbyś tak samo, gdybyś znajdował się na jej miejscu, panie?" Potrząsa głową. "Słyszałem jej opowieść, panie. Mimo iż współczuję tej pani, nie mając dowodów, nie mogę nic zrobić, by ją wesprzeć."~ */
  IF ~~ THEN REPLY #35915 /* ~"A co, jeśli udowodnię, że jest niewinna?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY #35797 /* ~Potrząsa głową. "W takim razie marnujesz tą rozmową zarówno swój, jak i mój czas."~ */
  IF ~~ THEN REPLY #35916 /* ~"Tak, zamierzam jej pomóc."~ */ GOTO 30
  IF ~~ THEN REPLY #35917 /* ~"Masz rację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.2 28.1
  SAY #35798 /* ~Uśmiecha się szeroko, po czym wybucha śmiechem. "Świetnie, pokaż mi ten dowód." Wyciąga w twym kierunku dłoń.~ */
  IF ~~ THEN REPLY #35918 /* ~Wręcz mu dokument.~ */ DO ~DestroyItemObject("loandoc",Protagonist,FALSE)
SetGlobal("Trist_Quest","GLOBAL",4)
AddexperienceParty(4000)
~ GOTO 34
  IF ~~ THEN REPLY #35919 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #35799 /* ~Otwiera dokument i szybko studiuje jego zawartość. Po chwili wzdycha, po czym zwija go i wtyka za koszulę. "Zdaje się, że sądy winne są Triście przeprosiny, panie. Od tego momentu jest już wolna. Podejmę wszelkie przygotowania, by status oraz majątek zostały jej zwrócone."~ */
  IF ~~ THEN REPLY #35920 /* ~"Dziękuję, Deranie."~ */ JOURNAL #66525 /* ~Dałem Deranowi zaświadczenie o pożyczce dotyczące sprawy Tristy. Deran zgodził się przywrócić jej wolność i dopilnować, aby przywrócono jej status majątkowy sprzed aresztowania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #35800 /* ~"Nie, to ja dziękuję. Rzadko zdarzają się ludzie, którzy zrobiliby to, co ty." Kłania się tobie. "Wybacz mi, muszę porozmawiać z Panią Tristą. Żegnaj." Zaczyna odchodzić w stronę Tristy.~ */
  IF ~~ THEN REPLY #35921 /* ~"Żegnaj."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ EXIT
END
