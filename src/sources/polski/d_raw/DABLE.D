// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DABLE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #2873 /* ~Ten starszy mężczyzna wygląda trochę tak, jakby wyjęto go z jakiejś książki. Ubranie i sprzęt ma wyjątkowo czyste, porządne i dobrze zadbane oraz często zatrzymuje się, aby strzepnąć z niego drobiny kurzu, czy nitki. Na tunice znajduje się wyhaftowany symbol, który przypomina stylizowany sztylet z ostrzem skierowanym w górę i przebijającym płomień.~ */
  IF ~~ THEN REPLY #2874 /* ~"Witaj..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30849 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 23.0
  SAY #30708 /* ~Oczy mężczyzny przebiegają po was, a na widok Mortego zapala się w nich iskra.
"Och, co powiem! Spójrzcie na to! Latająca czaszka!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 292
END

IF ~~ THEN BEGIN 2 // from:
  SAY #30709 /* ~Mężczyzna sapie: "Na niesprawiedliwe prawa Tuena Bezlitosnego!"~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30850 /* ~"Kogo?"~ */ GOTO 3
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30851 /* ~"Kogo?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30852 /* ~"Kogo?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #30710 /* ~Nagle zakrywa usta i rozgląda się wokół przepraszającym wzrokiem. "Przepraszam, przepraszam... to był okrutny tyran, od dawna już martwy. Nigdy nie powinno się wypowiadać jego imienia. To raczej wulgarne."~ */
  IF ~~ THEN REPLY #30853 /* ~"Pilnuj zatem lepiej swojego języka."~ */ GOTO 7
  IF ~~ THEN REPLY #30854 /* ~"Mów, co chcesz. Nie obrażam się tak łatwo."~ */ GOTO 7
  IF ~~ THEN REPLY #30855 /* ~Strząśnij ją.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #30711 /* ~Nagle zakrywa usta i spogląda na Nie-Sławę przepraszającym wzrokiem. "Przepraszam, przepraszam... to był okrutny tyran, od dawna już martwy. Nigdy nie powinno się wypowiadać jego imienia. To raczej wulgarne. Moje najszczersze przeprosiny, Pani Sławo. Nie chciałem urazić."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 128
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30712 /* ~"Tak, tak, prawdopodobnie masz rację."~ */
  IF ~~ THEN REPLY #30856 /* ~Spróbuj pozyskać jego uwagę.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #30713 /* ~Nagle zakrywa usta i spogląda na Annę przepraszającym wzrokiem. "Przepraszam, przepraszam... to był okrutny tyran, od dawna już martwy. Nigdy nie powinno się wypowiadać jego imienia. To raczej wulgarne. Moje najszczersze przeprosiny, moja pani. Nie chciałem urazić."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 167
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 5.0
  SAY #30714 /* ~Zwraca się ponownie do Mortego. "Ale patrzcie! Czaszka, unosząca się, lewitująca ponad ziemią, świadoma swego otoczenia oraz posiadająca zdolność słuchania, mówienia i patrzenia."~ */
  IF ~~ THEN REPLY #30857 /* ~"On zachow..."~ */ GOTO 8
  IF ~~ THEN REPLY #30858 /* ~"Mam..."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30715 /* ~Zwraca się do ciebie, jakbyś nagle stał się jego powiernikiem. "To naprawdę jedna z przyczyn, panie, dla których Sfery nigdy dla mnie nie staną się nudne - właśnie w chwili, w której myślisz, że widziałeś już wszystko, one pokażą ci kolejny róg, za który można zajrzeć i..." Podnosi ręce w podzięce "...nagle otwierają się przed tobą nowe cudowne widoki."~ */
  IF ~~ THEN REPLY #30859 /* ~"Właściwie, to rozmawiające, latające czaszki są dosyć popularne - obok samo-wskrzeszających się ofiar amnezji przemierzających Sigil w poszukiwaniu ich utraconych tożsamości."~ */ GOTO 9
  IF ~~ THEN REPLY #30860 /* ~"Nie wiem, czy Morte zasługuje na miano 'cudownego widoku'."~ */ GOTO 9
  IF ~~ THEN REPLY #30861 /* ~"Tak, tak... Mam kilka pytań..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1 8.2
  SAY #30716 /* ~Mężczyzna ignoruje cię, wpatrując się zamiast tego w Mortego. "Mówię, czaszka..." zaczyna.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 293
END

IF ~~ THEN BEGIN 10 // from:
  SAY #30717 /* ~Mężczyzna jakby o tobie całkiem zapomniał, odwraca się wstrząśnięty, by spojrzeć na tę "drugą" latającą czaszkę. "Nie! Gdzie? Gdzie!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 294
END

IF ~~ THEN BEGIN 11 // from:
  SAY #30718 /* ~"Gdzie? Nie widzę jej!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 295
END

IF ~~ THEN BEGIN 12 // from:
  SAY #30719 /* ~Odwraca się i chrząka. "Wyczuwam, że posiadasz również szczególne umiejętności w drwieniu sobie z ludzi."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 296
END

IF ~~ THEN BEGIN 13 // from: 18.2 19.2 20.2 21.2 22.1
  SAY #30720 /* ~Nagle zdaje się zauważać cię po raz pierwszy...~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #30721 /* ~Oczy mężczyzny rozszerzają się. "Na niesprawiedliwe prawa Tuena...!" Orientuje się i spogląda przepraszająco. "Czy dobrze się czujesz? Wyglądasz na..." szuka słów "...rannego."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #30862 /* ~"Wszystko w porządku. Mam parę pytań..."~ */ GOTO 16
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #30863 /* ~"Czuję się dobrze."~ */ EXTERN ~DANNAH~ 168
END

IF WEIGHT #4 /* Triggers after states #: 24 17 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #30722 /* ~Ten starszy mężczyzna wygląda trochę tak, jakby wyjęto go z jakiejś książki. Ubranie i sprzęt ma wyjątkowo czyste, porządne i dobrze zadbane oraz często zatrzymuje się, aby strzepnąć z niego drobiny kurzu, czy nitki. Na tunice znajduje się wyhaftowany symbol, który przypomina stylizowany sztylet z ostrzem skierowanym w górę i przebijającym płomień.~ */
  IF ~~ THEN REPLY #30864 /* ~"Witaj..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 14.0 18.1 19.1 20.1 21.1 22.0 25.3 26.1 27.1 28.2 29.3 30.3 31.2 32.3 33.1 34.6 35.1 36.3 37.1 38.1 40.1 41.1 42.1 43.4 45.2 47.2 49.10 50.9 52.3 54.3 55.2 57.2 61.3 63.2 64.4 65.2 66.2 67.2 70.2 71.2 75.3 76.2 77.2 79.2 81.1 82.0 83.3 84.1 86.0 87.1 102.0 103.0 104.0 105.0 106.0 107.0 108.0
  SAY #30723 /* ~Mężczyzna przytakuje... szybko. "Oczywiście, oczywiście! Zawsze jestem wielce szczęśliwy, mogąc odpowiedzieć na pytania, młodzieńcze."~ */
  IF ~  Global("CW_Research_Language","AR0600",2)
~ THEN REPLY #30865 /* ~"Znalazłeś może coś odnośnie zapisków w tym 'dzienniku', który ci pokazywałem?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ JOURNAL #30878 /* ~Abel Myśliciel powiedział mi, że znaleziony przeze mnie dziwny pamiętnik, został napisany w martwym już języku. Wspomniał też o Finamie - lingwiście mieszkającym w Dzielnicy Urzędników. Może on będzie w stanie przetłumaczyć tekst.~ */ GOTO 86
  IF ~  Global("CW_Research_Ravel","AR0600",2)
~ THEN REPLY #30866 /* ~"Dowiedziałeś się czegoś jeszcze o Raveli Szaradnej?"~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",3)
~ JOURNAL #30880 /* ~Abel Myśliciel powiedział mi, że Ravela została zesłana do jednego z labiryntów Pani Bólu. Kluczem do portalu prowadzącego do labiryntu ma być podobno coś należące do niej. Niezbyt to pomocne.~ */ GOTO 87
  IF ~  Global("CW_Research_Incarnations","AR0600",2)
