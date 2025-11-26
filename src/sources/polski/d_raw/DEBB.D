// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEBB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DEBB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",0)
Global("Current_Area","GLOBAL",402)
~ THEN BEGIN 0 // from:
  SAY #3011 /* ~Widzisz lekko przygarbionego, starego człowieka z siwą brodą i lwią grzywą siwych włosów. Jako zbroję nosi parę naramienników, pod ręką trzyma hełm. Pali fajkę, nosi przytroczony kapciuch z tytoniem. Wygląda na silnego, ale jest dość pulchny i wygląda na to, że ma jakieś problemy z oddychaniem. "Niezły z ciebie widok, chłopcze! Nigdy nie widziałem tylu blizn na jednym gościu - jakbyś nosił płaszcz z blizn! Gdzie byłeś - w młocarni?" Śmieje się. "O, chłopcze, ja tylko sobie żartowałem, bez urazy. Jestem Ebb." Podaje dłoń.~ */
  IF ~~ THEN REPLY #3012 /* ~"Witaj Ebb."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11001 /* ~Nie podawaj ręki.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11002 /* ~Ma mocny uścisk dłoni. "Składam przeprosiny za niesmaczny żart, chłopcze. Nie żywisz chyba urazy; mogę zaproponować ci kufelek albo dwa czegoś co wygładzi nastroszone pióra?"~ */
  IF ~~ THEN REPLY #11003 /* ~"Czemu nie?"~ */ GOTO 3
  IF ~~ THEN REPLY #11004 /* ~"Nie."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #11005 /* ~Zabiera rękę. "Wystarczy, wystarczy. Składam przeprosiny za niesmaczny żart, chłopcze. Nie żywisz chyba urazy; mogę zaproponować ci kufelek albo dwa czegoś co wygładzi nastroszone pióra?"~ */
  IF ~~ THEN REPLY #11006 /* ~"Czemu nie?"~ */ GOTO 3
  IF ~~ THEN REPLY #11007 /* ~"Nie."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #11008 /* ~"Oto duch, chłopcze! Poczekaj chwilkę." Wstaje i idzie do baru. Po chwili wraca niosąc dwa kufle. "To dla ciebie, chłopcze. Pij!" Pociąga duży łyk ze swojego, pyka z fajki i odzywa się, "Co może dla ciebie zrobić stary Ebb w taki piękny dzień w Sigil?"~ */
  IF ~~ THEN REPLY #11009 /* ~"Mam kilka pytań związanych z tym miejscem."~ */ GOTO 5
  IF ~~ THEN REPLY #11010 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #11011 /* ~"Wystarczy, chłopcze, wystarczy." Pyka z fajki, przestaje na chwilę i mówi, "Cóż więc może dla ciebie zrobić stary Ebb w taki piękny dzień w Sigil?"~ */
  IF ~~ THEN REPLY #11012 /* ~"Mam kilka pytań związanych z tym miejscem."~ */ GOTO 5
  IF ~~ THEN REPLY #11013 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #11014 /* ~"O, wywnioskowałem to z twojego wyglądu. Chodzi mi o to, że nie wyglądasz na kogoś z tych stron, chłopcze... Jesteś trochę zbyt nietutejszy jak na tubylca!" Ebb chichocze i pociąga kolejny łyk. "W czym więc mogę ci pomóc, chłopcze? Chcesz wiedzieć jaki jest układ ziem?" Ebb mruga.~ */
  IF ~~ THEN REPLY #11015 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #11016 /* ~"Co tutaj robisz?"~ */ GOTO 18
  IF ~~ THEN REPLY #11017 /* ~"Co to za miejsce?"~ */ GOTO 19
  IF ~~ THEN REPLY #11018 /* ~"Tak. Opowiedz mi o mieście i jego otoczeniu."~ */ GOTO 33
  IF ~~ THEN REPLY #11019 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 25.2
  SAY #11020 /* ~"Ebb Skrzypiący, Trzeci Narzędnik Harmonium, a teraz, od czasu gdy nie stąpam już tak lekko jak w przeciągu dwóch czy trzech ostatnich dekad, jestem na emeryturze i dorabiam jako oprowadzacz." Chichocze. "A teraz, chłopcze, kim jesteś i w jakie wpadłeś kłopoty?"~ */
  IF ~~ THEN REPLY #11021 /* ~"Trzeci Narzędnik Harmonium?"~ */ GOTO 7
  IF ~~ THEN REPLY #11022 /* ~"Kim jest oprowadzacz?"~ */ GOTO 13
  IF ~~ THEN REPLY #11023 /* ~"Dlaczego sądzisz, że mam kłopoty?"~ */ GOTO 17
  IF ~~ THEN REPLY #11024 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #11025 /* ~Ebb z dumą pyka z fajki, a jego twarz twardnieje. "Taa, Trzeci Narzędnik Harmonium..." Rozluźnia się trochę. "Od wielu lat nie byłem na służbie. Po tych wszystkich walkach i zasadzkach, w których brałem udział, skrobanie piórem nie jest zajęciem dla mnie. Trzymam więc rękę na pulsie wydarzeń tutaj, w Ulu i pomagam trochę, gdzie tylko mogę. A ty wyglądasz na kogoś kto potrzebuje pomocy... masz jakieś kłopoty, chłopcze?"~ */
  IF ~~ THEN REPLY #11026 /* ~"W jakich walkach i zasadzkach brałeś udział?"~ */ GOTO 8
  IF ~~ THEN REPLY #11027 /* ~"Tylko kilka."~ */ GOTO 11
  IF ~~ THEN REPLY #11028 /* ~"Tylko kilka: obudziłem się w Kostnicy i wygląda na to, że zapomniałem kim jestem."~ */ GOTO 12
  IF ~~ THEN REPLY #11029 /* ~"To naprawdę nie twoja sprawa. Mam kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11030 /* ~"Nie aż tak jak ci się wydaje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11031 /* ~Ebb przewraca oczami. "Było ich więcej, niż mógłbym spamiętać, chłopcze! Cóż... *prawie* więcej niż mógłbym spamiętać, co najmniej. Zbyt długo brałem udział w Wojnie Krwi, w tej wpadce podczas Wojny Kłamstw w Terras, o wiele za dużo lat na Wojnie Czarnych Stuleci..." Ebb zaczyna wyliczać na palcach wojny i cicho liczy. "...aaa, potem była wojna Trzech Sfer i wiele innych. Brałem nawet udział w Wojnie o Wyswobodzenie Harmonium. I w końcu byłem także w Straży Sigil... Niektórzy mogą się nie zgodzić, ale to było najbardziej niebezpieczne ze wszystkich!" Głośno się śmieje. Gdy wspomniał o Wojnie Krwi poczułeś się jakby ktoś wbił ci w serce zimny sztylet.~ */
  IF ~~ THEN REPLY #11032 /* ~"Powiedz mi więcej o Wojnie Krwi."~ */ GOTO 9
  IF ~~ THEN REPLY #11033 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11034 /* ~"Dzięki Ebb. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11035 /* ~Ebb wzdycha nieświadomy twojej reakcji. "Tak... Wojna Krwi: najniebezpieczniejsza waśń rodzinna po tej stronie pierwotnej zupy. Po jednej stronie motłoch pospolitych złośliwych biesów, a po drugiej grupa watażków. Ta wojna podzieliła te stworzenia, od tamtej pory gryzą się między sobą."~ */
  IF ~~ THEN REPLY #11036 /* ~"Dwie grupy walczących ze sobą biesów, co?"~ */ GOTO 10
  IF ~~ THEN REPLY #11037 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11038 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #11039 /* ~"Tak. Tanar'ri, bezwzględni zabójcy, nie dbają o nikogo poza sobą. I potężni baatezu, wszystko by wprowadzić pod ich rządami prawo i porządek. Cały ten bajzel od czasu do czasu wylewa się na inne sfery, wieloświat stał się przez to mniej przyjemnym miejscem..."~ */
  IF ~~ THEN REPLY #11040 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11041 /* ~"Rozumiem. Żegnaj, Ebb."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 17.1
  SAY #11042 /* ~"O, cóż, w porządku, mam nadzieję, że to nic poważnego... od ciebie zależy czy i kiedy będziesz chciał coś na ten temat powiedzieć. Wcale nie chcę naciskać, nie... coś takiego może cię tutaj wpakować w większe kłopoty niż cokolwiek innego."~ */
  IF ~~ THEN REPLY #11043 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11044 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2 17.2
  SAY #11045 /* ~"He?" Ebb mruga i marszczy brwi. "Co powiedziałeś chłopcze? Że obudziłeś się w Kostnicy..." Ebb dokładnie ci się przygląda. "Hmm, może przez te wszystkie blizny wzięli cię za trupa?" Ebb chichocze. "Nie powiesz, że mógłbym być bystrzejszy..." Pyka z fajki. "Grabarczyki..." Łapie się na tym. "Mam na myśli *Grabarzy*... Grabarczyki to dość nieuprzejme określenie na tych gości o bladych twarzach. Wcale ich nie lekceważę... czasem są tak spostrzegawczy jak nagrobek i są tak samo przyjaźni, he? Nie powiem, że nie spodziewałem się, że to też mogą schrzanić, wcale nie."~ */
  IF ~~ THEN REPLY #11046 /* ~"To właśnie słyszałem. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11047 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11048 /* ~"Cóż dobrze, że o to zapytałeś. Właśnie powiedziałeś mi, że jesteś zielony, a oprowadzacz jest najlepszą osobą na jaką Tępak mógłby wpaść na ulicach Sigil. Jestem najlepszym człowiekiem jakiego może potrzebować ktoś taki jak ty." Pociąga łyk. "Oprowadzacz to przyjazny przewodnik, pokaże ci o co jest co, zabierze cię na mały wypad po mieście... przewodnik - taa, przewodnik to najlepszy sposób, by je zwiedzić. Tyle tylko, że ze względu na wiek nie opuszczam tego krzesła, zwykle więc doradzam miejsca, które może zechcesz zobaczyć podczas swoich wycieczek po naszym ładnym mieście. Nie będzie cię to nic kosztować."~ */
  IF ~~ THEN REPLY #11049 /* ~"Dlaczego ma to być za darmo?"~ */ GOTO 14
  IF ~~ THEN REPLY #11050 /* ~"Ile masz lat?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #11051 /* ~"Chłopcze, oprowadzacz, który nie może chodzić nie może ustalać wysokiej ceny. Na moce, żądanie zapłaty za parę słów nie byłoby uczciwe!"~ */
  IF ~~ THEN REPLY #11052 /* ~"Ile masz lat?"~ */ GOTO 15
  IF ~~ THEN REPLY #11053 /* ~"W takim razie mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11054 /* ~"Wystarczająco prawdziwe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #11055 /* ~"Jestem wystarczająco stary, żeby wiedzieć lepiej, chłopcze. A także zbyt stary, by dużo chodzić!" Pyka z fajki. "Powiedzmy, że najlepsze lata mam już za sobą, tylko kajdany zmuszają to serce do pracy."~ */
  IF ~~ THEN REPLY #11056 /* ~"Jakie kajdany?"~ */ GOTO 16
  IF ~~ THEN REPLY #11057 /* ~"Wystarczy. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11058 /* ~"Wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #11059 /* ~"Cóż, chłopcze, nie chcę psuć rozmowy, ale mam nadzieję, że pewnego dnia jakiś święty koleś będzie przechodził przez gospodę Pod Gorejącym Człekiem. Jeśli szczęście dopisze, udzieli mi rozgrzeszenia z kilku moich prywatnych grzechów i będę mógł na dobre zejść z tej sfery."~ */
  IF ~~ THEN REPLY #11060 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11061 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.2
  SAY #11062 /* ~"Chłopcze, nikt nie ma ani tyle blizn co ty, ani takich kłopotów, bez względu na to czy sam się w nie wpakował czy ktoś mu pomógł!" Ebb patrzy na ciebie z udawanym wyrzutem. "Za kogo bierzesz starego Ebba? Za ślepca? Trochę przeżyłem, ale wciąż jeszcze trochę widzę i słyszę! A teraz powiedz o co chodzi. Może potrafię ci pomóc, hę?"~ */
  IF ~~ THEN REPLY #11063 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11064 /* ~"Kilka kłopotów. To wszystko."~ */ GOTO 11
  IF ~~ THEN REPLY #11065 /* ~"Kilka kłopotów: obudziłem się w Kostnicy i wygląda na to, że zapomniałem kim jestem."~ */ GOTO 12
  IF ~~ THEN REPLY #11066 /* ~"Chyba nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.1
  SAY #11067 /* ~"Co robię? Osobliwe pytanie, chłopcze. A wygląda jakbym co robił... zabijam czas w miłym otoczeniu, piastując kufelek piwa i kapciuch z tytoniem, w miłej kompanii. Znakomity sposób na spędzenie dnia, tak uważam! He? He?" Ebb szturcha cię w ramię i śmieje się.~ */
  IF ~~ THEN REPLY #11068 /* ~"Faktycznie. Mam kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11069 /* ~"Pewnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2 25.3
  SAY #11070 /* ~"Chłopcze jesteś w gospodzie Pod Gorejącym Człekiem. Nie jest to tak ładne miejsce jak inne, ale ma swój własny urok."~ */
  IF ~~ THEN REPLY #11071 /* ~"Opowiedz mi o stałych klientach."~ */ GOTO 20
  IF ~~ THEN REPLY #11072 /* ~"Kim jest ten dymiący truposz?"~ */ GOTO 21
  IF ~~ THEN REPLY #11073 /* ~"Jest tu coś dobrego do picia?"~ */ GOTO 22
  IF ~~ THEN REPLY #11074 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11075 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 22.0
  SAY #11076 /* ~"Cóż, tam jest zmieniający postać Jarel -takiego imienia używa w tej postaci; potem O, który twierdzi, że jest listem, a nie osobą, kilku czekających na przestępcę Łaskobójców, dwóch abiszai na przepustce z Wojny Krwi; tam jest githzerai, który przygląda ci się z daleka - nic niezwykłego, pozwól, że ci przypomnę, to prawdziwi śmiałkowie, ; i Alais tam, Tępy dzieciak, jego spodnie wydają się być nieco za małe, jeśli rozumiesz co mam na myśli. Jeśli szukasz informacji o sferach porozmawiaj z Kandrianem Poronionym, tam jest - wie więcej niż ja."~ */
  IF ~~ THEN REPLY #11077 /* ~"Kim jest ten dymiący truposz?"~ */ GOTO 21
  IF ~~ THEN REPLY #11078 /* ~"Jest tu coś dobrego do picia?"~ */ GOTO 22
  IF ~~ THEN REPLY #11079 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11080 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 22.1
  SAY #11081 /* ~"On? O, to nie żaden truposz, chłopcze. O ile wiemy, stary Ignus wciąż żyje wewnątrz tej pękniętej pieczeni. Tak nam się wydaje." Ebb marszczy nos. "Czasem też okropnie śmierdzi. Dlatego wciąż palę, by się upewnić, że nie wślizgnie się do mojego nosa." Chichocze.~ */
  IF ~~ THEN REPLY #11082 /* ~"Jak się tam dostał?"~ */ GOTO 23
  IF ~~ THEN REPLY #11083 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 19.2 20.1
  SAY #11084 /* ~"Cóż, sporo ludzi uważa, że jeśli chodzi o picie nie toleruję niczego z Baator, ale do niektórych trunków mam słabość, a do innych nie. Właściwie jedną z moich ulubionych rzeczy, które można tu dostać są arboreańskie ogniste nasiona... pakujesz je do ust, trochę powietrza, śliny, alkoholu i w razie potrzeby możesz wydmuchać nieco ognia. Takie jest przynajmniej uczucie."~ */
  IF ~~ THEN REPLY #11085 /* ~"Opowiedz mi o stałych klientach."~ */ GOTO 20
  IF ~~ THEN REPLY #11086 /* ~"Kim jest ten dymiący truposz?"~ */ GOTO 21
  IF ~~ THEN REPLY #11087 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11088 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #11089 /* ~Ebb przez chwilę pyka z fajki, jakby zastanawiał się jak ubrać w zdania swój komentarz. "Cóż chłopcze, Ignus miał nieco kłopotów i na dodatek kilku niemałych czarnoksięskich magów na karku, a to rzadko stanowi dobre połączenie, jeśli mnie rozumiesz. Lubił..." Ebb pyka z fajki i wydmuchuje dym. "...cóż, lubił palić różne rzeczy, zaczął podpalać miejsca i ludzi, ogólnie rzecz biorąc - sprawiał kłopoty."~ */
  IF ~~ THEN REPLY #11090 /* ~"I?"~ */ GOTO 24
  IF ~~ THEN REPLY #11091 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11092 /* ~"Szkoda. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11093 /* ~"Cóż, większość tego działa się w Ulu, a pierwszy przyznam, że Ul nie jest na pierwszym miejscu w Harmonium, jeśli chodzi o przestrzeganie praw Sigil..." Na twarzy Ebba pojawia się wyraz zawstydzenia. "To nasza wina, bo było to miejsce, gdzie byliśmy najbardziej potrzebni. Tak więc, zgodnie z oceną Pani, w środowisku magów miał miejsce uliczny sąd... paru czytających z fusów, kilku pokręconych czarodziejów i wiedźm akuszerek. Zebrali się razem i zdołali sklecić czar, dzięki któremu sprawiedliwości stało się zadość." Ebb pokazuje fajką na postać. "Teraz tam siedzi i płonie. Wciąż żyje, ale nie sądzę, by na to liczyli."~ */
  IF ~~ THEN REPLY #11094 /* ~"Hm. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11095 /* ~"Interesujące. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 7.3 8.1 9.1 10.0 11.0 12.0 14.1 15.1 16.0 17.0 18.0 19.3 20.2 21.1 22.2 23.1 24.0 26.3 29.1 30.0 31.0 32.1 33.0 34.0 35.3 36.3 37.3 38.1 39.2 40.1 41.3 42.2 44.1 45.1 46.2 47.0 48.0
  SAY #11096 /* ~"Taa chłopcze? Co chcesz wiedzieć?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11097 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 26
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11098 /* ~"Zgubiłem dziennik."~ */ GOTO 32
  IF ~~ THEN REPLY #11099 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #11100 /* ~"Co to za miejsce?"~ */ GOTO 19
  IF ~~ THEN REPLY #11101 /* ~"Opowiedz mi o Sigil i jego otoczeniu."~ */ GOTO 33
  IF ~~ THEN REPLY #11102 /* ~"Jakie inne miejsca polecasz?"~ */ GOTO 47
  IF ~~ THEN REPLY #11103 /* ~"Podejrzewam, że nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11104 /* ~"Farod? Ebb marszczy brwi i wyciąga z ust fajkę. "Chłopcze, czego chcesz od takiego trepa jak Farod?"~ */
  IF ~~ THEN REPLY #11105 /* ~"Wydaje mi się, że go znałem."~ */ GOTO 27
  IF ~~ THEN REPLY #11106 /* ~"Chyba mi coś ukradł."~ */ GOTO 28
  IF ~~ THEN REPLY #11107 /* ~"Nie twoja sprawa. Co o nim wiesz?"~ */ GOTO 29
  IF ~~ THEN REPLY #11108 /* ~"Niczego. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11109 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11110 /* ~"Taa, cóż, tym większe twoje nieszczęście. W takim wypadku może zapomnienie o niektórych rzeczach jest dla ciebie lepsze." Ebb potężnie pyka z fajki.~ */
  IF ~~ THEN REPLY #11111 /* ~"Co o nim wiesz?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #11112 /* ~"O, bez wątpienia, chłopcze, bez wątpienia." Zrzędzi Ebb żując swoją fajkę. "Musisz przywiązać wszystko wokół tego małego, zachłannego pająka. Powinien być jednym z Przeznaczonych, wszystko co nie jest przykute wślizguje się do jego pokoju. Nie daj mu palca, bo weźmie rękę, he?"~ */
  IF ~~ THEN REPLY #11113 /* ~"Co możesz o nim powiedzieć?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.0 28.0 32.0
  SAY #11114 /* ~"Cóż, nie wiem wszystkiego o starym Farodzie, ale wiem nieco o otaczającym go cieniu. Jeśli naprawdę chcesz wytropić i przybić tego pająka do muru, to chyba mogę się z tobą podzielić kilkoma śpiewkami żebyś wiedział w co się zaplątałeś." Przerywa, by sprawdzić fajkę. "Farod niedawno wygrzebał swe leże daleko na Placu Szmaciarzy, zebrał razem trochę zbieraczy i gangów, a potem założył coś, co niektórzy mogliby nazwać frakcją zbieraczy... i może tym właśnie jest..."~ */
  IF ~~ THEN REPLY #11115 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 30
  IF ~~ THEN REPLY #11116 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11117 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11118 /* ~"Cóż chłopcze, jeśli szukasz Faroda, co jest dość szalone, to lekko zboczyłeś ze szlaku. Chcesz znaleźć Plac Szmaciarzy? Śpiewka głosi, że Farod założył swoje leże gdzieś na Placu. Nawet taki stary gość jak ja, który wie co w trawie piszczy, nie ma pojęcia gdzie to dokładnie jest. Domyślam się, że Farod chce utrzymać cień jej położenia w tajemnicy od czasu jak Harmonium i Grabarczyki... ee, Grabarze chętnie zatkaliby mu jadaczkę, gdyby tylko dostali go w swoje ręce. Jeśli wciąż chcesz znaleźć Faroda, to idź na Plac Szmaciarzy i spróbuj wydobyć coś z miejscowych. Spróbuj, ale bądź ostrożny, tam jest mnóstwo takich, którzy zrobiliby sobie harfę z twoich jelit, gdybyś tylko na nich spojrzał."~ */
  IF ~~ THEN REPLY #11120 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11121 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #11122 /* ~NULL NODE~ */
  IF ~~ THEN REPLY #11123 /* ~"Znakomicie. Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11124 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY #11125 /* ~"Zginął ci jakiś dziennik? Było w nim coś poza kartkami i słowami? Inaczej nie potrafię sobie wyobrazić zbyt wielu krwawników zawracających sobie głowę listami, chyba że byłyby naprawdę pikantne. Tutaj nie ma zbyt wiele pożytku z książek i nauki. Nie wiem gdzie mógłbyś znaleźć coś takiego..." Ebb pyka z fajki i łączy palce. "Chłopcze chyba wiesz, że jeśli to Farod zdjął cię z ulicy w Sigil, to może wiedzieć gdzie są twoje rzeczy... najbardziej prawdopodobne, że w jego spiżarni, jeśli o to pytasz. Martwy człowiek raczej nie może zatrzymać swych rzeczy, gdy jego ciało plądrują Zbieracze."~ */
  IF ~~ THEN REPLY #11126 /* ~"Opowiedz mi o Farodzie."~ */ GOTO 29
  IF ~~ THEN REPLY #11127 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11128 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 5.3 25.4
  SAY #11129 /* ~Ebb śmieje się głośno. "Nie pytasz o mało, co? Jeśli chcesz wiedzieć co znajduje się poza miastem idź pogadać z Kandrianem Poronionym, tam siedzi - jest podróżnikiem. A jeśli chodzi o resztę, cóż... mogę ci opowiedzieć o Pani, dabusach, kluczach i portalach, sposobie w jaki odmierzamy czas, jaki jest układ miasta... Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #11130 /* ~"Odpowiedz na jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11131 /* ~"Opowiedz mi o Pani."~ */ GOTO 35
  IF ~~ THEN REPLY #11132 /* ~"Opowiedz mi o dabusach."~ */ GOTO 39
  IF ~~ THEN REPLY #11133 /* ~"Opowiedz mi o czasie w Sigil."~ */ GOTO 40
  IF ~~ THEN REPLY #11134 /* ~"Powiedz mi jak wygląda miasto."~ */ GOTO 41
  IF ~~ THEN REPLY #11135 /* ~"Opowiedz mi o kluczach i portalach."~ */ GOTO 43
  IF ~~ THEN REPLY #11136 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2 36.2 37.2 38.0 39.1 40.0 41.2 42.1 44.0 45.0 46.1
  SAY #11137 /* ~"Co jeszcze chciałeś wiedzieć o Klatce?"~ */
  IF ~~ THEN REPLY #11660 /* ~"Odpowiedz na jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11661 /* ~"Opowiedz mi o Pani."~ */ GOTO 35
  IF ~~ THEN REPLY #11662 /* ~"Opowiedz mi o dabusach."~ */ GOTO 39
  IF ~~ THEN REPLY #11663 /* ~"Opowiedz mi o czasie w Sigil."~ */ GOTO 40
  IF ~~ THEN REPLY #11664 /* ~"Powiedz mi jak wygląda miasto."~ */ GOTO 41
  IF ~~ THEN REPLY #11665 /* ~"Opowiedz mi o kluczach i portalach."~ */ GOTO 43
  IF ~~ THEN REPLY #11666 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.1 39.0
  SAY #11138 /* ~"Cóż, chłopcze, mało kto wie coś o niej i domyślam się, że nawet ci, co wiedzą więcej niż trochę, nie wiedzą zbyt wiele. Jest prawdziwą zagadką, a gdybyś się na nią natknął... niech Moce bronią... jest cicha i zabójcza. O ile wiem, nie jest zła, ale trzyma siebie i Sigil mocno w cieniu. Nikomu nie udało się go przeniknąć, a jeśli tak, to poszli w labirynty."~ */
  IF ~~ THEN REPLY #11139 /* ~"Mów dalej."~ */ GOTO 36
  IF ~~ THEN REPLY #11140 /* ~"Poszli w labirynty? Co masz na myśli?"~ */ GOTO 38
  IF ~~ THEN REPLY #11141 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11142 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11143 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11144 /* ~"Masz spore szanse, że jej nie spotkasz, chyba że zrobisz coś naprawdę złego... zranisz mnóstwo ludzi, zabijesz dabusa, złamiesz jej prawo, spróbujesz się do niej modlić... doszliśmy do wniosku, że tego nienawidzi, a także przeszkadzania dabusom w pracy (to jak przeszkadzać Pani w pracy)... jeśli będziesz miał szczęście, przyjdą po ciebie tylko Łaskobójcy, ale jeśli ona przyjdzie, będziesz martwy, gdy tylko padnie na ciebie jej cień."~ */
  IF ~~ THEN REPLY #11145 /* ~"Co miałeś na myśli mówiąc 'poszli w labirynty'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11146 /* ~"Proszę, mów dalej."~ */ GOTO 37
  IF ~~ THEN REPLY #11147 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11148 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11149 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #11150 /* ~"Chłopcze, w Sigil Pani może prawie wszystko, tak nam się wydaje. Sprawić by było większe, bądź mniejsze, stworzyć nowe portale, odciąć stare, zadbać o to by na ulicach nie wybuchła Wojna Krwi, powstrzymać ludzi przed teleportowaniem się do miasta, trzymać Moce z dala."~ */
  IF ~~ THEN REPLY #11151 /* ~"Co miałeś na myśli mówiąc 'poszli w labirynty'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11152 /* ~"Kim są moce?"~ */ GOTO 46
  IF ~~ THEN REPLY #11153 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11154 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11155 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1 36.0 37.0 46.0
  SAY #11156 /* ~"Taa. Czasem wyprawia krwawników w miejsce, gdzie nie mogą szkodzić. Rozumiesz, Pani weźmie kawałek Sigil i stworzy z tego małą wymiarową kieszeń, labirynt. Umieszcza w nim tych, którzy ją zdradzili i pozwala im gnić." Ebb pyka z fajki. "Taa... chłopcze, gdy Pani skieruje na ciebie spojrzenie, nie można uniknąć pójścia w labirynty. I tak cię dopadnie, nie ważne jak bardzo będziesz chciał jej uciec. Będziesz szedł aleją, albo już będziesz wkraczał w portal, czy skręcał w lewo na ulicy i nagle okaże się, że jesteś w miejscu, którego po prostu nie rozpoznajesz. Ale z labiryntu zawsze można uciec. Z każdego jest jakaś droga ucieczki... portal umieszczony przez Panią. Trzeba po prostu dowiedzieć się, gdzie jest i jak go użyć."~ */
  IF ~~ THEN REPLY #11157 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11158 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11159 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.2 34.2
  SAY #11160 /* ~"Taa, te zabawne latające krwawniki, mówiące symbolami?" Śmieje się Ebb. "Niezłe cudeńka, co? Dabusy to rodzaj stróży i robotników Pani, robią dokładnie to co ona chce, utrzymują miasto w dobrej kondycji, łataja mury, burzą stare budynki, budują nowe, stawiają portale, odcinają inne i tak dalej. To dość neutralna grupa i lepiej żebyś nie przeszkadzał im w pracy, albo nie zabił któregoś z nich, chyba, że chcesz szybko sprowadzić Panią."~ */
  IF ~~ THEN REPLY #11161 /* ~"Opowiedz mi o Pani."~ */ GOTO 35
  IF ~~ THEN REPLY #11162 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11163 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11164 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.3 34.3
  SAY #11165 /* ~"W Sigil odmierzamy czas opierając się na jasności nieba. Widzisz, nie mamy słońca ani księżyca jak większość światów. Mamy tę mgiełkę, która się rozjaśnia i ściemnia w regularnych cyklach. Co na co większość ludzi nazywa północą my określamy przeciw-szczytem. To na co mówią południe, my nazywamy szczytem. Widzisz, to zależy od szczytu i przeciw-szczytu jasności. Tak więc, gdy ktoś mówi koło piątej po szczycie, ma na myśli dokładnie to."~ */
  IF ~~ THEN REPLY #11166 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11167 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11168 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 33.4 34.4
  SAY #11169 /* ~"Oj. Pozwól mi zwilżyć język." Pociąga łyk z kufla. "Miasto unosi się nad niewyobrażalnie wysoką iglicą - Iglicą. Spoczywa nie niej niczym porzucone koło od wozu, ale nie ma żadnych szprych łączących je z kolcem. Podzielone Jest na sześć dzielnic, każda z nich ma inną funkcję. W tej chwili jesteś w Ulu. Wydaje mi się, że Ul ma być dzielnicą nędzy, w porównaniu ze wspaniałością całego miasta!" Śmieje się. "Frakcje - kluby filozoficzne lub jeśli wolisz gangi - dzielą miasto między siebie."~ */
  IF ~~ THEN REPLY #11170 /* ~"Byłeś członkiem frakcji?"~ */ GOTO 45
  IF ~~ THEN REPLY #11171 /* ~"Mów dalej."~ */ GOTO 42
  IF ~~ THEN REPLY #11172 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11173 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11174 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #11175 /* ~"Miasto jest nazywane skrzyżowaniem sfer, Miastem Drzwi oraz Klatką. Mówi się, że są w nim portale, przez które można się wszędzie dostać. Przechodzą przez nie wszystkie rodzaje potworów. Aby handlować, zrobić sobie leże, czy przeskoczyć z jednej sfery do innej. To krótka wersja chłopcze; będziesz musiał sam doświadczyć tego miejsca."~ */
  IF ~~ THEN REPLY #11176 /* ~"Wspomniałeś coś o portalach?"~ */ GOTO 43
  IF ~~ THEN REPLY #11177 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11178 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11179 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 33.5 34.5 42.0
  SAY #11180 /* ~"Chłopcze, Sigil jest nazywane Miastem Drzwi nie bez powodu... tu wszędzie są portale. Portale są... cóż, są jak drzwi prowadzące do całego wieloświata, tyle tylko, że nie wyglądają jak drzwi... mogą być umieszczone w dowolnym miejscu... oknie, drzwiach, jaskini, ramach obrazu, denku beczki, w przestrzeni między rusztowaniami, szafie... wszystko może być portalem, który czeka na właściwy klucz, który go otworzy i zabierze cię do jakiegoś miejsca w wieloświecie. A jeśli chodzi o klucze..."~ */
  IF ~~ THEN REPLY #11181 /* ~"Mów dalej."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11182 /* ~"Taa, by otworzyć portal trzeba mieć właściwy klucz. Jako że portale mogą być w dowolnym miejscu, klucze są jeszcze bardziej różnorodne... mogą być czymkolwiek. Począwszy od melodii jaką trzeba zanucić obok portalu, tańczenia giga, bycia we właściwym nastroju, trzymania w ręku czegoś z miejsca, do którego chcesz się udać... i tak dalej. W mej młodości przekonałem dziewczynę, że całując się obok niego z mężczyzną... może otworzyć portal do Arkadii. Okazało się, że miałem rację i odbyliśmy wiele wycieczek do Arkadii. Możliwe, że wielu portali nigdy nie odkryto. Jest kilka, które możesz poznać pytając po prostu ludzi i zdobywając klucz. Odkrycie cienia portalu to najtrudniejsza część. Ale ostrzegam cię chłopcze, dla takiego gościa jak ty, skakanie przez portale to nie najlepszy pomysł... nie powinieneś też chodzić po Sigil po zmroku. Lepiej trzymaj się głównych dróg, przy szczycie i uważaj na siebie."~ */
  IF ~~ THEN REPLY #11183 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11184 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11185 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.0
  SAY #11186 /* ~Ebb podnosi dłoń jakby chciał cię zatrzymać i śmieje się trochę. "Oj, zaczekaj chłopcze - Mówią, że nie jestem byłym członkiem frakcji... mówią i mają rację, bo gdy wstępujesz do Harmonium to na całe życie. Jesteśmy krwawnikami, którzy dbają, by Sigil nie znalazło się w kłopotach. Żadnego potrząsania iglicą, żadnych ludzi zbyt entuzjastycznie nastawionych do robienia sobie nawzajem krzywdy. Chłopcze, staramy się utrzymywać pokój i zwykle nam się udaje."~ */
  IF ~~ THEN REPLY #11187 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11188 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11189 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.1
  SAY #11190 /* ~"Chłopcze, to inne określenie Bogów. W sferach jest ich cała horda." Ebb pyka z fajki. "Mimo to nie mogą przybyć do Sigil... Pani ma sposób, by trzymać ich z dala i jeszcze nie puściła śpiewki. Będzie co ma być, dzięki temu Sigil nie zostało przejęte przez kogoś z zewnątrz..."~ */
  IF ~~ THEN REPLY #11191 /* ~"Co miałeś na myśli mówiąc 'poszli w labirynty'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11192 /* ~"Mam jeszcze kilka pytań odnośnie Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11193 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11194 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 25.5
  SAY #11195 /* ~"Cóż..." Ebb pyka z fajki i przygląda ci się. "To chyba najlepsze leże do jakiego mogłeś trafić... oceniając po tatuażach, musisz mieć słabość do malowania swego ciała. Niedaleko stąd jest salon tatuażu. Jeśli potrafisz to trzymaj się z daleka od Alei Niebezpiecznych Węgłów... Ignus spalił to miejsce nie tak dawno temu i od tamtej pory grupa złych krwawników ma w tam leże."~ */
  IF ~~ THEN REPLY #11196 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11197 /* ~"Dzięki. Żegnaj, Ebb."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11198 /* ~"Wróciłeś po więcej, co?" Ebb opiera się na krześle. "Dobrze znowu cię widzieć, chłopcze."~ */
  IF ~~ THEN REPLY #11199 /* ~"Witaj Ebb. Mam kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #11200 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 50 even though they appear after this state */
