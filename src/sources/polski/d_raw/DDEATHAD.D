// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHAD~

IF ~  True()
~ THEN BEGIN 0 // from: 65.0
  SAY #2945 /* ~"Witajcie, Sigilianie! Proszę, zechciejcie zająć miejsca, by posłuchać o 'cieniach', o których będę mówił."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ EXTERN ~DMORTE~ 299
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2946 /* ~Słuchaj.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32106 /* ~Przerwij słuchanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32107 /* ~Rozpoczyna przemówienie ponurym głosem: "Śmierć. To właśnie to, co czeka na końcu podróży, jaką jest życie." Kaszle cicho, po czym unosi w udramatyzowany sposób brwi, machając równocześnie rękami: "Śmierć *nie* jest końcem! Ale początkiem!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 300
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32108 /* ~Słuchaj dalej.~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32109 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #32110 /* ~"I gdy umieracie, wcale nie przestajecie istnieć, nie! Wręcz odwrotnie! Krainy Zewnętrzne powitają was na swym łonie! Tam... nowe życie... Takie, jakiego nie zaznaliście, tam was oczekuje!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 301
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32111 /* ~Słuchaj dalej.~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32112 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #32113 /* ~"Powinniście zrzucić podniszczoną powłokę tego życia i stać się jednymi z wiernych - oczekującymi! Gdy zostaniecie *oczekującymi* w tej Sferze Zewnętrznej, podróż waszego życia *naprawdę* się rozpocznie!"~ */
  IF ~~ THEN REPLY #32115 /* ~Słuchaj dalej.~ */ GOTO 4
  IF ~~ THEN REPLY #32114 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32116 /* ~"Jeżeli należeliście do grona dobrych ludzi, niezmiennie wyrozumiałych i pełnych dobrej woli wobec waszych pobratymców, być może zbocza Niebiańskiego Szczytu staną się dla was domem, gdy umrzecie. Wasz duch odejdzie do tego miejsca, gdzie jako oczekujący mieszkać będzie, otoczony pięknem złotych poranków, delikatnymi promieniami słońca..." Wzdycha rozmarzony.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 302
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32117 /* ~Słuchaj dalej.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32118 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #32119 /* ~"Być może życie zeszło wam na zdradzaniu innych i pięciu się coraz wyżej, na mówieniu fałszu zamiast prawdy, na oczernianiu innych - wszystko po to, by osiągnąć swe własne cele. Krwawoczerwony Tartar, Sfera, gdzie kończą wszyscy szubrawcy, będzie więżącą was klatką. Jako oczekujący w tej Sferze, będziecie wieść życie pełne zdrady i zdradzania, kłamstw i kłamania, życie wyzute z zaufania.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 303
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32120 /* ~Słuchaj dalej.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32121 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #32122 /* ~Pochyla się; jego oczy rzucaja się to wprzód, to w tył. "A *może* wiedliście żywot łaknącej krwi złej istoty, gardzącej pozostałymi, poniżającej ich i robiącej, co się jej żywnie podoba - nie troszcząc się, kogo lub co rani..."~ */
  IF ~~ THEN REPLY #32123 /* ~Słuchaj dalej.~ */ GOTO 7
  IF ~~ THEN REPLY #32124 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32125 /* ~"...wtedy być może to jedna z Niższych Sfer - Baator albo chaotyczne wirujące warstwy Otchłani - oto, co was przywita! Źli do *cna* to te dusze, które się do tej sfery udają, gdzie będą skazane na bezlitosne okrucieństwa i męki, bądź na przymusowy udział w straszliwej..." Szepcze w udramatyzowany sposób. "...Wojnie Krwi."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 304
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32126 /* ~Słuchaj dalej.~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32127 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #32128 /* ~"Niezależnie gdzie się udacie, wiedzcie jedno: Wkroczycie w *nowe* życie. W nowe życie, moi Sigilianie!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 305
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32129 /* ~Słuchaj dalej.~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32130 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #32131 /* ~"Będziecie mogli zacząć na nowo, pozbawieni balastu wspomnień o waszym przeszłym życiu. Waszych 'dusz' dążenia dążyć będą do połączenia..." Uśmiecha się z powodu swego humoru. "...do połączenia się, gdy już tam będziecie, z tą nową Sferą, na której się znajdziecie. Stanie się *jednością* z ideałami i istotą samej Sfery!"~ */
  IF ~~ THEN REPLY #32132 /* ~Słuchaj dalej.~ */ GOTO 10
  IF ~~ THEN REPLY #32133 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32134 /* ~"Staniecie się jednymi z mieszkańców, oczekujących w tej Sferze. Albo, najlepiej, jednymi ze składowych cząstek, z których zbudowana jest Sfera! To cel *wszystkich* oczekujących! By osiągnąć ten cel..." Zaczyna uderzać dłonią o dłoń dla podkreślenia słów: "...MUSICIE *uderzenie* TRZYMAĆ *uderzenie* SIĘ *uderzenie* SWOICH *uderzenie* IDEAŁÓW!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 306
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32135 /* ~Słuchaj dalej.~ */ GOTO 11
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32136 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #32137 /* ~"Wasze ideały! Dobro bądź zło, prawo lub chaos. Albo coś pomiędzy! Gdy już zrównacie się z charakterem, który posiada dana Sfera, wasza droga dobiegnie końca i... częścią... Sfery... staniecie się... *wy sami*. To przewspaniała egzystencja, moi Sigilianie!"~ */
  IF ~~ THEN REPLY #32138 /* ~Słuchaj dalej.~ */ GOTO 12
  IF ~~ THEN REPLY #32139 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #32140 /* ~"Oto jest to, co czeka was *po* 'śmierci', moi słuchacze! Zatroszczcie się więc o to, jak przeżyjecie wasze życie. Wiedzcie jednak, że całkowite zapomnienie *nie* jest tym, co czeka na was po tym życiu."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 307
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32141 /* ~Słuchaj dalej.~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32142 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #32143 /* ~"Teraz odpowiem na pytania, jakie być może macie do mnie. Jest ktoś chętny?"~ */
  IF ~~ THEN REPLY #32144 /* ~"Mam pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32145 /* ~Czekaj w milczeniu.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 16.1
  SAY #32146 /* ~"Jeśli nie ma pytań, zakończę sesję... na razie. Będę kontynuował odczyty w tym Gmachu. I być może, lata później... Spotkam was będąc oczekującym za Bramą Śmierci!"~ */
  IF ~~ THEN REPLY #32147 /* ~Przerwij słuchanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32148 /* ~Mówca odwraca głowę w kierunku Mortego i marszczy lekko brwi. Wychyla się, by dostrzec, kto mówił. "Pytanie? Może jakieś pytanie od kogoś z żyjących?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 308
