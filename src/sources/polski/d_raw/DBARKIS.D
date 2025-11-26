// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3076 /* ~Widzisz mężczyznę o lekko popielatej twarzy. Jego zęby zdają się być ostrzejsze niż u przeciętnego człowieka, a oczy wypełnia znudzenie, które zwykle pojawia się po tym, jak widziało się zbyt wiele. Głos ma nosowy i tubalny. "Znowu ty, hę? Czego chcesz tym razem?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #3077 /* ~"'Znowu ty'? Co masz na myśli?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10238 /* ~"Masz moje oko, tak? Chcę je od ciebie odkupić."~ */ GOTO 11
  IF ~~ THEN REPLY #10239 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #10240 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~~ THEN REPLY #10241 /* ~"Co możesz powiedzieć mi o tutejszych klientach?"~ */ GOTO 15
  IF ~~ THEN REPLY #10242 /* ~"Chcę coś do picia."~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10243 /* ~"Szukam dziennika."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10244 /* ~"Szukam zbieracza Faroda."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur, ten który zajmuje się aukcjami, chciał abyś to powiesił."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68055 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10245 /* ~"Znowu tutaj? Czego chcesz?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10246 /* ~"Gdy odezwałem się do ciebie po raz pierwszy, powiedziałeś 'znowu ty?'. Co miałeś przez to na myśli?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10247 /* ~"Powiedziałeś, że masz moje oko. Chcę je z powrotem."~ */ GOTO 11
  IF ~~ THEN REPLY #10248 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #10249 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10250 /* ~"Co możesz powiedzieć mi o tutejszych klientach?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10251 /* ~"Chcę coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10252 /* ~"Nie będziesz miał już problemów z Mokkai."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10253 /* ~"Chcę coś do picia."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10254 /* ~"Szukam dziennika."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10255 /* ~"Szukam zbieracza Faroda."~ */ GOTO 30
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10256 /* ~"Co możesz powiedzieć mi o tutejszych klientach?"~ */ GOTO 35
  IF ~  Global("Mochai_Dead_KAPUTZ","GLOBAL",1)
GlobalLT("Mochai","GLOBAL",3)
~ THEN REPLY #57941 /* ~"Nie będziesz już mieć problemów z Mokkai."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur, ten który zajmuje się aukcjami, chciał abyś to powiesił."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68056 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.4 4.2 5.2 7.0 9.0 11.4 12.1 13.1 14.0 15.1 16.0 16.1 17.14 18.7 19.1 20.2 21.2 22.2 23.2 24.4 25.1 26.1 27.0 28.2 29.0 30.0 31.1 32.1 34.0 35.0
  SAY #10257 /* ~"Pospiesz się, dobra? Mam klientów, którzy mi płacą."~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10258 /* ~"Gdy odezwałem się do ciebie po raz pierwszy, powiedziałeś 'znowu ty?'. Co miałeś przez to na myśli?~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10259 /* ~"Powiedziałeś, że masz moje oko. Chcę je odkupić."~ */ GOTO 11
  IF ~~ THEN REPLY #10260 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #10261 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10262 /* ~"Co możesz powiedzieć mi o tutejszych klientach?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10263 /* ~"Chcę coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10264 /* ~"Zająłem się twoją dłużniczką."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10265 /* ~"Chcę coś do picia."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10266 /* ~"Szukam dziennika."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10267 /* ~"Szukam zbieracza Faroda."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur, ten który zajmuje się aukcjami, chciał abyś to powiesił."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #45135 /* ~"Co możesz powiedzieć mi o tutejszych klientach?"~ */ GOTO 35
  IF ~~ THEN REPLY #57942 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0
  SAY #10269 /* ~"Tia, 'znowu ty'. Masz kłopoty ze słuchem, albo co znowu? Byłeś tu jakieś piętnaście lat temu, cały zabełcony, rozwaliłeś to miejsce i zostawiłeś stertę monet, która nie starczyła na opłacenie szkód. Więc wyciągnąłeś swoje krwawiące oko i powiadasz mi, że wrócisz, by je odebrać, jak będziesz miał dwieście monet. Po piętnastu latach oczekiwania to będzie pięćset. Masz brzdęk, kolego, jak mam twoje oko."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10270 /* ~"Pięćset? To śmieszne!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10271 /* ~"Pięćset? To śmieszne!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10272 /* ~"Pięćset? Dobrze. Proszę."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10273 /* ~"Nie mam tyle."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10274 /* ~"Teraz mnie to nie interesuje. Odpowiedz mi zamiast tego na kilka pytań."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10275 /* ~"Zapomnij. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #10276 /* ~Przerywa na chwilę, zastanawiając się. "Tak jest. Powiem ci coś. Daj mi trzysta, a oko jest twoje."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #10277 /* ~"Stoi. Oto twoje pieniądze."~ */ DO ~TakePartyGold(300)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(300)