~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 49 // from:
  SAY #56844 /* ~Ebb kiwa do ciebie głową. "Niezła robota w Klątwie, przyjacielu."~ */
  IF ~  Global("AR0902_Visited","GLOBAL",1)
~ THEN REPLY #56845 /* ~"Dzięki Ebb. Bez twojej pomocy bym sobie nie poradził. Żegnaj."~ */ EXIT
  IF ~  Global("AR0902_Visited","GLOBAL",0)
~ THEN REPLY #56846 /* ~"Dzięki Ebb. Było ciężko. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NearbyDialog("DMorte")
Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #56847 /* ~Ebb kiwa do ciebie głową. "Niezła robota w Klątwie, przyjacielu."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 597
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #56848 /* ~Ebb kiwa do ciebie głową. "Niezła robota, przyjacielu." Odwraca się do swojej szklanki.~ */
  IF ~~ THEN REPLY #56850 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #56849 /* ~Gdy wracasz, Ebb mruga do ciebie i odwraca się do swojej szklanki.~ */
  IF ~~ THEN REPLY #56851 /* ~"Też się cieszę, że znowu cię widzę."~ */ EXIT
END

IF WEIGHT #4 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 53 // from:
  SAY #56852 /* ~Widzisz lekko przygarbionego, starego człowieka z siwą brodą i lwią grzywą siwych włosów. Jako zbroję nosi parę naramienników, pod ręką trzyma hełm. Pali fajkę, do pasa ma przytroczony kapciuch z tytoniem. Wygląda na silnego, ale jest dość pulchny i wygląda na to, że ma jakieś problemy z oddychaniem. Wygląda na przywódcę grupy. "Witaj śmiałku, lepiej żebyś wyjaśnił co tu robisz."~ */
  IF ~~ THEN REPLY #56853 /* ~"Jedynie sprawdzam co tutaj jest."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #56854 /* ~"Co *ty* tu robisz?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56855 /* ~"Wokół miasta panuje straszny chaos, szukam sojuszników, którzy pomogą mi go wyplenić."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56856 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #56857 /* ~"Właśnie wychodzę..."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 63