~ THEN REPLY #30868 /* ~"Dowiedziałeś się czegoś interesującego o opisywanych przez mnie martwych?"~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",3)
~ JOURNAL #30881 /* ~Abel Myśliciel opowiedział mi o, jak mi się wydaje, moich dwóch poprzednich 'wcieleniach'... krwiożerczym mordercy... oraz Czuciowcu, który przed zniknięciem zniszczył wszystkie dane na swój temat.~ */ GOTO 88
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30869 /* ~"Czy mogę cię prosić, abyś czegoś dla mnie poszukał?"~ */ GOTO 83
  IF ~~ THEN REPLY #30870 /* ~"Mam kilka pytań dotyczących twojej osoby..."~ */ GOTO 25
  IF ~~ THEN REPLY #30871 /* ~"Mam kilka pytań dotyczących tego miejsca..."~ */ GOTO 32
  IF ~~ THEN REPLY #30873 /* ~"Mam kilka pytań dotyczących tego miasta..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #30874 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 78
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #30876 /* ~"Co wiesz o Wojnie Krwi?"~ */ GOTO 82
  IF ~~ THEN REPLY #30877 /* ~"Właściwie to nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #30724 /* ~Ten starszy mężczyzna wygląda trochę tak, jakby wyjęto go z jakiejś książki. Ubranie i sprzęt ma wyjątkowo czyste, porządne i dobrze zadbane oraz często zatrzymuje się, aby strzepnąć z niego drobiny kurzu, czy nitki. Na tunice znajduje się wyhaftowany symbol, który przypomina stylizowany sztylet z ostrzem skierowanym w górę i przebijającym płomień.~ */
  IF ~~ THEN REPLY #30882 /* ~"Witaj..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30883 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #30725 /* ~Mężczyzna przebiega po was wzrokiem, a w chwili, gdy spogląda na Nordoma w jego oczach zapala się iskra. "To jest kwadron?" Wygląda na zaintrygowanego. "Jednakże... ach tak! Zbuntowany modron! Ojej!" Wygląda na dość zaniepokojonego.~ */
  IF ~~ THEN REPLY #30887 /* ~"Czy coś nie tak?"~ */ GOTO 19
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30888 /* ~"Nie kłopocz się tym. Mam kilka pytań..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30889 /* ~"Nie kłopocz się tym. Mam kilka pytań..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #30726 /* ~"Cóż, on jest buntownikiem. To zatruty modron, a takie tylko wysysają moc z ich rodzimej sfery, Mechanusa. Widzisz, wszystkie modrony mają w sobie część Źródła Mechanusa... gdy jakiś nie pracuje poprawnie albo opuści inne modrony, osłabia cały Mechanus."~ */
  IF ~~ THEN REPLY #30890 /* ~"Kontynuuj..."~ */ GOTO 20
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30891 /* ~"Nie mam na to czasu. Czy mógłbyś odpowiedzieć mi na kilka pytań..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30892 /* ~"Nie mam na to czasu. Czy mógłbyś odpowiedzieć mi na kilka pytań..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #30727 /* ~"Kiedy inni - inne modrony - odnajdą go, zabiorą go z powrotem na Mechanusa, aby go ukarać. Zostanie zniszczony. Zepsuty modron musi wrócić do Źródła."~ */
  IF ~~ THEN REPLY #30893 /* ~"Ale dlaczego?"~ */ GOTO 21
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30894 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30895 /* ~"Rozumiem. Mam kilka pytań..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #30728 /* ~"Ponieważ on nie jest modronem, a mimo to wysysa ich energię swoją obecnością. Bezprawnie i bez powodu osłabia Mechanusa. Musi stać się jego częścią, aby można go było naprawić."~ */
  IF ~~ THEN REPLY #30899 /* ~"*Nie chcę*, aby go naprawili. Nordomowi podoba się bycie tym, kim jest."~ */ GOTO 22
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30901 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30902 /* ~"Rozumiem. Mam kilka pytań..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #30729 /* ~"Zatem jest niesamowicie zagubiony! Istnieją ludzie, z którymi mogę się skontaktować..."~ */
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30903 /* ~"Nie rób tego. Mam kilka pytań..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30904 /* ~"Nie rób tego. Mam kilka pytań..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF WEIGHT #1 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 23 // from:
  SAY #30730 /* ~Spotkałeś tego starszego, wyglądającego książkowo człowieka wcześniej. Wygląda na pogrążonego w myślach i jeszcze cię nie zauważył.~ */
  IF ~~ THEN REPLY #30905 /* ~"Witaj..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30906 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 24 // from:
  SAY #30731 /* ~Spotkałeś tego starszego, wyglądającego książkowo człowieka wcześniej. Wygląda na pogrążonego w myślach i jeszcze cię nie zauważył.~ */
  IF ~~ THEN REPLY #30907 /* ~"Witaj..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30908 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.4 26.0 27.0 28.1 29.2 30.2 31.1
  SAY #30732 /* ~"Oczywiście..."~ */
  IF ~~ THEN REPLY #30909 /* ~"Kim jesteś?"~ */ GOTO 26
  IF ~~ THEN REPLY #30910 /* ~"Co tu robisz?"~ */ GOTO 27
  IF ~~ THEN REPLY #30911 /* ~"Co oznacza symbol wyszyty na twojej tunice?"~ */ GOTO 28
  IF ~~ THEN REPLY #30912 /* ~"Tak właściwie, to mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30913 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #30733 /* ~"Cóż, nazywam się Abel Myśliciel."~ */
  IF ~~ THEN REPLY #30914 /* ~"Mam kilka pytań dotyczących twojej osoby."~ */ GOTO 25
  IF ~~ THEN REPLY #30915 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30916 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #30734 /* ~"Właśnie niedawno zdałem egzamin na Administratora i osiągnąłem rangę 'A9' - konsultanta do spraw badań w Gmachu Archiwum, jednego z wielu pomocników specjalizujących się w historii oraz fizycznych prawach Sigil. Badam problemy i prawa interesujące dla innych. To naprawdę dość fascynujące..."~ */
  IF ~~ THEN REPLY #30918 /* ~"Mam kilka pytań dotyczących twojej osoby..."~ */ GOTO 25
  IF ~~ THEN REPLY #30919 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30920 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #30735 /* ~"Cóż, to symbol Stowarzyszenia Porządku. Jesteśmy odpowiedzialni za ustalanie większości praw i prowadzenie sądów tutaj, w Sigil. Członkami naszej organizacji są sędziowie, adwokaci i urzędnicy, a my cieszymy się, mogąc pomóc we wcielaniu praw Sigil w życie i utrzymywaniu rzeczy w porządku. Ze wszystkich sił staramy się poznać wszystkie prawa, zarówno te dotyczące Sigil, jak i sfer oraz całego wieloświata."~ */
  IF ~~ THEN REPLY #30922 /* ~"W co wierzy Stowarzyszenie Porządku?"~ */ JOURNAL #31027 /* ~Abel Myśliciel wyjaśnił mi, że Stowarzyszenie Porządku wierzy, iż wieloświat rządzi się określonymi prawami. Kiedy pozna się je wszystkie, będzie można zrozumieć wieloświat. Poza tym, poprzez zrozumienie tych praw i ich ograniczeń, można się nauczyć unikania innych praw.~ */ GOTO 29
  IF ~~ THEN REPLY #30923 /* ~"Mam jeszcze kilka pytań dotyczących twojej osoby..."~ */ GOTO 25
  IF ~~ THEN REPLY #30924 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30925 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 45.0 49.0 50.0
  SAY #30736 /* ~"Stowarzyszenie Porządku wierzy, że działaniem wieloświata rządzą prawa. Gdy pozna się wszystkie z nich, wtedy będzie można go zrozumieć. Taki jest nasz cel. Rozumiejąc prawa, ich ograniczenia, uczymy się unikać niektórych z nich."~ */
  IF ~~ THEN REPLY #30927 /* ~"Jeśli mogę spytać, to jakiego rodzaju korzyści przynosi ta pozycja?"~ */ GOTO 30
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #30929 /* ~"Mam jeszcze kilka pytań dotyczących twojej osoby..."~ */ GOTO 25
  IF ~~ THEN REPLY #30930 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30931 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #30737 /* ~"Cóż, nasze stowarzyszenie pozwala nam dość łatwo rozumieć języki. I od czasu do czasu możemy wykorzystać niektóre zasady rządzące wieloświatem, by osiągnąć własne cele."~ */
  IF ~  PartyHasItem("P_JRNL")
