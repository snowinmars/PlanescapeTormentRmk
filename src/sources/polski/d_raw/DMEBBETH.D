// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMEBBETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMEBBETH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 2 87 88 123 even though they appear after this state */
~  Global("Mebbeth","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1801 /* ~Ta przysadzista starsza kobieta wygląda, jakby uszedł z niej całkowicie kolor. Wszystko - włosy, szal, ubranie, jest w odcieniu szarości. Jedyne miejsca mające inny kolor, pochodzą od jakichś dziwnych ziół, które wiszą na łodygach u jej paska. Kiedy kobieta się porusza, zioła robią dziwne *szszsz*, jak miotła.~ */
  IF ~~ THEN REPLY #1802 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #23159 /* ~Zignoruj kobietę. Obejrzyj pomieszczenie.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #23160 /* ~Starsza kobieta odwraca się i zaczyna patrzyć na ciebie... zauważasz, że szare odcienie rozciągają się również na jej rysy. Jej wiotkie włosy są szare, a oczy wyglądają jak odłamki granitu. Kiedy cię spostrzega, marszczy brwi. "A kimże ty możesz być, hm?"~ */
  IF ~~ THEN REPLY #23161 /* ~"Jestem podróżnym."~ */ GOTO 3
  IF ~~ THEN REPLY #23162 /* ~"Nie wiem, kim jestem naprawdę."~ */ GOTO 8
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",0)
~ THEN REPLY #23163 /* ~Kłamstwo: "Nazywam się Adahn. Kim ty jesteś?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mebbeth_1","GLOBALLaw",-1)
~ GOTO 9
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",1)
~ THEN REPLY #23164 /* ~Kłamstwo: "Nazywam się Adahn. Kim ty jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #23165 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 87 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #23166 /* ~Kiedy wchodzisz, Mebbet odwraca się i patrzy sceptycznym okiem. "Twa ścieżka znowu doprowadziła cię tutaj, co, dziecko...?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23167 /* ~"Znalazłem handlarza owoców na targu."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23168 /* ~"Wróciłem z tymi ziołami, które chciałaś... teraz może ściągnęłabyś mi z nadgarstka tę przeklętą opaskę z jeżyn."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23169 /* ~"Przyniosłem ci twoje pranie... Wydaje mi się, że Giskorl trochę przesadził z tym rytuałem czyszczenia."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23170 /* ~"Tak, mam kilka pytań do ciebie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23171 /* ~"Tak, potrzebuję leczenia."~ */ GOTO 12
  IF ~~ THEN REPLY #23172 /* ~"Przyszedłem kupić od ciebie trochę lekarstw i amuletów..."~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23173 /* ~"Mógłbym tu odpocząć?"~ */ GOTO 41
  IF ~~ THEN REPLY #23174 /* ~"Nie, wróciłem tylko, żeby cię sprawdzić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #23175 /* ~"Czyżby? A *skąd* tedy wędrujesz?"~ */
  IF ~~ THEN REPLY #23176 /* ~"Do królestwa śmierci i z powrotem, jak myślę."~ */ GOTO 4
  IF ~~ THEN REPLY #23177 /* ~"Z Kostnicy przez Ul, aż tu."~ */ GOTO 5
  IF ~~ THEN REPLY #23178 /* ~"Tu i tam... wiele miejsc, naprawdę."~ */ GOTO 7
  IF ~~ THEN REPLY #23179 /* ~"To nie jest ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23180 /* ~Kobieta pluje raz... dwa razy... trzy razy, następnie robi ręką półokrąg nad swoim sercem. "Miej baczenie na to co mówisz dziecko i módl się, żeby jedna z Mocy Śmierci nie poczuła się dotknięta twoimi słowami."~ */
  IF ~~ THEN REPLY #23181 /* ~"Rozumiem. Kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #23182 /* ~"Będę o tym pamiętał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #23183 /* ~"Ha! Bladolicy z kostnicy, ich jedynym zmartwieniem jest dbanie o to, by wszyscy truposze byli tam, gdzie ich miejsce. Uchh! Grabarze i głupcy - dwa słowa, a znaczą to samo." Rysy kobiety robią się nagle bez wyrazu, a oczy przewracają w tył głowy.~ */
  IF ~~ THEN REPLY #23184 /* ~"Dobrze się czujesz?"~ */ GOTO 6
  IF ~~ THEN REPLY #23185 /* ~"Och... przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23186 /* ~Kobieta zaczyna mamrotać kpiącym tonem. "Ja żem jes Grabarz. Ja chcem umrzeć, bo to życie to imitacja." Oczy migają z powrotem do przodu, parska. "Grabarze! Nic nie wiedzą i za nic rozsądku nie mają!" Wskazuje na ciebie palcem. "Twoje życie dobiega końca, dziecko, miejsc, gdzie można się udać, jest niewiele, albo wcale ich nie ma."~ */
  IF ~~ THEN REPLY #23187 /* ~"Rozumiem. Kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #23188 /* ~"Och... przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #23189 /* ~"Ach..." Kiwa do siebie głową. "Jednak z wszystkich miejsc, które są na mapie twej wędrówki, wybór padł na me drzwi, tak?" Parska. "Co za szczęście mnie spotkało."~ */
  IF ~~ THEN REPLY #23190 /* ~"Kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #23191 /* ~"Och... przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #23192 /* ~"Więc nie wiesz kim jesteś, dziecko?" Patrzy przez zmrużone oczy i wskazuje na twoją pierś. "Trudno wewnątrz pozbierać się człowiekowi, którego ciało od blizn, wygląda jak ornamenty albo gryzmoły, prawda?"~ */
  IF ~~ THEN REPLY #23193 /* ~"Może... kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #23194 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 4.0 6.0 7.0 8.0
  SAY #23195 /* ~Porusza brwiami, rechocąc szelmowsko. "Nie wiesz nic tedy o Starej Mebbet, znachorce z Placu? A teraz, też nie?" Mruży oczy i zniża głos. "Tedy już wiesz, bo to *ja* jestem Mebbet."~ */
  IF ~~ THEN REPLY #23196 /* ~"Jesteś znachorką? Czym się zajmujesz?"~ */ DO ~SetGlobal("Mebbeth","GLOBAL",1)
~ JOURNAL #22703 /* ~Spotkałem starą kobietę, Mebbet, znachorkę na Placu Szmaciarzy. Wydawała się lekko szalona... jak zresztą wszyscy w tej okolicy.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23197 /* ~"Nastawiam kości, wypędzam z chorych kaszel, wydzieram piszczące, uparte niemowlaki, ceruję płaszcze albo jakieś łachy, przygotowuję lekarstwa i zioła, takie tam rzeczy. Patrzy na ciebie przez zmrużone oczy, przyglądając się uważnie twoim bliznom. "Potrzebujesz chyba jakiegoś lekarstwa, albo nawet ze trzech, co?"~ */
  IF ~~ THEN REPLY #23198 /* ~"Lekarstwa?"~ */ GOTO 11
  IF ~~ THEN REPLY #23199 /* ~"Nie, dziękuję. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23200 /* ~"Ano, trza ci parę lekarstw, jeśli chcesz jeszcze na siebie spojrzeć. Chcesz kupić parę, co...?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23201 /* ~"Właściwie, *mógłbym* skorzystać z leczenia..."~ */ GOTO 12
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23202 /* ~"Właściwie, *moglibyśmy* skorzystać z leczenia..."~ */ GOTO 12
  IF ~~ THEN REPLY #23203 /* ~"Nie potrzebuję teraz żadnych lekarstw, ale mogłyby się przydać później. Czy mógłbym zobaczyć, co masz?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23204 /* ~"Właściwie, mógłbym skorzystać z miejsca do spania. Masz coś przeciwko, żebym się tu przespał?"~ */ GOTO 41
  IF ~~ THEN REPLY #23205 /* ~"Nie w tej chwili. Mam do ciebie pytanie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23206 /* ~"Rozumiem. Muszę już iść. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 11.0 11.1 17.3 87.2 88.3
  SAY #23207 /* ~Mebbet potakuje głową. "Bardzo dobrze." Sięga po jedno z wysuszonych ziół u jej paska, przycina przy łodydze i uciera w swoich stwardniałych dłoniach. Mała smuga kurzu i pyłku unosi się z jej rąk. Wtedy mamrocze coś do siebie, po czym dmucha kurz w powietrze...~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23208 /* ~Weź głęboki oddech.~ */ DO ~FullHeal(Protagonist)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbet zaoferowała się za darmo wyleczyć moje rany... dobrym pomysłem byłoby wracać do niej za każdym razem gdy będę potrzebował pomocy.~ */ GOTO 13
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23209 /* ~Weź głęboki oddech.~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbet zaoferowała się za darmo wyleczyć moje rany... dobrym pomysłem byłoby wracać do niej za każdym razem gdy będę potrzebował pomocy.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #23210 /* ~Szary pyłek wiruje po pomieszczeniu, wdychasz go głęboko... i po krótkiej chwili, czujesz dziwne orzeźwienie.~ */
  IF ~~ THEN REPLY #23211 /* ~"Dziękuję, Mebbet. Zanim odejdę, mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23212 /* ~"Dziękuję, Mebbet... czuję się znowu dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #23213 /* ~Szary pyłek wiruje po pomieszczeniu, osiadając na tobie i twoich towarzyszach. Wdychacie go głęboko... i po krótkiej chwili czujecie dziwne orzeźwienie.~ */
  IF ~~ THEN REPLY #23214 /* ~"Dziękuję, Mebbet. Zanim odejdę, mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23215 /* ~"Dziękuję, Mebbet... czuję się znowu dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #23216 /* ~"Chcesz jeszcze czego, dziecko?"~ */
  IF ~~ THEN REPLY #23217 /* ~"Właściwie, tak... czy mógłbym jeszcze zobaczyć, co masz?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23218 /* ~"Nie, ale mam jeszcze inne pytania do ciebie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23219 /* ~"Nie dzisiaj, Mebbet... dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.4 88.4
  SAY #23220 /* ~"Sprzedaję łachmany, i zioła, i medykamenty, i czary, i mikstury, i okłady i takie tam..." Wzrusza ramionami. "A jeśli znalazłbyś jakiś dziwny przedmiot i nie wiedziałbyś co to jest, możesz go przynieść do Mebbet... nic nie obiecuję, dziecko, ale może udałoby mi się dowiedzieć, co to za przedmiot."~ */
  IF ~~ THEN REPLY #23221 /* ~"Rozumiem. Czy mogę więc zobaczyć, co masz do sprzedania?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23222 /* ~"Dobrze. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23223 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3 11.4 13.0 14.0 15.1 16.1 18.1 19.1 20.1 21.0 22.0 23.1 24.1 25.1 26.1 27.1 29.0 30.1 31.1 32.1 33.1 34.0 36.0 37.0 39.0 45.0 46.0 47.1 48.1 49.5 53.3 54.0 57.0 58.2 60.1 61.1 62.0 72.0 79.0 80.0 87.1 88.2
  SAY #23224 /* ~"Dalej, pytaj."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #23225 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #23226 /* ~"Zginął mi dziennik. Czy wiesz, gdzie mógłbym go znaleźć?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #23227 /* ~"Czy słyszałaś kiedyś, Mebbet, o kimś kto nazywa się 'Ravela'?"~ */ GOTO 23
  IF ~~ THEN REPLY #23228 /* ~"Mógłbym skorzystać z leczenia..."~ */ GOTO 12
  IF ~~ THEN REPLY #23229 /* ~"Co tu sprzedajesz, Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #23230 /* ~"Czy mogę od ciebie kupić jakieś medykamenty?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23231 /* ~"Czy mógłbym tu odpocząć?"~ */ GOTO 41
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23232 /* ~"Odnalazłem handlarza owocami na targu."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23233 /* ~"Wróciłem z tymi ziołami, które chciałaś... teraz może ściągnęłabyś mi z nadgarstka tę przeklętą opaskę z jeżyn."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23234 /* ~"Przyniosłem ci twoje pranie... Wydaje mi się, że Giskorl za bardzo się nie spieszył z tym rytuałem czyszczenia.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23235 /* ~"Znalazłem Kossah-Dżai. Nie miała atramentu, ale za to ma go inna rybiarka... Ale nie mam w co go zabrać."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23236 /* ~"Oto atrament, o który prosiłaś."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
AddexperienceParty(1000)
DestroyPartyItem("TankardF",TRUE)
~ GOTO 81
  IF ~  Global("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
~ THEN REPLY #23237 /* ~"Jesteś czarownicą, Mebbet?"~ */ GOTO 47
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23238 /* ~"Chcę się nauczyć Sztuki, Mebbet."~ */ GOTO 49
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #23239 /* ~"Chciałbym zmienić zajęcie i skupić się na uczeniu się magii, Mebbet."~ */ GOTO 35
  IF ~~ THEN REPLY #23242 /* ~"Żadnych pytań, dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #23243 /* ~"Farod?! Ten - ten - uchh!" Widzisz, jak Mebbet pluje raz... dwa razy... trzy razy, następnie na wysokości swojego serca zatacza ręką półokrąg. "Ten prostak! Czego możesz chcieć od kogoś jego pokroju?"~ */
  IF ~~ THEN REPLY #23244 /* ~"Muszę go znaleźć. Wiesz gdzie jest?"~ */ GOTO 19
  IF ~~ THEN REPLY #23245 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23246 /* ~"Nic, mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #23247 /* ~"Nie ma go *na* Placu Szmaciarzy, mogę ci tylko tyle powiedzieć... że aby się dostać do jego leża, musisz znaleźć przejście *pod* Placem. Znowu pluje. "Samo gadanie o nim, zostawia nieprzyjemny smak w ustach, oj zostawia."~ */
  IF ~~ THEN REPLY #23248 /* ~"Jest pod Placem?"~ */ GOTO 20
  IF ~~ THEN REPLY #23249 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23250 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #23251 /* ~Stuka palcem o podłogę. "Ano, zakopał się ze swoimi chłopakami pod stertą śmieci i sporo czasu ci zajmie, żeby go wykopać z tej jego nory." Potrząsa głową. "Niech mieszaj się w to, nie mieszaj, dziecko."~ */
  IF ~~ THEN REPLY #23252 /* ~"Muszę go znaleźć. Jak tam zejść?"~ */ JOURNAL #22705 /* ~Mebbet powiedziała mi, że istnieje gdzieś na placu brama, która prowadzi do leża Faroda. Poradziła mi również, bym zapytał któregoś ze Zbieraczy jak mam tę bramę znaleźć.~ */ GOTO 21
  IF ~~ THEN REPLY #23253 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23254 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23256 /* ~Mebbet marszczy brwi, po czym wzdycha. "Słyszałam, że Farod ma wejście do swojego gniazda gdzieś tu na Placu... trzeba je tylko znaleźć. Trzeba by zapytać kogoś, kto podróżuje trochę więcej niż stara Mebbet."~ */
  IF ~~ THEN REPLY #23257 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23258 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1
  SAY #23259 /* ~Mebbet się zastanawia. "Nie widziałam go. Jeżeli jest na placu - w co wątpię, bo ludzie nie wiele handlują księgami, albo takimi rzeczami - to najprędzej go sprzedano, albo ukradziono. Czy to było dla ciebie coś ważnego? Coś magicznego, coś co, aż skrzy i jarzy się od czarów, co? Jeśli tak, to możesz już tego więcej nie zobaczyć."~ */
  IF ~~ THEN REPLY #23260 /* ~"Może nie. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23261 /* ~"Zaczyna mi się wydawać, że ja też go już nigdy nie zobaczę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #23262 /* ~"Uchh!" Mebbet syczy i zatacza okrąg nad sercem. "Co za bezsensowne rzeczy wygadujesz! Wypowiadać takie imię w *mojej* obecności!" Kiwa na ciebie palcem. "Zło, zło, mówienie takich rzeczy sprowadza zło pod czyjeś drzwi."~ */
  IF ~~ THEN REPLY #23263 /* ~"Co o niej wiesz?"~ */ GOTO 24
  IF ~~ THEN REPLY #23264 /* ~"Zatem, mniejsza z tym. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23265 /* ~"Przepraszam, nie chciałem cię obrazić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23266 /* ~"O Raveli? Uchh! Mity i historyjki do straszenia dzieci." Głos się jej zniża, jak gdyby chciała cię ostrzec. "Słuchaj, dziecko: Nie było żadnej Raveli, w ogóle... a jeśli nawet *była*, to nie musisz o tym kłapać Klatkowiczu."~ */
  IF ~~ THEN REPLY #23267 /* ~"Muszę o niej wiedzieć wszystko co wiesz, Mebbet. To ważne."~ */ GOTO 25
  IF ~~ THEN REPLY #23268 /* ~"Zatem, mniejsza z tym. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23269 /* ~"Przepraszam, nie chciałem cię obrazić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23270 /* ~Mebbet marszczy brwi... wygląda jakby nie chciała spojrzeć ci w oczy. "Złe rzeczy... złe rzeczy w imieniu..." Spogląda z powrotem na ciebie. "W dziwnym sercu wiedźmy Raveli jest wiele odcieni zła i nieprawości, które się krzyżują i wiją jak węże. Niech ci tyle wystarczy, nie mieszaj się w to, nie mieszaj!"~ */
  IF ~~ THEN REPLY #23271 /* ~"Wiesz gdzie ona jest, Mebbet? Muszę ją znaleźć."~ */ GOTO 26
  IF ~~ THEN REPLY #23272 /* ~"Zatem, mniejsza z tym. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23273 /* ~"Przepraszam, nie chciałem cię obrazić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23274 /* ~"A gdzie szukać opowieści?! Tego Mebbet nie wie!" Syczy. "A nawet gdyby wiedziała, to czy powiedziałaby ci? Nie, można by próbować wydobyć to z niej, ale ja nie chce się martwić, nie chcę..." Wydaje się mieć złamane serce. "Ale, dziecko... jeśli musisz wiedzieć, jeśli twoja ciekawość chce wypalić cię od środka, tedy... niech będzie, powiem ci."~ */
  IF ~~ THEN REPLY #23275 /* ~"Proszę... muszę ją znaleźć, Mebbet."~ */ JOURNAL #23278 /* ~Mebbet zasugerowała, że jeśli chcę znaleźć wejście do labiryntu Raveli, to powinienem porozmawiać z jednym z mędrców w Miejskim Gmachu Rozrywki w Dzielnicy Urzędników.~ */ GOTO 27
  IF ~~ THEN REPLY #23276 /* ~"Zatem, mniejsza z tym. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23277 /* ~"Aż tak bardzo mi nie zależy, żeby to wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #23279 /* ~"Ravela..." Mebbet wzdycha. "Ravela, okrutna Ravela, jest w rękach Pani, w więzieniu, labiryncie... mówi się, że jest tam od dawna, od tak bardzo dawna... ale jak tam trafić? Mebbet nie zna drogi." Wzdycha. "Zapytaj może w Gmachu Rozrywki, w Dzielnicy Urzędników. Jeden z siwobrodych tam, może będzie coś wiedział..."~ */
  IF ~~ THEN REPLY #23280 /* ~"Czy wiesz coś jeszcze o Raveli... coś co mogłabyś mi powiedzieć, zanim ją odnajdę?"~ */ GOTO 28
  IF ~~ THEN REPLY #23281 /* ~"Dziękuję... pójdę i zobaczę, co uda mi się dowiedzieć. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23282 /* ~"Pójdę więc i porozmawiam, z którymś z nich. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #23283 /* ~"Dziecko..." mówi Mebbet, jednak znużonym i łamiącym się głosem. "...jeśli szukasz zła w Sferach... nie musisz daleko iść." Kaszle. "Czarownica zna czarownicę, moc zna moc, jednak nikt nie zna dobrze ścieżek, którymi chodzi Ravela. Naucz się dobrze swych umiejętności, a kiedy coś nowego wyda ci się podejrzane, miej oczy szeroko otwarte. Ufaj sobie, ale nie jej, jasne?"~ */
  IF ~~ THEN REPLY #23285 /* ~"Dobrze. Dziękuję, Mebbet."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #23286 /* ~Mebbet wzdycha. "Nie życzę nikomu źle, prócz niej. Cieszę się, że jej nie ma, zarówno dla mnie jak i dla Klatki, tak jest lepiej. Jeszcze raz to powiem, dziecko... niech minione zło zostanie tam gdzie jest. Niech zostanie, niech zostanie."~ */
  IF ~~ THEN REPLY #23287 /* ~"Wezmę sobie twoje ostrzeżenie do serca. Mam do ciebie kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23289 /* ~"Przepraszam, Mebbet. Muszę znaleźć Ravelę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23290 /* ~"Może, gdybym miała zacząć opowieść..." Mebbet zaczyna mówić - wolno, starannie dobierając słowa. "Może zaczniemy od szarej *siostry*, która mieszkała w Sferach, na polach Szarego Pustkowia. Było to takie spokojne miejsce, oj bardzo spokojne, i to właśnie ten spokój zasiał ziarno niezgody w sercu Raveli."~ */
  IF ~~ THEN REPLY #23291 /* ~"Tak...?"~ */ GOTO 31
  IF ~~ THEN REPLY #23292 /* ~"Myślę, że słyszałem już dość. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23293 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #23294 /* ~"Zawsze musi wiedzieć *dlaczego* i *jak* i *co by było gdyby*, zawsze musi pójść o krok dalej niż można." Mebbet wzdycha. "I możliwe..."~ */
  IF ~~ THEN REPLY #23295 /* ~"I możliwe...?"~ */ GOTO 32
  IF ~~ THEN REPLY #23296 /* ~"Myślę, że słyszałem już dość. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23297 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #23298 /* ~"I możliwe, że Ravela, o której pięknie stanowi jej moc, przebiegłość i okrucieństwo, możliwe, że udała się do tego miasta, do Klatki, która niemal pali się od nadmiaru krzątaniny i myśli, ponieważ jest to miejsce, gdzie ludzie szukają rzeczy, po tylko, żeby je *poznać*."~ */
  IF ~~ THEN REPLY #23299 /* ~Słuchaj.~ */ GOTO 33
  IF ~~ THEN REPLY #23300 /* ~"Myślę, że słyszałem już dość. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23301 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #23302 /* ~"Jednak samo poznanie *nie wystarczyło* na jedną z mocy Raveli, tak wielu... tak wielu zadano ból, a Klatka, to miasto, aż się trzęsło od jej wymagań i potrzeb. Tyle zła..." Nakreśla półokrąg nad sercem. "Ravela wyrządziła tyle zła... brakuje mi słów, żeby je całe wypowiedzieć. Została wrzucona, do labiryntu..."~ */
  IF ~~ THEN REPLY #23303 /* ~Słuchaj.~ */ GOTO 34
  IF ~~ THEN REPLY #23304 /* ~"Myślę, że słyszałem już dość. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23305 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #23306 /* ~"I możliwe, że w labiryncie też było spokojnie, tak jak w jej małej chatce na Szarym Pustkowiu, i możliwe że ten spokój i cisza, wtedy gdy nie były już niemile widziane, zakradły się do serca Raveli i ona okrutna, była znowu zadowolona." Mebbet wzdycha. "I możliwe, że tak się kończy opowieść o Raveli."~ */
  IF ~~ THEN REPLY #23307 /* ~"Rzeczywiście. Mam kilka innych pytań..."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbet opowiedziała mi historię Raveli. Była ona nocną wiedźmą na Szarym Pustkowiu, lecz ponurość tego miejsca zasiała niezadowolenie w jej umyśle. Wiedźma zwinęła swe leże i przybyła do Sigil w poszukiwaniu wiedzy - lecz tego czego się nauczyła, użyła przeciw miastu i jego mieszkańcom. Były to czyny tak niegodne i złe, że Mebbet nie potrafiła ich opisać. Ravela została ukarana przez Panią i skazana na zesłanie do labiryntu, którego cisza i spokój mogły uspokoić jej nikczemne serce.~ */ GOTO 17
  IF ~~ THEN REPLY #23308 /* ~"Dziękuję za opowieść, Mebbet. Muszę już iść. Żegnaj."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbet opowiedziała mi historię Raveli. Była ona nocną wiedźmą na Szarym Pustkowiu, lecz ponurość tego miejsca zasiała niezadowolenie w jej umyśle. Wiedźma zwinęła swe leże i przybyła do Sigil w poszukiwaniu wiedzy - lecz tego czego się nauczyła, użyła przeciw miastu i jego mieszkańcom. Były to czyny tak niegodne i złe, że Mebbet nie potrafiła ich opisać. Ravela została ukarana przez Panią i skazana na zesłanie do labiryntu, którego cisza i spokój mogły uspokoić jej nikczemne serce.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.14 49.0
  SAY #23311 /* ~"Och, znowu jesteś?" Mebbet chichocze oschle. "Bardzo dobrze, zobaczmy co jeszcze pamiętasz..."~ */
  IF ~~ THEN REPLY #23312 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ JOURNAL #23314 /* ~Mebbet wprowadziła mnie w arkana Sztuki, tak więc obecnie skupiam się na zgłębianiu magii... Będę musiał znaleźć nauczyciela walki lub fachu złodziejskiego, jeśli zechcę wrócić do poprzednich profesji.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #23316 /* ~Mebbet marszczy brwi, po czym potakuje głową. "Wystarczająco dużo pamiętasz z nauki Sztuki, wystarczająco. W centrum twojej uwagi jest teraz sztuka czarnoksiężników, - dość już walki i złodziejstwa, chyba że pomówisz z kimś innym, kto może cię nauczyć tych rzeczy."~ */
  IF ~~ THEN REPLY #23317 /* ~"Dziękuję, Mebbet. Mam kilka innych pytań do ciebie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23318 /* ~"Będę o tym pamiętał. Żegnaj, Mebbet."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23319 /* ~Mebbet potrząsa głową... trochę jakby smutno. "Nauczyłam cię wszystkiego co potrafiłam, dziecko... ta niewielka drogocenna reszta, którą pominęłam nie zainteresowała by cię. Jestem z ciebie naprawdę dumna. W rzeczy samej masz zadatki na potężnego czarodzieja."~ */
  IF ~~ THEN REPLY #23320 /* ~"Dziękuję, Mebbet. Mam kilka innych pytań do ciebie..."~ */ JOURNAL #23322 /* ~Wygląda na to, że Mebbet nie może przekazać mi więcej na temat Sztuki. Będę musiał znaleźć innych nauczycieli, którzy mają szersze pojęcie o magii.~ */ GOTO 17
  IF ~~ THEN REPLY #23321 /* ~"Miałem dobrego nauczyciela. Żegnaj, Mebbet."~ */ JOURNAL #23322 /* ~Wygląda na to, że Mebbet nie może przekazać mi więcej na temat Sztuki. Będę musiał znaleźć innych nauczycieli, którzy mają szersze pojęcie o magii.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23323 /* ~Mebbet przygląda ci się badawczo. "Chcesz zobaczyć, czego jeszcze mogę cię nauczyć? Zobaczmy, czy umiesz to, czego cię do tej pory nauczyłam... pod warunkiem, że masz tam jeszcze pod swoim czerepem jakieś miejsce, dziecko..."~ */
  IF ~~ THEN REPLY #23324 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #23326 /* ~Mebbet powiedziała, że muszę zdobyć trochę więcej doświadczenia, zanim będzie mogła nauczyć mnie coś więcej na temat Sztuki.~ */ GOTO 39
  IF ~~ THEN REPLY #23325 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #23327 /* ~Mebbet potrząsa głową. "Potrzebujesz więcej czasu w kuźni, oj potrzebujesz dziecko. Wróć kiedy trochę bardziej doświadczysz świata, wtedy zobaczymy, czy można cię nauczyć czegoś nowego."~ */
  IF ~~ THEN REPLY #23328 /* ~"W porządku, zatem. Zanim pójdę, mam kilka pytań do ciebie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23330 /* ~"Wrócę kiedy zdobędę więcej doświadczenia. Żegnaj, Mebbet."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #23332 /* ~Mebbet potakuje głową. "Ano, wydaje mi się, że masz teraz większą wiedzę. Jest jeszcze coś, czego mogę cię nauczyć, mogę... jeszcze jedną z moich receptur..."~ */
  IF ~~ THEN REPLY #23333 /* ~Zaklęcie 1: Zastraszenie~ */ EXIT
  IF ~~ THEN REPLY #23334 /* ~Zaklęcie 2: Przyjaciele~ */ EXIT
  IF ~~ THEN REPLY #23336 /* ~Zaklęcie 3: Uspokojenie~ */ EXIT
  IF ~~ THEN REPLY #23338 /* ~Zaklęcie 4: Pojmanie~ */ EXIT
  IF ~~ THEN REPLY #23339 /* ~Zaklęcie 5: Krwawy most~ */ EXIT
  IF ~~ THEN REPLY #23341 /* ~Zaklęcie 6: Irytacja~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.6 11.3 17.6 87.4 88.6
  SAY #23343 /* ~Potakuje głową. "Oczywiście, dziecko. W kącie mam całą stertę koców, które się nadadzą..."~ */
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",0)
~ THEN REPLY #23346 /* ~"Wystarczy. Dziękuję."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",1)
~ THEN REPLY #23356 /* ~"Wystarczy. Dziękuję."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",1)
~ THEN REPLY #23358 /* ~"Wystarczy. Dziękuję."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23360 /* ~Budzisz się, czując się świeżo. Mebbet kręci się po chacie, ale odwraca się słysząc, że się ruszasz. "Nie śpisz, prawda? Sądząc po twoim śnie, gotowam była pomyśleć, że nie żyjesz..." Uśmiecha się.~ */
  IF ~~ THEN REPLY #23361 /* ~"Uch... no wiesz, nic mi się nie śniło."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #23362 /* ~Mebbet wzrusza ramionami. "Nic w tym dziwnego. Większość snów jest ulotna; znika kiedy otwierasz powieki."~ */
  IF ~~ THEN REPLY #23363 /* ~"Nie, ale nie wygląda na to, że je zapomniałem... wydaje mi się, że w ogóle *nic* mi się nie śniło. To wydaje się... błędne."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #23364 /* ~Mebbet zastanawia się nad tym przez chwilę, po czym wzrusza ramionami. "Tylu ludzi, ilu sny potrafią uczynić wielkimi, tylu też, potrafią zniszczyć. Być może lepiej by było dla ciebie, nie igrać z nimi."~ */
  IF ~~ THEN REPLY #23365 /* ~"Możliwe... ale jestem innego zdania."~ */ JOURNAL #23367 /* ~Kiedy byłem w chacie Mebbet uświadomiłem sobie nagle, że nie mam snów. Nie wydaje mi się, żebym je zapominał.... Sądzę, że w ogóle nie śnię. To... nieciekawe uczucie. Lepiej się tym zajmę, kiedy będę miał okazję.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #23369 /* ~Mebbet parska. "Czy sny, czy nie sny, nie do mnie należy zmieniać naturę człowieka. Wyspałeś się?"~ */
  IF ~~ THEN REPLY #23413 /* ~"Tak, dziękuję... mam kilka innych pytań do ciebie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23414 /* ~"Tak myślę. Lepiej już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #23415 /* ~Budzisz się, czując się świeżo. Mebbet kręci się po chacie, ale odwraca się słysząc, że się ruszasz. "Nie śpisz, prawda? Dobrze ci się spało?"~ */
  IF ~~ THEN REPLY #23416 /* ~"Tak, dziękuję... mam kilka innych pytań do ciebie..."~ */ GOTO 17
  IF ~~ THEN REPLY #23417 /* ~"Tak myślę. Lepiej już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 17.12
  SAY #23418 /* ~Mebbet przygląda ci się badawczo. "Nie mówię ani kim jestem, ani kim nie jestem. A cóż takiego chcesz wiedzieć niedobry głupcze, że nachodzisz starą kobietę warcząc i węsząc za jakąś pikantną plotką?"~ */
  IF ~~ THEN REPLY #23419 /* ~"Chcę się nauczyć magii. Mogłabyś mnie nauczyć?"~ */ GOTO 48
  IF ~~ THEN REPLY #23420 /* ~"Nie ważne. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23421 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #23422 /* ~Mebbet śmieje się. "Uchh! Nie jestem nauczycielką, pełno takich w Gmachu Rozrywki! Są gdzieś inni, którzy mogliby rzucić na to cień... tracisz tylko czas ze starą Mebbet, oj tracisz."~ */
  IF ~~ THEN REPLY #23423 /* ~"Nie zgadzam się. Uważam, że miałabyś wiele do nauczenia."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #23424 /* ~"Zatem, nie ważne. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23425 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 17.13 48.0
  SAY #23426 /* ~Mebbet uważnie ci się przygląda. "Och, tak? *Dlaczego* chcesz się uczyć takich rzeczy?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #62022 /* ~"Byłem kiedyś magiem, ale zszedłem ze ścieżki Sztuki. Chciałbym podążyć nią raz jeszcze."~ */ GOTO 35
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23427 /* ~Prawda: "Bo po prostu chciałem wiedzieć."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23428 /* ~Prawda: "Bo może mi to być potrzebne, żeby rozwikłać zagadkę tego kim jestem."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23429 /* ~Prawda: "Bo potrzebuję mocy."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23431 /* ~"Moje motywy należą do mnie."~ */ GOTO 53
  IF ~~ THEN REPLY #23432 /* ~"Nie ważne. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23433 /* ~"Mniejsza z tym... muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.1 53.0
  SAY #23430 /* ~Mebbet zaczyna drwić. "To nie jest książka do gramatyki dla dzieci, ani zbiór praw ustalony przez władzę... to jest *Sztuka*, dziecko. Będę cię uczyć, ale musisz uświadomić sobie pewne rzeczy o sobie."~ */
  IF ~~ THEN REPLY #23435 /* ~"Rozumiem. Nauczysz mnie?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 51 // from: 49.2 53.1
  SAY #23438 /* ~Po chwili, Mebbet potakuje głową. "Sztuka może pomóc, ale nie musi. Nie wolno ci polegać na niej, przy rozwiązywaniu wszystkich swoich problemów." Wzdycha. "Dziecko, to tak jakbyśmy dodali kolejny kawałek do twojego stosu pytań..."~ */
  IF ~~ THEN REPLY #23439 /* ~"Rozumiem. Nauczysz mnie?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 49.3 53.2
  SAY #23442 /* ~"Uchh! Błędne pragnienie, gdyż drabina Sztuki, zawsze będzie ci przypominała, że jest jeszcze jeden szczebel, tuż nad tobą, i że jest grupa ludzi i rzeczy, która też już na nim jest. Zawsze będzie ktoś lepszy i jeśli twa gorliwość będzie zbyt wielka, dadzą *ci* lekcję."~ */
  IF ~~ THEN REPLY #23443 /* ~"Rozumiem. To nauczysz mnie?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 49.4
  SAY #23446 /* ~"Tak? Więc, nawet jeśli masz swoje powody, tedy ja mam swoją *wiedzę*. Nie będę uczyła kogoś, kto ukrywa się przed swoim nauczycielem... tylko zło podąża taką drogą."~ */
  IF ~~ THEN REPLY #23447 /* ~Prawda: "Bardzo dobrze, chcę nauczyć się Sztuki, żeby ją po prostu znać."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #23448 /* ~Prawda: "Bo może mi to być potrzebne, żeby rozwikłać zagadkę tego kim jestem."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~~ THEN REPLY #23449 /* ~Prawda: "Chcę się nauczyć sztuki, bo potrzebuję mocy."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #23450 /* ~"Nie ważne. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23451 /* ~"Zatem, mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 59.0
  SAY #23452 /* ~"Tak, więc..." Pociąga nosem. "Jeśli nadal chcesz pobierać nauki, to dam ci jeszcze jedno zadanie. Ostatnio kiedy odchodziłeś, zapomniałam ci powiedzieć, żeby mi przynieść jedną rzecz i w tym celu będziesz musiał z powrotem udać się na plac kupców... poszukać handlarza tkanin, Giskorla. Ma parę moich łachmanów, które miał mi wyprać i minęło wiele czasu, od kiedy go o to pierwszy raz prosiłam."~ */
  IF ~~ THEN REPLY #23453 /* ~"Rozumiem... Słuchaj. Mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23454 /* ~"Mogłaś była *wspomnieć* o tym, zanim wyszedłem... w porządku, wrócę tu."~ */ EXIT
  IF ~~ THEN REPLY #23455 /* ~"Pójdę po to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 51.0 52.0
  SAY #23456 /* ~"Uchh! Mebbet potrząsa głową. "Ludzie powinni tworzyć raczej piosenki, niż magię. Piosenki mają w sobie więcej piękna. Magia jest nudna, pospolita, zepsuta przez motłoch, który brnie przez nią... hmm." Patrzy na ciebie przez zmrużone oczy. "Będę cię uczyć... ale najpierw poproszę cię, o zrobienie dla *mnie* paru rzeczy, dobrze?"~ */
  IF ~~ THEN REPLY #23457 /* ~"Na przykład co?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #23458 /* ~"Moje nogi nie nadają się już do chodzenia po Sigil, a chciałabym cię prosić o *załatwienie* paru spraw. Potrzebuję, żeby mi przynieść pewne zioła z targu... to w kierunku iglicy, na wschód i południe stąd. Masz tu próbkę..." Spod płaszcza wyciąga czarne nasienie, strząsając ci je.~ */
  IF ~~ THEN REPLY #23459 /* ~Przyjrzyj się nasieniu.~ */ DO ~GiveItemCreate("BSeed1",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",1)
~ JOURNAL #22700 /* ~Mebbet poleciła mi zanieść dziwne czarne nasionko do jednego z handlarzy owocami na rynku Ula i zabrać od niego jakieś zioła. Powiedziała, że rynek jest kilka przecznic na południowy wschód od jej chaty.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #23460 /* ~Obracasz to czarne nasienie w ręce... i czujesz lekkie ukąszenie, po czym mała kropelka krwi wycieka ci z palca... na nasieniu są drobniutkie wąsy, jak zęby. Mebbet parska. "Ostrożnie z tym... pokaż je jednemu z handlarzy owoców na targu, on będzie wiedział jakich ziół szukasz."~ */
  IF ~~ THEN REPLY #23461 /* ~"W porządku. Ale zanim odejdę, mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23462 /* ~"Dobrze, więc. Wrócę, kiedy zdobędę zioła."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 2.0 17.7
  SAY #23463 /* ~"Tak? Masz zioła, które chciałam?"~ */
  IF ~  !Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23464 /* ~"Jeszcze nie, Mebbet. Powiedział, że nie może mi pomóc... że muszę znaleźć ogrodnika."~ */ GOTO 60
  IF ~  Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23465 /* ~"Jeszcze nie, Mebbet. Powiedział, że nie może mi pomóc... że muszę znaleźć ogrodnika."~ */ GOTO 59
  IF ~~ THEN REPLY #23466 /* ~"Nie, właściwie to ma kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23467 /* ~"Ciągle nad tym pracuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #23468 /* ~Mebbet wzdycha. "Nic nie poradzimy, jak sądzę." Chrząka. "Cóż, nie ważne, dziecko, nie ważne. Zobaczę, czy uda mi się wyhodować coś z jednego z moich starych nasion, to jednak, zabierze trochę czasu. Wydaje mi się, że powinnam jeszcze mieć ze dwa..."~ */
  IF ~~ THEN REPLY #23469 /* ~"No dobrze..."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
SetGlobal("Mebbeth_Fail","GLOBAL",1)
~ JOURNAL #23471 /* ~Mebbet chce, żebym przyniósł jej pranie od sprzedawcy materiału na rynku, gościa o imieniu Giskorl. Szkoda, że nie pamiętała o tym wcześniej kiedy poszedłem po te jej zioła...~ */ GOTO 54
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #23472 /* ~Mebbet chrząka. "Obiboki... dawniej, ludzie dostarczali składników, a nie wymówek..."~ */
  IF ~~ THEN REPLY #23473 /* ~"Więc co trzeba zrobić?"~ */ GOTO 61
  IF ~~ THEN REPLY #23474 /* ~"Tak mi się wydaje. Tak czy owak, mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23475 /* ~"Powęszę jeszcze trochę po okolicy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #23476 /* ~Mebbet wzdycha. "Wydaje mi się, że musisz poszukać ogrodnika." Przygryza wargę.~ */
  IF ~~ THEN REPLY #23477 /* ~"Gdzie?"~ */ GOTO 62
  IF ~~ THEN REPLY #23478 /* ~"Zatem, dobrze. Słuchaj, mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23479 /* ~"Zatem powęszę jeszcze trochę po okolicy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #23480 /* ~Marszczy brwi. "Tak dawno nie wychodziłam z chaty, dziecko. Nie wiem, gdzie można znaleźć ogrodnika... jeśli jednak chcesz nauczyć sie Sztuki, będziesz musiał się nauczyć być wytrwałym, więc *szukaj*. Musi być gdzieś w Ulu."~ */
  IF ~~ THEN REPLY #23481 /* ~"Bardzo dobrze... ale zanim pójdę, mam do ciebie kilka pytań."~ */ GOTO 17
  IF ~  Global("Mourns","GLOBAL",0)
~ THEN REPLY #23482 /* ~"Pójdę zatem i poszukam."~ */ EXIT
  IF ~  GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #23483 /* ~"Może Opłakujący Drzewa będzie mógł mi pomóc... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 2.1 17.8
  SAY #23484 /* ~"Doprawdy?" Mebbet patrzy na kolce na twoim nadgarstku. "Skoro tak, to *pomyśl* to sobie."~ */
  IF ~~ THEN REPLY #23485 /* ~Zrób tak.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
GiveExperience(Protagonist,500)
~ JOURNAL #23487 /* ~Mebbet chce, żebym przyniósł jej pranie od sprzedawcy materiału na rynku, gościa o imieniu Giskorl. Szkoda, że nie pamiętała o tym wcześniej kiedy poszedłem po te jej zioła...~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #23486 /* ~Skrzypiąc i trzaskając, czarne kolczaste gałązki odwijają się z twojego nadgarstka tworząc uplecioną kulę; wygląda to jak gniazdo martwych czarnych węży. Mebbet parska. "Wyobraź to sobie w ramce, albo czymś takim, czymś o większej strukturze, a mniejszej ilości kątów."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23488 /* ~Spróbuj sobie wyobrazić kolczastą kulę w ramce.~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23489 /* ~Wyobraź sobie kolczastą kulę w ramce.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23490 /* ~Skoncentruj się na kolczastej kuli, a potem wyobraź ją sobie jako ramkę..~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #23503 /* ~Wyobraź sobie kolczastą kulę w ramce.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #23505 /* ~Skoncentruj się na kolczastej kuli, a potem wyobraź ją sobie jako ramkę..~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #23535 /* ~Koncentrujesz się przez chwilę i próbujesz wyobrazić ramkę... z kuli dochodzi skrzypienie i trzaski, otwierasz oczy; kula zniekształca się w dziwaczną kostkę, z wszystkimi kolcami zwróconymi na zewnątrz. Ktokolwiek próbowałby ją teraz podnieść, pociął by sobie ręce na wstążki."~ */
  IF ~~ THEN REPLY #23536 /* ~"Uch..."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #23538 /* ~Mebbet parska. "Może lepiej spróbuj jeszcze raz."~ */
  IF ~~ THEN REPLY #23540 /* ~Weź oddech, skoncentruj się i spróbuj jeszcze raz.~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #23541 /* ~Kula z gałązek skrzypi, gałązki się wyginają i skręcają, do momentu kiedy wyginają się w prymitywną ramkę, z bokami o długości dwóch dłoni.~ */
  IF ~~ THEN REPLY #23542 /* ~"Co ty na to?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #23544 /* ~Mebbet, przez chwilę, patrzyła na ramkę krytycznym okiem, po czym potakuje głową. "Dość kwadratowa." Bierze ramkę i uważnie się jej przygląda. "Będzie dobra... będzie dobra."~ */
  IF ~~ THEN REPLY #23546 /* ~"To po to, to wszystko?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 64.1 64.3
  SAY #23548 /* ~Kula z gałązek skrzypi, gałązki się wyginają i skręcają, do momentu kiedy wyginają się w małą ramkę, z bokami o długości dwóch dłoni. Niemal nieświadomie, wyobrażasz sobie kolce z tyłu ramki, tak że z łatwością przyczepiają się do ściany.~ */
  IF ~~ THEN REPLY #23549 /* ~"Co ty na to?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 64.2 64.4
  SAY #23550 /* ~Kula z gałązek skrzypi, gałązki się wyginają i skręcają, do momentu kiedy wyginają się w małą ramkę, z bokami o długości dwóch dłoni. Niemal nieświadomie, wyobrażasz sobie kolce z tyłu ramki, tak że z łatwością przyczepiają się do ściany... a następnie, przemieszczasz pozostałą cześć kolców do wnętrza ramki, w taki sposób, że można ją podnieść za krawędzie.~ */
  IF ~~ THEN REPLY #23551 /* ~"Co ty na to?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 69.0 70.0
  SAY #23552 /* ~Mebbet patrzy przez chwilę na ramkę, po czym rechocze. "Ha! Dość kwadratowa, zaiste! Dobra robota, dziecko, dobra robota." Podnosi ramkę i bacznie się jej przygląda. "W zupełności wystarczy."~ */
  IF ~~ THEN REPLY #23553 /* ~"To po to, to wszystko?~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 68.0 71.0
  SAY #23554 /* ~"Tak, to wystarczy..." Pociąga nosem. "Tak, ale jest jedna rzecz, o której, na odchodnym, zapomniałam ci powiedzieć, żeby przynieść. Znaczy to, że znowu będziesz musiał pójść na plac kupców, znowu... poszukać handlarza tkanin, Giskorla. Ma parę moich łachmanów, które miał mi wyprać i minęło wiele czasu, od kiedy go o to pierwszy raz prosiłam."~ */
  IF ~~ THEN REPLY #23556 /* ~"Rozumiem... Posłuchaj. Mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23558 /* ~"Mogłaś mi była *wspomnieć* o tym, zanim wyszedłem... w porządku. Wrócę tu."~ */ EXIT
  IF ~~ THEN REPLY #23559 /* ~"Pójdę po to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 2.2 17.9 87.0
  SAY #23561 /* ~Bierze od ciebie stos wykrochmalonych na zielono łachmanów i przygląda się krytycznie. "W końcu nie będą się darły." Wzdycha. "Albo zaginały."~ */
  IF ~~ THEN REPLY #23562 /* ~"O co chodziło z tym handlarzem tkanin, Giskorlem. Ręce jego były całe w bliznach i wydawał się taki... wolny."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #23563 /* ~Mebbet ciągle przewraca tkaninę w rękach, uderzając o nią palcem. "Otóż, dziecko, jednym razem Sztuka może rozpalać w tobie płomień, ale innym, może cię tym płomieniem spalić."~ */
  IF ~~ THEN REPLY #23564 /* ~"To właśnie mu się przytrafiło?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #23565 /* ~Mebbet mlaska. "Możliwe. Są tacy, dla których Sztuka jest jak oddychanie. Przechadzają się w tych swoich spiczastych kapeluszach i palą te swoje śmierdzące fajki... potem są domorośli czarnoksiężnicy i sfero-tknięci włóczędzy i wróżbici i na wpół jasnowidze i znachorki, które ze Sztuką mają ledwie do czynienia... i te mają najgorzej."~ */
  IF ~~ THEN REPLY #23567 /* ~"I Giskorl był jednym z nich?"~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #23568 /* ~Mebbet potakuje głową. "Tak... jak gdyby. W pewnym sensie jest taki sam jak był. Przywiązany do zwyczaju i rytuału, taki był." Wykłada sztywne łachy; kiedy kładzie je na podłodze, słychać *ciężki głuchy odgłos*. "Ano, teraz ostatnia rzecz, jakiej będę chciała od ciebie, dziecko..."~ */
  IF ~~ THEN REPLY #23569 /* ~"Lepiej, żebym nie musiał wracać z powrotem na targ, Mebbet."~ */ GOTO 77
  IF ~~ THEN REPLY #23570 /* ~"Oczywiście. Czego potrzebujesz?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #23571 /* ~"Och? A nawet jeśli, dziecko?!" Mebbet prostuje się i spogląda na ciebie. Nawet gdy jest wyprostowana, głowa jej ledwie sięga twoich ramion.~ */
  IF ~~ THEN REPLY #23572 /* ~"Mebbet, chodzenie po te wszystkie rzeczy tam i z powrotem na targ, to strata czasu; czy nie mogłabyś poświęcić chwilki i pomyśleć o wszystkim, zamiast wysyłać mnie w tej samej sprawie *trzy* razy."~ */ GOTO 78
  IF ~~ THEN REPLY #23574 /* ~"Chciałem tylko powiedzieć, że skoro nie umiesz pozbierać myśli co do tego, czego w końcu chcesz z tego targu, to wątpię, żebyś mogła mnie wiele nauczyć o magii."~ */ GOTO 78
  IF ~~ THEN REPLY #23575 /* ~"Mniejsza z tym. Czego potrzebujesz?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #23577 /* ~Mebbet nadyma się, a twarz robi się jej czerwona jak burak. "Och, tak? Takie są twoje odczucia w tej kwestii? Jeśli tak, tedy odejdź! Mówię ci, nie będę traciła czasu na oświecanie takiego oślego czerepu jak twój."~ */
  IF ~~ THEN REPLY #23578 /* ~"Nie, załatwię ci twoje sprawy... tylko powiedz mi; czy jest jeszcze coś, co chciałabyś, żebym ci stamtąd przyniósł?"~ */ GOTO 79
  IF ~~ THEN REPLY #23580 /* ~"W porządku, w porządku. Mówiłem w pośpiechu. Czego potrzebujesz?"~ */ GOTO 79
  IF ~~ THEN REPLY #23581 /* ~"Dobrze, odchodzę. Żegnaj."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.1 77.2 78.0 78.1
  SAY #23583 /* ~"Tylko tyle: Potrzebuję trochę atramentu, żeby zapisać pewne składniki w jednej z moich książek kucharskich. Poproszę cię, byś przyniósł go od jednej z handlarek. Nazywa się Kossah-Dżai."~ */
  IF ~~ THEN REPLY #23584 /* ~"Bardzo dobrze. Pójdę zobaczyć, czy uda mi się ją znaleźć, ale najpierw mam kilka pytań..."~ */ JOURNAL #23587 /* ~Mebbet chce mnie wysłać z *kolejnym* cholernym zadaniem... znowu mam wrócić na rynek i przynieść trochę atramentu. Powiedziała, żebym porozmawiał z kobietą o imieniu Kossah-Dżai. To chyba jedyna handlarka, z którą jeszcze nie rozmawiałem.~ */ GOTO 17
  IF ~~ THEN REPLY #23585 /* ~"Zatem, w porządku... odchodzę. Żegnaj."~ */ JOURNAL #23587 /* ~Mebbet chce mnie wysłać z *kolejnym* cholernym zadaniem... znowu mam wrócić na rynek i przynieść trochę atramentu. Powiedziała, żebym porozmawiał z kobietą o imieniu Kossah-Dżai. To chyba jedyna handlarka, z którą jeszcze nie rozmawiałem.~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 17.10 88.0
  SAY #23589 /* ~"Nie można było przynieść garnuszka, albo miski, albo kufla, albo czegoś od jakiegoś innego kupca?"~ */
  IF ~~ THEN REPLY #23590 /* ~"Mógłbym. Zapytam innego z kupców, ale wcześniej mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23592 /* ~"Myślę, że mógłbym... och, dobrze, idę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 17.11 88.1
  SAY #23595 /* ~Mebbet bierze od ciebie kufel z atramentem, po czym go wącha. "Pierwszorzędny atrament, świeżutki, ano..." Potakuje głową. "Dobra robota, dziecko. Wszystko o co prosiłam. Zapytam cię zatem raz jeszcze: po tym wszystkim co zobaczyłeś, chcesz dalej uczyć się sztuki?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23596 /* ~"Po tym wszystkim, co zobaczyłem? Co masz na myśli?"~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23597 /* ~"Tak, chcę."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23598 /* ~"Tak. W końcu celem, jaki przyświecał tym twoim sprawunkom, było sprawdzenie mojej wytrwałości, czyż nie?"~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23600 /* ~"Tak. W końcu celem, jaki przyświecał tym twoim sprawunkom, było sprawdzenie mojej wytrwałości, czyż nie?"~ */ GOTO 82
  IF ~~ THEN REPLY #23601 /* ~"Nie, wydaje mi się, że Sztuka nie jest dla mnie. Żegnaj, Mebbet."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.2 81.3
  SAY #23604 /* ~Mebbet uśmiecha się, po czym potakuje głową. "Tak... możliwe, dziecko, możliwe."~ */
  IF ~~ THEN REPLY #23605 /* ~"I to nie wszystko; wiedziałaś z kim muszę się spotkać, żeby załatwić każdą ze spraw, czyż nie?~ */ GOTO 83
  IF ~~ THEN REPLY #23607 /* ~"Bardzo dobrze. Nadal chcę nauczyć się Sztuki."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #23609 /* ~Mebbet znowu potakuje głową, tym razem wolniej. "Możliwe, dziecko, możliwe... nawet jeśli, to co twoje zmysły mówią ci o nich?"~ */
  IF ~~ THEN REPLY #23611 /* ~"Opłakujący Drzewa pokazał mi, że moje przekonania oddziałują na otaczający mnie świat, Giskorl nauczył mnie, że rytuał jest stratą czasu, jeśli nie ma się na uwadze jego celu, Meir'am nauczyła mnie, że bez względu na to ile mi się wydaje, że wiem, wciąż jest jeszcze wiele, czego mogę się nauczyć z oczu innych."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #23612 /* ~Mebbet milczy przez chwilę, po czym podchodzi wolno do ciebie i dotyka cię w policzek. "Och, dziecko..." Wzdycha. "Kiedyś zostaniesz potężnym czarnoksiężnikiem, z pewnością. Poznałeś już Sztukę, a jednak... jesteś u Starej Mebbet po pomoc, nie inaczej. Czegóż znachorka mogłaby nauczyć kogoś takiego?"~ */
  IF ~~ THEN REPLY #23613 /* ~"Sporo, Mebbet. Chcę się nauczyć wszystkiego co musisz mnie nauczyć."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 89
END

IF ~~ THEN BEGIN 85 // from: 81.0
  SAY #23614 /* ~"Czy z tego wszystkiego co widziałeś... nauczyłeś się czegoś?"~ */
  IF ~~ THEN REPLY #23615 /* ~"Nauczyłem się, że muszę chętnie znosić wiele twoich zachcianek, jeśli chcę cokolwiek od ciebie wydostać."~ */ GOTO 86
  IF ~~ THEN REPLY #23616 /* ~"Cóż, pewnych rzeczy. Nic takiego, co naprawdę mógłbym skomentować... prócz tego, że chce się nauczyć Sztuki."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23619 /* ~Mebbet śmieje się. "I tak samo jest ze Sztuką, dziecko, tak samo jest ze Sztuką. W jej imię trzeba będzie załatwić wiele sprawunków, wiele z nich będzie się wydawać bez sensu. Czy wiedząc to, nadal chcesz się uczyć?"~ */
  IF ~~ THEN REPLY #23621 /* ~"Tak."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF WEIGHT #2 /* Triggers after states #: 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",3)
GlobalLT("Mebbeth_Quest","GLOBAL",6)
Global("Mebbeth_Fail","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #23623 /* ~Mebbet wydaje się być pochłonięta obracaniem zrobionej przez ciebie, czarnej ramki... prostuje krawędzie i odłamuje niektóre kolczaste odrosty z gałązek. Nagle zauważa cię i kładzie ramkę. "Tak, dziecko?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23624 /* ~"Przyniosłem ci twoje pranie... Wydaje mi się, że Giskorl za bardzo się nie spieszył z tym rytuałem czyszczenia.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23626 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23627 /* ~"Mogłabym skorzystać trochę z leczenia..."~ */ GOTO 12
  IF ~~ THEN REPLY #23628 /* ~"Czy mógłbym kupić od ciebie kilka medykamentów?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23629 /* ~"Czy mógłbym tu odpocząć?"~ */ GOTO 41
  IF ~~ THEN REPLY #23630 /* ~"Dzisiaj, żadnych pytań. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",5)
GlobalLT("Mebbeth_Quest","GLOBAL",11)
~ THEN BEGIN 88 // from:
  SAY #23632 /* ~Mebbet ciągnie za stertę zielonkawych wykrochmalonych tkanin, przyniesionych przez ciebie od Giskorla... wydaje się jakby celowo strzępiła brzegi, jak gdyby je obierała z łupy. Kiedy słyszy, że nadchodzisz, obraca się. "Tak, dziecko?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23633 /* ~"Znalazłem Kossah-Dżai. Nie miała atramentu, ale inna rybiarka miała... problem w tym, że potrzebuję na niego jakieś naczynie."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23635 /* ~"Oto atrament, o który prosiłaś."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
DestroyPartyItem("TankardF",TRUE)
AddexperienceParty(1000)
~ GOTO 81
  IF ~~ THEN REPLY #23636 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #23638 /* ~"Mógłbym skorzystać z leczenia..."~ */ GOTO 12
  IF ~~ THEN REPLY #23639 /* ~"Co tu sprzedajesz, Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #23641 /* ~"Mógłbym kupić od ciebie jakieś medykamenty?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23642 /* ~"Mógłbym tu odpocząć?"~ */ GOTO 41
  IF ~~ THEN REPLY #23643 /* ~"Nic. Chciałem cię tylko sprawdzić."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 81.1 82.1 84.0 85.1 86.0
  SAY #23644 /* ~"Więc podążysz tą drogą..." Mebbet przerywa. "Zatem, po kolei: sam talent do Sztuki nie wystarczy. Potrzebujesz środków, by móc się na niej skoncentrować; zwykle będą to 'zaklęcia'. Zaklęcia zwykle są w księgach. Żeby zatem rzucać zaklęcia, sztuka wymaga księgi zaklęć lub czegoś podobnego. Umiesz czytać?"~ */
  IF ~~ THEN REPLY #23647 /* ~"Nie wiem."~ */ GOTO 90
  IF ~~ THEN REPLY #23648 /* ~"Tak."~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #23649 /* ~"Sprawdźmy więc, możesz to przeczytać?" Mebbet wyciąga małą porwaną kartkę... wyglądającą jak receptura.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23651 /* ~Przyjrzyj się uważnie recepturze.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23652 /* ~Przyjrzyj się uważnie recepturze.~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #23654 /* ~Litery na kartce rozmywają ci się przed oczami, każdy znak uchodzi twojej uwadze, ilekroć usiłujesz go przeczytać. Niemal instynktownie, rozluźniasz oczy, pozwalając im by uchwyciły całą stronę za jednym razem... i wtedy nagle znaki tworzą całość: receptura wymienia miarkowanie, składniki... wygląda to na rodzaj pomniejszej wróżby."~ */
  IF ~~ THEN REPLY #23674 /* ~"To pomniejsza wróżba, prawda? Wygląda jak zaklęcie, które pozwala posługującemu się nim, zobaczyć 'charakter' czegoś... zobaczyć, czy to coś jest zaczarowane, czy nie."~ */ GOTO 96
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #23675 /* ~"Tu, możesz to przeczytać?" Mebbet wyciąga małą porwaną kartkę... wyglądającą jak receptura. Ku zaskoczeniu, litery na kartce rozmywają ci się przed oczami, każdy znak uchodzi twojej uwadze, ilekroć usiłujesz go przeczytać.~ */
  IF ~~ THEN REPLY #23676 /* ~Przyjrzyj się znakom, zobacz czy możesz je rozszyfrować.~ */ GOTO 93
  IF ~~ THEN REPLY #23677 /* ~"Poddaję się, Mebbet... co znaczy to pismo?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #23678 /* ~W skupieniu przyglądasz się znakom. Bez względu na to jednak, jak bardzo się koncentrujesz, litery na zwoju zdają się uchodzić twojej uwadze, wyginając i skręcając się jak gniazdo węży. Oczy cię pieką, kiedy próbujesz nadążać za ich ruchem.~ */
  IF ~~ THEN REPLY #23679 /* ~Przyglądaj się dalej znakom, spróbuj rozszyfrować co znaczą.~ */ GOTO 94
  IF ~~ THEN REPLY #23680 /* ~"Poddaję się, Mebbet... co znaczy to pismo?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.0 94.0
  SAY #23681 /* ~Przyglądasz się dalej znakom jeszcze przez kilka minut, a Mebbet obserwuje cię w milczeniu.~ */
  IF ~~ THEN REPLY #23682 /* ~Przyglądaj się dalej znakom, spróbuj rozszyfrować co znaczą.~ */ GOTO 94
  IF ~~ THEN REPLY #23683 /* ~"Poddaję się, Mebbet... co znaczy to pismo?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 92.1 93.1 94.1
  SAY #23684 /* ~Kiedy masz już zrezygnować i odwrócić się, rozluźniasz oczy, obejmując całą stronę za jednym razem... i wtedy nagle znaki zaczynają tworzyć całość: receptura wymienia miarkowanie, składniki... wygląda to, na rodzaj pomniejszej wróżby."~ */
  IF ~~ THEN REPLY #23685 /* ~"To pomniejsza wróżba, prawda? Wygląda jak zaklęcie, które pozwala posługującemu się nim, zobaczyć 'charakter' czegoś... zobaczyć, czy to coś jest zaczarowane, czy nie."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 91.0 95.0
  SAY #23686 /* ~Źrenice Mebbet rozszerzają się. "Kimże ty jesteś, żeby sprawdzać Starą Mebbet?! Biesem jakimś?"~ */
  IF ~~ THEN REPLY #23687 /* ~"Co się stało?"~ */ JOURNAL #23690 /* ~Mebbet dała mi test... krótką recepturę, pomniejszą iluzję, napisaną językiem Sztuki. Byłem w stanie odszyfrować jej znaczenie bez żadnych przygotowań. Na pewno już kiedyś uczyłem się odczytywania zaklęć.~ */ GOTO 97
  IF ~~ THEN REPLY #23688 /* ~"Nie... cóż, o ile mi wiadomo to nie. Co się stało?"~ */ JOURNAL #23690 /* ~Mebbet dała mi test... krótką recepturę, pomniejszą iluzję, napisaną językiem Sztuki. Byłem w stanie odszyfrować jej znaczenie bez żadnych przygotowań. Na pewno już kiedyś uczyłem się odczytywania zaklęć.~ */ GOTO 97
  IF ~~ THEN REPLY #23689 /* ~"Niektórzy mnie tak nazywali, ale nie w mojej obecności. Czy jest w tym coś złego?"~ */ JOURNAL #23690 /* ~Mebbet dała mi test... krótką recepturę, pomniejszą iluzję, napisaną językiem Sztuki. Byłem w stanie odszyfrować jej znaczenie bez żadnych przygotowań. Na pewno już kiedyś uczyłem się odczytywania zaklęć.~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0 96.1 96.2
  SAY #23691 /* ~"Cóż... nie przypuszczałam... hm..." Potakuje głową na recepturę, po czym wyrywa ci ją z ręki. "To co tu jest napisane, jest w języku *Sztuki*. Gdybyś nie był magiem, byłyby to dla ciebie jedynie poprzekręcane znaki, bezładna mieszanina, groch z kapustą." Pstryka palcem. "Jednak, jest jasne kryształ, że były one dla ciebie zrozumiałe. Możesz wytłumaczyć Starej Mebbet, o co tu chodzi?"~ */
  IF ~~ THEN REPLY #23692 /* ~"Tak naprawdę, to nie wiem... Jedynie to, że *wiedziałem* co było napisane."~ */ GOTO 98
  IF ~~ THEN REPLY #23693 /* ~"Może i kiedyś wiedziałem, ale zapomniałem... kiedy zobaczyłem te znaki, to pobudziło moją pamięć."~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0 97.1
  SAY #23694 /* ~"A może masz naturalny dar... nie ważne, nie ważne, właśnie twoja nauka skróciła się o parę dobrych miesięcy, w rzeczy samej." Mebbet *odchrząkuje* znacząco. "A szukałam kogoś, kto załatwiałby mi tu sprawunki..."~ */
  IF ~~ THEN REPLY #23695 /* ~"W takim razie dobrze się stało."~ */ GOTO 99
  IF ~~ THEN REPLY #23696 /* ~"Jeśli jest coś, w czym mógłbym ci tu pomóc, wystarczy, że poprosisz... choć w ten sposób mogę ci się odwdzięczyć za to, czego mnie nauczysz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mebbeth_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #23697 /* ~"Uchh! I pomyśleć, że cię tu wpuściłam..." Marszczy brwi. "Zatem, potrafisz czytać zaklęcia wystarczająco dobrze, ale zaklęcia na nic się zdadzą, jeśli nie ma się na nie księgi..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23698 /* ~"A masz?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23699 /* ~"A masz?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #23700 /* ~"Nie, nie, tym się nie martw..." Marszczy brwi. "Zatem, potrafisz czytać zaklęcia wystarczająco dobrze, ale zaklęcia na nic się zdadzą, jeśli nie ma się na nie księgi..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23701 /* ~"A masz?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23702 /* ~"A masz?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99.1 100.1
  SAY #23703 /* ~Mebbet rozgląda się po chacie i w oczy wpada jej zrobiona przez ciebie ramka. Podnosi ją ostrożnie i bacznie się jej przygląda. "Będzie dobra."~ */
  IF ~~ THEN REPLY #23704 /* ~"To? To tylko ramka."~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 99.0 100.0
  SAY #23705 /* ~Mebbet rozgląda się po chacie i na jednej ze ścian wpada jej w oczy zrobiona przez ciebie ramka. Odrywa ją ostrożnie od ściany i bacznie się jej przygląda. "Będzie dobra."~ */
  IF ~~ THEN REPLY #23706 /* ~"To? To tylko ramka."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 101.0 102.0
  SAY #23707 /* ~"Ach, to tak jak ty, dziecko..." Trzymając wciąż ramkę, podnosi jeden z wykrochmalonych łachmanów od Giskorla. Jednym szarpnięciem zrywa zielonkawą, wykrochmaloną warstwę, która trzepocze w powietrzu jak cieniutki kawałek tkaniny. "Nie wiem co Giskorl używa do prania, ale działa to lepiej na łachy, niż suszenie, rozciąganie albo obijanie o kamień. Nie stać mnie na pergamin, nie stać..."~ */
  IF ~~ THEN REPLY #23708 /* ~"Pergamin...?"~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #23709 /* ~Bierze sztywną warstwę i przeciąga ją na czarną, kolczastą ramkę, zaczepiając brzegi szmaty na haczyki wokół ramki, aż ta wygląda, jak małe zielonkawoczarne płótno malarskie. "Czegoś mu brakuje..."~ */
  IF ~~ THEN REPLY #23710 /* ~"No, trzeba na nim coś namalować."~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #23711 /* ~Potakuje głową. "Tak, albo zapisać..." Bierze kufel z atramentem, przyniesiony przez ciebie i stawia go obok siebie. Zamacza paznokieć w kuflu, po czym wyciąga go, mamrocząc do siebie. Zaczyna wydrapywać na ramce jakieś znaki, jeden po drugim, ciągle mamrocząc do siebie.~ */
  IF ~~ THEN REPLY #23712 /* ~Czekaj...~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #23713 /* ~"Gotowe." Mebbet wyciera o ubranie ubrudzony atramentem paznokieć. Przechyla głowę, patrząc przed siebie na dziwną, obramowaną kartkę. "To strona do twojej księgi zaklęć." Pokazuje ci, żeby ją podnieść.~ */
  IF ~~ THEN REPLY #23714 /* ~Podnieś ją...~ */ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0 108.1
  SAY #23715 /* ~"W twojej księdze są twoje receptury... albo 'zaklęcia'... jak wolisz. Dopóki są w księdze, jednak, są to tylko słowa." Klepie się po głowie. "Sztuka wymaga, by wydobyć magię z księgi i umieścić zaklęcia w łepetynie... głowie, zanim wyzwolisz ich moc."~ */
  IF ~~ THEN REPLY #23716 /* ~"Kontynuuj..."~ */ GOTO 108
  IF ~~ THEN REPLY #23717 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #23718 /* ~"Zaklęcia umieszcza się w łepetynie, ucząc się ich, *zapamiętując* je. Zwykle jednak, trzeba wcześniej wypocząć. Jakieś pytania?"~ */
  IF ~~ THEN REPLY #23719 /* ~"Nie, Mebbet."~ */ GOTO 109
  IF ~~ THEN REPLY #23720 /* ~"Tak... wyjaśnij to jeszcze raz."~ */ GOTO 107
  IF ~~ THEN REPLY #23721 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #23722 /* ~"Och, nie masz pytań, co? A teraz to *powinnam* usłyszeć od ciebie jakieś pytania! Wiesz, że problem polega na tym, jak zapamiętać zaklęcia, prawda? O bystrzak z ciebie! Bez wątpienia nie potrzebujesz już rad Mebbet, które tylko zabierają ci twój cenny czas... jesteś już potężnym czarnoksiężnikiem!"~ */
  IF ~~ THEN REPLY #23723 /* ~"Wybacz mi, Mebbet. Miałem na myśli, że nie mam pytań do tej części którą już wyjaśniłaś. Powiedz mi proszę jak zapamiętywać zaklęcia."~ */ GOTO 110
  IF ~~ THEN REPLY #23724 /* ~"Twoja postawa wystawia moją cierpliwość na próbę, Mebbet..."~ */ GOTO 111
  IF ~~ THEN REPLY #23725 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 111.1
  SAY #23726 /* ~"Hmmm. Dobrze więc. Oto cień tego, jak się zapamiętuje zaklęcia. Wybierz ze swojej księgi zaklęcia, które chcesz sobie wbić do głowy, *zanim* ułożysz się do snu. Kiedy rano się obudzisz, będą ci latać po głowie jak muchy, gotowe, żeby je wypuścić."~ */
  IF ~~ THEN REPLY #23727 /* ~"Ile zaklęć mogę rzucić?"~ */ GOTO 112
  IF ~~ THEN REPLY #23728 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #23729 /* ~"Ano, wybiorę sposób jaki mi się będzie podobał, dziecko, tak zrobię, a ty będziesz słuchał prędko, jeśli zależy ci na poznaniu cienia Sztuki!"~ */
  IF ~~ THEN REPLY #23730 /* ~"Wybacz mi, Mebbet. Wyjaśnij proszę jak zapamiętywać zaklęcia."~ */ GOTO 110
  IF ~~ THEN REPLY #23731 /* ~"Jeśli *skończyłaś* swój wykład, to możemy kontynuować."~ */ GOTO 110
END

IF ~~ THEN BEGIN 112 // from: 110.0
  SAY #23732 /* ~"Możesz rzucić tylko jedno, możliwe, że dwa zaklęcia, zanim będziesz musiał znowu odpocząć... jako początkujący mag nie masz jeszcze zbyt wiele miejsca w swojej łepetynie. Używaj więc swoich zaklęć mądrze, do czasu kiedy osiągniesz większą biegłość w sztuce. Kiedy twoja moc wzrośnie, zwiększy się też miejsce w twojej łepetynie."~ */
  IF ~~ THEN REPLY #23733 /* ~"W porządku... kontynuuj..."~ */ GOTO 113
  IF ~~ THEN REPLY #23734 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #23735 /* ~"Możesz rzucać tylko zapamiętane zaklęcia. Jeśli więc chcesz, powiedzmy, użyć Sztuki, żeby Naprawić coś dwa razy, musisz zapamiętać zaklęcie... ile razy?"~ */
  IF ~~ THEN REPLY #23736 /* ~"Raz."~ */ GOTO 114
  IF ~~ THEN REPLY #23737 /* ~"Dwa razy."~ */ GOTO 115
  IF ~~ THEN REPLY #23738 /* ~"Uch..."~ */ GOTO 114
  IF ~~ THEN REPLY #23739 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.2
  SAY #23740 /* ~"Dwa razy! Żeby rzucić zaklęcie *dwa razy* musisz *dwa razy* zapamiętać zaklęcie."~ */
  IF ~~ THEN REPLY #23741 /* ~"Jasne. Skąd zdobyć więcej zaklęć?"~ */ GOTO 116
  IF ~~ THEN REPLY #23742 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 115 // from: 113.1
  SAY #23743 /* ~Mebbet potakuje głową. "Tak, dwa razy, wystarczy."~ */
  IF ~~ THEN REPLY #23744 /* ~"Skąd zdobyć więcej zaklęć?"~ */ JOURNAL #23746 /* ~Mebbet nauczyła mnie podstaw Sztuki. Powiada, że przed odpoczynkiem powinienem określić zaklęcia, które chcę zapamiętać, wybierając je z mojej księgi czarów. Jeśli chcę rzucać jakieś zaklęcie wielokrotnie, będę musiał tyle samo razy nauczyć się go na pamięć. Gdy odpocznę, obudzę się następnego ranka pamiętając wszystkie zaklęcia i gotów do ich użycia. Powiedziała, że do czasu kiedy nie stanę się bardziej doświadczony, będę mógł rzucać jedynie niewielką liczbę czarów. Może znajdę innych nauczycieli w Sigil, którzy również będą mogli mnie czegoś o tym nauczyć.~ */ GOTO 116
  IF ~~ THEN REPLY #23745 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 116 // from: 114.0 115.0
  SAY #23747 /* ~Mebbet wzrusza ramionami. "Miej oczy szeroko otwarte i nadstawiaj uszu na naukę - pomniejszej magii mogą cię nauczyć nawet zwykli ludzie. Są również zwoje, receptury, księgi a nawet jeszcze dziwniejsze rzeczy, na których mogą być zapisane zaklęcia. Jeśli taką znajdziesz, po prostu obejrzyj ją dokładnie i jeśli chcesz, przepisz zaklęcie do swojej księgi."~ */
  IF ~~ THEN REPLY #23748 /* ~"Jasne."~ */ GOTO 117
  IF ~~ THEN REPLY #23749 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #23750 /* ~"Mogę również pokazać ci więcej zaklęć, kiedy wrócisz, zwłaszcza kiedy będzie w tobie więcej sfer."~ */
  IF ~~ THEN REPLY #23751 /* ~"Byłbym wdzięczny. Dziękuję."~ */ GOTO 118
  IF ~~ THEN REPLY #23752 /* ~"Wydaje mi się Mebbet, że rozumiem podstawy. Żegnaj."~ */ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 107.1 108.2 109.2 110.1 112.1 113.3 114.1 115.1 116.1 117.0 117.1
  SAY #23753 /* ~"Zanim odejdziesz, dziecko, będziesz potrzebował trochę magii, żeby zaostrzyć sobie apetyt..." Mebbet zaczyna szperać w swoim stroju, po czym wyciąga trzy małe receptury i podaje ci je. "Powinieneś przepisać je do swojej księgi, żeby jak najszybciej mogły trafić do twojej łepetyny..."~ */
  IF ~~ THEN REPLY #23754 /* ~"Dziękuję, Mebbet."~ */ DO ~GiveItemCreate("Recipe01",Protagonist,1,1,0)
GiveItemCreate("Recipe02",Protagonist,1,1,0)
GiveItemCreate("Recipe03",Protagonist,1,1,0)
GiveExperience(Protagonist,5000)
~ JOURNAL #23759 /* ~Mebbet dała mi trzy 'receptury', które kazała mi przepisać do mojej księgi czarów. Powiedziała, że powinienem przyjrzeć się im w ekwipunku, a następnie 'skopiować' do księgi czarów.~ */ GOTO 138
END

IF ~~ THEN BEGIN 119 // from: 138.0
  SAY #23755 /* ~"Dobrze dziecko, nie trać ani chwili dłużej. Ktoś taki jak ty, ma lepsze rzeczy do roboty, niż pałętać się u starej Mebbet."~ */
  IF ~~ THEN REPLY #23756 /* ~"Mebbet, no co ty, nie jesteś przecież stara."~ */ GOTO 120
  IF ~~ THEN REPLY #23757 /* ~"Nie jesteś taka stara."~ */ GOTO 120
  IF ~~ THEN REPLY #23758 /* ~"Tak, to prawda. Spędziłem tu już zbyt wiele czasu."~ */ GOTO 121
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #23760 /* ~"Uchh, ty pochlebco! Twój język wyłożony jest srebrem, że aż wstyd Baatezu! Wiem o co ci chodzi!"~ */
  IF ~~ THEN REPLY #23761 /* ~"Dziękuję za wszystko, Mebbet."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 122
  IF ~~ THEN REPLY #23762 /* ~"Żegnaj, Mebbet."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 119.2
  SAY #23763 /* ~"Masz usposobienie podobne do tych, jakie mają wysoko postawieni czarnoksiężnicy." Parska. "Nie mniej jednak... dobrze ci życzę, dziecko. Dobrze ci życzę."~ */
  IF ~~ THEN REPLY #23764 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.0
  SAY #23765 /* ~"Uchh! Możesz mi okazać wdzięczność przez nie igranie, jak pomyleniec z tym co umiesz. Sztuka potępiła już niejednego głupca, który próbował wykorzystywać sztukę do celów, do których nie powinna być wykorzystywana. Teraz odejdź precz!"~ */
  IF ~~ THEN REPLY #23766 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Ravel")
~ THEN BEGIN 123 // from:
  SAY #23767 /* ~Kiedy wchodzisz, Mebbet spogląda na ciebie, twarz ma śmiertelnie bladą... wygląda na chorą. Widzisz, że zmarszczki przecinają fałdy na skórze jej twarzy, jak błyskawice, a w jej szarych oczach, kiedy skupiają się na tobie, widać skrzenie.~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #64215 /* ~"Mebbet, czy dobrze się czujesz?"~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23768 /* ~"Pomyślałem, że nadal możesz tu być, Mebbet."~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23769 /* ~"Nie jesteś jeszcze martwa, 'Mebbet'?"~ */ GOTO 125
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23770 /* ~"Mebbet... *wiedziałaś*, że jesteś Ravelą?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 123.0 123.1
  SAY #23771 /* ~"Tak..." Uśmiecha się lekko, a głos ma skrzeczący, jak gdyby próbował się przedrzeć przez warstwy kurzu. Kiedy mówi, przypomina echo. "Mam... trochę dłużej..."~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #23772 /* ~"Mebbet... *wiedziałaś*, że jesteś Ravelą?"~ */ GOTO 126
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #64216 /* ~"Mebbet... twój głos... ty mówisz głosem *Raveli*. Kim ty *jesteś?*"~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 123.2
  SAY #23773 /* ~"Nie..." Uśmiecha się lekko. "Mam... trochę dłużej..."~ */
  IF ~~ THEN REPLY #23774 /* ~"Mebbet... *wiedziałaś*, że jesteś Ravelą?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 123.3 124.0 124.1 125.0
  SAY #23775 /* ~Bierze głęboki oddech... mówi powoli, głos się jej trzęsie. "Możliwe... Mebbet zapomniała o sobie już dawno temu... Śniło mi się, że byłam kimś innym..." Każde kolejne słowo jest cięższe od poprzedniego, jak gdyby ciężar wieków całych parł na nie. Jej ciało lekko się porusza, jak gdyby chciało się *odprężyć*.~ */
  IF ~~ THEN REPLY #23776 /* ~"Jak mogłaś nie wiedzieć kim jesteś?"~ */ GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #23777 /* ~"Jak to możliwe, że *ty* nie wiesz kim jesteś?" Oblizuje wargi. "Wiele rzeczy... nawet części siebie... przeciekają przez szpary w pamięci, zapomniane cienie, okruchy pamięci, może dobre... może złe."~ */
  IF ~~ THEN REPLY #23778 /* ~"Ale dlaczego, Mebbet? Po co się maskować, skoro mogłabyś znowu być Ravelą?"~ */ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #23779 /* ~"Tutaj, w tym miejscu, wszystko co robiłam - naprawiałam rzeczy, leczyłam, nastawiałam kości, odbierałam porody... wszystko to sprawiało mi radość." Wzdycha. "A co do tej *innej*, tej Raveli..." Oblizuje jeszcze raz wargi. "Wydaje mi się, że nie zdajesz sobie sprawy, jak dobrze by czasem było pozbyć się jednego, albo dwóch wspomnień."~ */
  IF ~~ THEN REPLY #23780 /* ~"Nie byłem pewien, czy będziesz tutaj, Mebbet, po tym co się wydarzyło..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #23781 /* ~Mebbet potakuje głową - każda chwila jest naznaczona cierpieniem. "Tak, mój drogi..." Bierze oddech z grymasem na twarzy. "To, że cię tu widzę... jest jak echo. Zostało mało czasu... kłębek życia... rozwija się z każdą chwilą."~ */
  IF ~~ THEN REPLY #23782 /* ~"Cierpisz?"~ */ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #23783 /* ~Potakuje głową. "Tak... jednak to ta ironia boli najbardziej..." Uśmiecha się z bólem. "Akt życzliwości, po trzykroć oddany... to typowe dla Sfer, że tych moich kilka aktów życzliwości, kończy się dla mnie śmiercią." Śmieje się miękko. "Nie żałuję jednak..."~ */
  IF ~~ THEN REPLY #23784 /* ~"Mam pytania, Mebbet. Muszę wiedzieć, kto ci to *zrobił*. Czy możesz mi pow..."~ */ GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #23785 /* ~Podnosi rękę, by cię uciszyć. "Mój drogi człowieku... proszę, o wysłuchanie, ten ostatni raz..."~ */
  IF ~~ THEN REPLY #23786 /* ~"Mebbet, zostało niewiele *czasu*..."~ */ GOTO 132
  IF ~~ THEN REPLY #23788 /* ~"Dobrze..."~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0 131.1
  SAY #23792 /* ~"Mój drogi człowieku..." Wzdycha. "Wszystko co pragnęłam zrobić, to uwolnić Panią z Klatki... dla ciebie, wszystko co pragnęłam to *żyć*... a dla mojej córki, ja..." Wzdycha. "Jest takie powiedzenie w Sferach... że życzliwość wiedźmy jest okrutniejsza... niż jej nienawiść i niszczy wszystko co napotka na swojej drodze..."~ */
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23793 /* ~"Myślę, że dowiedzieliśmy się już prawdy na ten temat."~ */ GOTO 133
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23794 /* ~"Przykro mi, że sprawy potoczyły się tak, a nie inaczej. Gdybym mógł cię był uratować, to..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 133
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23795 /* ~"Myślę, że dowiedzieliśmy się już prawdy na ten temat."~ */ GOTO 134
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23796 /* ~"Przykro mi, że sprawy potoczyły się tak, a nie inaczej. Gdybym mógł cię był uratować, to..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #23797 /* ~Uśmiecha się lekko. "Nie żałuję, tego co się stało, mój drogi..." Uśmiech jej gaśnie. "I tobie też nie wolno." Oczy zachodzą jej mgłą i wzrok coraz bardziej rozprasza. "Ach... ja... nie mogę tu zostać... dłużej."~ */
  IF ~~ THEN REPLY #23798 /* ~"Krzyżyk na drogę, Ravelo. Oby jeszcze mroczniejsze miejsce było twoim domem."~ */ DO ~DestroySelf()
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #23799 /* ~"Żegnaj, Ravelo."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 132.2 132.3
  SAY #23800 /* ~"Teraz umieram..." Mruga swoimi ropiejącymi oczami. "Mój koniec... nadchodzi ze wszystkich stron, wszystkie szarady Raveli rozwiązują się..." Kaszle. "Jednak..." Jej szare oczy zamierają na tobie. "Możliwe, że nie wszystko stracone... jedno z moich nasion z czarnymi kolcami z labiryntu... przyniosłeś je ze sobą?"~ */
  IF ~~ THEN REPLY #23801 /* ~"Tak. Tutaj."~ */ DO ~AddexperienceParty(12000)
DestroyPartyItem("BBSeed",FALSE)
~ GOTO 135
  IF ~~ THEN REPLY #23802 /* ~"Mam, ale nie dam ci go."~ */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #23803 /* ~"Ach..." Bierze ostrożnie nasienie i wsuwa w swoje siwiejące włosy. "Zatem dopełniła się Jedność Kręgów..." Mrugając oczami, podnosi rękę i pokazuje ręką, żeby podejść bliżej.~ */
  IF ~~ THEN REPLY #23804 /* ~Podejdź do niej bliżej i uklęknij.~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 137
  IF ~~ THEN REPLY #23805 /* ~"Nie... bez względu na to pod czyim płaszczykiem się ukrywasz, nadal jesteś Ravelą i nie ufam ci."~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 134.1 135.1
  SAY #23806 /* ~Potakuje głową, wygląda jakby miała właśnie coś powiedzieć, ale uśmiecha się tylko i zamyka oczy.~ */
  IF ~~ THEN REPLY #23807 /* ~"Żegnaj."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 135.0
  SAY #23809 /* ~Mówi coś półszeptem, po czym bierze w swe dłonie twą głowę i składa leciutki pocałunek na twoim czole. Kiedy jej usta dotykają twej skóry, zamykasz oczy...~ */
  IF ~~ THEN REPLY #23810 /* ~"Oby Sfery przyjęły cię łaskawie, Mebbet."~ */ DO ~SetGlobal("Ravel_Death_Kiss","GLOBAL",1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 118.0
  SAY #66278 /* ~"Czekaj... jest coś jeszcze..." Mebbet, spod fartucha, wyciąga malutkie zawiniątko z czarnej szmaty i rozwija je, odkrywając parę bursztynowych kolczyków. "Będą cię chronić podczas podróży, dziecko... ja już ich nie noszę, więc proszę, weź je."~ */
  IF ~~ THEN REPLY #66279 /* ~"Jeszcze raz dziękuję..."~ */ DO ~GiveItemCreate("AmbEar",Protagonist,1,0,0)
~ GOTO 119
END