END

IF WEIGHT #5 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 54 // from:
  SAY #56858 /* ~Widzisz Ebba Skrzypiącego. Gdy mówi jego usta otacza aureola z dymu, "Z woli chaosu znowu się spotykamy, wędrowcze. Co cię sprowadza w te strony?"~ */
  IF ~~ THEN REPLY #56859 /* ~"Jedynie sprawdzam co tutaj jest."~ */ GOTO 59
  IF ~~ THEN REPLY #56860 /* ~"Co *ty* tu robisz?"~ */ GOTO 60
  IF ~~ THEN REPLY #56861 /* ~"Wokół miasta panuje straszny chaos, szukam sojuszników, którzy pomogą mi go wyplenić."~ */ GOTO 61
  IF ~~ THEN REPLY #56862 /* ~"Właśnie wychodzę..."~ */ GOTO 63
END

IF WEIGHT #6 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 55 // from:
  SAY #56863 /* ~Widzisz lekko przygarbionego, starego człowieka z siwą brodą i lwią grzywą siwych włosów. Jako zbroję nosi parę naramienników, pod ręką trzyma hełm. Pali fajkę, do pasa ma przytroczony kapciuch z tytoniem. Wygląda na silnego, ale jest dość pulchny i wygląda na to, że ma jakieś problemy z oddychaniem. Wygląda na przytwódcę grupy. "Witaj, towarzyszu. Spotykamy się zgodnie ze znakiem Anarchii."~ */
  IF ~~ THEN REPLY #56864 /* ~"Co tu robisz?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56865 /* ~"Wokół miasta panuje straszny chaos, szukam sojuszników, którzy pomogą mi go wyplenić."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56866 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