~ THEN REPLY #10278 /* ~"Wciąż mnie na to nie stać."~ */ GOTO 7
  IF ~~ THEN REPLY #10279 /* ~"Zapomnij. Zamiast tego odpowiedz mi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10280 /* ~"Zapomnij. Wrócę później."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 11.1
  SAY #10281 /* ~"Taka jest cena. Bierz albo szpicuj się."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10282 /* ~"Dobra, biorę."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10283 /* ~"Nie mam tyle."~ */ GOTO 7
  IF ~~ THEN REPLY #10284 /* ~"Zapomnij. Odpowiedz mi zamiast tego na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10285 /* ~"Szpicuję to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0 11.2
  SAY #10286 /* ~"Stoi." Wyciąga z kieszeni pociemniałą, zatkniętą woskiem butelkę o szerokiej szyjce. Słyszysz dochodzący ze środka szum lejącej się cieczy, a także głośniejszy, bardziej piskliwy odgłos. Otwierasz ją i smród jakiegoś środka konserwującego prawie cię zatyka. W galaretowatej mazi pływa gałka oczna. "Lepiej zastanów się teraz, co chcesz z tym zrobić... gdy już wystawiłeś je na działanie powietrza, możesz równie dobrze włożyć jajo do słoika. Namyśl się, śmiałku..."~ */
  IF ~  HPGT(Protagonist,15)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10287 /* ~Wyrwij sobie oko i umieść 'nowe' w oczodole.~ */ DO ~GiveExperience(Protagonist,1000)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPGT(Protagonist,15)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10288 /* ~Wyrwij sobie oko i umieść 'nowe' w oczodole.~ */ DO ~GiveExperience(Protagonist,750)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #10289 /* ~Wyrwij sobie oko i umieść 'nowe' w oczodole.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 10
  IF ~~ THEN REPLY #10290 /* ~Obserwuj, jak oko gnije.~ */ GOTO 25
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 11.3
  SAY #10291 /* ~"Zatem nie dostaniesz z powrotem swojego oka. Jasne? Przyjdź do mnie, gdy będziesz miał brzdęk."~ */
  IF ~~ THEN REPLY #10292 /* ~"Dobrze. Odpowiedz mi zatem na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10293 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1
  SAY #10294 /* ~Wahając się nieco, sięgasz do oczodołu i wyciągasz oko. Karczmarz przychodzi ci z pomocą, odcina nerw wzrokowy i kieruje twoją rękę do słoja z mazią znajdującego się na ladzie. Wrzucasz oko do konserwantu, otaczasz palcami stare i wciskasz je do pustego oczodołu. Ból podczas całej operacji jest niesamowity. Po chwili jednak czujesz jak nerw łączy się z nowym okiem... i nagle uderza cię wspomnienie!~ */
  IF ~~ THEN REPLY #10295 /* ~Przyjmij je.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10296 /* ~Wspomnienie: Ogromna powierzchnia chaotycznego, ciągle zmieniającego się pustkowia rozciąga się przed tobą, grupa humanoidalnych sępów nurkuje w twoją stronę. Ich okrutna broń jest gotowa do zadania ciosu, a ty w dłoniach ściskasz mocno lśniące ostrze...

