// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~Obdarty, cuchnący wonią odpadków starzec wzywa cię do siebie. "Obcy wędrowcze! Poświęć mi chwilę! Muszę opowiedzieć ci o tym, co się stało z tym miejscem!"~ */
  IF ~~ THEN REPLY #3197 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~"Co się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~"Nie. Zejdź mi z drogi, starcze."~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~"Miasto to nawiedziły liczne nieszczęścia, obcy wędrowcze. Deva triumfalnie góruje nad dziełem zniszczenia, patrząc na naszą zgubę. Tylko jeden czyn może taki stan rzeczy odwrócić. Obalenie devy! Tylko to może sprawić, że gród ten oczyszczony zostanie ze zdrady i nikczemności. Im większa wiara miasta w przebaczenie, tym słabsza jest władza devy."~ */
  IF ~~ THEN REPLY #60253 /* ~"Więc to Trias jest sprawcą tego wszystkiego?"~ */ JOURNAL #60254 /* ~Kyse, dozorca śmietniska powiedział mi, że Trias wzniósł się ze swojego więzienia i przeklął całego miasto, co sprawiło, że Klątwa poczęła się chylić ku Tartarowi. Ponadto Kyse oznajmił mi, że najlepszym sposobem na pokonanie Triasa w walce jest osłabienie sił zła i chaosu, mających oparcie w mieście. Osiągnąć to mogę przekonując mieszkańców Klątwy ku dobrym uczynkom.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~"Ja jestem Kys, dozorca miejskiego śmietniska. Próbowałem nauczać pośród miejskiego ludu delikatności manier i uprzejmości, ale nie chciano mnie słuchać. I zobacz sam teraz, do jakiej sytuacji takie zachowanie zaprowadziło."~ */
  IF ~~ THEN REPLY #60256 /* ~"Co się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~"Zejdź mi z drogi, starcze. Mam wiele pilnych rzeczy do zrobienia."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~"Nieszczęścia czyhają tu na ciebie, obcy wędrowcze! Jeśli deva nie upadnie, miasto czeka zagłada! Jeśli miasto nie wróci ku Krainom Zewnętrznym, wszyscy będą tu zgubieni! Jesteśmy teraz w sferze Tartaru, z której nawet Tytani nie potrafili zbiec! Jeżeli wymagasz odpoczynku, schroń się we wnętrzu starych baraków albo w gorzelni. A teraz weź to, bo może okazać się pomocne." Odwraca się i ucieka.~ */
  IF ~~ THEN REPLY #60259 /* ~"To było dziwne."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~"Deva wynurzył się z ziemi i począł potępiać tutejsze niegodziwości. Wielkie powstało zamieszanie, kiedy budowle wokół nas zaczęły padać i poznaliśmy nasz los. Jeden jest tylko sposób na pokonanie Triasa. Można go osłabić dobrymi uczynkami i odciągnięciem umysłów mieszkańców tego grodu od niegodziwości chaosu, ku dobru. Jeżeli to się nie stanie, Trias bez wątpienia zatriumfuje." Starzec ogląda się za siebie. "Muszę wracać do pracy. Jeżeli wymagasz odpoczynku, schroń się we wnętrzu starych baraków albo w gorzelni. A teraz weź to, bo może okazać się pomocne."~ */
  IF ~~ THEN REPLY #60261 /* ~"Powodzenia. Żegnaj."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~"Możesz liczyć na moją wdzięczność, obcy wędrowcze? Jak mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #60263 /* ~"Potrzeba mi lekarza."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~"O co chodziło tym łotrom?"~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~"Opowiedz mi o sobie."~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~"Opowiedz mi o tym wysypisku."~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~"To wymyka się mojej imaginacji. Plotki głosiły, że siedzę na górze złota, że wielkie bogactwa weszły w moje posiadanie. Kłamstwo to, po stokroć kłamstwo - jedyne bogactwa, jakie mam, to te, które czerpię ze swojej wiary, która trzyma mnie przy życiu w tym mieście występku. Próbowałem podzielić się moim bogactwem z bliźnimi, ale niewielu było tu takich, którzy zechcieli by je przyjąć."~ */
  IF ~~ THEN REPLY #60269 /* ~"Tak. Opowiedz mi o sobie."~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~"Muszę podleczyć swe rany."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~"Opowiedz mi o tym wysypisku."~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~"Jestem Kys, dozorca miejskiego śmietniska. Zajmuję się odpadkami całego miasta, i, mówiąc w przenośni, tym sposobem poznałem całkiem pokaźną liczbę tutejszych dusz. Jam jest głosem, który wiedzie ich ku dobru. Niestety, gdy czuję, że mnie ignorują, ogarnia mnie lęk."~ */
  IF ~~ THEN REPLY #60274 /* ~"Potrzeba mi lekarza."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~"O co chodziło tym łotrom?"~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~"Opowiedz mi o tym wysypisku."~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~"To miasto jest na krawędzi upadku. Wszystkie rodzaje niegodziwości mieszkają w tych murach, a nic nie jest tym, czym się zrazu zdaje. Wszystko skrywa się za fasadami zwykłego miejskiego życia, lecz ci, którzy w ten nurt wstąpią wnet zakosztują jego skrytego jadu. To miasto-trucizna i tacyż sami są jego mieszkańcy."~ */
  IF ~~ THEN REPLY #60279 /* ~"Potrzeba mi lekarza."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~"O co chodziło tym łotrom?"~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~"Opowiedz mi o sobie."~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~"Opowiedz mi o tym wysypisku."~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~"Ocaliłeś mi życie." Kys wydaje się zdumiony, że czyn takiej kategorii mógł w ogóle zdarzyć się w Klątwie. "Winien ci jestem wiele. Gdybyś kiedykolwiek potrzebował uleczyć rany, śpiesz śmiało do mnie. Pomogę ci tak, jak będę tylko potrafił. Wybacz. Muszę odejść."~ */
  IF ~~ THEN REPLY #60284 /* ~"Oczywiście. Żegnaj."~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~Widzisz obdartego, cuchnącego wonią odpadków starca. Wydaje się jednak dziwnie rześki, jak na mieszkańca tego miasta, i bardziej energiczny. Jakby pochodził z innych stron. Wpatruje się w ciebie, kiedy doń podchodzisz i wstaje. "Przyszedłeś do Kysa po nauki? Chcesz posłuchać o mądrości i prawości? Szukasz szlachetnych wzorów do naśladowania?"~ */
  IF ~~ THEN REPLY #60286 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~"Co to za miejsce?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~"Co wiesz o Klątwie?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~"Słyszałem, że masz niejakie kłopoty z bandą rzezimieszków."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~"Opowiedz mi o tym wysypisku."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~"Nie. Żegnaj."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~"Przybyłeś po nauki? Szukasz światła w mroku? Chcesz mądrości? Chcesz... A to ty." Starzec wydaje się nieco rozczarowany.~ */
  IF ~~ THEN REPLY #60292 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~"Co wiesz o Klątwie?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~"Słyszałem, że masz niejakie kłopoty z bandą rzezimieszków."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~"Opowiedz mi o tym wysypisku."~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~"Jestem Kys, dozorca miejskiego śmietniska. Zajmuję się odpadkami całego miasta, i, mówiąc w przenośni, tym sposobem poznałem całkiem pokaźną liczbę tutejszych dusz. Jam jest głosem, który wiedzie ich ku dobru. Niestety, gdy czuję, że mnie ignorują, ogarnia mnie lęk."~ */
  IF ~~ THEN REPLY #60298 /* ~"Ach tak... Mam jeszcze kilka innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~"To śmietnisko miejskie. Ja zaś je pilnie obserwuję, aby wytropić zło, które w nim mieszka. Dbam o to, by nie przeniknęło do miasta, a miasto w podzięce powiększa moje zbiory."~ */
  IF ~~ THEN REPLY #60301 /* ~"Ach tak... Mam jeszcze kilka innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~"To miasto jest na krawędzi upadku. Wszystkie rodzaje niegodziwości mieszkają w tych murach, a nic nie jest tym, czym się zrazu zdaje. Wszystko skrywa się za fasadami zwykłego miejskiego życia, lecz ci, którzy w ten nurt wstąpią wnet zakosztują jego skrytego jadu. To miasto-trucizna i tacyż sami są jego mieszkańcy."~ */
  IF ~~ THEN REPLY #60304 /* ~"Ach tak... Mam jeszcze kilka innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~"Wernet to człowiek, władca wszy, zbieracz grzechów. On uważa, że jestem w posiadaniu bogactw, które powinienem mu przekazać, ale prawda jest taka, że jedyne moje bogactwa to klejnoty serca i wiary. Tak mu też powiedziałem, ale obawiam się, że nie dał wiary moim słowom. Pójdź do niego i przekonaj go, że nie kłamałem. Proszę. Werneta znajdziesz w Wewnętrznej Klątwie. Na południe stąd. Niedaleko wozów."~ */
  IF ~~ THEN REPLY #60307 /* ~"Tak. Mam kilka innych pytań..."~ */ JOURNAL #60309 /* ~Kyse, dozorca śmietniska, poprosił mnie, abym porozmawiał z człowiekiem o imieniu Wernet i przekonał go, że Kyse nie posiada żadnych, ale to żadnych bogactw. Nawiasem mówiąc mnie nikt by o czymś takim nie musiał przekonywać. Kyse powiedział mi, że Wenet przebywa w Wewnętrznej Klątwie, na południowym skraju miasta, niedaleko wozów.~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~"Czego ci potrzeba?"~ */
  IF ~~ THEN REPLY #60311 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~"Co wiesz o Klątwie?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~"Słyszałem, że masz niejakie kłopoty z bandą rzezimieszków."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~"Opowiedz mi o tym wysypisku."~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~Starzec pochyla się ku tobie i szepcze konspiracyjnym tonem. "Znam ja tajne wejście do tutejszych podziemi. Sekretne miejsce, o którym nikt nie wie. Tamtędy można dostać się pod miasto." Milknie na chwilę. "Ale nigdy nie korzystałem z tej drogi. Podejrzewam, że gdybym zszedł tamtędy na dół, nigdy bym już nie powrócił na górę. Tamto przejście jest bardzo urwiste i nietrudno nieostrożnym krokiem spuścić sobie na plecy lawinę głazów. Kiedy poczuję, że śmierć mi bliska, udam się tam i rzucę się w dół, a potwory niechaj żerują na moich kościach."~ */
  IF ~~ THEN REPLY #68145 /* ~"Mam jeszcze kilka innych pytań..."~ */ JOURNAL #68147 /* ~Stróż wysypiska powiedział mi o tajemnym przejściu do podziemi Klątwy. Powiedział mi również, że z chwilą, kiedy minę to przejście, nie będę już prawdopodobnie mógł powrócić tą samą drogą. Zapamiętam to sobie.~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~"Ach tak. Żegnaj."~ */ JOURNAL #68147 /* ~Stróż wysypiska powiedział mi o tajemnym przejściu do podziemi Klątwy. Powiedział mi również, że z chwilą, kiedy minę to przejście, nie będę już prawdopodobnie mógł powrócić tą samą drogą. Zapamiętam to sobie.~ */ EXIT
END