END

IF WEIGHT #7 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 56 // from:
  SAY #56867 /* ~"Witaj!" Śmieje się Ebb. "Ponownie się spotykamy, zgodnie ze znakiem Anarchii!"~ */
  IF ~~ THEN REPLY #56868 /* ~"Co *cię* tu sprowadza? I dlaczego mówisz o anarchii?"~ */ GOTO 60
  IF ~~ THEN REPLY #56869 /* ~"Ebb, potrzebuję pomocy."~ */ GOTO 61
END

IF WEIGHT #8 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #56870 /* ~Widzisz lekko przygarbionego, starego człowieka z siwą brodą i lwią grzywą siwych włosów. Jako zbroję nosi parę naramienników, pod ręką trzyma hełm. Pali fajkę, do pasa ma przytroczony kapciuch z tytoniem. Wygląda na silnego, ale jest dość pulchny i wygląda na to, że ma jakieś problemy z oddychaniem. Wygląda na przywódcę grupy. Pokazuje żebyś się zbliżył.~ */
  IF ~~ THEN REPLY #56871 /* ~Podejdź do niego.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #56872 /* ~Odmów.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 69
END

IF WEIGHT #9 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #56873 /* ~Ebb mruga do ciebie i pokazuje żebyś się zbliżył. "Śmiałku przebyłeś długą i trudną drogę, ale jestem tu by ją uprościć. Jesteś ze mną?"~ */
  IF ~~ THEN REPLY #56874 /* ~"Ebb co robisz w towarzystwie Anarchistów? Myślałem, że jesteś z Harmonium."~ */ GOTO 76
  IF ~~ THEN REPLY #56875 /* ~"Powiedz mi."~ */ GOTO 72
  IF ~~ THEN REPLY #56876 /* ~"Nie. Szpicuj się."~ */ GOTO 75