Wspomnienie: Otaczają cię trzej siłacze odziani w kolory wroga, którego nie jesteś w stanie dokładnie sobie przypomnieć. Długie sztylety błyszczą w ich dłoniach, a od wyszczerzonych zębów odbija się światło. Spoglądasz na pokryte bliznami dłonie i wiesz, że wkrótce pokryją się krwią...

Wspomnienie: Potężna, żabiopodobna istota zbliża się ponad/przez/pod materią chaosu, kierując się w twoją stronę z paszczą pełną kłów. Rzucasz oszczep przez zmieniającą się materię i przyszpilasz bestię do nagle kamiennej płyty... Przypomniałeś sobie część z utraconych umiejętności walki.~ */
  IF ~~ THEN REPLY #10297 /* ~Spytaj Barkisa jeszcze o kilka rzeczy.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ GOTO 2
  IF ~~ THEN REPLY #10298 /* ~Odejdź.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #10299 /* ~Grzebiesz w oczodole. Ból jest silny, niesamowity i nagle cię przytłacza. Padasz na ziemię, krwawiąc ze świeżo otwartej rany. Umierasz.~ */
  IF ~~ THEN REPLY #10300 /* ~Zrobione.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1 1.1 2.1
  SAY #10301 /* ~"Chcesz je z powrotem? Cena wynosi pięćset monet. Nie masz ich, nie dostaniesz go."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10302 /* ~"Pięćset? To śmieszne!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10303 /* ~"Pięćset? To śmieszne!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10304 /* ~"Pięćset? Dobrze. Proszę."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10305 /* ~"Nie mam tyle."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10306 /* ~"Teraz mnie to nie interesuje. Odpowiedz mi zamiast tego na kilka pytań."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10307 /* ~"Zapomnij. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 1.2 2.2
  SAY #10308 /* ~"Ja? Jestem Barkis. Właściciel tego miejsca."~ */
  IF ~~ THEN REPLY #10309 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~~ THEN REPLY #10310 /* ~"Zatem jesteś osobą, którą należy pytać."~ */ GOTO 2
  IF ~~ THEN REPLY #10311 /* ~"Miłe miejsce. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3 1.3 2.3 12.0
  SAY #10312 /* ~"Czy nie widziałeś szyldu przed wejściem? Nie widziałeś trepa płonącego nad piecem, gdy tu wchodziłeś? To gospoda 'Pod Gorejącym Człekiem', śmiałku, najlepsza bełciarnia w Sigil. A przynajmniej najlepsza bełciarnia w tej części Ula, co czyni ją jedną z najlepszych w Sigil. Tak, cholera, są dziwne miejsca z roślinami i takimi tam w Dzielnicy Pani, są też biesie tawerny rozsiane po reszcie Ula, ale żadna z nich nie ma charakteru Gorejącego Człeka."~ */
  IF ~~ THEN REPLY #10313 /* ~"Kim jest tak właściwie ten trup?"~ */ GOTO 14
  IF ~~ THEN REPLY #10314 /* ~"Rozumiem. Powiedz mi coś jeszcze, dobrze?"~ */ GOTO 2
  IF ~~ THEN REPLY #10315 /* ~"Prawda na wiele różnych sposobów. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #10316 /* ~"On? Ignus. Był czarodziejem ognia, spalił część Ula i zdybali go inni magowie. Jak chcesz się dowiedzieć o nim czegoś więcej, to pogadaj z Drusillą tam, przy drzwiach."~ */
  IF ~~ THEN REPLY #10317 /* ~"Dobrze. Chcę jednakże dowiedzieć się czegoś jeszcze."~ */ GOTO 2
  IF ~~ THEN REPLY #10318 /* ~"Doskonale, uczynię tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.4 1.4 2.4
  SAY #10319 /* ~"Nie wtrącam się w życia ludzi, którzy dają mi swój ciężko zarobiony brzdęk, o ile mnie o to nie proszą. Więc. Tam jest Kandrian. Obieżysfer. Jeśli masz jakieś pytania odnośnie podróżowania, to on jest osobą, z którą powinieneś porozmawiać - był w bardzo wielu miejscach. Tam poniżej znajduje się Ebb Skrzypiący, stary siepacz Harmonium - nie miej mu tego za złe - oraz oprowadzacz. Ma w sobie dobre serce i zna Sigil od podszewki. Te tam biesy to Etelgrin i Tegar'in. Dobra rada: nie zadawaj się z nimi. Mogą należeć do niższej rangi biesów, ale to wciąż biesy. Dalej masz Ilquiksa - NIE należy mu ufać - i kilku Łaskobójców poszukujących jakiegoś biednego skurla. Dak'kon, githzerai, jest dla mnie zagadką. Nie wiem o nim wiele. Prawie się nie odzywa. A przy okazji - jesteś zainteresowany darmowym bełtem?"~ */
  IF ~~ THEN REPLY #10320 /* ~"Tak."~ */ GOTO 16
  IF ~~ THEN REPLY #10321 /* ~"Właściwie to nie. Czy odpowiesz mi na kilka pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #10323 /* ~"Nie. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10322 /* ~"Przy tamtej ścianie w cieniu siedzi sobie jakaś babka, która stara się zebrać na odwagę, by wyślizgnąć się bez płacenia rachunku. Chciałbym, żebyś upewnił się, że tego nie zrobi. Uda ci się, to masz tu do końca życia bełty za darmo."~ */
  IF ~~ THEN REPLY #10324 /* ~"Zrobię to. Najpierw odpowiedz mi na kilka pytań."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10325 /* ~"Raczej nie. Zamiast tego odpowiedz mi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10326 /* ~"Uczynię to. Dam ci znać, gdy będzie załatwione."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #10327 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.5 1.5 2.5 19.0 20.0 21.0 22.0 23.0 24.1 24.2 28.0
  SAY #10328 /* ~"Czego chcesz? Mamy zwykłe piwo za monetę, goryczkę za dwie, miód za cztery. Wodę prosto ze Sfery Żywiołu za osiem, Arborejskie wino ogniste i ogniste nasiona za dziesięć. Również sercowino z Klątwy za osiem i baatoriańską whisky za dwadzieścia. Czego sobie życzysz?"~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10329 /* ~"Piwo."~ */ DO ~TakePartyGold(1)
