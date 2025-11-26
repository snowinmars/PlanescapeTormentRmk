// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEK~

IF ~  Global("Know_Tek","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #58197 /* ~Widzisz stworzenie przypominające humanoida pokrytego groteskowymi łuskami. Ma potężne skrzydła i ruchliwy ogon. Twoje pojawienie się wyraźnie rozbawiło stwora.~ */
  IF ~~ THEN REPLY #58198 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58199 /* ~Ignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58200 /* ~Stwór wybucha śmiechem. "Tak... Bądź pozdrowiony, człowieczku."~ */
  IF ~~ THEN REPLY #58201 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58202 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.2 8.0 9.2 11.1 12.1 13.1 14.1 17.1 18.1 19.1 21.1 22.0 26.1 27.1 29.1 30.0
  SAY #58203 /* ~"Jak najbardziej, możesz zadać swoje pytania..." Stwór posyła ci krzywy uśmiech.~ */
  IF ~~ THEN REPLY #58204 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58205 /* ~"Czym ty jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #58206 /* ~"Co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #58207 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 13
  IF ~  Global("AR0800_Visited","GLOBAL",0)
~ THEN REPLY #58208 /* ~"Co wiesz o mieście Klątwa?"~ */ GOTO 15
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",0)
~ THEN REPLY #58209 /* ~"Co się stało z Klątwą? Skąd te wszystkie zmiany?"~ */ GOTO 23
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",1)
~ THEN REPLY #58210 /* ~"Co się stało z Klątwą? Skąd te wszystkie zmiany?"~ */ GOTO 28
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #58211 /* ~"Jako członkowi frakcji Bogowców wiadomo mi, że w kuźni pracujemy nad sekretnym urządzeniem. Czy wiesz coś o tym?"~ */ GOTO 29
  IF ~~ THEN REPLY #58212 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58213 /* ~Stwór przez chwilę zastanawia się nad odpowiedzią. "To, jak się nazywam, nie ma żadnego znaczenia. Gdyby ci to było do czegoś potrzebne, znałbyś moje imię." Milknie na chwilę. "Jeżeli faktycznie chcesz mnie nazywać jakimś imieniem, to możesz mówić do mnie Tek'elach." Stwór uśmiecha się.~ */
  IF ~~ THEN REPLY #58214 /* ~"A co to za imię?"~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #58215 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58216 /* ~"Żegnaj."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58217 /* ~"Jedyne, jakie usłyszysz ode mnie..." Stwór wpatruje się w ciebie znacząco.~ */
  IF ~~ THEN REPLY #58218 /* ~"Ach tak. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58219 /* ~"Chyba już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #58220 /* ~Stwór kiwa głową na wszystkie strony i patrzy na ciebie w zamyśleniu. "Czym jestem? Czy naprawdę chcesz to wiedzieć?" Milczy przez chwilę, zastanawiając się nad odpowiedzią. "Niczym szkodliwym, jak podejrzewam. Wydaje mi się, że twoje plemię nazywa takich jak ja większymi baatezu, a konkretnie kornugonami."~ */
  IF ~~ THEN REPLY #58221 /* ~"Jesteś większym baatezu?"~ */ GOTO 6
  IF ~~ THEN REPLY #58222 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58223 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58224 /* ~"Tak... Dziwisz się temu?". Stwór patrzy na ciebie z oczekiwaniem.~ */
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #58225 /* ~"Zachodzę w głowę, skąd się tutaj wziąłeś. Czy nie powinieneś być teraz na froncie Wojny Krwi, albo gdzieś w swoich stronach?"~ */ GOTO 7
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #58226 /* ~"Zachodzę w głowę, skąd się tutaj wziąłeś. Czy nie powinieneś się zajmować czymś innym?"~ */ GOTO 9
  IF ~~ THEN REPLY #58227 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58228 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58229 /* ~Stwór marszczy brwi. "Tak... Trwa Wojna Krwi. Ale ona teraz toczy się z dala od tego miejsca i nie trzeba się nią przejmować..."~ */
  IF ~~ THEN REPLY #58230 /* ~"Dlaczego nie?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 10.0 12.0 14.0
  SAY #58231 /* ~"Nie ma innego powodu, poza tym, że tak zdecydowałem... Na razie." Stwór spogląda na ciebie z wyraźną niechęcią.~ */
  IF ~~ THEN REPLY #58232 /* ~"Ach tak. Mam jeszcze inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #58233 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58234 /* ~Stwór patrzy na ciebie z zakłopotaniem. "Czymś innym? Co masz na myśli? Chodzi ci o Wojnę Krwi?"~ */
  IF ~~ THEN REPLY #58235 /* ~"Czym jest ta Wojna Krwi?"~ */ GOTO 10
  IF ~~ THEN REPLY #58236 /* ~"Nie chodzi mi akurat o wojnę, ale po prostu o jakieś inne zajęcie niż przesiadywanie w tym tunelu."~ */ GOTO 11
  IF ~~ THEN REPLY #58237 /* ~"Mniejsza o to. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58238 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 29.0
  SAY #58239 /* ~Stwór przez dłuższą chwilę ociąga się z odpowiedzią. Masz wręcz wrażenie, że w ogóle nie chce ci odpowiedzieć. Wreszcie odzywa się. "Wojna Krwi to... potyczka, jaką toczymy z tanar'ri. Jest to jednak sprawa bez znaczenia, dlatego nie ma potrzeby o tym mówić."~ */
  IF ~~ THEN REPLY #58240 /* ~"A to dlaczego?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 2.2 9.1
  SAY #58241 /* ~"To, co tutaj robię, jest moją prywatną sprawą. Nie widzę potrzeby, abyś miał się tym interesować." Stwór uśmiecha się do ciebie porozumiewawczo. "Lepiej chyba będzie, jeśli zmienisz temat."~ */
  IF ~~ THEN REPLY #58242 /* ~"Nie rozumiem, po co ta konspiracja? Dzięki temu odnoszę wrażenie, że dzieje się tu coś zupełnie innego."~ */ GOTO 12
  IF ~~ THEN REPLY #58243 /* ~"Bardzo dobrze, mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58244 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #58245 /* ~Stwór obdarza cię spojrzeniem pełnym kpiarskiego zdziwienia "Doprawdy? Czy też może odbierasz moje słowa i czyny, tak aby pasowały do twoich potrzeb? Tak czy siak, odpowiedziałem na twoje pytanie. Nie będę już do tego wracać."~ */
  IF ~~ THEN REPLY #58246 /* ~"Dlaczego?"~ */ GOTO 8
  IF ~~ THEN REPLY #58247 /* ~"Bardzo dobrze, mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58248 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #58249 /* ~"O czym tu jeszcze można mówić?" wskazuje okolicę chaotycznym gestem "Obejrzyj wszystko własnymi oczyma. Wszystko masz wokół siebie."~ */
  IF ~~ THEN REPLY #58252 /* ~"Nie mogę się oprzeć wrażeniu, że dzieje się tu coś więcej, niż widać na pierwszy rzut oka..."~ */ GOTO 14
  IF ~~ THEN REPLY #58253 /* ~"Ach tak... Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58254 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58250 /* ~Stwór obdarza cię spojrzeniem pełnym kpiarskiego zdziwienia "Doprawdy? Cierpisz na paranoję, czy jesteś aż tak podejrzliwy? Tak czy siak, odpowiedziałem na twoje pytanie. Nie będę już do tego wracać."~ */
  IF ~~ THEN REPLY #58251 /* ~"Dlaczego?"~ */ GOTO 8
  IF ~~ THEN REPLY #58255 /* ~"Bardzo dobrze, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58256 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #58257 /* ~Stwór marszczy brwi i poprzedza odpowiedź długim namysłem. "To miejsce porzucone przez bogów. Miejsce zdrady i chaosu... Miejsce na krawędzi upadku. Jeśli przyjdzie ci tamtędy wędrować, miej się zawsze na baczności."~ */
  IF ~~ THEN REPLY #58258 /* ~"Na krawędzi upadku?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58259 /* ~Stwór wzdycha ciężko i odwraca wzrok. "To jest miasto graniczne, człowieczku. Po jednej stronie znajdują się Krainy Zewnętrzne. Po drugiej Sfera Tartaru. Tak długo, jak długo utrzymywać się będzie obecny stan rzeczy w Klątwie, miejsce to pozostanie miastem granicznym." Stwór milknie, chcąc by jego słowa zrobiły na tobie większe wrażenie.~ */
  IF ~~ THEN REPLY #58260 /* ~"Nie przerywaj."~ */ DO ~SetGlobal("Know_Curst_Cure","GLOBAL",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58261 /* ~"Gdyby stracono kontrolę nad tym, co się dzieje w tym mieście, Klątwa przechyli się w stronę Tartaru i połączy z tą sferą. Lecz z drugiej strony nadmiar porządku i prawa w Klątwie pchnie ją z kolei ku Krainom Zewnętrznym." Stwór wzrusza ramionami. "Tak to bywa z takimi miejscami."~ */
  IF ~~ THEN REPLY #58262 /* ~"Sugerujesz, że to miasto może... zmienić swoje położenie?~ */ GOTO 18
  IF ~~ THEN REPLY #58263 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58264 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58265 /* ~Stwór posyła ci kpiarski uśmiech. "O, tak..."~ */
  IF ~~ THEN REPLY #58266 /* ~"Gdyby miało się tak stać, cóż można na to poradzić?"~ */ GOTO 19
  IF ~~ THEN REPLY #58267 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58268 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58269 /* ~Stwór wzrusza ramionami. "Wystarczy stwierdzić, co w mieście szwankuje i potraktować to przeciwstawną siłą. Za dużo ładu? Wznieć w mieście odrobinę chaosu. Zbyt mało ładu? Narzuć miastu więcej prawa." Stwór uśmiecha się do ciebie. "Jeśli w swoim wysiłku okażesz wytrwałość, będziesz mógł przywrócić miasto na granicę... bądź też pchnąć je ku przeciwnej sferze."~ */
  IF ~~ THEN REPLY #58270 /* ~"Okazałeś mi wielką pomoc... A to stawia następne pytanie... Dlaczego to uczyniłeś?"~ */ GOTO 20
  IF ~~ THEN REPLY #58271 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58272 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 27.0
  SAY #58273 /* ~Stwór posyła ci spojrzenie pełne zakłopotania. "Co masz na myśli?"~ */
  IF ~~ THEN REPLY #58274 /* ~"Uważa się was, baatezu, za ucieleśnienie zła. Dlaczego więc mi pomagasz?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58275 /* ~Stwór rechocze radośnie i patrzy na ciebie z uśmiechem. "Nie łącz mojej pomocy z uprzejmością, a mnie z czymś innym niż zło. Pomagam ci, bo to służy moim własnym celom. Nic poza tym."~ */
  IF ~~ THEN REPLY #58276 /* ~"W jaki sposób pomoc dla mnie służy twoim celom?"~ */ GOTO 22
  IF ~~ THEN REPLY #58277 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58278 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #58279 /* ~"Właśnie... W jaki?" Stwór nie przestaje uśmiechać się do ciebie.~ */
  IF ~~ THEN REPLY #58280 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58281 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.5 28.0
  SAY #58282 /* ~Stwór wzdycha ciężko i odwraca wzrok. "Klątwa to gród graniczny, zawieszony między dwoma przeciwnościami. Po jednej stronie znajdują się Sfery Zewnętrzne, po drugiej zaś - sfera Tartaru." Stwór milknie.~ */
  IF ~~ THEN REPLY #58283 /* ~"Tak, pojmuję to. Ale co sprawiło, że równowaga została zachwiana i Klątwa poczęła chylić się ku Tartarowi?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58284 /* ~Stwór wzrusza ramionami. "Trias. To on był tego przyczyną. Sprawił, że siły chaosu wzięły w mieście górę i pchnęły to miasto ku Tartarowi. I stan taki będzie się utrzymywał dopóty, dopóki nie zostaną podjęte radykalne środki."~ */
  IF ~~ THEN REPLY #58285 /* ~"Co można na to poradzić?"~ */ GOTO 25
  IF ~~ THEN REPLY #58286 /* ~"Trias? A cóż on ma z tym wspólnego?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 24.0 31.0
  SAY #58287 /* ~Stwór wzrusza ramionami. "Wystarczy stwierdzić, co w mieście szwankuje i potraktować to przeciwstawną siłą. Za dużo ładu? Wznieć w mieście odrobinę chaosu. Zbyt mało ładu? Narzuć miastu więcej prawa." Stwór uśmiecha się do ciebie. "Jeśli w swoim wysiłku okażesz wytrwałość, będziesz mógł przywrócić miasto na granicę... bądź też pchnąć je ku przeciwnej sferze."~ */
  IF ~~ THEN REPLY #58288 /* ~"Sugerujesz, że ktoś musi zaprowadzić w tym mieście prawo i porządek?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #58289 /* ~Stwór uśmiecha się. "Tak... Dokładnie to miałem na myśli."~ */
  IF ~~ THEN REPLY #58290 /* ~"Czy możesz mi w tym pomóc?"~ */ GOTO 27
  IF ~~ THEN REPLY #58291 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58292 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #58293 /* ~Stwór przez dłuższą chwilę mierzy cię spojrzeniem. Wreszcie odpowiada. "Tak... Mam wrażenie, że pomoc, jakiej ci udzielę, leży w moim najlepszym interesie. I ja, i moi słudzy są do twojej dyspozycji."~ */
  IF ~~ THEN REPLY #58294 /* ~"Okazałeś mi wielką pomoc... A to stawia następne pytanie... Dlaczego to zrobiłeś?"~ */ GOTO 20
  IF ~~ THEN REPLY #58295 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58296 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.6
  SAY #58297 /* ~Stwór wzrusza ramionami. "Dokładnie przed tym cię ostrzegałem, kiedy ostatnim razem rozmawialiśmy."~ */
  IF ~~ THEN REPLY #58298 /* ~"O czym wtedy mówiłeś?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 29 // from: 2.7
  SAY #58299 /* ~"Należysz do Bogowców?" Wydaję ci się, że odrobinę urosłeś w oczach stwora. "Ze względu na twoją przynależność frakcyjną zechcę odpowiedzieć na twoje pytanie. Urządzenie to zamówił mój zwierzchnik. Ma być użyte jako oręż w Wojnie Krwi."~ */
  IF ~~ THEN REPLY #58300 /* ~"Czym jest ta Wojna Krwi?"~ */ GOTO 10
  IF ~~ THEN REPLY #58301 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58303 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~  Global("Know_Tek","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #58306 /* ~Widzisz kornugona Tek'elacha. Wydaje się być wyraźnie rozbawiony. "A więc witaj znowu, człowieczku. Czegóż chcesz?"~ */
  IF ~~ THEN REPLY #58307 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58309 /* ~"Ach nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY #58310 /* ~Stwór ciężko wzdycha: "Trias jest agentem Chaosu. Nie bez powodu wsadzono go do więzienia. Niestety, jakiś kretyn go uwolnił i to pozwoliło Triasowi dokonać tylu spustoszeń w mieście." Stwór milknie i znowu wzdycha. "Przysłano mnie tutaj, abym nie spuszczał go z oczu."~ */
  IF ~~ THEN REPLY #58311 /* ~"Co można na to poradzić?"~ */ GOTO 25
END