END

IF ~~ THEN BEGIN 16 // from:
  SAY #32149 /* ~Przytakuje tak, jakby mu się udało cię utemperować. "Dobrze. Teraz odpowiem na pytania, jakie być może macie dla mnie. Jest ktoś chętny?"~ */
  IF ~~ THEN REPLY #32150 /* ~"Mam pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32151 /* ~Czekaj w milczeniu.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.0 16.0 19.1 20.0 22.0 23.0 24.2 25.2 26.2 27.0 28.1 29.2 30.1 31.3 32.1 35.0 36.0 37.0 38.2 39.2 40.1 42.1 43.0 44.0 45.1 46.1 52.0 53.0 54.0 55.4 56.0 57.0 58.0 59.0
  SAY #32152 /* ~Pokazuje, byś kontynuował.~ */
  IF ~~ THEN REPLY #64426 /* ~"Kim jest oczekujący?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Czy oczekujący może umrzeć?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Dlaczego oczekujący tracą swe wspomnienia?"~ */ GOTO 28
  IF ~~ THEN REPLY #32153 /* ~"Co decyduje o tym, do której sfery udamy się po śmierci?"~ */ GOTO 19
  IF ~~ THEN REPLY #32157 /* ~"A co, jeśli ktoś nie jest w stanie umrzeć?"~ */ GOTO 39
  IF ~~ THEN REPLY #32158 /* ~"Wyjaśnij mi słowo 'charakter'."~ */ GOTO 43
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #32159 /* ~"Grabarze powiadają, że *to* życie kończy się w chwili śmierci."~ */ GOTO 44
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32160 /* ~"Udowodnij, że to, co mówisz, jest prawdą."~ */ GOTO 45
  IF ~~ THEN REPLY #32161 /* ~"Opowiedz mi o Wojnie Krwi."~ */ GOTO 54
  IF ~~ THEN REPLY #32162 /* ~"Chcę cię zapytać o jedną ze sfer, o których wspomniałeś."~ */ GOTO 55
  IF ~~ THEN REPLY #32163 /* ~"Prawdę mówiąc mniejsza z tym. Nie mam pytania."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.10 19.2 20.1 22.1 23.1 24.3 25.3 26.3 27.1 28.2 29.3 30.2 31.4 32.2 35.1 36.1 37.1 38.3 39.3 40.2 42.2 43.1 44.1 45.2 46.2 52.1 53.1 54.1 55.5 56.1 57.1 58.1 59.1 66.4
  SAY #32164 /* ~"Jeśli nie ma więcej pytań...?"~ */
  IF ~  Global("Deaths_Adv","GLOBAL",1)