~ THEN REPLY #30933 /* ~"Języki? A możesz to odczytać? Sądzę, że jest to jakiś dziennik."~ */ GOTO 31
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #30934 /* ~"Mam jeszcze kilka pytań dotyczących twojej osoby..."~ */ GOTO 25
  IF ~~ THEN REPLY #30935 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30936 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #30738 /* ~Przygląda się mu z uniesionymi brwiami. "Dziwne! Nie, nie potrafię. Czy jest to język?"~ */
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30937 /* ~"Tak mi się wydaje. Czy mógłbyś go zbadać?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ JOURNAL #30941 /* ~W Dzielnicy Urzędników spotkałem Abla Myśliciela, badacza, który z chęcią sprawdzi dla mnie kilka rzeczy.~ */ GOTO 84
  IF ~~ THEN REPLY #30938 /* ~"Nie wiem. Mam jeszcze kilka pytań dotyczących twojej osoby..."~ */ GOTO 25
  IF ~~ THEN REPLY #30939 /* ~"Naprawdę nie wiem. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #30940 /* ~"Nie jest to dla mnie jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.5 33.0 34.5 35.0 36.2 37.0 38.0 40.0 41.0 42.0
  SAY #30739 /* ~"Przyznam się, że niewiele wiem o tej części Dzielnicy Urzędników, panie, ale proszę... pytaj."~ */
  IF ~~ THEN REPLY #30942 /* ~"Zatem czemu nazywa się ona Dzielnicą Urzędników?"~ */ GOTO 33
  IF ~~ THEN REPLY #30943 /* ~"Czy jest tu coś ciekawego w okolicy?"~ */ GOTO 34
  IF ~~ THEN REPLY #30944 /* ~"Wiesz może coś o dostępnej tu pracy?"~ */ GOTO 42
  IF ~~ THEN REPLY #30945 /* ~"Pozwól mi spytać cię o coś innego..."~ */ GOTO 16
  IF ~~ THEN REPLY #30946 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #30740 /* ~"To miejsce, w którym znajduje się większość archiwów i administracji Sigil. Znajdująca się tam obsługa dała nazwę tej dzielnicy. Mieszka tu wielu urzędników, skrybów, kapłanów, biurokratów i oficjeli administracji."~ */
  IF ~~ THEN REPLY #30947 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30948 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30949 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #30741 /* ~"Tutaj mieszka jeden z najlepszych adwokatów w Sigil. Niedaleko również znajduje się Miejski Gmach Rozrywki, siedziba Stronnictwa Doznań." Ścisza głos. "I Przybytek, panie, Zaspokajania Żądz Intelektualnych..."~ */
  IF ~~ THEN REPLY #30950 /* ~"Opowiedz mi o adwokacie."~ */ GOTO 35
  IF ~~ THEN REPLY #30951 /* ~"Opowiedz mi o Gmachu Rozrywki."~ */ GOTO 36
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30952 /* ~"Opowiedz mi o Przybytku."~ */ GOTO 38
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30953 /* ~"Opowiedz mi o Przybytku."~ */ GOTO 39
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30954 /* ~"Opowiedz mi o Przybytku."~ */ GOTO 41
  IF ~~ THEN REPLY #30955 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30956 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30957 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #30742 /* ~"On również należy do Stowarzyszenia Porządku, choć od czasu niefortunnych przejść, jakich doświadczył, nie bywa już tam tak często... Nie jestem osobą, która powinna o tym mówić. Jego rezydencja znajduje się po drugiej stronie ulicy, na południowy-wschód stąd."~ */
  IF ~~ THEN REPLY #30958 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30959 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30960 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #30743 /* ~"Ta piękna budowla jest zarówno kwaterą główną Stronnictwa Doznań, jak i domem sztuki tu, w Sigil, a także w sferach. To opera, muzeum, galeria sztuki, winiarnia, tawerna, miejsce treningów, teatr, sensoria... można tam znaleźć wiele rzeczy."~ */
  IF ~~ THEN REPLY #30961 /* ~"Opowiedz mi o Stronnictwie Doznań."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Abel Myśliciel wyjaśnił mi, że Stronnictwo Doznań to jedna z najbardziej znanych spośród piętnastu frakcji Sigil. Uważają, że prawdziwe tajemnice wieloświata można poznać jedynie przez bezpośrednie doświadczenie wszechświata; skosztowanie każdego smaku, poczucie wszelkiego rodzaju emocji i odwiedzenie każdego miejsca w wieloświecie.~ */ GOTO 62
  IF ~~ THEN REPLY #30962 /* ~"Sensoria?"~ */ GOTO 37
  IF ~~ THEN REPLY #30963 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30964 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30965 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #30744 /* ~"Tak, Czuciowcy posiadają kamienie doznań, minerały, które mogą zachować w sobie doświadczenia danej osoby. Gdy raz zostaną zapisane, każdy może dotknąć kamienia i uwolnić doświadczenia w nim zawarte. Naprawdę, dość intrygujące!"~ */
  IF ~~ THEN REPLY #30967 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30968 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30969 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.2
  SAY #30745 /* ~Przytakuje, nieco zawstydzony. "Tak, cóż, znany jestem z tego, że tam chodzę... rozmawiać. To duży, okrągły budynek w centrum tej części dzielnicy."~ */
  IF ~~ THEN REPLY #30970 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30971 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30972 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.3
  SAY #30746 /* ~Przytakuje, nieco zawstydzony. "Tak, cóż, znany jestem z tego, że tam chodzę... rozmawiać." Zwraca się do Nie-Sławy. "Cel, do którego dążysz, Pani Sławo, jest szlachetny. Dobrze by było, gdybyś wyłuszczyła swoim uczennicom sprawy nieco bardziej formalnej natury, może opowiadając im więcej o prawach i obyczajach panujących w mieście. Wtedy one..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 129
END