END

IF ~~ THEN BEGIN 59 // from: 53.0 54.0 63.0
  SAY #56877 /* ~Schyla się na ile pozwala mu brzuch. "Jak widzisz... skład pełen spiskowców. Tutaj stary porządek się rozpada, uważamy, że jego pozostałości powinny zostać zniesione, a ludzie obdarzeni nową wolnością. Widzisz, niebezpieczna z nas grupa."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #56878 /* ~"Ludzie nie zaznają wolności jeśli zostaną zabici przez potwory, które pustoszą miasto."~ */ GOTO 64
  IF ~~ THEN REPLY #56879 /* ~"Jesteś pewien, że to najlepszy moment, by to zrobić?"~ */ GOTO 67
  IF ~~ THEN REPLY #56880 /* ~"Nie aż tak niebezpieczny jak ja. Pozwól, że ci pokażę." Zaatakuj ich.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #56881 /* ~"Nie będziemy mieli więcej chaosu w tym mieście."~ */ GOTO 68
END

IF ~~ THEN BEGIN 60 // from: 53.1 54.1 55.0 56.0
  SAY #56882 /* ~"Dlaczego pytasz? Spiskujemy i knujemy, mój przyjacielu. Teraz, gdy porządek w mieście został obalony mamy... unikalną... szansę, aby ludzie poznali nasz punkt widzenia. Odpowiadam za tę małą bandę awanturników - oczywiście tylko jako dowódca!"~ */
  IF ~~ THEN REPLY #56884 /* ~"Co konkretnie planujecie?"~ */ GOTO 66
  IF ~~ THEN REPLY #56885 /* ~"Co masz na myśli?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 53.2 54.2 55.1 56.1
  SAY #56886 /* ~"Szukasz sprzymierzeńców przeciwko chaosowi? Ale my chcemy powiększyć chaos, odrzucić stary porządek, upewnić się, że stary schemat się nie powtórzy. W końcu to nasze zadanie..."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #56887 /* ~"Możliwe, że to właśnie powinniśmy robić, ale nie popieramy niszczenia jako takiego. Niszczymy, by inni mogli odbydowywać. Z Klątwy nic nie zostanie, jeśli sytuacja się utrzyma."~ */ GOTO 64
  IF ~~ THEN REPLY #56888 /* ~"Dlaczego chcesz wzmocnić chaos? Miasto już jest w Tartarze, a teraz jego mieszkańcy są pożerani."~ */ GOTO 66
  IF ~~ THEN REPLY #56889 /* ~"Więc muszę cię powstrzymać. Przygotuj się na śmierć."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 53.3 55.2 60.1
  SAY #56890 /* ~"Mój przyjacielu, jestem Ebb Skrzypiący, uprzednio Trzeci Narzędnik Harmonium, a obecnie przywódca tej komórki Ligi Rewolucyjnej. Mam nadać jej kształt i przygotować miasto do odrzucenia starego porządku."~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #56891 /* ~"Stary porządek został całkiem skutecznie usunięty."~ */ GOTO 64
  IF ~~ THEN REPLY #56893 /* ~"Jesteś Anarchistą? W takim razie trzeba cię powstrzymać."~ */ GOTO 69
  IF ~~ THEN REPLY #56896 /* ~"I co zamierzasz zrobić z tym miastem?"~ */ GOTO 66
  IF ~~ THEN REPLY #56897 /* ~"W takim razie wychodzę."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 53.4 54.3 62.3
  SAY #56898 /* ~"Wychodzisz? Ale, mój przyjacielu, nie możesz. Widzisz, teraz, gdy zobaczyłeś nasze twarze, nie możemy pozwolić ci stąd odejść."~ */
  IF ~~ THEN REPLY #56899 /* ~"Co masz na myśli?"~ */ GOTO 59
  IF ~~ THEN REPLY #56900 /* ~"Chciałbym zobaczyć jak próbujesz mnie zatrzymać."~ */ GOTO 69
