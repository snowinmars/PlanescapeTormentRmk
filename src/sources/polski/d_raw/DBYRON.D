// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBYRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBYRON~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34629 /* ~Widzisz dobrze ubranego człowieka w średnim wieku. Wygląda, jakby przyglądał się tłumowi wyćwiczonym okiem. Zauważa, jak podchodzisz i szybko ogląda cię od stóp do głów.~ */
  IF ~~ THEN REPLY #34661 /* ~"Witaj."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #34662 /* ~Zignoruj mężczyznę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34630 /* ~Uśmiecha się do ciebie i ledwo zauważalnie kiwa głową. "Jestem Byron Szpicer, pożyczkodawca. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #34663 /* ~"Pożyczkodawca?"~ */ GOTO 2
  IF ~~ THEN REPLY #34664 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #34665 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34631 /* ~Ponownie przytakuje. "Tak, świadczę usługi handlarzom. Chcesz rozkręcić interes? Utrzymać na powierzchni ten, który ostatnio podupada? A może rozszerzyć istniejącą działalność? W każdym wypadku przychodzisz do mnie po fundusze." Ogląda cię ponownie. "Wątpię, panie, abyś ty był handlarzem. Cóż więc mogę dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #34666 /* ~"Jestem handlarzem."~ */ GOTO 3
  IF ~~ THEN REPLY #34667 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #34668 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.1
  SAY #34632 /* ~Uśmiecha się i na chwilę odwraca wzrok. "Handlarzem śmierci, może, ale nie takim, z którymi robię interesy." Marszczy się. "Jeśli pragniesz monopolizować mój czas, to proszę cię, abyś przeszedł do celu tej wizyty."~ */
  IF ~~ THEN REPLY #34669 /* ~"Czy możesz opowiedzieć mi o swoim interesie?"~ */ GOTO 4
  IF ~~ THEN REPLY #68104 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #68105 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #34633 /* ~Marszczy się i potrząsa głową. "Nie, nie widzę żadnych powodów..." Ogląda cię uważnie. "Najwyraźniej nie jesteś osobą, z którą chciałbym prowadzić interesy. Sądzę, że powinieneś odejść." Odwraca wzrok.~ */
  IF ~~ THEN REPLY #34672 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #34673 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 6.2 7.2 8.1 9.1 10.4 11.1 12.0 13.1 15.0 16.1 17.2 30.1 31.1
  SAY #34634 /* ~Wzdycha. "Dobrze, ale szybko."~ */
  IF ~~ THEN REPLY #34674 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #34675 /* ~"Chciałem porozmawiać z tobą o Triście."~ */ GOTO 16
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34676 /* ~"Szukam kogoś o imieniu Lotar, albo Pan Kości..."~ */ GOTO 24
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34677 /* ~"Zgubiłem czaszkę... nie wiesz, kto mógłby chcieć czegoś takiego?"~ */ GOTO 28
  IF ~~ THEN REPLY #34678 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #34635 /* ~"Jeśli masz na myśli ogólnie dzielnicę, to nosi ona nazwę Niższej. Jeśli mówisz o tym konkretnym lokalu, to jest to targ pod gołym niebiem."~ */
  IF ~~ THEN REPLY #34679 /* ~"Opowiedz mi o Niższej Dzielnicy."~ */ GOTO 7
  IF ~~ THEN REPLY #34680 /* ~"Opowiedz mi o targu pod gołym niebem."~ */ GOTO 12
  IF ~~ THEN REPLY #34681 /* ~"Mam inne pytania..."~ */ GOTO 5
  IF ~~ THEN REPLY #34682 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from: 6.0
  SAY #34636 /* ~Wygląda na znudzonego. "To dzielnica pospólstwa." Gestem wskazuje przestrzeń dookoła. "Rozejrzyj się i zobaczysz wszystko, co tu jest do obejrzenia... nic. Nic interesującego."~ */
  IF ~~ THEN REPLY #34683 /* ~"Zatem czemu tu jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #34684 /* ~"Opowiedz mi o targu pod gołym niebem."~ */ GOTO 12
  IF ~~ THEN REPLY #34685 /* ~"Mam inne pytania..."~ */ GOTO 5
  IF ~~ THEN REPLY #34686 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34637 /* ~Uśmiecha się. "Jedyna rzecz, do jakiej przydają się ci bezmyślni skurle to wydawanie pieniędzy. To im daje uczucie, że czegoś dokonują w ich bezsensownym życiu." Przerywa i rozgląda się dookoła z pogardą.~ */
  IF ~~ THEN REPLY #34687 /* ~"Mów dalej."~ */ GOTO 9
  IF ~~ THEN REPLY #34688 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #34689 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34638 /* ~Wzrusza ramionami. "Tam gdzie są pieniądze, znajdziesz również handlarzy i złodziei. Zapewniam handlarzy potrzebnych, aby uwolnić ich..." Wskazuje dłonią dookoła. "...od ich ciężko zarobionych pieniędzy." Uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #34690 /* ~"Wspominałeś coś o złodziejach. A kto *zapewnia* ich?"~ */ GOTO 10
  IF ~~ THEN REPLY #34691 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #34692 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #34639 /* ~"Nie ja..." Obdarza cię oceniającym spojrzeniem i uśmiecha się. "Czemu pytasz?"~ */
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34693 /* ~"Nazwij to ciekawością..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Na południowy wschód od rynku można znaleźć złodzieja o imieniu Lenny. Może dowiem się od niego paru rzeczy.~ */ GOTO 11
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34694 /* ~"Szukam kogoś, kto by mnie wyszkolił..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Na południowy wschód od rynku można znaleźć złodzieja o imieniu Lenny. Może dowiem się od niego paru rzeczy.~ */ GOTO 31
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34695 /* ~"Nazwij to ciekawością..."~ */ GOTO 11
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67290 /* ~"Szukam kogoś, kto by mnie wyszkolił..."~ */ GOTO 31
  IF ~~ THEN REPLY #67291 /* ~"Bez przyczyny, mam jeszcze kilka pytań..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.2
  SAY #34640 /* ~Śmieje się. "Taka ciekawość może być niebezpieczna... nawet śmiertelna, jeśli nie jest się ostrożnym." Przerywa, by zastanowić się nad następnymi słowami, jednocześnie przyglądając ci się uważnie. "Możesz chcieć pogadać o tym z Lennym. Przeważnie można znaleźć go na południowy wschód od targu." Przerywa na chwilę. "Powiedz mu, że ja cię przysyłam."~ */
  IF ~~ THEN REPLY #34697 /* ~"Opowiedz mi o targu pod gołym niebem."~ */ GOTO 12
  IF ~~ THEN REPLY #34698 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35738 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 11.0 31.0
  SAY #34641 /* ~Gestem wskazuje budynek przed sobą. "Doskonały targ, który zaspokaja prawie każdą potrzebą." Przerywa, by chwilę pomyśleć, po czym mówi dalej: "Nie mają nic egzotycznego. Tych skurli nie stać na takie rzeczy, ale i tak jest to dobry targ."~ */
  IF ~~ THEN REPLY #35739 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35740 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #34642 /* ~Wzrusza ramionami. "Nie jestem przewodnikiem. Jeśli chcesz poznać Sigil, to musisz je odkryć. Sugeruję, żebyś tak uczynił. Jednakże muszę cię ostrzec, że jeśli będziesz spoglądał zbyt głęboko, to umrzesz."~ */
  IF ~~ THEN REPLY #35741 /* ~"Och? Czemuż to?"~ */ GOTO 14
  IF ~~ THEN REPLY #35742 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35743 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34643 /* ~Myśli przez chwilę, starając się dokładnie ocenić, co ma ci powiedzieć. "Sigil posiada wiele tajemnic, zarówno dobrych, jak i złych. Jeśli odkryjesz zbyt wiele tych złych, twoje życie może się szybko skończyć."~ */
  IF ~~ THEN REPLY #35744 /* ~"Jakiego rodzaju tajemnice?"~ */ GOTO 15
  IF ~~ THEN REPLY #35745 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #35746 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34644 /* ~Patrzy na ciebie zaskoczony, po czym wybucha śmiechem. "Nie byłyby tajemnicami, gdybym ci o nich powiedział, prawda?"~ */
  IF ~~ THEN REPLY #35747 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35748 /* ~"Nie sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1 30.2
  SAY #34645 /* ~"Ach, Trista..." Marszczy się i odwraca wzrok. Po chwili spogląda na ciebie i podnosi brwi. "Co z nią?"~ */
  IF ~~ THEN REPLY #35749 /* ~"Staram się odnaleźć dla niej zaginiony dokument."~ */ GOTO 17
  IF ~~ THEN REPLY #35750 /* ~"Nieważne, mam do ciebie jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35751 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #34646 /* ~Wzdycha i potrząsa głową. "Nie ma żadnego *zaginionego* dokumentu. To była sztuczka, której starała się użyć Trista, by poddać w wątpliwość jej dług. Ta sprawa została dogłębnie zbadana przez Łaskobójców i nie znaleźli oni żadnych dowodów na istnienie takiego dokumentu."~ */
  IF ~~ THEN REPLY #35752 /* ~"Łaskobójców?"~ */ GOTO 18
  IF ~~ THEN REPLY #35753 /* ~"Mogli coś przeoczyć."~ */ GOTO 19
  IF ~~ THEN REPLY #35754 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35755 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34647 /* ~"Tak, frakcja fanatyków oddanych odkrywaniu *prawdy* w sprawach przestępstw i dopełnianiu sprawiedliwości. Sądy Sigil często używają ich jako detektywów. Są dość skrupulatni, a nie znaleźli nic..." Wpatruje się w ciebie.~ */
  IF ~~ THEN REPLY #35756 /* ~"Mogli coś przeoczyć."~ */ GOTO 19
  IF ~~ THEN REPLY #35757 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #34648 /* ~"To jest możliwe, ale raczej mało prawdopodobne. Najwyraźniej nie jesteś zaznajomiony z Łaskobójcami ani ich metodami, skoro mówisz takie rzeczy. Jeśli oni nie potrafili znaleźć tego dokumentu, to on nie istnieje." Patrzy na ciebie z wściekłością.~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Ktoś mógł ukraść dokument, po czym go zniszczyć. W ten sposób pożyczka zostałaby spłacona dwa razy..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Wydaje mi się, że Byron Szpicer ukradł dokumenty kobiety o imieniu Trista. Bez nich nie może ona udowodnić, że spłaciła pożyczkę i zostanie sprzedana w niewolę, aby pokryć dług.~ */ GOTO 20
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Ktoś mógł ukraść dokument... Może nawet go zniszczyć."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Wydaje mi się, że Byron Szpicer ukradł dokumenty kobiety o imieniu Trista. Bez nich nie może ona udowodnić, że spłaciła pożyczkę i zostanie sprzedana w niewolę, aby pokryć dług.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Ktoś mógł ukraść dokument, po czym go zniszczyć. W ten sposób pożyczka zostałaby spłacona dwa razy..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Wydaje mi się, że Byron Szpicer ukradł dokumenty kobiety o imieniu Trista. Bez nich nie może ona udowodnić, że spłaciła pożyczkę i zostanie sprzedana w niewolę, aby pokryć dług.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Ktoś mógł ukraść dokument... Może nawet go zniszczyć."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Wydaje mi się, że Byron Szpicer ukradł dokumenty kobiety o imieniu Trista. Bez nich nie może ona udowodnić, że spłaciła pożyczkę i zostanie sprzedana w niewolę, aby pokryć dług.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67292 /* ~"Ktoś mógł ukraść dokument, po czym go zniszczyć. W ten sposób pożyczka zostałaby spłacona dwa razy..."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67293 /* ~"Ktoś mógł ukraść dokument... Może nawet go zniszczyć."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1 19.2 19.3 19.4 19.5
  SAY #34649 /* ~Przez chwilę wygląda, jakby miał się na ciebie wściec, po czym okrutny uśmiech wypełza na jego twarz. "Co za okrutna myśl... jaka szkoda, że nie ma dowodu, że coś takiego zostało dokonane..." Dalej się uśmiecha.~ */
  IF ~~ THEN REPLY #35763 /* ~"Tak... szkoda. Powiedz mi zatem, czemu Trista została sprzedana w niewolę? Czy nie mogła zapłacić ci twoich pieniędzy w formie pożyczki?"~ */ GOTO 21
  IF ~~ THEN REPLY #35764 /* ~"Cóż, jeśli istnieje jakikolwiek dowód, to mam zamiar go znaleźć."~ */ JOURNAL #35767 /* ~Powiedziałem Byronowi Szpicerowi, że mam zamiar odnaleźć zaginione dokumenty Tristy.~ */ GOTO 22
  IF ~~ THEN REPLY #35765 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #35766 /* ~"Chyba mam już tego dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34650 /* ~"Tak, mogła, a ja jej to zaoferowałem." Patrzy na ciebie twardo. "Jednakże ona odmówiła. U mnie nie ma jeszcze jednej szansy. Nikt mi nie odmawia bez konsekwencji. Nikt..."~ */
  IF ~~ THEN REPLY #35768 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #35769 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #34651 /* ~Śmieje się. "Cóż, zatem powodzenia. Jeśli Łaskobójcy nie potrafili pomóc biednej Triście, to nie sądzę, żebyś ty miał szansę, na dziewięć piekieł, tego dokonać. A teraz szpicuj się, skurlu." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #35770 /* ~Odejdź.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0 30.0
  SAY #34652 /* ~"Nie, mam ciebie dosyć do końca życia. Nie odpowiem już na żadne twoje pytania. A teraz szpicuj się, skurlu." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #35771 /* ~Odejdź.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.2
  SAY #34653 /* ~Obdarza cię zdziwionym spojrzeniem. "Naprawdę? Czemu, w imię dziewięciu piekieł, chciałbyś go odnaleźć?"~ */
  IF ~~ THEN REPLY #35772 /* ~"Mam swoje powody."~ */ GOTO 25
  IF ~~ THEN REPLY #35773 /* ~"Ukradł mi czaszkę."~ */ GOTO 26
  IF ~~ THEN REPLY #35774 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0 27.0 29.0
  SAY #34654 /* ~Milknie na chwilę. "Mam powody, zapewniam cię, że całkiem dobre, aby nie wskazywać nikomu drogi do Lotara. A teraz szpicuj się, skurlu." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #35775 /* ~Odejdź.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #34655 /* ~"Tak? Więc co masz zamiar zrobić, po prostu wejść i domagać się zwrotu?" Mierzy cię wzrokiem. "Przyznaję, że wyglądasz na dość sprawnego w walce, ale przeciwko Lotarowi?" Parska. "Twoja czaszka ozdobi jego ściany."~ */
  IF ~~ THEN REPLY #35776 /* ~"Mimo to muszę go znaleźć."~ */ GOTO 25
  IF ~~ THEN REPLY #35777 /* ~"Jak twardy może być jeden człowiek?"~ */ GOTO 27
  IF ~~ THEN REPLY #35778 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #34656 /* ~Śmieje się donośnie i rzuca ci zadziwione spojrzenie. "Lotar jest ponad prawem, trepie. Jest tak potężny, tak twardy..."~ */
  IF ~~ THEN REPLY #35779 /* ~"Mimo to muszę go znaleźć."~ */ GOTO 25
  IF ~~ THEN REPLY #35780 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #34657 /* ~Potrząsa głową. "Naprawdę..." Wzdycha i odwraca na chwilę wzrok. "Mogę cię zapewnić, że nie odzyskasz swojej czaszki. Zapomnij o niej, znajdź sobie inną."~ */
  IF ~~ THEN REPLY #35781 /* ~"Dlaczego?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY #35782 /* ~"Dzięki, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34658 /* ~"Ponieważ najprawdopodobniej twoja czaszka znajduje się w posiadaniu Pana Kości, Lotara. Jeśli tak jest faktycznie, to już jej nie ma." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #35783 /* ~"Gdzie mogę znaleźć tego Lotara?"~ */ GOTO 25
  IF ~~ THEN REPLY #35784 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 30 // from:
  SAY #34659 /* ~Widzisz Byrona Szpicera, pożyczkodawcę. "Znowu tu jesteś?"~ */
  IF ~  Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35785 /* ~"Mam kilka pytań..."~ */ GOTO 23
  IF ~  !Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35786 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35787 /* ~"Chcę z tobą porozmawiać o Triście."~ */ GOTO 16
  IF ~~ THEN REPLY #35788 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 10.1 10.3
  SAY #34660 /* ~Śmieje się i rozgląda dookoła. "Doprawdy? Cóż, nie jest to coś, do czego powinieneś przyznawać się każdemu." Przygląda ci się z namysłem. "Jak powiedziałem, nie mam nic wspólnego ze złodziejami... Może powinieneś porozmawiać z Lennym. Przeważnie można znaleźć go na południowy wschód od targu." Przerywa na chwilę. "Powiedz mu, że ja cię przysyłam."~ */
  IF ~~ THEN REPLY #35789 /* ~"Opowiedz mi o targu pod gołym niebem."~ */ GOTO 12
  IF ~~ THEN REPLY #35790 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #35791 /* ~"Dzięki, żegnaj."~ */ EXIT
END