IF ~~ THEN BEGIN 40 // from:
  SAY #30747 /* ~Trawi to przez chwilę, po czym przytakuje, rozpromieniony. "Dziękuję, Pani Sławo." Ponownie odwraca się w twoją stronę.~ */
  IF ~~ THEN REPLY #30975 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30976 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30978 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.4
  SAY #30748 /* ~Przytakuje, nieco zawstydzony. "Tak, cóż, znany jestem z tego, że tam chodzę... rozmawiać." Spogląda na Annę, po czym oblewa się jeszcze głębszą czerwienią. "To duży, okrągły budynek w centrum tej części Dzielnicy."~ */
  IF ~~ THEN REPLY #30979 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30981 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30983 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 32.2
  SAY #30749 /* ~"Żadnej tymczasowej, nie."~ */
  IF ~~ THEN REPLY #30984 /* ~"Mam kilka pytań dotyczących tej dzielnicy..."~ */ GOTO 32
  IF ~~ THEN REPLY #30985 /* ~"Mam kilka pytań o inne sprawy..."~ */ GOTO 16
  IF ~~ THEN REPLY #30986 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 16.6 45.1 47.1 49.9 52.2 54.2 55.1 57.1 61.2 63.1 64.3 65.1 66.1 67.1 70.1 71.1 75.2 76.1 77.1
  SAY #30750 /* ~"Pytania o Sigil? Proszę bardzo, panie... pytaj, o co chcesz!"~ */
  IF ~~ THEN REPLY #30987 /* ~"Interesują mnie frakcje."~ */ DO ~SetGlobal("Know_Factions","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #30988 /* ~"Interesuje mnie Pani Bólu."~ */ GOTO 71
  IF ~~ THEN REPLY #30989 /* ~"Co znajduje się na zewnątrz Sigil?"~ */ GOTO 44
  IF ~~ THEN REPLY #30991 /* ~"Skąd pochodzi światło dzienne? Nie widzę słońca."~ */ GOTO 46
  IF ~~ THEN REPLY #30992 /* ~"Właściwie pozwól mi spytać cię o coś innego..."~ */ GOTO 16
  IF ~~ THEN REPLY #30993 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2
  SAY #30751 /* ~"Nikt nie wie, ale nie dlatego, że nie próbowano się dowiedzieć. W miejscach, w których nie ma zwykłych murów, znajdują się połączone ścianami budynki, bez okien z widokiem na drugą stronę. Niektórzy twierdzą, że wspięli się na dachy i widzieli zewnętrzną część Sigil, ale potrafią ją opisać jedynie jako *nicość*..."~ */
  IF ~~ THEN REPLY #30994 /* ~Słuchaj dalej.~ */ GOTO 45
  IF ~~ THEN REPLY #30995 /* ~Spróbuj mu przerwać.~ */ GOTO 45
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #30996 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 89
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1 89.0
  SAY #30752 /* ~"To wyjaśnienie jest nie do przyjęcia." kontynuuje "Ale wciąż pozostaje ono tajemnicą. Plotki krążą, bez dowodów, że po przejściu za mury Sigil ląduje się w losowo wybranej sferze. brak jednak faktów na ich poparcie. Stowarzyszenie Porządku zorganizowało wiele wypraw i musimy dopiero wydostać konkretne informacje."~ */
  IF ~~ THEN REPLY #30997 /* ~"Stowarzyszenie Porządku?"~ */ JOURNAL #31027 /* ~Abel Myśliciel wyjaśnił mi, że Stowarzyszenie Porządku wierzy, iż wieloświat rządzi się określonymi prawami. Kiedy pozna się je wszystkie, będzie można zrozumieć wieloświat. Poza tym, poprzez zrozumienie tych praw i ich ograniczeń, można się nauczyć unikania innych praw.~ */ GOTO 29
  IF ~~ THEN REPLY #30998 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #30999 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31000 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY #30753 /* ~"Mgła może czynić trudnym stwierdzenie tego z całą pewnością, więc rozumiem twoje wątpliwości. Światło nie pochodzi ze słońca, ale ze stopniowej luminescencji, która wypełnia niebo..."~ */
  IF ~~ THEN REPLY #31002 /* ~Słuchaj dalej.~ */ GOTO 47
  IF ~~ THEN REPLY #31004 /* ~Spróbuj mu przerwać.~ */ GOTO 47
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31006 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 90
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 90.0
  SAY #30754 /* ~"Osiąga ona maksimum nazywane *szczytem*, po czym opada, aż Sigil staje się całkiem ciemne, który to moment nazywany jest *przeciw-szczytem*. Źródło luminescencji pozostaje nieznane, ale najprawdopodobniej jest to wola Pani."~ */
  IF ~~ THEN REPLY #31007 /* ~"Pani?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #31009 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31010 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31011 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0
  SAY #30755 /* ~"Tak, w Sigil jest piętnaście frakcji. Kiedyś było ich czterdzieści dziewięć. Potem, jakieś sześćset lat temu, Pani Bólu oznajmiła, że pozostanie tylko piętnaście. To wydarzenie znane jest jako Wielki Przewrót..."~ */
  IF ~~ THEN REPLY #31012 /* ~Słuchaj dalej.~ */ GOTO 49
  IF ~~ THEN REPLY #31013 /* ~Spróbuj mu przerwać.~ */ GOTO 49
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31014 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 91
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 91.0
  SAY #30756 /* ~"I oczywiście..." kontynuuje "w przeciągu dwóch tygodni trzydzieści cztery z nich zostały zniszczone lub zniknęły. Wiele tysięcy zginęło od miecza, czy z innych przyczyn... wielu po prostu znaleziono martwych. Ja sam jestem członkiem Stowarzyszenia Porządku. Inni to Wyznawcy Źródła, Grabarze, Harmonium, Łaskobójcy, Liga Rewolucyjna, Stronnictwo Doznań oraz Kaosyci."~ */
  IF ~~ THEN REPLY #31015 /* ~"Opowiedz mi o Stowarzyszeniu Porządku."~ */ JOURNAL #31027 /* ~Abel Myśliciel wyjaśnił mi, że Stowarzyszenie Porządku wierzy, iż wieloświat rządzi się określonymi prawami. Kiedy pozna się je wszystkie, będzie można zrozumieć wieloświat. Poza tym, poprzez zrozumienie tych praw i ich ograniczeń, można się nauczyć unikania innych praw.~ */ GOTO 29
  IF ~~ THEN REPLY #31016 /* ~"Opowiedz mi o Wyznawcach Źródła."~ */ JOURNAL #31028 /* ~Abel Myśliciel wyjaśnił mi, że Wyznawcy Źródła lub inaczej Bogowcy, uważają, iż każda żywa istota w wieloświecie posiada potencjał, by zostać bóstwem.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31017 /* ~"Opowiedz mi o Grabarzach."~ */ JOURNAL #31029 /* ~Abel Myśliciel wyjaśnił mi, że według Grabarzy już nie żyjemy, a Sigil i Sfery to miejsce, gdzie wszyscy przechodzimy po śmierci. Według ich wierzeń, każdy jest martwy a całe to istnienie jest nieprawdziwe. Zachowanie uczuć i związków z tym istnieniem nie pozwala duszy na prawdziwą śmierć.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31018 /* ~"Opowiedz mi o Grabarzach."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Abel Myśliciel wyjaśnił mi, że według Grabarzy już nie żyjemy, a Sigil i Sfery to miejsce, gdzie wszyscy przechodzimy po śmierci. Według ich wierzeń, każdy jest martwy a całe to istnienie jest nieprawdziwe. Zachowanie uczuć i związków z tym istnieniem nie pozwala duszy na prawdziwą śmierć.~ */ GOTO 53
  IF ~~ THEN REPLY #31019 /* ~"Opowiedz mi o Harmonium."~ */ JOURNAL #31031 /* ~Abel Myśliciel wyjaśnił mi, że celem Harmonium jest wprowadzenie pokoju i harmonii w Sferach... stąd nazwa frakcji. Wierzą jednak, że cel uświęca środki i dlatego są gotowi zrobić właściwie wszystko, aby przekonać kogoś do swych poglądów.~ */ GOTO 55
  IF ~~ THEN REPLY #31020 /* ~"Opowiedz mi o Łaskobójcach."~ */ JOURNAL #31032 /* ~Abel Myśliciel wyjaśnił mi, że Łaskobójcy wierzą iż sprawiedliwość jest wszystkim. Mallin, ich ostatni fakton, powiedział niegdyś, że odpowiednio wymierzona kara prowadzi do doskonałości.~ */ GOTO 56
  IF ~~ THEN REPLY #31021 /* ~"Opowiedz mi o Lidze Rewolucyjnej."~ */ JOURNAL #31033 /* ~Abel Myśliciel wyjaśnił mi, że Liga Rewolucyjna ma dość wielu członków w Sigil. Wierzą oni, że instytucje zostały powołane jedynie po to, by uniemożliwić im dostęp do prawdy o wieloświecie. Jedynym według nich sposobem na odkrycie prawdy jest wyniszczenie wszystkich organizacji. Twierdzą, że prawdę mogą odkryć jedynie ludzie, którzy są całkowicie 'wolni'.~ */ GOTO 58
  IF ~~ THEN REPLY #31022 /* ~"Opowiedz mi o Stronnictwie Doznań."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Abel Myśliciel wyjaśnił mi, że Stronnictwo Doznań to jedna z najbardziej znanych spośród piętnastu frakcji Sigil. Uważają, że prawdziwe tajemnice wieloświata można poznać jedynie przez bezpośrednie doświadczenie wszechświata; skosztowanie każdego smaku, poczucie wszelkiego rodzaju emocji i odwiedzenie każdego miejsca w wieloświecie.~ */ GOTO 62
  IF ~~ THEN REPLY #31023 /* ~"Opowiedz mi o Kaosytach."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Abel Myśliciel wyjaśnił mi, że Kaosyci wierzą, iż jedynie przez losowe doznawanie chaosu wieloświata można poznać jego sekrety.~ */ GOTO 64
  IF ~~ THEN REPLY #31024 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31025 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31026 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 29.1 30.1 52.1 54.1 55.0 57.0 61.1 63.0 64.2 65.0 66.0 67.0 70.0
  SAY #30757 /* ~"Och? O której, panie?"~ */
  IF ~~ THEN REPLY #31037 /* ~"Opowiedz mi o Stowarzyszeniu Porządku."~ */ JOURNAL #31027 /* ~Abel Myśliciel wyjaśnił mi, że Stowarzyszenie Porządku wierzy, iż wieloświat rządzi się określonymi prawami. Kiedy pozna się je wszystkie, będzie można zrozumieć wieloświat. Poza tym, poprzez zrozumienie tych praw i ich ograniczeń, można się nauczyć unikania innych praw.~ */ GOTO 29
  IF ~~ THEN REPLY #31038 /* ~"Opowiedz mi o Wyznawcach Źródła."~ */ JOURNAL #31028 /* ~Abel Myśliciel wyjaśnił mi, że Wyznawcy Źródła lub inaczej Bogowcy, uważają, iż każda żywa istota w wieloświecie posiada potencjał, by zostać bóstwem.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31039 /* ~"Opowiedz mi o Grabarzach."~ */ JOURNAL #31029 /* ~Abel Myśliciel wyjaśnił mi, że według Grabarzy już nie żyjemy, a Sigil i Sfery to miejsce, gdzie wszyscy przechodzimy po śmierci. Według ich wierzeń, każdy jest martwy a całe to istnienie jest nieprawdziwe. Zachowanie uczuć i związków z tym istnieniem nie pozwala duszy na prawdziwą śmierć.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31040 /* ~"Opowiedz mi o Grabarzach."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Abel Myśliciel wyjaśnił mi, że według Grabarzy już nie żyjemy, a Sigil i Sfery to miejsce, gdzie wszyscy przechodzimy po śmierci. Według ich wierzeń, każdy jest martwy a całe to istnienie jest nieprawdziwe. Zachowanie uczuć i związków z tym istnieniem nie pozwala duszy na prawdziwą śmierć.~ */ GOTO 53
  IF ~~ THEN REPLY #31041 /* ~"Opowiedz mi o Harmonium."~ */ JOURNAL #31031 /* ~Abel Myśliciel wyjaśnił mi, że celem Harmonium jest wprowadzenie pokoju i harmonii w Sferach... stąd nazwa frakcji. Wierzą jednak, że cel uświęca środki i dlatego są gotowi zrobić właściwie wszystko, aby przekonać kogoś do swych poglądów.~ */ GOTO 55
  IF ~~ THEN REPLY #31042 /* ~"Opowiedz mi o Łaskobójcach."~ */ JOURNAL #31032 /* ~Abel Myśliciel wyjaśnił mi, że Łaskobójcy wierzą iż sprawiedliwość jest wszystkim. Mallin, ich ostatni fakton, powiedział niegdyś, że odpowiednio wymierzona kara prowadzi do doskonałości.~ */ GOTO 56
  IF ~~ THEN REPLY #31043 /* ~"Opowiedz mi o Lidze Rewolucyjnej."~ */ JOURNAL #31033 /* ~Abel Myśliciel wyjaśnił mi, że Liga Rewolucyjna ma dość wielu członków w Sigil. Wierzą oni, że instytucje zostały powołane jedynie po to, by uniemożliwić im dostęp do prawdy o wieloświecie. Jedynym według nich sposobem na odkrycie prawdy jest wyniszczenie wszystkich organizacji. Twierdzą, że prawdę mogą odkryć jedynie ludzie, którzy są całkowicie 'wolni'.~ */ GOTO 58
  IF ~~ THEN REPLY #31044 /* ~"Opowiedz mi o Stronnictwie Doznań."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Abel Myśliciel wyjaśnił mi, że Stronnictwo Doznań to jedna z najbardziej znanych spośród piętnastu frakcji Sigil. Uważają, że prawdziwe tajemnice wieloświata można poznać jedynie przez bezpośrednie doświadczenie wszechświata; skosztowanie każdego smaku, poczucie wszelkiego rodzaju emocji i odwiedzenie każdego miejsca w wieloświecie.~ */ GOTO 62
  IF ~~ THEN REPLY #31045 /* ~"Opowiedz mi o Kaosytach."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Abel Myśliciel wyjaśnił mi, że Kaosyci wierzą, iż jedynie przez losowe doznawanie chaosu wieloświata można poznać jego sekrety.~ */ GOTO 64
  IF ~~ THEN REPLY #31046 /* ~"Właściwie pozwól mi spytać cię o coś innego..."~ */ GOTO 16
  IF ~~ THEN REPLY #31047 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1
  SAY #30758 /* ~"Wyznawcy Źródła, zwani również Bogowcami, wierzą, że każde żyjące stworzenie w wieloświecie ma potencjał, by stać się Mocą..."~ */
  IF ~~ THEN REPLY #31053 /* ~Słuchaj dalej.~ */ GOTO 52
  IF ~~ THEN REPLY #31054 /* ~Spróbuj mu przerwać.~ */ GOTO 52
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31055 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 92
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 92.0
  SAY #30759 /* ~"Bogowcy mają swoją kwaterę główną w Wielkiej Kuźni" kontynuuje "i kilka razy pomogli utrzymać pokój w Sigil... nie pragną oglądać, jak umieszcza się dowolną istotę w księdze umarłych zanim otrzyma szansę, by wykorzystać swój potencjał."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #31056 /* ~"Ja osobiście popieram ich przekonania. Ty natomiast zdajesz się z nimi nie zgadzać."~ */ GOTO 66
  IF ~~ THEN REPLY #31057 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31058 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31059 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31060 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.2 49.3 50.2 50.3
  SAY #30760 /* ~"Grabarze wierzą, że już jesteśmy martwi, a Sigil i Sfery to miejsce, w którym lądujemy, gdy umrzemy. Według ich wierzeń, wszystko jest martwe, a ta egzystencja jest fałszywa. Żywić do niej jakieś uczucia, czy przywiązanie powstrzymuje tylko duszę przed prawdziwą śmiercią."~ */
  IF ~~ THEN REPLY #31061 /* ~Słuchaj dalej.~ */ GOTO 54
  IF ~~ THEN REPLY #31062 /* ~Spróbuj mu przerwać.~ */ GOTO 54
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31063 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 93
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 93.0
  SAY #30761 /* ~"Widzisz" kontynuuje "Grabarze wierzą, że śmierć w tej 'egzystencji' jest sprawą awansu i tylko ci, którzy są 'naprawdę martwi' oraz pozbyli się wszelkich więzów z tą egzystencją mogą mieć nadzieję na odpoczywanie w spokoju. Filozofia, która w rzeczywistości ma pewne podstawy, ale spora jej część rodzi następne pytania."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #31064 /* ~"Ja osobiście popieram ich przekonania. Ty natomiast zdajesz się z nimi nie zgadzać."~ */ GOTO 67
  IF ~~ THEN REPLY #31065 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31066 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31067 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31068 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.4 50.4
  SAY #30762 /* ~"Harmonium poświęcone jest pokojowi i harmonii w Sferach... stąd ich nazwa. Jednakże wierzą, że cel uświęca środki i sa w stanie zrobić prawie wszystko, aby każdy widział sprawy 'na ich sposób'. Niezależnie od osobistej opinii, jaką się o nich posiada, całkiem nieźle spisują się, patrolując ulice Sigil."~ */
  IF ~~ THEN REPLY #31069 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31070 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31071 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31072 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 49.5 50.5
  SAY #30763 /* ~"Łaskobójcy wierzą, że sprawiedliwość jest wszystkim. Mallin, ich ostatni fakton, powiedział kiedyś, że o ile zada się odpowiednią karę, to może ona doprowadzić do doskonałości..."~ */
  IF ~~ THEN REPLY #31073 /* ~Słuchaj dalej.~ */ GOTO 57
  IF ~~ THEN REPLY #31074 /* ~Spróbuj mu przerwać.~ */ GOTO 57
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31075 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 94
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 94.0
  SAY #30764 /* ~"Nowi w Sigil" kontynuuje "często popełniają błąd, myśląc iż ich nazwa sugeruje, że zabijają z łaski - jednakże raczej pragną oni wytrzebić samą Łaskę. Członkowie tej frakcji biorą na siebie obowiązek karania winnych w Sigil, niezależnie od kosztów.~ */
  IF ~~ THEN REPLY #31076 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31077 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31078 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31079 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.6 50.6
  SAY #30765 /* ~"Nazywa ich się także Anarchistami. Niewielu o tym wie, ale Liga Rewolucyjna jest dość liczna w Sigil... a to wielki wstyd. W swoim błędnym mniemaniu uważają, że wszystkie instytucje ustanowiono, aby zablokować im dostęp do prawdy wieloświata."~ */
  IF ~~ THEN REPLY #31080 /* ~Słuchaj dalej.~ */ GOTO 59
  IF ~~ THEN REPLY #31081 /* ~Spróbuj mu przerwać.~ */ GOTO 59
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31082 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 95
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1 95.0
  SAY #30766 /* ~"Jedynym sposobem, w jaki chcą oni odkryć prawdę, jest zniszczenie wszelkich organizacji. Twierdzą, że prawdę można odkryć dopiero wtedy, gdy ludzie będą całkowicie 'wolni'." Potrząsa głową. "Czasem chciałbym, aby otworzyli oczy na prawdę *wokół* nich samych. Nie robią nic innego, tylko oślepiają samych siebie i blokują każdemu dostęp do prawdy."~ */
  IF ~~ THEN REPLY #31083 /* ~Słuchaj dalej.~ */ GOTO 60
  IF ~~ THEN REPLY #31084 /* ~Spróbuj mu przerwać.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #30767 /* ~Wzdycha głęboko, po czym kiwa palcem z dezaprobatą, jakby mówił do jakiegoś wyobrażonego niegrzecznego dziecka. "Ciekawe jest spostrzeżenie, że oni nie mają żadnych rzeczywistych planów poszukiwania prawdy, poza niszczeniem wszystkiego, co tylko uda im się dojrzeć. Naprawdę, bardzo interesujące."~ */
  IF ~~ THEN REPLY #31085 /* ~Słuchaj dalej.~ */ GOTO 61
  IF ~~ THEN REPLY #31086 /* ~Spróbuj mu przerwać.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0 60.1
  SAY #30768 /* ~"Interesujące jest też" marszczy się "że podczas gdy Liga Rewolucyjna posiada sporą liczbę członków, natura ich frakcji sprawia, iż często przeszkadzają oni sobie nawzajem. Czasami komórki walczą między sobą, każda twierdząc, że zna 'właściwą' drogę, by wszystko zniszczyć."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31087 /* ~"Czy metoda naprawdę się liczy, o ile to, co jest fałszywe zostanie zniszczone?"~ */ GOTO 68
  IF ~~ THEN REPLY #31088 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31089 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31090 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31091 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 36.0 49.7 50.7
  SAY #30769 /* ~"Ach, Stronnictwo Doznań! To jedna z najbardziej wybijających się z piętnastu frakcji istniejących w Sigil. Wierzą, że prawdziwy cień wieloświata można poznać tylko bezpośrednio doświadczając tak wiele, jak to tylko możliwe - smakując każdej substancji, odczuwając każdą możliwą emocję i odwiedzając każde miejsce w wieloświecie."~ */
  IF ~~ THEN REPLY #31092 /* ~Słuchaj dalej.~ */ GOTO 63
  IF ~~ THEN REPLY #31093 /* ~Spróbuj mu przerwać.~ */ GOTO 63
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31094 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 96
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1 96.0
  SAY #30770 /* ~"Ich kwatera główna" kontynuuje "znajduje się w Miejskim Gmachu Rozrywki, gdzie pragną przybliżać doświadczenia całemu Sigil. W tej chwili są najliczniejszą frakcją w Sigil... i najpotężniejszą. Jeśli się nie omyliłem, to ostatni cenzus ich członków wynosił ponad dwadzieścia razy po tysiąc."~ */
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31095 /* ~"Chciałbym usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31097 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31098 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31100 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 49.8 50.8
  SAY #30771 /* ~"Krzykacze!" Chrząka. "Ta banda łachmaniarzy to właściwe nie jest frakcja. Cóż, nawet Liga Rewolucyjna jest lepiej zorganizowana! Kaosyci sądzą, że ogarniając chaos, w jakiś sposób odkryją tajemnice wieloświata. Śmieszna opinia."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #31101 /* ~"Cóż, ja, na przykład, planuję odkryć tajemnice wieloświata pocierając brzuch białym serem i jedząc duże ilości ryb słodkowodnych. Mmmm... ser."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ GOTO 65
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #31102 /* ~"Cóż, ja, na przykład, planuję odkryć tajemnice wieloświata pocierając brzuch białym serem i jedząc duże ilości ryb słodkowodnych. Mmmm... ser."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 297
  IF ~~ THEN REPLY #31103 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31104 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31105 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31106 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #30772 /* ~Mężczyzna wpatruje się w ciebie przez chwilę. "Wybacz... czy ty... ser? Ja... ach, najlepiej już pójdę, panie..."~ */
  IF ~~ THEN REPLY #31107 /* ~"Czekaj... Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31109 /* ~"Poczekaj. Mam jeszcze inne pytania dotyczące Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31110 /* ~"Poczekaj... pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31111 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 52.0
  SAY #30773 /* ~"Uważam, że ich filozofia jest godna szacunku... dobra dla Sigil i jego ludzi w każdym calu... ale jest zbyt prosta. W jaki sposób pragniesz odnaleźć tajemnice wieloświata po prostu 'żyjąc dobrze'? Czy taka wiedza pojawi się niespodziewanie pewnego dnia, w końcu oświecając jedną z twoich niezliczonych inkarnacji? O ile takie rzeczy w ogóle istnieją! Ale widzę, panie, że nie masz wiele czasu na dyskusje. Skończę temat."~ */
  IF ~~ THEN REPLY #31112 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31113 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31114 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31115 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 54.0
  SAY #30774 /* ~"Po prostu oś ich systemu wierzeń kręci się wokół sprawy *wiary*. Ja wymagałbym mocnych faktów - i niczego innego, dobry człowieku - aby tak łatwo porzucić moją miłość do tego życia. Ale widzę, panie, że nie masz wiele czasu na dyskusje. Skończę temat."~ */
  IF ~~ THEN REPLY #31116 /* ~"Chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31117 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31118 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31119 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 61.0
  SAY #30775 /* ~"*Sama* metoda jest fałszywa! W jaki sposób można..." Przerywa, mrużąc podejrzliwie oczy. "Chwileczkę, panie... ty nie jesteś... nie..."~ */
  IF ~~ THEN REPLY #31120 /* ~"Tak, jestem. Dalej, powiedz to: Anarchistą."~ */ GOTO 69
  IF ~~ THEN REPLY #31121 /* ~Kłamstwo: "Nie... kim? Nie wiem, o czym mówisz."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_2","GLOBALLaw",-1)
~ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #30776 /* ~Cofa się, wołając strażników. "Straż! Anarchista! STRAŻ!"~ */
  IF ~~ THEN REPLY #31122 /* ~Zaatakuj go.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #31123 /* ~Spróbuj odejść, zanim ktoś przybędzie.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY #30777 /* ~"Hmmm..."~ */
  IF ~~ THEN REPLY #31124 /* ~"Ja, ech, chcę usłyszeć coś więcej o pozostałych frakcjach..."~ */ GOTO 50
  IF ~~ THEN REPLY #31125 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31126 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31127 /* ~"Najlepiej będzie, jak już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #30778 /* ~"Pani Bólu, tak, tak... ona jest siłą, która stoi za Sigil, wiesz. Bardzo zdumiewająca postać, ale niewiele o niej wiadomo."~ */
  IF ~~ THEN REPLY #31128 /* ~"A co o niej *wiadomo*?"~ */ GOTO 72
  IF ~~ THEN REPLY #31129 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31130 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31131 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 47.0 71.0
  SAY #30779 /* ~Zaczyna wyliczać punkty na palcach: "Jeden: Nie jest tylko symbolem Sigil, jak twierdzą niektórzy. Jest bardzo prawdziwa i równie niebezpieczna. Dwa: Uważa się, że to ona nie pozwala Mocom... bóstwom... wkroczyć do Sigil."~ */
  IF ~~ THEN REPLY #31132 /* ~Słuchaj dalej.~ */ GOTO 73
  IF ~~ THEN REPLY #31133 /* ~Spróbuj mu przerwać.~ */ GOTO 73
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31134 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 97
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 97.0
  SAY #30780 /* ~"Trzy: Nie pozwala również na teleportację oraz tworzenie bram do oraz z Sigil. Powstrzymuje to istoty ze sfer zewnętrznych, od sprowadzenia jeszcze większej ilości swoich towarzyszy do miasta inaczej niż konwencjonalnymi drogami. Cztery: Nigdy się nie odezwała. Do nikogo. Pięć: Odebrała władzę nad Sigil Aoskarowi, Mocy obecnie uważanej za martwą."~ */
  IF ~~ THEN REPLY #31135 /* ~Słuchaj dalej.~ */ GOTO 74
  IF ~~ THEN REPLY #31136 /* ~Spróbuj mu przerwać.~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1
  SAY #30781 /* ~"Sześć: Każdy, kto zagrozi Sigil... lub jej... zostaje ukarany, albo wpadając pod jej cień, czego rezultatem jest seria niewidzialnych ran kłutych, które mogą zabić nawet potężniejszego baatezu, albo zostając wysłanym do labiryntów, z których jedynie kilku istotom udało się uciec. Siedem: Nie lubi, jak się ją wyznaje. Tych, którzy to czynią, często znajduje się bez skóry."~ */
  IF ~~ THEN REPLY #31137 /* ~Słuchaj dalej.~ */ GOTO 75
  IF ~~ THEN REPLY #31138 /* ~Spróbuj mu przerwać.~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #30782 /* ~"I ostatnie: Uważa się, że jej widok sprowadza szaleństwo."~ */
  IF ~~ THEN REPLY #31139 /* ~"Odebrała Mocy władzę nad Sigil? Skąd to wiadomo?"~ */ GOTO 76
  IF ~~ THEN REPLY #31140 /* ~"Jej widok doprowadza do obłędu?"~ */ GOTO 77
  IF ~~ THEN REPLY #31141 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31142 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31143 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #30783 /* ~"To wiara mojego stowarzyszenia."~ */
  IF ~~ THEN REPLY #31144 /* ~"Powiedziałeś, że jej widok doprowadza do obłędu?"~ */ GOTO 77
  IF ~~ THEN REPLY #31145 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31146 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31147 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1 76.0
  SAY #30784 /* ~"Tak." Zastanawia się nad tym przez chwilę. "Ale muszę zastrzec, że nigdy jej nie widziałem, rozumiesz."~ */
  IF ~~ THEN REPLY #31148 /* ~"Skąd więc wiesz, że stworzyła Sigil?"~ */ GOTO 76
  IF ~~ THEN REPLY #31149 /* ~"Mam jeszcze pytania odnośnie Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31150 /* ~"Pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 16
  IF ~~ THEN REPLY #31151 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 16.7 83.1
  SAY #30785 /* ~"Ravela... *o ile* w ogóle istniała, a niewiele na to wskazuje... była nocną wiedźmą, jednym z mieszkańców Szarego Pustkowia, jednej z Niższych Sfer, którą niektórzy uważają za najgorszą."~ */
  IF ~~ THEN REPLY #31152 /* ~Słuchaj dalej.~ */ GOTO 79
  IF ~~ THEN REPLY #31153 /* ~Spróbuj mu przerwać.~ */ GOTO 79
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31154 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 98
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.1 98.0
  SAY #30786 /* ~"Legenda mówi" kontynuuje "że Ravela została uwięziona w labiryntach kilka wieków temu. Twierdzono, że władała wieloma dziwnymi rodzajami magii i najwyraźniej jej obecność w Sigil była dla Pani zagrożeniem. Obawiam się, że niewiele o niej wiem."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31155 /* ~"Czy zatem możesz się więcej dowiedzieć?"~ */ GOTO 84
  IF ~~ THEN REPLY #31156 /* ~"Uwięziona w labiryncie?"~ */ GOTO 80
  IF ~~ THEN REPLY #31157 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31158 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.1 87.0
  SAY #30787 /* ~"Labirynty! To dzieło Pani... widzisz, ona bierze niewielką część Sigil, powiela ją, po czym przy pomocy portalu wrzuca tę część w Głęboki Eter. Gdy już się tam znajdzie, cząstka Sigil staje się półsferą, niekończącym się labiryntem, który zwija się i łączy sam ze sobą..."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31159 /* ~"Czy zatem możesz się więcej dowiedzieć?"~ */ GOTO 84
  IF ~~ THEN REPLY #31160 /* ~Słuchaj dalej.~ */ GOTO 81
  IF ~~ THEN REPLY #31161 /* ~Spróbuj mu przerwać.~ */ GOTO 81
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31162 /* ~Spróbuj mu coś ukraść, podczas gdy będzie mówił.~ */ GOTO 99
END