END

IF ~~ THEN BEGIN 64 // from: 59.0 61.0 62.0 66.0 68.0 69.0 70.0
  SAY #56901 /* ~Jego pewność siebie znika na chwilę. "Co masz na myśli?"~ */
  IF ~~ THEN REPLY #56902 /* ~"Mam na myśli to, że gdy wy spiskujecie nad obaleniem rządu, do Klątwy przybyło zło i niszczy to, co pozostało z miasta."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 67.0
  SAY #56903 /* ~"Ale... musimy coś zrobić! Jeśli oni wszyscy zginą, cała nasza praca pójdzie na marne!" Odwraca się do towarzyszy. "Musimy iść, bo cała nasza praca pójdzie na marne! Chodźcie!" Biegnie do drzwi.~ */
  IF ~~ THEN REPLY #61567 /* ~"Powodzenia..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 60.0 61.1 62.2
  SAY #56905 /* ~"Kiedy ludzie zobaczą, że ich przywódcy zawiedli, to istnieją spore szanse, że zgniotą struktury władzy, które ich represjonowały i stworzą coś nowego, pięknego. My im pomożemy."~ */
  IF ~~ THEN REPLY #56906 /* ~"Och, a więc pomożesz w walce z biesami?"~ */ GOTO 64
  IF ~~ THEN REPLY #56907 /* ~"W jaki sposób chcesz stworzyć z tego coś pięknego?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 59.1
  SAY #56908 /* ~"Co konkretnie masz na myśli?"~ */
  IF ~~ THEN REPLY #56909 /* ~"Mam na myśli to, że gdy wy spiskujecie nad obaleniem rządu, do Klątwy przybyło zło i niszczy to, co pozostało z miasta."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
  IF ~~ THEN REPLY #56910 /* ~"To nie jest najlepsza chwila."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 59.3 67.1
  SAY #56911 /* ~"Przyjacielu, chaos uratuje to miasto. Po przechyleniu do Tartaru jest oczywiste, że to najbardziej popularna opinia w mieście."~ */
  IF ~~ THEN REPLY #56912 /* ~"Tak i wygląda na to, że zło jest także jego częścią. Musimy wydostać stąd miasto, zanim wszyscy zginiemy."~ */ GOTO 64
  IF ~~ THEN REPLY #56913 /* ~"A więc popierasz to, co się tu dzieje?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 57.1 62.1 63.1 71.0 71.1
  SAY #56914 /* ~"Przyjacielu, nie sprawia mi to żadnej przyjemności... ale muszę, musimy upewnić się, że to miasto nie odbuduje korupcji poprzedniej administracji." Macha rękami do współkonspiratorów. "Brać ich."~ */
  IF ~~ THEN REPLY #56915 /* ~"Dlaczego to robisz? Nie widzisz, że miasto się rozpada? I wcale nie chcę powiedzieć, że we właściwy sposób."~ */ GOTO 64
  IF ~~ THEN REPLY #56916 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.1
  SAY #56917 /* ~Wzdycha niecierpliwie. "Chodzi o to, że gdy korupcja w tym mieście zostanie wycięta, jak zgnilizna z jabłka, na jego ruinach może wyrosnąć coś nowego. Będzie jak pożoga w miejskiej administracji. Cha, cha."~ */
  IF ~~ THEN REPLY #56918 /* ~"Pożoga faktycznie się rozprzestrzenia."~ */ GOTO 64
  IF ~~ THEN REPLY #56919 /* ~"A więc popierasz to co się tu dzieje?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 68.1 70.1
  SAY #56920 /* ~"Niewątpliwie, przyjacielu. Niewątpliwie."~ */
  IF ~~ THEN REPLY #56921 /* ~"W takim wypadku nie mamy sobie nic do powiedzenia. Żegnaj."~ */ GOTO 69
  IF ~~ THEN REPLY #56922 /* ~"W takim razie będę musiał cię zabić, by przywrócić Klątwę na właściwe miejsce."~ */ GOTO 69
