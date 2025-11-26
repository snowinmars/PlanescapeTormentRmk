// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #11350 /* ~Widzisz niskiego, pulchnego człowieka - wygląda na zakłopotanego. Z bruzd na jego zwiotczałej skórze widać, że często tak wygląda. Niesie dzban piwa, wygląda na to, że jego właściciel szybko go opróżnia. W przerwach między kolejnymi łykami, mówi miękkim głosem, tak cichym, że prawie nie słychać jego słów. "Witaj, wędrowcze. Nazywam się Ilquiks. Czy mogę ci w czymś pomóc?"~ */
  IF ~~ THEN REPLY #11351 /* ~"Witaj. Chcę ci zadać parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #11352 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #11353 /* ~Mężczyzna o zwiotczałej skórze odwraca się i uśmiecha. "Witaj znowu, wędrowcze. Cóż mogę dziś dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #11354 /* ~"Witaj, Ilquiksie. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #11355 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 4.0 5.0 6.1 7.0 8.0 9.4 10.0
  SAY #11356 /* ~"Co chcesz wiedzieć, przyjacielu?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11357 /* ~"Kim ty właściwie jesteś?"~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11358 /* ~"Kim ty właściwie jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #11359 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~~ THEN REPLY #11360 /* ~"Opowiedz mi o stałych klientach."~ */ GOTO 6
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #11361 /* ~"Kim jest ten płonący człowiek?"~ */ GOTO 7
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11362 /* ~"Próbuję znaleźć sposób, żeby ta Mokkai zapłaciła za to, co wypiła. Masz jakiś pomysł?"~ */ GOTO 8
  IF ~~ THEN REPLY #11363 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11365 /* ~"Ja? Jestem tylko skromnym człowiekiem, którego pociąga poezja i zjawiska nadprzyrodzone. Żałuję, że nie mam ze sobą zapasów, ale z chęcią, z JAK NAJWIĘKSZĄ chęcią, nauczę cię mocy." Przerywa i patrzy z podziwem na Nie-Sławę. "Czy mogę wyrazić swe uznanie dla twego wyboru towarzyszy? Jesteś najwidoczniej mężczyzną, który rozumie swe potrzeby; wyraźnie jesteś też człowiekiem z werwą. Trzeba doceniać ambitnych mężczyzn."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 12
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #11367 /* ~"Ja? Jestem tylko skromnym człowiekiem, którego pociąga poezja i zjawiska nadprzyrodzone. Żałuję, że nie mam ze sobą zapasów, ale z chęcią, z JAK NAJWIĘKSZĄ chęcią, nauczę cię mocy."~ */
  IF ~~ THEN REPLY #11369 /* ~"Tak, chciałbym. Ale teraz mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11371 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #11373 /* ~"O gospodzie 'Pod Gorejącym Człekiem'? Miejsce w sam raz i porządny właściciel - Barkis to prawdziwy dżentelmen, w dodatku bardzo chce podnieść swoją pozycję społeczną. To, jak myślę, są najbardziej użyteczne cechy, jakie można posiadać."~ */
  IF ~~ THEN REPLY #11374 /* ~"One kierują naszym zachowaniem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11376 /* ~"Wielu by się z tobą zgodziło. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #11377 /* ~"Ta gospoda ma wielu różnych, stałych klientów. Z większością z nich rozmawiałem i byli czarujący - nie licząc tych istot prawa." Pokazuje na parę abiszai siedzących w rogu. "Psują powietrze samą tylko obecnością, roztaczając niezdrowy smród w skądinąd miłym otoczeniu. Sugeruję, byś porozmawiał z Barkisem - wiem, że potrzebuje pomocy w jakiejś błahej sprawie. Jest też ten gość O. Wciąż próbuję go w pełni zrozumieć. Jest *całkiem* zajmujący, skoro sam tak mówię. Ci są interesujący. Reszta... cóż, może ich nie doceniam."~ */
  IF ~~ THEN REPLY #11379 /* ~"Dlaczego gardzisz istotami prawa?"~ */ GOTO 9
  IF ~~ THEN REPLY #11381 /* ~"Być może. Mam jeszcze kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #11383 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #11385 /* ~"On? Ha. To jest ostatni pechowiec, który chciał ćwiczyć wolę, nie mając siły by powstrzymać swe pragnienia. Nazywa się Ignus, i jest... był... piromanem. Palił i palił i spalił nie tych co trzeba. Skończył wchłaniając więcej czystej mocy, niż mógł kontrolować. No cóż, teraz widać co z niego zostało. Jeśli chcesz się o nim więcej dowiedzieć, być może biedna Drusilla będzie w stanie ci pomóc."~ */
  IF ~~ THEN REPLY #11387 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11388 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #11390 /* ~Śmieje się, jego policzki trzęsą się tak, że masz wrażenie, że zaraz odpadną mu z twarzy. "Zawsze możesz ją otruć, przyjacielu! Mała dawka, która zawsze jest skuteczna w prawie *każdym* sporze!" Znów zaczyna się śmiać. "Oczywiście, żartuję." Mruga.~ */
  IF ~~ THEN REPLY #11392 /* ~"Oczywiście, że tak. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11393 /* ~"Oczywiście, że tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #11394 /* ~"Ach, wspaniałe pytanie, mój przyjacielu! Moje wychowanie odbyło się po chaotycznej stronie Wielkiego Koła - możesz pogadać z Kandrianem Poronionym (najbardziej niewłaściwe nazwisko, jakie kiedykolwiek słyszałem) ze sfer. Wyobraża sobie, że jest wielkim obieżysferem. To tylko mała dygresja. Wiele lat żyłem w Chaosie i całkiem mi się to podobało. Dla mnie, nadużywanie prawa, tak jak to robią te istoty, jest naganne i despotyczne. Jeśli mam zostać zdeptany, wolę raczej być indywidualistą, niż maszyną, która nie zna uczuć."~ */
  IF ~~ THEN REPLY #11395 /* ~Prawda: "Tak, zgadzam się."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_One","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11396 /* ~Kłamstwo: "Tak, zgadzam się."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11397 /* ~Prawda: "Nie mogę się z tym zgodzić."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Ilquix_One","GLOBALLaw",1)
~ GOTO 10
  IF ~~ THEN REPLY #11398 /* ~Kłamstwo: "Nie mogę się z tym zgodzić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11399 /* ~"Wielu by się z tobą zgodziło. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11400 /* ~"Wielu by się z tobą zgodziło. Mam jeszcze kilka pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11401 /* ~Ilquiks uśmiecha się odsłaniając zęby i prawie nie ruszając policzkami. "Każdy ma swoje zdanie. Masz jeszcze jakieś pytania?"~ */
  IF ~~ THEN REPLY #11402 /* ~"Tak."~ */ GOTO 2
  IF ~~ THEN REPLY #11403 /* ~"Nie. Żegnaj."~ */ EXIT
END