IF ~~ THEN BEGIN 81 // from: 80.1 80.2 99.0
  SAY #30788 /* ~"Pani używa ich" mówi dalej "by więzić tych, którzy zagrażają jej Mocy. Gdy już zadecyduje, że masz zostać uwięziony, nie ma możliwości z nich uciec. Uważa się, że z każdego labiryntu jest jakieś wyjście, ale odnalezienie go jest wyjątkowo trudne."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31163 /* ~"Czy zatem możesz się więcej dowiedzieć?"~ */ GOTO 84
  IF ~~ THEN REPLY #31164 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31165 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 16.8
  SAY #30789 /* ~"Trwająca od wieków wojna pomiędzy chaotycznymi tanar'ri i praworządnymi baatezu. Jest to wojna ideologii, szalejąca od momentu, w którym te dwie rasy zetknęły się w Sferach Niższych. Od tego czasu wieloświat znalazł się w jej cieniu. Obawiam się, że moja znajomość historii Wojny Krwi nieco szwankuje, ponieważ przez wieki odbyło się wiele bitew."~ */
  IF ~~ THEN REPLY #31166 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31167 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 16.3 84.0
  SAY #30790 /* ~"Z pewnością mogę spróbować, panie... czymże jest to, o czym pragniesz się dowiedzieć?"~ */
  IF ~  PartyHasItem("P_JRNL")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #31168 /* ~Rozłóż dwunastościan do strony z 'zapiskami' i spytaj się, czy mógłby to zbadać.~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ GOTO 84
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("CW_Research_Ravel","AR0600",0)
~ THEN REPLY #31169 /* ~"Szukam informacji o nocnej wiedźmie Raveli Szaradnej."~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",1)
~ GOTO 78
  IF ~  Global("CW_Research_Incarnations","AR0600",0)