END

IF ~~ THEN BEGIN 72 // from: 57.0 58.1
  SAY #56923 /* ~Pochyla się do przodu, by wyszeptać ci do ucha. "Wiem kim jesteś dla Ligi Rewolucyjnej. Wiem, że zakapowałeś Anarchstów. Infiltruję ich dla Harmonium, zdradzam od środka. Musimy sprowadzić to miasto z powrotem do Zewnętrznych Krain. Jesteś ze mną?"~ */
  IF ~~ THEN REPLY #56924 /* ~"Tak."~ */ GOTO 73
  IF ~~ THEN REPLY #56925 /* ~"W żadnym wypadku."~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0 76.0
  SAY #56926 /* ~"W takim razie słuchaj. Pokażemy tym anarchistycznym bękartom na co nas stać, co? Powiedz mi, że miasto jest opanowane przez biesy. Ale zrób to głośno, by mogli usłyszeć."~ */
  IF ~~ THEN REPLY #56928 /* ~"Dobrze." Mówisz nieco głośniej. "Miasto jest opanowane przez biesy, a wy tu siedzicie i spiskujecie jak ułatwić życie ludziom w mieście. Jeżeli naprawdę chcecie zdobyć ich serca, na początek moglibyście im pokazać, że wam na nich zależy. Idźcie ich uratować."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56929 /* ~Ebb mruga do ciebie i odwraca się nieco, by inni Anarchiści mogli zobaczyć jego twarz. "Ależ musimy coś zrobić! Jeśli oni wszyscy zginą, to cała nasza praca pójdzie na marne!" Odwraca się do towarzyszy. "Musimy iść, inaczej cała nasza praca pójdzie na marne! Chodźcie!" Biegnie do drzwi.~ */
  IF ~~ THEN REPLY #56930 /* ~"Powodzenia."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 58.2 72.1 76.1
  SAY #56931 /* ~"W takim razie nie zostawiasz mi wyboru. Jeśli nie jesteś częścią rozwiązania, jesteś częścią problemu." Odwraca się do swych kompanów. "Zdradzi nas, jeśli tylko będzie miał okazję. Brać go."~ */
  IF ~~ THEN REPLY #56932 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 58.0
  SAY #56933 /* ~Pochyla się jeszcze bardziej, smród jego fajki jest przytłaczający, szepce, "Jestem agentem. Potrójnym. Agentem Harmonium infiltrującym Anarchistów udając, że jestem podwójnym agentem Harmonium. By wejść, trzeba być znacznie bardziej przebiegłym niż te trepy, a wciąż nie jestem pewien, czy jestem spalony czy nie. Wiec... pomożesz mi, bym ja ci pomógł?"~ */
  IF ~~ THEN REPLY #56934 /* ~"Co mam zrobić?"~ */ GOTO 73
  IF ~~ THEN REPLY #56935 /* ~"Nie mogę tego zrobić."~ */ GOTO 75
END