~ GOTO 20
  IF ~  PartyGoldLT(1)
~ THEN REPLY #10330 /* ~"Piwo."~ */ GOTO 19
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10331 /* ~"Goryczka."~ */ DO ~TakePartyGold(2)
~ GOTO 20
  IF ~  PartyGoldLT(2)
~ THEN REPLY #10332 /* ~"Goryczka."~ */ GOTO 19
  IF ~  PartyGoldGT(3)
~ THEN REPLY #10333 /* ~"Miód."~ */ DO ~TakePartyGold(4)
~ GOTO 20
  IF ~  PartyGoldLT(4)
~ THEN REPLY #10334 /* ~"Miód."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10335 /* ~"Woda."~ */ DO ~TakePartyGold(8)
~ GOTO 21
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10336 /* ~"Woda."~ */ GOTO 19
  IF ~  PartyGoldGT(9)
~ THEN REPLY #10337 /* ~"Wino ogniste i ogniste nasiona."~ */ DO ~TakePartyGold(10)
~ GOTO 22
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10338 /* ~"Wino ogniste i ogniste nasiona."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10340 /* ~"Sercowino."~ */ DO ~TakePartyGold(8)
~ GOTO 23
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10341 /* ~"Sercowino."~ */ GOTO 19
  IF ~  PartyGoldGT(19)
~ THEN REPLY #10342 /* ~"Whiskey."~ */ DO ~TakePartyGold(20)
~ GOTO 24
  IF ~  PartyGoldLT(20)
