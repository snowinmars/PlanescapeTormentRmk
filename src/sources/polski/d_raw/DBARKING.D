// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKING~

IF ~  Global("Wilder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9712 /* ~Ten mężczyzna o dzikich oczach jest zgarbiony, wydaje z siebie niskie warczenie i piana leci mu z pyska. Wygląda, jakby włosów nie ścinał od lat... są takie długie, że zasłaniają mu twarz. Ma długaśne, sprężyste wąsy pokryte potem i tłuszczem, a ich końce opadają tak nisko, że nikną w poszarpanej brodzie.~ */
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13835 /* ~"Witaj."~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13836 /* ~"Witaj."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13837 /* ~"Witaj."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13838 /* ~Warknij na niego.~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13839 /* ~Warknij na niego.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13840 /* ~Warknij na niego.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13841 /* ~Zostaw go w spokoju.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13842 /* ~Zostaw go w spokoju.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.4 0.5
  SAY #13793 /* ~Mężczyzna przerywa warczenie i sięga dłonią, by rozsunąć zasłonę włosów zakrywającą mu oczy. Gdy pomarszczona dłoń odsuwa jego brudne kłaki, wypada z nich kilka dziwnych, ciemnopurpurowych robaków i spada na bruk. Widoczna teraz skóra mężczyzny jest blada jak księżyc i pokryta zmarszczkami. Gdy człowiek wpatruje się w ciebie, jego grube, krzaczaste brwi składają się w literę V. "Dłoń, mą wziąć księżyc latać, teeeż?"~ */
  IF ~~ THEN REPLY #13843 /* ~"Ech, nie dzisiaj. Mam kilka pytań..."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13844 /* ~"'Wziąć twoją dłoń i lecieć do księżyca'? Nie dziś, przyjacielu."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13845 /* ~"'Wziąć twoją dłoń i lecieć do księżyca'? Nie dziś, przyjacielu."~ */ GOTO 4
  IF ~~ THEN REPLY #13846 /* ~"Księżyc - księżyce - siękżyce - siękżyc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13847 /* ~Parsknij na niego i zacznij ujadać.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13848 /* ~Przekrzyw głowę na bok, jakbyś mu się przyglądał.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13849 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13850 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13794 /* ~Mężczyzna przytakuje gorliwie głową, po czym klaszcze w ręce jak dziecko. "Odpowiedzi rozszczepia pół-niebieski olej! WIEM! Ty pyt ta nie!" Na koniec wydaje z siebie długie, świszczące wycie, które kończy ostre szczeknięcie.~ */
  IF ~~ THEN REPLY #13851 /* ~"Słuchaj, uspokój się. Mam do ciebie kilka pytań..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13852 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13853 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 4.1
  SAY #13795 /* ~Mężczyzna odrzuca głowę do tyłu i *wyje*. Jest to tak przerażający dźwięk, że zmusza cię do zakrycia uszu. Nawet to nie wystarcza: wycie zdaje się przeradzać w pisk, który wwierca ci się w głowę, wciska w uszy, zagłębia pod skórą, po czym wczołguje do wnętrza czaszki i wyżera resztki twojej świadomości. Dźwięk jest nie do zniesienia i nie jesteś w stanie zebrać sił, żeby cokolwiek powiedzieć.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13854 /* ~Odwróć się, zostaw go w spokoju.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13855 /* ~Odwróć się, zostaw go w spokoju.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #13796 /* ~Mężczyzna marszczy się, ale jego brwi unoszą się w odwróconą literę V, tworząc dziwny wyraz. Nie masz pojęcia, jak udało mu się zrobić taką minę, ale patrzenie na to, jak pracują mięśnie jego twarzy nie jest rzeczą przyjemną. Nie wiesz, czy jest wściekły, ciekawy, oba naraz, czy żadne. "Śpiewał całunek wyjawia mężczyznę, odpowiedzi wola serce drewnianej kobiety."~ */
  IF ~~ THEN REPLY #13856 /* ~"Ech, nie dzisiaj. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #13857 /* ~"Hęę?"~ */ GOTO 3
  IF ~  GlobalLT("Law","GLOBAL",-12)
~ THEN REPLY #13858 /* ~Zaimprowizuj piosenkę: "Jeden człek, wiedeń człek, idą se przez las... serce drewnianej kobiety nigdy nie odchodzi i nie śmieje w śniegu."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13859 /* ~"'Pocałunek wyjawia serce kobiety, ale odpowiedzi mężczyzny byś wolał'? Dobrze, zatem, ale wiedz: moja odpowiedź jest pytaniem, a wolę usłyszeć odpowiedź od ciebie."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13860 /* ~"'Pocałunek wyjawia serce kobiety, ale odpowiedzi mężczyzny byś wolał'? Dobrze, zatem, ale wiedz: moja odpowiedź jest pytaniem, a wolę usłyszeć odpowiedź od ciebie."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13861 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13862 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.3 4.4
  SAY #13797 /* ~Mężczyzna zdaje się być oczarowany twoim głosem. Z każdym wypowiedzianym przez ciebie słowem w jego oku pojawia się błysk. "Jazgoczący Dzikus jam, jam! Chcąc, pytając, możesz, możesz?"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13863 /* ~"Możesz, mogę: kim... lub czym... jesteś?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13864 /* ~"Możesz, mogę: Czy jesteś jednym z Chaosytów?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13865 /* ~"Czy jesteś jednym z Jazgotu Wygłodzonego Psa?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13866 /* ~"Czy mogę przyłączyć się do Chaosytów?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13867 /* ~"Mogę do się przyłączyć czy Chaosytów?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13868 /* ~"Mogę do się przyłączyć czy Chaosytów?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13869 /* ~"Szukam mężczyzny o imieniu Farod. Wiesz coś o nim?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13870 /* ~"Szukam zgubionego dziennika. Nie wiesz, gdzie mogę go znaleźć?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13871 /* ~"Jeszcze raz, co mówiłeś o moich dziennikach?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13872 /* ~"Co dostanę, jak się przyłączę do Chaosytów? Jakieś moce? Specjalne zdolności?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13873 /* ~"Czy mogę zobaczyć, co Chaosyci sprzedają swoim członkom?"~ */ GOTO 30
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13874 /* ~"Ech... dziś nie będzie pytania. Żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13875 /* ~"Ech... dziś nie będzie pytania. Żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 6 // from: 8.3 9.2 10.2 11.2 12.0 13.0 14.0 15.0 16.1 18.0 20.2 23.0 24.0 25.9 26.0 27.5 28.1 29.0 31.0 32.1 33.0 34.0 35.0 35.1 35.3
  SAY #13798 /* ~Z lubością klaszcze w dłonie, jak dziecko na festiwalu, po czym głośno wyje: "Pyta NIE! Pyta NIE!"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13876 /* ~"NIE odrzucaj tego: Kim... albo czym... jesteś?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13877 /* ~"NIE odrzucaj tego: Czy jesteś jednym z Chaosytów?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13878 /* ~"Oto moje pytanie: Czy jesteś jednym z Jazgotu Wygłodzonego Psa?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13879 /* ~"Czy mogę przyłączyć się do Chaosytów?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13880 /* ~"Mogę do się przyłączyć czy Chaosytów?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13881 /* ~"Mogę do się przyłączyć czy Chaosytów?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13882 /* ~"Szukam mężczyzny o imieniu Farod. Wiesz coś o nim?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13883 /* ~"Szukam zgubionego dziennika. Nie wiesz, gdzie mogę go znaleźć?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13884 /* ~"Jeszcze raz, co mówiłeś o moich dziennikach?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13885 /* ~"Co dostanę, jak się przyłączę do Chaosytów? Jakieś moce? Specjalne zdolności?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13886 /* ~"Czy mogę zobaczyć, co Chaosyci sprzedają swoim członkom?"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13887 /* ~"Ech... dziś nie będzie pytania. Żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13888 /* ~"Ech... dziś nie będzie pytania. Żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 7 // from: 5.7 5.8 6.7 6.8
  SAY #13799 /* ~Marszczy się, mruży oczy, po czym z powrotem je otwiera. Gdy ponownie się odzywa, jego głos jest wyraźny i jasny... to jakby mówiła inna, bardziej normalna osoba. Wygląda to bardzo dziwnie. "Więcej niż jeden zgubiono, więcej niż jeden odnaleźć musisz. Każda twoja część jeden miała, więc więcej niż jeden odnaleźć musisz." Mruga i potrząsa przez chwilę głową, jakby zaskoczony, po czym chichocze.~ */
  IF ~~ THEN REPLY #13889 /* ~"Czy możesz mi powiedzieć, gdzie jest choć jeden z nich?"~ */ JOURNAL #58924 /* ~Odbyłem "rozmowę" z Jazgoczącym Dzikusem w pobliżu gospody "Pod Gorejącym Człekiem". Ku mojemu zdziwieniu, nie tylko orientował się, gdzie znajduje się mój dziennik, ale także stwierdził, że dzienników takich jest więcej. Powiedział, że jeden z nich znajduje się 'na ścianach grobowca głęboko pod miastem, gdzie łkają kamienie', a drugi 'w schowku w mojej komnacie gościnnej w Miejskim Gmachu Rozrywki'. Poza tymi dwoma podobno są jeszcze inne dzienniki. Nie wiem, na ile mogę ufać jego informacjom, ale kiedy opowiadał mi o dziennikach, wyglądał na zdrowego na umyśle.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #13800 /* ~Wygląda, jakby miał zamiar powiedzieć nie, po czym nagle jego lewa ręka uderza go w skroń. Ryczy w odpowiedzi, po czym nagle milknie i mruga oczami. "Jeden jest w kredensie w twoim gościnnym pokoju w Gmachu Czuciowców, a inny w murach grobowca ukrytego pod miastem, gdzie łkają kamienie. Inne są..." Zanim skończył, jego prawa pięść uderza go w twarz, a on ryczy ponownie. Mruga i potrząsa przez chwilę głową, jakby zaskoczony swoim zachowaniem, po czym uśmiecha się niepewnie.~ */
  IF ~~ THEN REPLY #13890 /* ~"Gmach Czuciowców? Gdzie to jest?"~ */ GOTO 9
  IF ~~ THEN REPLY #13891 /* ~"Grobowiec pod miastem? Gdzie?"~ */ GOTO 10
  IF ~~ THEN REPLY #13892 /* ~"Gdzie są te inne dzienniki?"~ */ GOTO 11
  IF ~~ THEN REPLY #13893 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13894 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13895 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0
  SAY #13801 /* ~Jazgoczący Dzikus podnosi dłonie... zdaje się nie pamiętać, co powiedział przed chwilą.~ */
  IF ~~ THEN REPLY #13896 /* ~"Powiedziałeś, że jeden jest w grobowcu pod miastem? Gdzie?"~ */ GOTO 10
  IF ~~ THEN REPLY #13897 /* ~"Gdzie są te inne dzienniki, o których mówiłeś?"~ */ GOTO 11
  IF ~~ THEN REPLY #13898 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13899 /* ~"Zapomnij. Spróbuję znaleźć je na własną rękę."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13900 /* ~"Zapomnij. Spróbuję znaleźć je na własną rękę."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.1
  SAY #13802 /* ~Przez chwilę Jazgoczący Dzikus wygląda na przestraszonego, po czym wskazuje w górę z nadzieją na twarzy "Ech... tam?" Przełyka ślinę. Zdaje się nie wiedzieć, a ty z jakiejś przyczyny mu wierzysz.~ */
  IF ~~ THEN REPLY #13901 /* ~"Powiedziałeś, że jeden jest w Gmachu Czuciowców? Gdzie to jest?"~ */ GOTO 9
  IF ~~ THEN REPLY #13902 /* ~"Gdzie są te inne dzienniki, o których mówiłeś?"~ */ GOTO 11
  IF ~~ THEN REPLY #13903 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13904 /* ~"Zapomnij. Spróbuję znaleźć je na własną rękę."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13905 /* ~"Zapomnij. Spróbuję znaleźć je na własną rękę."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.1
  SAY #13803 /* ~Jazgoczący Dzikus wzrusza ramionami, przyglądając ci się ostrożnie. "Może w innych miejscach?" Przełyka ślinę.~ */
  IF ~~ THEN REPLY #13906 /* ~"Powiedziałeś, że jeden jest w Gmachu Czuciowców? Gdzie to jest?"~ */ GOTO 9
  IF ~~ THEN REPLY #13907 /* ~"Powiedziałeś, że jeden jest w grobowcu pod miastem? Gdzie?"~ */ GOTO 10
  IF ~~ THEN REPLY #13908 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13909 /* ~"Zapomnij. Spróbuję znaleźć je na własną rękę."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13910 /* ~"Zapomnij. Spróbuję znaleźć je na własną rękę."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 12 // from: 5.6 6.6
  SAY #13804 /* ~Jazgoczący Dzikus wzrusza ramionami, po czym odpowiada ci śpiewnym głosem. "Spore szanse? Nie spore, nie szanse, stracone nie, pomóc nie..." Mruczy do siebie, jakby czyścił gardło. "Może najpierw go stracisz, potem mnie spytasz, a wtedy będą spore szanse?"~ */
  IF ~~ THEN REPLY #13911 /* ~"By go zgubić, musiałbym go najpierw znaleźć. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13912 /* ~"Zapomnij. Spróbuję znaleźć go na własną rękę."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13913 /* ~"Zapomnij. Spróbuję znaleźć go na własną rękę."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1 6.0 6.1
  SAY #13805 /* ~"Ka-osz!" Wypluwa to słowo, jakby miał problemy z wymówieniem go. "Niektórzy mówią Kaosyci, ja mówię Sicyoach. Ludzie CHAOSU. Ludzie nie, Dzielu nie, ludzie tak, trzy nosy to tak." Przyklęka i zaczyna się kołysać w tę i z powrotem, śpiewając dziecięcym sopranem. "Chaosyta, chaosyta, skok do domu, jest to frakcja, mimo tego każdy sam."~ */
  IF ~~ THEN REPLY #13914 /* ~"A więc jesteś jednym z Chaosytów. Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13915 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13916 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 14 // from: 5.2 6.2
  SAY #13806 /* ~W odpowiedzi zaczyna na ciebie jazgotać z całych sił. Patrzysz, jak ślina wylatuje mu z ust i odsuwasz się, by uniknąć opryskania. Po chwili on milknie i wydaje z siebie długie, żałosne wycie.~ */
  IF ~~ THEN REPLY #13917 /* ~"Jak sądzę, to oznacza tak. Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13918 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13919 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 15 // from: 5.3 6.3
  SAY #13807 /* ~Patrzy na ciebie kątem oka, wzrusza ramionami, po czym pochyla się, by cię obwąchać. "Siad... szmat, czochry... mokry, pluje... wędruje, wór..." Parska i warczy do siebie. "Skurl!"~ */
  IF ~~ THEN REPLY #13920 /* ~"Jak sądzę, to oznacza nie. Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  GlobalLT("Law","GLOBAL",-20)
~ THEN REPLY #13921 /* ~"Hmm... Mogę do się przyłączyć czy Chaosytów?"~ */ GOTO 25
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13922 /* ~"Ech... zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13923 /* ~"Ech... zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 16 // from: 5.5 6.5
  SAY #13808 /* ~To pierwsza rzecz, jaką powiedziałeś do Jazgoczącego Dzikusa, która zdaje się go kłopotać. Przez chwilę się namyśla, warczy, po czym kłuje cię palcem. "Już człowiekiem jesteś chaosu! Już nim jesteś!"~ */
  IF ~~ THEN REPLY #13924 /* ~Uśmiechnij się, zmruż oczy i powiedz: "Dok-ład-nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_4","GLOBALLaw",-3)
AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #13925 /* ~"Och, zapomniałem. Przepraszam. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13926 /* ~"Warto spróbować. Zatem żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13927 /* ~"Warto spróbować. Zatem żegnaj."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13809 /* ~Wygląda to tak, jakby ktoś zapalił pochodnię w czaszce Dzikusa, ponieważ jego oczy otwierają się, a on sam szeroko się uśmiecha. Uśmiech ten przeradza się w uśmieszek, a potem skrzywioną minę. Zaczyna przed tobą skakać i tańczyć. "Mądry! Szczodry! Bobry!" Uderza cię w ramię obiema dłońmi, po czym ryczy w niebo. "Ponownie zostałeś Kaosytą! Drugi raz! Trzeci! Śmieci!"~ */
  IF ~  GlobalGT("Law","GLOBAL",-20)
~ THEN REPLY #13928 /* ~"Śmieci-to-my, Kaosyta-to-ja!"~ */ GOTO 18
  IF ~  GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13929 /* ~"Śmieci-to-ja, Kaosyta-to-ja!"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13810 /* ~Dzikus przestaje tańczyć na tyle, abyś mógł zatrzymać na nim spojrzenie. "Faktonem będziesz niedługo z takim umysłem, cena jaką twój umysł płaci za takie myśli!" Chichocze i wznosi ręce w powietrze. "Nadchodzi szalony król, a Sfery się wywracają!"~ */
  IF ~~ THEN REPLY #13930 /* ~"Może, może. Ale do cię jeszcze kilka pytań mam..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #13811 /* ~Usta Dzikusa zwijają się w zaskoczone 'O'. "Stałeś się faktonem, cena jaką umysł płaci za takie myśli!" Wskazuje na ciebie palcem jak berłem. "Klęknij, faktonie! Królu Chaosytów! Ogłaszam was mężem ciała i żoną chaosu! Możesz teraz pocałować płonę!"~ */
  IF ~~ THEN REPLY #13931 /* ~"Uch... faktonem?"~ */ GOTO 21
  IF ~~ THEN REPLY #13932 /* ~"Faktonem-jestem! Płony dla wszystkich!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 35.2
  SAY #13812 /* ~Dzikus podnosi wzrok, słysząc twoje słowa i jego usta zwijają się w zaskoczone 'O'. Zrywa się na nogi, wskazuje na ciebie palcem jak berłem "Klęknij, faktonie! Królu WSZYSTKICH Chaosytów! Ogłaszam was mężem ciała i żoną chaosu! Możesz teraz pocałować płonę!"~ */
  IF ~~ THEN REPLY #13933 /* ~"Uch... faktonem?"~ */ GOTO 21
  IF ~~ THEN REPLY #13934 /* ~"Faktonem-jestem! Płony dla wszystkich!"~ */ GOTO 24
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #14006 /* ~"Słuchaj nie moich PYTA-NIE, Dzikusie, PYTA-NIE mam ja..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #13813 /* ~Dzikus zakłada jedną rękę na drugą. "Królem Chaosu jesteś, fakton to tylko imię, które zawieszasz na sobie jak brudną koszulę."~ */
  IF ~~ THEN REPLY #13935 /* ~"Nie chcę być faktonem."~ */ GOTO 22
  IF ~~ THEN REPLY #13936 /* ~"Faktonem-jestem! Żadnych więcej brudnych koszul!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #13814 /* ~Dzikus wzrusza ramionami, po czym uśmiecha się złośliwe. "Podobnie jak życie, nie ma wyboru. Niech cię przeklnie bogactwo i najgorsze szczęście!" Mruży oczy. "Chcesz zmienić tytuł, zmień umysł. Jedno łatwiejsze od drugiego, o ileś nie twardogłowy!"~ */
  IF ~~ THEN REPLY #13937 /* ~"Cóż, nie sądzę, żeby to było sprawiedliwe, że stałem się faktonem, nikt mnie o to nawet nie pytał. Powinny być do tego jakieś prawa."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wilder_1","GLOBALLaw",1)
~ GOTO 23
  IF ~~ THEN REPLY #13938 /* ~"Faktonem-jestem! Głowy twarde wszędzie wokół!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #13815 /* ~Dzikus kłania się nisko i składa palce, tworząc z nich trójkąt. "Sprytne, sprytne! Teraz już żaden ty fakton! Szanse i zasady, i prawa, i takie oporne rzeczy w umyśle faktona być nie mogą..." Zastanawia się nad tym przez chwilę. "Kajdany opadły!" Ponownie się marszczy, po czym wzrusza ramionami. "I zostały nałożone! Ale już nie fakton."~ */
  IF ~~ THEN REPLY #13939 /* ~"Teraz, gdy już mamy za sobą detronizację, mam do ciebie kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13940 /* ~"Chciałem to tylko wyjaśnić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 22.1
  SAY #13816 /* ~Razem z Dzikusem tańcujecie szaleńczo przez kilka minut, wyjąc w niebo. Kilku przechodniów obdarza was dziwnymi spojrzeniami, a ktoś w dali zaczyna krzyczeć, byście się uciszyli. W końcu Dzikus się potyka i taniec się kończy. Chaosyta stara się stanąć na nogi.~ */
  IF ~~ THEN REPLY #13941 /* ~"Mam pytania!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ GOTO 6
  IF ~~ THEN REPLY #13942 /* ~"Nie mam pytań! Że-gnaj! Gnaj-że!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 6.4 15.1
  SAY #13817 /* ~Gdy wypowiadasz te słowa, iskra ludzkiego światła zdaje się błyskać w oczach mężczyzny. Przez chwilę patrzy on w niebo, po czym podnosi lewą stopę i patrzy pod nią. Najwyraźniej nic nie znajduje, więc rozpościera ręce i każdą ogląda jednym okiem, co sprawia, że wzrok rozjeżdża mu się w przeciwne strony. Potem potrząsa głową (doprowadzając oczy do właściwej pozycji) i krzywi się, patrząc na twoją twarz.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13943 /* ~"Należę już do Bogowców, ale..."~ */ GOTO 27
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13944 /* ~"Należę już do Grabarzy, ale..."~ */ GOTO 27
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13945 /* ~"Należę już do Anarchistów, ale..."~ */ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13946 /* ~"Należę już do Czuciowców, ale..."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13947 /* ~"Zmieniłem zdanie. Należę już do Bogowców... nie odwrócę się od nich."~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13948 /* ~"Zmieniłem zdanie. Należę już do Grabarzy... nie odwrócę się od nich."~ */ GOTO 26
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13949 /* ~"Zmieniłem zdanie. Należę już do Anarchistów... nie odwrócę się od nich."~ */ GOTO 26
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13950 /* ~"Zmieniłem zdanie. Należę już do Czuciowców... nie odwrócę się od nich."~ */ GOTO 26
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13951 /* ~"Więc... jaki jest następny krok?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13952 /* ~"Wiesz co, nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13953 /* ~"Tak właściwie, to zapomnij o tym. Nie chcę być Chaosytą. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4 25.5 25.6 25.7
  SAY #13818 /* ~Dzikus wzrusza ramionami. Zdaje się specjalnie tym nie przejmować. "Nie-źle, do-brze, hej?"~ */
  IF ~~ THEN REPLY #13954 /* ~"Mam jednak jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13955 /* ~"Ech... zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 25.2 25.3
  SAY #13820 /* ~"Nie powrót..." Mruczy dzikus, wciąż skrzywiony. "Stare frakcje nie przebaczać..."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13956 /* ~"Kaosytów gotów do przystąpić jestem. Wierność nie frakcji starej mam Bogowców."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13957 /* ~"Kaosytów gotów do przystąpić jestem. Wierność nie frakcji starej mam Grabarzy."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13958 /* ~"Kaosytów gotów do przystąpić jestem. Wierność nie frakcji starej mam Anarchistów."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13959 /* ~"Kaosytów gotów do przystąpić jestem. Wierność nie frakcji starej mam Czuciowców."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13960 /* ~Skłam, by zinfiltrować Chaosytów dla Anarchistów: "Kaosytów gotów do przystąpić jestem. Wierność nie frakcji starej żadnej mam."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_2","GLOBALLaw",-1)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13961 /* ~"Zapomnij. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13962 /* ~"Nie sądzę, żebym był na to gotowy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.8 27.0 27.1 27.2 27.3 27.4
  SAY #13819 /* ~Mruczy do siebie przez chwilę, po czym krzyczy: "Nie Straszne!" Zanim zdążyłeś zareagować, jego dłoń przemknęła w powietrzu z wysokim gwizdem i uderzyła cię w twarz. "Co za miłe spotkanie! Trzy razy bądź pozbawiony kajosem!" Chichocze. Ból w twojej twarzy mija. Masz dziwne uczucie, że właśnie zostałeś wtajemniczony... i że Dzikus za bardzo się z tego cieszył.~ */
  IF ~~ THEN REPLY #13963 /* ~Zaatakuj go za to, że cię uderzył.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13964 /* ~"Zatem dla cię inne pytania ja mam..."~ */ GOTO 6
  IF ~~ THEN REPLY #13965 /* ~"Ech... zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.9 6.9 6.10
  SAY #13821 /* ~Mężczyzna parska, po czym się uśmiecha, przykładając dwa palce do głowy, jakby imitując rogi. "Nic!" Parska, po czym klaska dłońmi jak skrzydłami. "Wszystko!" Wydaje z siebie szloch i wyciera oczy. "Poszukiwania prowadzą do znalezienia, odnalezienie prowadzi do poszukiwań..." Klaszcze w dłonie. "Jakie to ma znaczenie? Nie szukaj starości, przyszłości, a ona poszuka za ciebie..."~ */
  IF ~~ THEN REPLY #13966 /* ~"Zatem mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13967 /* ~"Ech... zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 5.10
  SAY #13822 /* ~Dzikus nagle zdaje się być zainteresowany. "Co masz dla mnie, hmm?!"~ */
  IF ~~ THEN REPLY #13968 /* ~"Nie, nie, pytałem, co ty masz dla mnie."~ */ GOTO 32
  IF ~  PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13969 /* ~Pokaż mu, co masz.~ */ DO ~TakePartyItemNum("Tail",1)
GiveItemCreate("Ratcharm",Protagonist,3,0,0)
SetGlobal("Wilder_Tail","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Wilder_Tail","GLOBAL",1)
~ THEN REPLY #13970 /* ~Pokaż mu, co masz.~ */ GOTO 31
  IF ~  !PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13971 /* ~Pokaż mu, co masz.~ */ GOTO 31
  IF ~~ THEN REPLY #13972 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.3
  SAY #13823 /* ~Patrzy na twoje przedmioty z brakiem zainteresowania. "Nic! Sterta śmiecia! Bezwartościowe błyskotki!"~ */
  IF ~~ THEN REPLY #13973 /* ~"Zatem mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13974 /* ~Zostaw Dzikusa samego.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #13824 /* ~Chrząka i krzyżuje ramiona. Wygląda, jakby krył się za swoimi włosami. "Nic!"~ */
  IF ~~ THEN REPLY #13975 /* ~Kopnij go w podbródek. Mocno.~ */ GOTO 33
  IF ~~ THEN REPLY #13976 /* ~"Zatem mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13977 /* ~Zostaw Dzikusa samego.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #13825 /* ~Skomle... "Wszystko! Mam wszystko! A wszystko to nic, więc lepiej że nie!" Mamrocze jak dziecko, trzymając się za podbródek. "Biedny podbródek, biedny, nie chciałem byś cierpiał..."~ */
  IF ~~ THEN REPLY #13978 /* ~"Zatem mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13979 /* ~Zostaw Dzikusa samego.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #13826 /* ~Oko Dzikusa w jednej chwili pochłania widok jednego z twoich szczurzych ogonów. Wyrywa ci go z garści i trzyma w palcach, jakby był to wijący się robak. Z szybkością błyskawicy zawija go w dziwny kształt i zwraca go tobie. "Piękny, ahem, jasne..." Przełyka słowa, po czym zaczyna chichotać.~ */
  IF ~~ THEN REPLY #13980 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #13981 /* ~"Dzięki, Dzikusie. Żegnaj."~ */ EXIT
END

IF ~  Global("Wilder","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #13827 /* ~Widzisz Jazgoczącego Dzikusa. Wciąż jest ukryty wśród swoich długich, brudnych loków... zdaje się być zajęty mruczeniem do siebie.~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13982 /* ~"Pyta NIE, Dzikusie! Zamknij uszy i słuchaj mnie!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalGT("Law","GLOBAL",-36)
~ THEN REPLY #13983 /* ~"Pyta NIE, Dzikusie! Zamknij uszy i słuchaj mnie!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13984 /* ~"Pyta NIE, Dzikusie! Zamknij uszy i słuchaj mnie!"~ */ GOTO 20
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #13985 /* ~"Słuchaj nie moich PYTA-NIE, Dzikusie, PYTA-NIE mam ja..."~ */ GOTO 6
  IF ~~ THEN REPLY #14005 /* ~Zostaw Dzikusa samego.~ */ EXIT
END