~ THEN REPLY #31170 /* ~"Szukam informacji o martwych osobach bardzo do mnie podobnych z wyglądu."~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",1)
~ GOTO 85
  IF ~~ THEN REPLY #31171 /* ~"Właściwie pozwól mi spytać cię o coś innego..."~ */ GOTO 16
  IF ~~ THEN REPLY #31172 /* ~"Nic, jeśli się nad tym zastanowić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 31.0 79.0 80.0 81.0 83.0 85.0
  SAY #30791 /* ~"Tak. Przyjrzę się temu bliżej. Powinienem otrzymać tę informację nie później niż jutro."~ */
  IF ~~ THEN REPLY #31173 /* ~"Dzięki. Czy mogę poprosić cię, abyś przyjrzał się czemuś innemu?"~ */ GOTO 83
  IF ~~ THEN REPLY #31174 /* ~"Wielkie dzięki. Mam jeszcze inne pytania..."~ */ GOTO 16
  IF ~~ THEN REPLY #31175 /* ~"Doceniam to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.2
  SAY #30792 /* ~"Dość... dziwna prośba, panie." Wygląda na zakłopotanego. "Taki człowiek, lub tacy ludzie, musieliby być dość znaczącymi osobami, aby moja praca dała jakieś rezultaty. Czy szukasz swoich przodków, czy też...?"~ */
  IF ~~ THEN REPLY #31176 /* ~"Coś w tym rodzaju. Możesz sprawdzić?"~ */ GOTO 84