~ THEN REPLY #10343 /* ~"Whiskey."~ */ GOTO 19
  IF ~~ THEN REPLY #10344 /* ~"Informacje."~ */ GOTO 2
  IF ~~ THEN REPLY #10345 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.7 2.7 20.1 21.1 22.1 23.1 24.3 28.1 32.0
  SAY #10339 /* ~"Chcesz napitku, to go dostaniesz. Oto co mamy: piwo, goryczkę, miód, wodę z Żywiołu, ogniste wino i ogniste ziarna z Arborei, sercowino z Klątwy i baatoriańską whiskey. Co podać?"~ */
  IF ~~ THEN REPLY #10346 /* ~"Piwo."~ */ GOTO 20
  IF ~~ THEN REPLY #10347 /* ~"Goryczka."~ */ GOTO 20
  IF ~~ THEN REPLY #10348 /* ~"Miód."~ */ GOTO 20
  IF ~~ THEN REPLY #10349 /* ~"Woda."~ */ GOTO 21
  IF ~~ THEN REPLY #10350 /* ~"Wino ogniste i ogniste nasiona."~ */ GOTO 22
  IF ~~ THEN REPLY #10351 /* ~"Sercowino."~ */ GOTO 23
  IF ~~ THEN REPLY #10352 /* ~"Whiskey."~ */ GOTO 24
  IF ~~ THEN REPLY #10353 /* ~"Informacje."~ */ GOTO 2
  IF ~~ THEN REPLY #10354 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.3 17.5 17.7 17.9 17.11 17.13
  SAY #10355 /* ~Karczmarz marszczy się. "Nie masz brzdęku, aby za to zapłacić. Nie dostaniesz też na kredyt. Zbyt wiele razy ostatnio spalono mi lokal. Chcesz coś jeszcze?"~ */
  IF ~~ THEN REPLY #10356 /* ~"Co masz do picia?"~ */ GOTO 17
  IF ~~ THEN REPLY #10357 /* ~"Tak. Informacje."~ */ GOTO 2
  IF ~~ THEN REPLY #10358 /* ~"Nie, przykro mi."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.2 17.4 18.0 18.1 18.2
  SAY #10359 /* ~Wypijasz słaby napitek. Nie czuć zbyt wyraźnie smaku, ale napój jest sycący i ma w sobie alkohol. Nic więcej się nie dzieje. "Co ma być, śmiałku?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10360 /* ~"Daj mi jeszcze coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10361 /* ~"Daj mi jeszcze coś do picia."~ */ GOTO 18
  IF ~~ THEN REPLY #10362 /* ~"Odpowiedz mi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10363 /* ~"Nic."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.6 18.3
  SAY #10364 /* ~Cofa się do beczki w ścianie i odkręca kurek. Najczystsza woda, jaką kiedykolwiek widziałeś, wlewa się do szklanicy, którą trzyma karczmarz. Stawia ją przed tobą, a ty bierzesz głęboki łyk. To najczystsza rzecz, jaką kiedykolwiek piłeś, zimno jest jej naturalnym składnikiem, słodki powiew przechodzi przez twój język i spływa do żołądka, gdzie chłód wody ucisza nawet twoje szalejące emocje. "Z serca Sfery Żywiołu Wody," mówi karczmarz. "Każda inna woda, jaką kiedykolwiek wypijesz w porównaniu z nią będzie smakować brudem."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10365 /* ~"Daj mi jeszcze coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10366 /* ~"To było świetne. Daj mi jeszcze coś do picia."~ */ GOTO 18
  IF ~~ THEN REPLY #10367 /* ~"W takim wypadku poproszę cię o odpowiedź na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10368 /* ~"Całkiem interesujące doświadczenie. Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.8 18.4
  SAY #10369 /* ~Podaje ci szklanicę wina w kolorze bardzo głębokiej czerwieni i garść jasnych ziaren. "Włóż nasiona do ust," radzi, "i popij winem. Nie bądź zaskoczony, gdy nasiona zapłoną. Nie uczynią ci nic złego. To smak jak żaden inny." Ma rację. Gdy wkładasz ziarno do ust, nasiąka ono twoją śliną i zapala się malutkim płomieniem. Gasisz je łykiem ognistego wina. Smak jest nie do opisania. Barkis uśmiecha się. "Chcesz jeszcze?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10370 /* ~"Cholera, tak. Daj mi jeszcze coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10371 /* ~"Dawaj."~ */ GOTO 18
  IF ~~ THEN REPLY #10372 /* ~"Nie teraz, dzięki. Chciałbym ci zamiast tego zadać kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10373 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.10 18.5
  SAY #10374 /* ~Podaje ci kielich sławnego wina Klątwy. Jego bogaty, owocowy bukiet zapiera dech w piersiach. Posmak również nie pozostawia wiele do życzenia. "Zrobione z prawdziwej ostrorośli. Chciałbym poznać jego sekret." Oberżysta kiwa głową, patrząc na pusty kielich. "Chcesz więcej?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10375 /* ~"Z pewnością."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10376 /* ~"Z pewnością."~ */ GOTO 18
  IF ~~ THEN REPLY #10377 /* ~"Nie, ale chciałbym kilka odpowiedzi."~ */ GOTO 2
  IF ~~ THEN REPLY #10378 /* ~"Nie, dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.12 18.6
  SAY #10379 /* ~Stawia przed tobą jakąś parującą substancję, która wygląda jak wrząca uryna. Opary, które pełzną w twoją stronę, są jednak wyjątkowo kuszące. Smak, choć prawie nieznośnie gorący, jest równie dymny jak zapach - uczucie jak napitek przepala się do twoich wnętrzności jest prawie bolesne, ale nawet ten ból jest słodki. Oczy karczmarza się rozszerzają. "Wciąż stoisz? Większość nie jest w stanie przetrzymać nawet połowy pierwszego łyku."~ */
  IF ~~ THEN REPLY #10380 /* ~"Czuję się dobrze, nic mi nie jest."~ */ GOTO 28
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10381 /* ~"Daj mi jeszcze coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10381 /* ~"Daj mi jeszcze coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10382 /* ~"Daj mi jeszcze coś do picia."~ */ GOTO 18
  IF ~~ THEN REPLY #10383 /* ~"Mam dobrą odporność. Odpowiesz mi na pytanie?"~ */ GOTO 2
  IF ~~ THEN REPLY #10384 /* ~"Większość ludzi nie potrafi tego, co ja. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.3
  SAY #10385 /* ~Oko rozkłada się na twoich oczach, wycieka z niego galaretowata maź, która wypełnia twoje nozdrza smrodem i zanieczyszcza powietrze dokoła. Karczmarz macha dłonią przed twarzą, by odgonić opary i mówi: "To była strata pieniędzy. Chcesz czegoś jeszcze?"~ */
  IF ~~ THEN REPLY #10386 /* ~"Oddawaj pieniądze. Natychmiast."~ */ GOTO 26
  IF ~~ THEN REPLY #10387 /* ~"Tylko odpowiedzi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10388 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #10389 /* ~"Trepie, tylko dlatego, że zdecydowałeś się, że nie chcesz nic zrobić ze swoim zakupem, to wcale nie oznacza, że zniknął on z mojej winy. Chciałeś użyć oka do czegoś, to trzeba było jeszcze raz zrobić tę sztuczkę z okiem. To już nie moja sprawa."~ */
  IF ~~ THEN REPLY #10390 /* ~"Będzie, jeśli cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Barkis_One","GLOBALGood",-1)