~ THEN REPLY #32165 /* ~Przygotuj się do odejścia.~ */ GOTO 60
  IF ~  Global("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32166 /* ~Przygotuj się do odejścia.~ */ GOTO 61
  IF ~  Global("Deaths_Adv","GLOBAL",3)
~ THEN REPLY #32167 /* ~Przygotuj się do odejścia.~ */ GOTO 62
END

IF ~~ THEN BEGIN 19 // from: 17.3 66.0
  SAY #32168 /* ~"Twój charakter, rzecz jasna! Dobrym ludziom przeznaczone są Wyższe Sfery, *niedobrzy* zaś zrzuceni zostają do Niższych Sfer..." Przewraca oczami, po czym przykłada dłoń do serca w pełnym dramatyzmu geście. "...niech Moce zlitują się nad ich duszami."~ */
  IF ~~ THEN REPLY #32169 /* ~"A gdzie idą neutralni ludzie?"~ */ GOTO 20
  IF ~~ THEN REPLY #32170 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32171 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32172 /* ~Unosi brew. "Znakomite pytanie, znakomite!" Odwraca się w stronę słuchaczy i unosi palec. "Oto odpowiedź: dusza, która wiodła kompletnie neutralne życie, pozbawione skłonności ku dobru bądź złu, stanie się oczekującym w *Krainach Zewnętrznych* - ziemiach otaczających Sigil. Nie będzie jej przeznaczona żadna inna Sfera poza terenem leżącym tuż poza naszym niebem - tym, którego częścią jest Iglica."~ */
  IF ~~ THEN REPLY #32173 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32174 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 17.0 66.1
  SAY #32175 /* ~"Oczekujący jest tym, kim stajesz się, gdy przybywasz do nowej Sfery po śmierci. Będąc oczekującym, tracisz pamięć i wspomnienia przeszłego życia, koncentrując się jedynie na tym nowym. A celem tego nowego jest...?" Uśmiecha się, oczekując od ciebie odpowiedzi.~ */
  IF ~~ THEN REPLY #32176 /* ~"By się połączyć ze Sferą."~ */ GOTO 22
  IF ~~ THEN REPLY #32177 /* ~"Odpowiedz na swoje pytanie. Nie waż się mnie sprawdzać."~ */ GOTO 23
  IF ~~ THEN REPLY #32178 /* ~"Nie traktuj mnie protekcjonalnie, skurlu."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32179 /* ~"Bardzo dobrze! Zdaje się, że niektóre z moich słów zagnieździły się w twoim czerepie!" Słuchacze chichoczą.~ */
  IF ~~ THEN REPLY #32180 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32182 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 21.1 21.2
  SAY #32183 /* ~"Hmmpf. W takim razie tkwij w stanie niewiedzy."~ */
  IF ~~ THEN REPLY #32185 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32186 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 17.1 66.2
  SAY #32188 /* ~Zdaje się być tym trochę zakłopotany. "Cóż... Tak."~ */
  IF ~~ THEN REPLY #32190 /* ~"Jak?"~ */ GOTO 25
  IF ~~ THEN REPLY #32192 /* ~"Co się dzieje, gdy umierają?"~ */ GOTO 26
  IF ~~ THEN REPLY #32193 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32194 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1
  SAY #32197 /* ~Zdaje się być tym trochę zakłopotany. "Cóż... normalnie rzecz ujmując - naprawdę."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 309
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32198 /* ~"Co się dzieje, gdy umierają?"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32199 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32201 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.1
  SAY #32203 /* ~Zdaje się być trochę bardziej zakłopotany. "Cóż... łączą się ze Sferą."~ */
  IF ~~ THEN REPLY #32204 /* ~"A co, jeśli oczekujący umrze w innej, niż jego rodzinna, Sferze?"~ */ GOTO 27
  IF ~~ THEN REPLY #32205 /* ~"A w jaki sposób mogą umrzeć?"~ */ GOTO 25
  IF ~~ THEN REPLY #32207 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32208 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32209 /* ~Wygląda na bardzo zakłopotanego. "Ech... Cóż. W takim razie *to* koniec życia, tam... Ale żaden oczekujący nie chce opuścić swej ojczystej Sfery, przyjacielu!" Rozgląda się i orientuje, że znalazł się w pułapce. "Gdyby to zrobił, zginąłby w zapomnieniu, naprawdę."~ */
  IF ~~ THEN REPLY #32210 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32212 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 17.2 66.3
  SAY #32213 /* ~Unosi brew. "Wybacz, co takiego?"~ */
  IF ~~ THEN REPLY #32214 /* ~"*Powiedziałem* - dlaczego oczekujący tracą swoje wspomnienia w momencie śmierci?"~ */ GOTO 29
  IF ~~ THEN REPLY #32216 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32217 /* ~"Mniejsza z tym. Nie mam pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #32219 /* ~Wygląda na zakłopotanego. "Ech... Cóż, sam wiesz, kto chciałby być obciążony takimi rzeczami, jakimi są wspomnienia?" Wśród słuchaczy przebiega szmer.~ */
  IF ~~ THEN REPLY #32220 /* ~"Wiem."~ */ GOTO 30
  IF ~~ THEN REPLY #32221 /* ~"Ale *dlaczego* tracą wspomnienia?"~ */ GOTO 31
  IF ~~ THEN REPLY #32222 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32223 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #32224 /* ~Mówca uśmiecha się. "Jak na ciebie spoglądam, panie, nie mogę zacząć się zastanawiać - dlaczego!" Słuchacze chichoczą.~ */
  IF ~~ THEN REPLY #32225 /* ~"A więc *dlaczego* tracą swe wspomnienia?"~ */ GOTO 31
  IF ~~ THEN REPLY #32226 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32227 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0
  SAY #32228 /* ~"Ja..." Marszczy brwi, zaczyna coś mówić, po czym przerywa. Po chwili kontynuuje, ostrożnie dobierając słowa. "Zgodnie z moimi wyobrażeniami dzieje się tak, ponieważ musisz rozpocząć od nowa, twa oczekująca dusza oczyszcza się, gdy przybywasz do twojej nowej Sfery."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32229 /* ~"Ale dlaczego miałoby tak być, skoro to właśnie doświadczenia poprzedniego życia decydują o tym, do jakiej Sfery ostatecznie trafiasz?"~ */ GOTO 32
  IF ~~ THEN REPLY #32231 /* ~"To nie jest odpowiedź."~ */ GOTO 33
  IF ~~ THEN REPLY #32232 /* ~"To jest... koszmarne. Jak jakiś głupi kawał."~ */ GOTO 38
  IF ~~ THEN REPLY #32233 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32235 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #32236 /* ~Zdaje się być bardzo zakłopotanym. "Cóż... Ja..." Przerywa. "Hmm. Nie wiem."~ */
  IF ~~ THEN REPLY #32237 /* ~"To nie jest odpowiedź."~ */ GOTO 33
  IF ~~ THEN REPLY #32238 /* ~"W porządku... Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32239 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0 38.1
  SAY #32240 /* ~Staje się nieco zły. "Czy dysponujesz *lepszą* odpowiedzią, przyjacielu? Taką, którą możesz się podzielić?" Słuchacze odwracają się w twym kierunku.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #32241 /* ~"Nie pamiętam gdzie i kiedy, ale chyba sobie przypominam, że słyszałem, iż wspomnienia unoszą się w Sferze Astralnej jako 'rdzenie wspomnień'."~ */ GOTO 34
  IF ~~ THEN REPLY #32242 /* ~"Nie..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32243 /* ~Jeden ze słuchaczy wykrzykuje: "Ma racje!"

Mówca odwraca się w jego kierunku. "Ech, no cóż, może i ma. W takim razie pojawia się pytanie: Czy zachowanie wspomnień ważniejsze jest niż życie jeszcze raz?"~ */
  IF ~~ THEN REPLY #32244 /* ~Prawda: "Owszem, jest."~ */ GOTO 35
  IF ~~ THEN REPLY #32245 /* ~Prawda: "Nie."~ */ GOTO 36
  IF ~~ THEN REPLY #32246 /* ~"Nie wiem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #32247 /* ~Rzecze ze złością: "W takim razie to dość proste: nie umieraj, przyjacielu." Słuchacze chichoczą.~ */
  IF ~~ THEN REPLY #32248 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32249 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #32250 /* ~Wykonuje przesadny pół-ukłon. "A więc o co chodzi?"~ */
  IF ~~ THEN REPLY #32251 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32252 /* ~"Tak właśnie przypuszczałem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 37 // from: 34.2 41.1 47.1
  SAY #32253 /* ~Uśmiecha się szyderczo. "Tak. *Sądziłem*, że właśnie takiej odpowiedzi udzielisz."~ */
  IF ~~ THEN REPLY #32254 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32255 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY #32256 /* ~"Ale w porównaniu z życiem, które czeka na ciebie w nowej Sferze, to błahostka!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32257 /* ~"Ale dlaczego miałoby tak być, skoro to właśnie doświadczenia poprzedniego życia decydują o tym, do jakiej Sfery ostatecznie trafiasz?"~ */ GOTO 32
  IF ~~ THEN REPLY #32258 /* ~"To nie jest odpowiedź."~ */ GOTO 33
  IF ~~ THEN REPLY #32259 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32260 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 39 // from: 17.4
  SAY #32261 /* ~Śmieje się. "Bzdura! Każdy *umiera*, przyjacielu. Nawet bogowie umierają."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32262 /* ~"Nie mogę umrzeć."~ */ GOTO 40
  IF ~~ THEN REPLY #32263 /* ~"*Przypuśćmy* jednak, że ktoś nie może umrzeć."~ */ GOTO 42
  IF ~~ THEN REPLY #32264 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32265 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 42.0
  SAY #32266 /* ~"Och, doprawdy! Niechaj spojrzą wszyscy, to rzadkie wydarzenie: jeden z wielkich nieśmiertelnych zaszczycił nas swoją obecnością! Witamy cię, o nieśmiertelny!" Widownia wybucha śmiechem.~ */
  IF ~~ THEN REPLY #32267 /* ~"Mogę to udowodnić."~ */ GOTO 41
  IF ~~ THEN REPLY #32268 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32269 /* ~"Mniejsza z tym. Nie mam już więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #32270 /* ~"Och, zrób to. Zrób!" Rozlega się jeszcze więcej śmiechów ze strony widowni. "Ale parada! Przyglądajcie się uważnie, moi słuchacze. Sądzę, że w czasie mojego dzisiejszego wykładu będziemy świadkami unikalnego widowiska! Podejdź tu, o nieśmiertelny. Niechaj się przekonamy, kto ma racje i kto będzie martwy!"~ */
  IF ~~ THEN REPLY #32271 /* ~Zabij się, po czym powstań.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",1)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32272 /* ~"Prawdę mówiąc, zapomnij o tym."~ */ GOTO 37
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #32273 /* ~"No cóż, opierając się o to, co *powiedziałem*, nigdy nie osiągnie on Sfer Zewnętrznych i nie zostanie oczekującym."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32274 /* ~"Nie mogę umrzeć."~ */ GOTO 40
  IF ~~ THEN REPLY #32275 /* ~"Hmm. Mam kolejne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32276 /* ~"Rozumiem. Cóż, to już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 43 // from: 17.5
  SAY #32277 /* ~"Wybaczcie, jeśli nie byłem wystarczająco zrozumiały dla wszystkich słuchaczy. 'Charakter' to przynależność twej duszy: dobro lub zło; prawo bądź chaos. Charakter określa sposób, w jaki się *zachowujesz* i ma ogromne znaczenie! To, w jaki sposób wiodłeś swoje życie, decyduje o twoim przeznaczeniu po śmierci."~ */
  IF ~~ THEN REPLY #32278 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32279 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 17.6
  SAY #32280 /* ~Mówca chichocze drwiąco... Podobnie czyni kilku słuchaczy. "Przyjacielu, istnieją niezliczone ilości oczekujących, wśród nich i samych *Grabarzy*, którzy nie zgodziliby się z tą... grabarską 'filozofią'."~ */
  IF ~~ THEN REPLY #32281 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32282 /* ~"To już wszystko, co chciałem wiedzieć."~ */ GOTO 18
END

IF ~~ THEN BEGIN 45 // from: 17.7
  SAY #32283 /* ~"Ech?" Mówca zdaje się być zaskoczony. "A jak miałbym to zrobić?"~ */
  IF ~~ THEN REPLY #32284 /* ~"Umrzyj. Tu. Teraz."~ */ GOTO 46
  IF ~~ THEN REPLY #32285 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32286 /* ~"Mniejsza z tym. Nie mam już więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32287 /* ~Wśród zebranych zapanowuje milczenie. Czując, że znajduje się pod presją, mówca przełyka ślinę. "No cóż..." Uśmiecha się nagle. "Jeśli zrobisz to pierwszy, pójdę w twoje ślady." Słuchacze chichoczą.~ */
  IF ~~ THEN REPLY #32288 /* ~"Zgoda."~ */ GOTO 47
  IF ~~ THEN REPLY #32289 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32290 /* ~"Mniejsza z tym. Nie mam już więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32291 /* ~"Znakomicie!" Twarz mówcy zastyga na chwilę niczym kamień, po czym rozjaśnia się. "Podejdź do przodu, przyjacielu!" Odwraca się w stronę słuchaczy, uśmiechając się. "To unikalna przyjemność, Sigilianie! Dzisiaj - i tylko dzisiaj - będziecie mieli możność obejrzeć na żywo, jak zostać oczekującym."~ */
  IF ~~ THEN REPLY #32292 /* ~Zabij się, po czym powstań.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",2)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32293 /* ~"Prawdę mówiąc, zapomnij o tym."~ */ GOTO 37
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #32294 /* ~Widząc to, mówca blednie i cofa się do tyłu. "Na Moce...!"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32295 /* ~"Sądzę, że uczciwie będzie, gdy udowodnisz *swoją* teorię, właśnie teraz..."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32296 /* ~"Twoja kolej."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32297 /* ~Jedynie się do niego uśmiechnij.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 48.2
  SAY #32298 /* ~"Ech..." Słuchacze przyglądają się z makabryczną fascynacją. "Teraz więc..."~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32299 /* ~"Dalej, umrzyj. Tutaj. Teraz. Udowodnij, że twe słowa są prawdziwe. Rozpocznij życie jako oczekujący."~ */ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32300 /* ~Blef: "Zabij się albo ja to zrobię."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_DA_1","GLOBALLaw",-1)
~ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32301 /* ~Prawda: "Zabij się albo ja to zrobię."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-1)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2
  SAY #32302 /* ~Przełyka ślinę. "Teraz... ech... hmmm." Przyznaje cicho: "Och. Muszę wyznać, że nie jestem jeszcze *w pełni* gotowy do porzucenia tego życia."~ */
  IF ~~ THEN REPLY #32303 /* ~Zabij go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-2)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
SetGlobal("Death_Lecture","GLOBAL",4)
SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32304 /* ~Wykonaj ruch, jakbyś chciał go zabić. Zatrzymaj się jednak *tuż* przed jego karkiem.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",3)
~ GOTO 51
  IF ~~ THEN REPLY #32305 /* ~"Tak więc to wspaniałe nowe życie w Sferach Zewnętrznych być może nie jest takie, jak się przypuszcza?"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #32306 /* ~"Zgodnie z moimi *przypuszczeniami*, ty nadęty, krzykliwy szarlatanie."~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #32307 /* ~Mówca wzdryga się, zamyka oczy i wydaje z siebie skrzeczący odgłos... Słyszysz odgłosy świadczące o tym, że zmoczył się ze strachu.~ */
  IF ~~ THEN REPLY #32308 /* ~"Tak więc to wspaniałe nowe życie w Sferach Zewnętrznych być może nie jest takie, jak się przypuszcza?"~ */ GOTO 52
  IF ~~ THEN REPLY #32309 /* ~"Zgodnie z moimi przypuszczeniami, ty nadęty, krzykliwy szarlatanie."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.2 51.0
  SAY #32310 /* ~Mówca zdaje sobie sprawę ze swej obłudy, boi się jednak alternatywy. "Może jednak nie. Heh." Obrzuca słuchaczy przelotnym spojrzeniem. "No... cóz. Z pewnością nie *teraz*."~ */
  IF ~~ THEN REPLY #32311 /* ~"Tak sądziłem. Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32312 /* ~"Tak właśnie sądziłem. Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 53 // from: 50.3 51.1
  SAY #32313 /* ~"Ech... tak." Mówca wygląda na przestraszonego, mówi głosem świadczącym o porażce. "Hmmmn. Tak."~ */
  IF ~~ THEN REPLY #32314 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32315 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 17.8
  SAY #32316 /* ~"Nie słyszałeś o tym, o Nieświadomy? O wojnie pomiędzy baatezu i tan'nari? Niestety, wyjaśnienie tego konfliktu zajęłoby wieki. Poszukaj kogoś innego, gdyż ten odczyt nie jest z tym związany."~ */
  IF ~~ THEN REPLY #32317 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32318 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 55 // from: 17.9
  SAY #32319 /* ~"Och? O którą?"~ */
  IF ~~ THEN REPLY #32320 /* ~"O Otchłań..."~ */ GOTO 56
  IF ~~ THEN REPLY #32321 /* ~"O Baator..."~ */ GOTO 57
  IF ~~ THEN REPLY #32322 /* ~"O Tartar..."~ */ GOTO 58
  IF ~~ THEN REPLY #32323 /* ~"O Niebiański Szczyt..."~ */ GOTO 59
  IF ~~ THEN REPLY #32324 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32325 /* ~"W zasadzie to zapomnij o tym. Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #32326 /* ~"Sfera złożona z ponad sześciuset warstw jątrzącego się chaosu i zła. Ojczyzna demonicznych tanar'ri!" Wykonuje pełen dramatyzmu gest. "Poszukaj jednak kogoś, kto się zna na Sferach lepiej niż ja."~ */
  IF ~~ THEN REPLY #32327 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32328 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #32329 /* ~"Dziewiąta z najsurowszych sfer praworządnego zła." Chichocze i wykonuje pełen dramatyzmu gest. "Ojczyzna diabelskich baatezu! Podpisz z nimi cyrograf, a łańcuchy ich intryg będę cię więzić do końca życia!" Uśmiecha się. "Poszukaj jednak kogoś, kto się zna na Sferach lepiej niż ja."~ */
  IF ~~ THEN REPLY #32330 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32331 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #32332 /* ~"Sfera Więzienna: zimna, surowa, przepełniona czerwienią. Oto dom zdrajców i kłamców mieszkanie... Powiadają, że tam właśnie uwięziono Tytanów, gdy zostali oni strąceni z Olimpu!" Wykonuje udramatyzowany gest. "Poszukaj jednak kogoś, kto się zna na Sferach lepiej niż ja."~ */
  IF ~~ THEN REPLY #32333 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32334 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 59 // from: 55.3
  SAY #32335 /* ~"Niebiański Szczyt - sfera wiecznego dobra i wiary." Złącza dłonie w modlitwie. "Gdzie devy w niebiosach się wznoszą, archontowie godnie i z honorem władzę sprawują... Dobro doskonałe!" Uśmiecha się. "Poszukaj jednak kogoś, kto się zna na Sferach lepiej niż ja."~ */
  IF ~~ THEN REPLY #32336 /* ~"Mam inne pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #32337 /* ~"Nie mam więcej pytań."~ */ GOTO 18
END

IF ~~ THEN BEGIN 60 // from: 18.0
  SAY #32338 /* ~"...w takim razie odejdę teraz. Będę kontynuował w tym Gmachu moje odczyty... I być może, lata później... spotkam *was* będąc oczekującym za Bramą Śmierci!"~ */
  IF ~~ THEN REPLY #32339 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 18.1
  SAY #32340 /* ~Wygląda, że chce położyć już temu kres. "...w takim razie zakończę tę sesję... Hmm, ja... będę kontynuował odczyty w tym Gmachu, tak więc, ech... powiedzcie wszystkim swoim znajomym."~ */
  IF ~~ THEN REPLY #32341 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.2
  SAY #32342 /* ~Wygląda, że chce położyć już temu kres. "...w takim razie zakończę tę sesję... Hmm, ja... będę kontynuował odczyty w tym Gmachu, tak więc, ech... powiedzcie wszystkim swoim znajomym."~ */
  IF ~~ THEN REPLY #32343 /* ~Przerwij słuchanie, odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #32344 /* ~Któryś ze słuchaczy wykrzykuje: "Jasne! Po to, by mogli ujrzeć, jak znowu robisz w gacie!" Salę wypełniają salwy śmiechu...~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #32345 /* ~"Ech... hmm."~ */
  IF ~~ THEN REPLY #32346 /* ~Odejdź.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49450 /* ~Ten szorstki, przysadzisty mężczyzna, mówi z nutką pewnej zarozumiałości. Zdaje się, że wygłasza akurat odczyt.~ */
  IF ~~ THEN REPLY #49451 /* ~Poczekaj na odczyt.~ */ GOTO 0
  IF ~~ THEN REPLY #49452 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #64424 /* ~"Kontynuuj więc..."~ */
  IF ~~ THEN REPLY #64425 /* ~"Od czego zależy, w jakiej sferze pojawią się, gdy umrą?"~ */ GOTO 19
  IF ~~ THEN REPLY #64426 /* ~"Kim jest oczekujący?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Czy oczekujący może umrzeć?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Dlaczego oczekujący tracą swe wspomnienia?"~ */ GOTO 28
  IF ~~ THEN REPLY #64429 /* ~"Prawdę mówiąc mniejsza z tym. Nie mam pytania."~ */ GOTO 18
END