END

IF ~~ THEN BEGIN 86 // from: 16.0
  SAY #30793 /* ~"Tylko tyle, że ten język jest martwy. W Miejskim Gmachu Rozrywki pracował Finam, profesor, który się tym zajmował. On może coś wiedzieć na ten temat, o ile wciąż tam jest."~ */
  IF ~~ THEN REPLY #31177 /* ~"Wielkie dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31178 /* ~"Doceniam to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 16.1
  SAY #30794 /* ~"Tak, najwyraźniej zniknęła z Gmachu Rozrywki jednej nocy ku uldze wielu osób i uważa się, że została uwięziona w labiryntach. Zapiski mówią, że coś należącego do niej potrzebne jest do otwarcia portalu do jej labiryntu, ale nikt nie wiedział, co to mogło być, ani nie starał się spróbować. Możesz popytać o nią ludzi w Gmachu."~ */
  IF ~~ THEN REPLY #31179 /* ~"Została 'uwięziona w labiryntach'?"~ */ GOTO 80
  IF ~~ THEN REPLY #31180 /* ~"Interesujące. Mam jeszcze inne pytania..."~ */ GOTO 16
  IF ~~ THEN REPLY #31181 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 16.2
  SAY #30795 /* ~"Cóż, tak, rzeczywiście. Wyjątkowo ciekawe! Znalazłem wzmiankę o dwóch różnych ludziach, którzy pasowali do twego opisu... obaj, obawiam się, z gatunku ludzi godnych pogardy. Pierwszy to prawdziwy szaleniec... berserker, najemnik żądny krwi i pojedynków, który zabił wszystkich, co weszli mu w drogę."~ */
  IF ~~ THEN REPLY #31182 /* ~"Mów dalej..."~ */ GOTO 100
END

IF ~~ THEN BEGIN 89 // from: 44.2
  SAY #30796 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31183 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 45
END

IF ~~ THEN BEGIN 90 // from: 46.2
  SAY #30797 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31184 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 48.2
  SAY #30798 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31185 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 49
END

IF ~~ THEN BEGIN 92 // from: 51.2
  SAY #30799 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31186 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 52
END

IF ~~ THEN BEGIN 93 // from: 53.2
  SAY #30800 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31187 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 54
END

IF ~~ THEN BEGIN 94 // from: 56.2
  SAY #30801 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31188 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 57
END

IF ~~ THEN BEGIN 95 // from: 58.2
  SAY #30802 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31189 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 59
END

IF ~~ THEN BEGIN 96 // from: 62.2
  SAY #30803 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31190 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 63
END

IF ~~ THEN BEGIN 97 // from: 72.2
  SAY #30804 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31191 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 73
END

IF ~~ THEN BEGIN 98 // from: 78.2
  SAY #30805 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31192 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 79
END

IF ~~ THEN BEGIN 99 // from: 80.3
  SAY #30806 /* ~Wsuwasz dłoń do jego sakiewki i wyciągasz kilka monet.~ */
  IF ~~ THEN REPLY #31193 /* ~Ukradnij kilka monet i słuchaj dalej.~ */ DO ~GiveGoldForce(4)
~ GOTO 81
END

IF ~~ THEN BEGIN 100 // from: 88.0
  SAY #30807 /* ~"W końcu go złapano" przytakuje "przeciągnięto i poćwiartowano. Dokonały tego dwa tuziny Łaskobójców po jego morderczym szale w pubie w Niższej Dzielnicy. Jego szczątki wyrzucono za mury Sigil. To wszystko stało się jakieś trzy wieki temu."~ */
  IF ~~ THEN REPLY #31194 /* ~"A ten drugi?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #30808 /* ~"Niewiele o nim wiadomo. Moje badania wskazują, że był on Czuciowcem, który na krótko przed swoją śmiercią zniszczył kilka tuzinów kamieni doznań, które wcześniej zapisał swoimi doświadczeniami. Zostało to zanotowane jako wielka strata dla frakcji, gdyż mówiło się, że ten człowiek, mimo niewielkiej liczby przyjaciół, odrzucał wszystkich, którzy próbowali się doń zanadto zbliżyć oraz zgromadził wielką ilość wspaniałych doznań."~ */
  IF ~~ THEN REPLY #31195 /* ~"Jak on zginął?"~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #30809 /* ~Wzrusza ramionami. "Nie wiem. W aktach nic o tym nie ma."~ */
  IF ~~ THEN REPLY #31196 /* ~"Wielkie dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31197 /* ~"Doceniam to. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,1)
~ THEN BEGIN 103 // from:
  SAY #30810 /* ~Abel uśmiecha się na twój widok. "Ach, dobry panie, znowu się spotykamy! Wiesz, zastanawiałem się..." Zaczyna już z oddali mówić o polityce procedur sądowych w Sigil i o tym, jak można by uczynić te procesy efektywniejszymi.~ */
  IF ~~ THEN REPLY #31198 /* ~"Czekaj... Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31199 /* ~"Tak... bardzo interesujące... ale muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,2)
~ THEN BEGIN 104 // from:
  SAY #30811 /* ~Abel uśmiecha się na twój widok. "Ach, dobry panie, znowu się spotykamy! Wiesz, zastanawiałem się..." Zaczyna już z oddali mówić o strukturach kompleksu administracyjnego, w którym pracuje i w jaki sposób można by usprawnić pracę przez użycie planu rotacyjnego.~ */
  IF ~~ THEN REPLY #31200 /* ~"Czekaj... Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31201 /* ~"Tak... bardzo interesujące... ale muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,3)
~ THEN BEGIN 105 // from:
  SAY #30812 /* ~Abel uśmiecha się na twój widok. "Ach, dobry panie, znowu się spotykamy! Wiesz, zastanawiałem się..." Zaczyna już z oddali mówić o tym, jak Wielka Kuźnia wyrzuca w atmosferę Sigil toksyczne gazy i jakie negatywne skutki mają one na różne humory w ciele człowieka.~ */
  IF ~~ THEN REPLY #31202 /* ~"Czekaj... Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31203 /* ~"Tak... bardzo interesujące... ale muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,4)
~ THEN BEGIN 106 // from:
  SAY #30813 /* ~Abel uśmiecha się na twój widok. "Ach, dobry panie, znowu się spotykamy! Wiesz, zastanawiałem się..." Zaczyna już z oddali mówić o sposobie, w jaki Stowarzyszenie Porządku, Harmonium i Łaskobójcy pracują razem, wprowadzając do Sigil pokój i stabilność.~ */
  IF ~~ THEN REPLY #31204 /* ~"Czekaj... Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31205 /* ~"Tak... bardzo interesujące... ale muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #9 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,5)
~ THEN BEGIN 107 // from:
  SAY #30814 /* ~Abel uśmiecha się na twój widok. "Ach, dobry panie, znowu się spotykamy! Wiesz, zastanawiałem się..." Zaczyna już z oddali mówić o różnych sposobach ubierania się i rzeczach, które stawały się popularne i znikały przez lata, które przeżył w Sigil.~ */
  IF ~~ THEN REPLY #31206 /* ~"Czekaj... Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31207 /* ~"Tak... bardzo interesujące... ale muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #10 ~  GlobalGT("Able","GLOBAL",0)
~ THEN BEGIN 108 // from:
  SAY #30815 /* ~Abel uśmiecha się na twój widok. "Ach, dobry panie, znowu się spotykamy! Wiesz, zastanawiałem się..." Zaczyna już z oddali mówić o swojej pracy konsultanta do spraw badań w Gmachu Archiwum, podając ci dosłowne cytaty z różnych 'interesujących' rozmów, jakie przeprowadził w ciągu tego tygodnia ze swoimi współpracownikami.~ */
  IF ~~ THEN REPLY #31208 /* ~"Czekaj... Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #31209 /* ~"Tak... bardzo interesujące... ale muszę iść. Żegnaj."~ */ EXIT
END