~ GOTO 27
  IF ~~ THEN REPLY #10391 /* ~"Masz rację. Odpowiedz mi zatem na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10392 /* ~"Może później. Miłego dnia."~ */ EXIT
  IF ~~ THEN REPLY #10393 /* ~"Nie, nie wydaje mi się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #10394 /* ~Uśmiecha się krzywo. "Spróbuj."~ */
  IF ~~ THEN REPLY #10395 /* ~"Zapomnij o tym. Lepiej odpowiedz na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10396 /* ~"Zapomnij."~ */ EXIT
  IF ~~ THEN REPLY #10397 /* ~Zaatakuj go.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.0
  SAY #10398 /* ~Karczmarz przygląda ci się ostrożnie, kładąc dłoń pod brodą. "Wiesz, śmiałku, istnieją tacy, co mają naturalną odporność na trucizny i takie tam. Niektórzy nazywają bełt trucizną. Jeśli tak sprawa wygląda, to masz spore szanse na całkiem niezłą ochronę przed trucicielami."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10399 /* ~"A co powiesz na... daj mi jeszcze coś do picia."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10400 /* ~"A co powiesz na... daj mi jeszcze coś do picia."~ */ GOTO 18
  IF ~~ THEN REPLY #10401 /* ~"To się powinno przydać. Odpowiedz mi na kilka pytań, dobra?"~ */ GOTO 2
  IF ~~ THEN REPLY #10402 /* ~"Dobre. Dzięki i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.6 1.8 2.8
  SAY #10403 /* ~"Dziennik? Papier i słowa? Przyjacielu, tego rodzaju rzeczy nie mają popytu tu, w Ulu. Tutejsi mieszkańcy ledwo potrafią przeczytać szyld nad drzwiami, nie mówiąc już o całym dzienniku. Jeśli szukasz czegoś takiego, lepiej trochę pomyśl, zamiast pytać o to każdego."~ */
  IF ~~ THEN REPLY #10404 /* ~"Dzięki za niepotrzebną radę. Odpowiedz mi zatem na inne pytanie."~ */ GOTO 2
  IF ~~ THEN REPLY #10405 /* ~"Doskonale. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 0.7 1.9 2.9
  SAY #10406 /* ~Odwraca się i spluwa na podłogę. "Farod? Phi. Możesz równie dobrze odwrócić się do niego plecami i pozwolić mu zatopić w nich sztylet. Choć sądząc po twoim wyglądzie, to już się to stało. Jeśli odnalezienie Faroda to dla ciebie sprawa życia i śmierci - wybacz mi tę grę słów - to pogadaj z Ebbem Skrzypiącym. On powinien coś o tym wiedzieć."~ */
  IF ~~ THEN REPLY #10407 /* ~"Uczynię to zatem, po tym jak odpowiedz mi jeszcze na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10408 /* ~"Z Ebbem? Tym starcem? Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.6 1.11 2.6
  SAY #10409 /* ~"Zatem, przyjacielu, masz pełne prawo korzystać z napitku... za darmo. Co tylko zechcesz, zawsze."~ */
  IF ~~ THEN REPLY #10410 /* ~"Musiała mieć całkiem niezły rachunek."~ */ GOTO 32
  IF ~~ THEN REPLY #10411 /* ~"Dzięki. Jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #10412 /* ~"Pogadamy o tym później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #10413 /* ~"Nie wiesz nawet połowy. Czy chcesz teraz coś do picia?"~ */
  IF ~~ THEN REPLY #10414 /* ~"Stawiaj."~ */ GOTO 18
  IF ~~ THEN REPLY #10415 /* ~"Teraz szukam informacji."~ */ GOTO 2
  IF ~~ THEN REPLY #10416 /* ~"Nie. Ale wrócę."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #10417 /* ~"Ogniste nasiona już idą!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.8 1.12 2.10
  SAY #45136 /* ~"Giltspur, hę? Niech spojrzę." Zabiera od ciebie notkę i ogląda ją. Marszczy się i mówi: "Dobrze. Powiedz mu, że to wywieszę. Jeszcze coś?"~ */
  IF ~~ THEN REPLY #45137 /* ~"Jeszcze tylko kilka odpowiedzi..."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ GOTO 2
  IF ~~ THEN REPLY #45138 /* ~"Nic więcej, dzięki. Żegnaj."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.10 2.11
  SAY #57943 /* ~Obdarza cię zdziwionym spojrzeniem. "Już przez to przebrnęliśmy, prawda? Czy chcesz jeszcze coś, o czym ci nie powiedziałem?"~ */
  IF ~~ THEN REPLY #57944 /* ~"Po prostu odpowiedz mi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #57945 /* ~"Nie. Żegnaj."~ */ EXIT
END
