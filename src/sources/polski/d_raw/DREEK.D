// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DREEK~

IF ~  Global("Reekwind","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Człowiek ten przygląda ci się dziwnie wytrzeszczonymi ze zdumienia oczami. Jego oczy są *ogromne*... tak wielkie, że zdaje się, iż lada moment wyskoczą ze swoich oczodołów i potoczą się po bruku. Gdy się zbliżasz, człowiek zaczyna kiwać energicznie głową, ruszając nią na wszystkie strony jak ptak... zaś gdy podchodzisz do niego całkiem blisko, wyczuwasz nagle, że otacza go zapach moczu i kału.~ */
  IF ~~ THEN REPLY #9339 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #11329 /* ~Zostaw tego obdartego człowieka w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Człowiek pociąga kilka razy nosem i wyciera go w rękaw, a następnie otwiera usta, ukazując sczerniałe, zgnite dziąsła. "Opowieści za miedziaka, sirrah?" Jego oddech cuchnie; śmierdzi tak jakby ten człowiek przetrzymywał w ustach zgnite mięso. "Opowieści za miedziaka?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #11330 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0
  SAY #11276 /* ~Człowiek odchrząkuje grubą flegmę. "Imiona, imiona... kim jesteś, kim jesteś..." Za każdym razem, gdy powtarza po sobie, jego głowa nieznacznie drga. "Imiona... niebezpieczne, niebezpieczne." Spogląda na ziemię i grzebie stopą w kurzu.~ */
  IF ~~ THEN REPLY #11331 /* ~"Niebezpieczne?"~ */ DO ~SetGlobal("Reekwind","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #11332 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11277 /* ~"Znanie imienia lub posiadanie go, w obu przypadkach to masa problemów." Znów spogląda na ciebie. "Moje imię zostało mi dane, nie prosiłem o nie. Śmierdziwiatr." Po raz kolejny uświadamiasz sobie jak nieświeży jest jego oddech oraz zdajesz sobie sprawę z otaczającego go zapachu moczu i kału. "Nadane imię, nadane imię."~ */
  IF ~~ THEN REPLY #11333 /* ~"Odpowiednie... imię."~ */ GOTO 4
  IF ~~ THEN REPLY #11334 /* ~"Cha, cha. To imię pasuje do ciebie jak ulał."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Reekwind_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #11335 /* ~"Czy to jest twoje prawdziwe imię?"~ */ GOTO 4
  IF ~~ THEN REPLY #11336 /* ~"Ja... rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #11278 /* ~"Nie moje prawdziwe imię, prawdziwe imię." Śmierdziwiatr mamrocze dalej, jego głowa drga za każdym razem, gdy wypowiada słowo *imię*. "Prawdziwe imię to niebezpieczna rzecz, dodaje innym mocy." Wpatruje się w ciebie swoimi ogromnymi oczami i potrząsa palcem. "Trzymaj swoje imię w tajemnicy, trzymaj je blisko serca, nigdy go nie wypuszczaj."~ */
  IF ~~ THEN REPLY #11337 /* ~"Co masz na myśli?"~ */ GOTO 5
  IF ~~ THEN REPLY #11338 /* ~"Ja... rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #11279 /* ~"Imiona są jak zapachy... rzeczy mogą cię prowadzić dzięki zapachom." Śmierdziwiatr kaszle, a gdy to robi, oczy mało mu nie wyskakują z czaszki. Kaszel zdaje się rozluźniać jego kiszki ponieważ puszcza głośnego bąka, jakby dla podkreślenia tego, co mówi. "Jeśli ktoś zna prawdziwe imię, dodaje mu to mocy." Oblizuje usta. "Mocy do *zadawania bólu*."~ */
  IF ~~ THEN REPLY #11339 /* ~"Nie znam swojego prawdziwego imienia."~ */ JOURNAL #61613 /* ~Spotkałem w Ulu chorego gawędziarza, człowieka, którego ze względu na nieznośny zapach, jaki sobą roztaczał, nazywano "Śmierdziwiatrem". W rozmowie ze mną jegomość ów przestrzegł mnie przed niebezpieczeństwem, jakie kryje się w imionach. Śmierdziwiatr oświadczył mi, że kto posiada jakieś imię, tego łatwo poszukiwać, śledzić i osaczać. Słuchając jego słów poczułem zimny dreszcz. Więc może powinienem dziękować bogom, że uczynili mnie "Bezimiennym"?~ */ GOTO 6
  IF ~~ THEN REPLY #11340 /* ~"Ja... rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #11280 /* ~Oczy Śmierdziwiatra rozszerzają się; widząc jak jego gałki oczne stają się jeszcze bardziej wyłupiaste, zaczynasz się czuć nieswojo. "W takim układzie jesteś błogosławiony, błogosławiony. Pozostań bezimiennym, a będziesz jak duch na Sferach, nie pozostawiający śladu, nie do wytropienia, niezauważalny, nie do odkrycia." Mlaska soczyście swoimi dziąsłami. "Imię wybrane, imię nadane... pozwala innym cię odnaleźć i skrzywdzić."~ */
  IF ~~ THEN REPLY #11341 /* ~"Czy ktoś cię zranił?"~ */ GOTO 7
  IF ~~ THEN REPLY #11342 /* ~"Ja... rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.1
  SAY #11281 /* ~Śmierdziwiatr kiwa głową jakby dostał tiku, po czym drapie się. "Zdradziłem swoje imię raz, raz, tylko raz, tylko raz." Przewraca oczami jakby to wspomnienie było bolesne, po czym spogląda na ciebie z niepokojem. "Opowiem ci to co mogę, z pewnością, ale najpierw muszę zobaczyć trzy miedziaki." Uśmiech przecina jego twarz, gdy wypowiada słowo *miedziaki*, a jego cuchnący oddech uderza w ciebie niczym młot.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11343 /* ~"Zgoda. Oto trzy miedziaki."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11344 /* ~Kłamstwo: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11345 /* ~Prawda: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11346 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.0 17.3
  SAY #11282 /* ~Śmierdziwiatr wstaje, rozgląda się w lewo i w prawo, po czym staje do ciebie przodem. Wykrzywia twarz z wysiłku, a następnie puszcza kolejnego bąka, chrząkając przy tym jak świnia. Odór niemal powala cię na ziemię, ale on nic sobie z tego nie robi. "Przeklęty jestem! Przechadzałam się dumnie dzielnicami..." Stoi wyprostowany jak struna, z wysoko zadartym nosem. Chodzi wolno tam i z powrotem, witając się z niewidzialnymi przechodniami.~ */
  IF ~~ THEN REPLY #11347 /* ~Słuchaj.~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
~ JOURNAL #63974 /* ~Śmierdziwiatr zdradził mi, że nie zawsze roztaczał tak przykre zapachy. Z tego, co powiedział, zrozumiałem, że któregoś dnia miał pech trafić na kogoś wyjątkowo wrednego, i w efekcie tego spotkania został obłożony klątwą smrodu. A według niego stało się to dlatego, że ten kto rzucił klątwę znał prawdziwe imię Śmierdziwiatra. Wynika więc z tego, że status Bezimiennego też ma swoje plusy. Jeżeli zaś chodzi o winowajcę aktualnego położenia Śmierdziwiatra, to, według jego opisu, ma to być człowiek gruby, łysawy (wręcz "dyniowaty"), preferujący ponoć szaty w kolorze pomarańczowym. Najprawdopodobniej będzie przebywał w którejś części Wyższej Dzielnicy, gdzie niegdyś mieszkał również sam Śmierdziwiatr.~ */ GOTO 9
  IF ~~ THEN REPLY #11348 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11349 /* ~"Myślę, że usłyszałem dosyć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11283 /* ~Śmierdziwiatr bierze się rękami pod boki i tak nieruchomieje. "Przypadkowe spotkanie z przeklętym. Wyglądał jak dynia, każde z jego nasion to klątwa!" Śmierdziwiatr wyrzuca brzuch do przodu, by wyglądać na grubego, zaczesuje do tyłu włosy swoją brudną dłonią, by wyglądać na łysego, i zaczyna stukać palcami o swój 'tłusty' brzuch. Następnie chodzi wkoło, okrążając miejsce, w którym stała jego 'nadęta persona z wyższych sfer'. "Cały zamotany w klątwy, taki był." Niedbałym ruchem Śmierdziwiatr rzuca niewidzialną klątwę na 'nadętą personę', szydząc przy tym dziko.~ */
  IF ~~ THEN REPLY #11364 /* ~Słuchaj.~ */ GOTO 10
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11366 /* ~"Zaczekaj chwilę... *spotkałem* osobę, którą rzuciła na ciebie klątwę. Ma na imię Mordsens, nieprawdaż?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Najprawdopodobniej człowiekiem, który przeklął Śmierdziwiatra jest Mieszacz Mordsens.~ */ GOTO 11
  IF ~~ THEN REPLY #11368 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11370 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0 12.0
  SAY #11284 /* ~"Znał moje imię, zdradziłem je przez przypadek, tak, całe je wziął, wziął je całe!" Ponownie napina się jak struna, wciągając głęboko powietrze i na powrót przybierając postać swojej persony z 'wyższych sfer'. Persona ta nagle zgina się wpół i Śmierdziwiatr puszcza z wielkim hukiem bąka, po czym wypuszcza powietrze, wypełniając atmosferę swoim obrzydliwym, cuchnącym oddechem. "Przeklęty smrodami, odorami, odchodami! Przybył tutaj, aby opowiadać opowieści, wszystkie dobre na, wszystkie dobre na teraz. Teraz Śmierdziwiatr to imię, nadane imię, nadane imię..."~ */
  IF ~~ THEN REPLY #11372 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11375 /* ~"Zaczekaj chwilę... *spotkałem* osobę, którą rzuciła na ciebie klątwę. Ma na imię Mordsens, nieprawdaż?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Najprawdopodobniej człowiekiem, który przeklął Śmierdziwiatra jest Mieszacz Mordsens.~ */ GOTO 11
  IF ~~ THEN REPLY #11378 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 15.7
  SAY #11285 /* ~Na dźwięk tego imienia Śmierdziwiatr nadyma policzki, wytrzeszcza oczy i nagle wymiotuje prosto pod swoje nogi. Całe jego ciało się trzęsie, wstrząsane kaszlem i konwulsjami żołądka... po upływie kilku długich minut, skina umęczoną głową i kreśli półkole ponad swoim sercem.~ */
  IF ~~ THEN REPLY #11380 /* ~"Co się wydarzyło po tym jak spotkałeś... jego?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 10
  IF ~~ THEN REPLY #11382 /* ~"Niemiła historia. Mam jeszcze kilka pytań do ciebie..."~ */ GOTO 15
  IF ~  Dead("Jumble")
~ THEN REPLY #11384 /* ~"Jest martwy."~ */ GOTO 13
  IF ~  !Dead("Jumble")
~ THEN REPLY #11386 /* ~"Prawdopodobnie mógłbym go skłonić do zdjęcia klątwy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Reekwind_1","GLOBALGood",1)
~ GOTO 12
  IF ~~ THEN REPLY #11389 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.3
  SAY #11286 /* ~Śmierdziwiatr wygląda przez chwilę na pełnego nadziei, ale potem smutnieje. "Obietnice, obietnice..." Wydaje z siebie podobne do łkania westchnienie, przy czym każdy wydech zaznaczony jest cuchnącą czkawką. "Spróbuj, jeśli chcesz, jeśli chcesz..."~ */
  IF ~~ THEN REPLY #11391 /* ~"Co się wydarzyło po tym jak spotkałeś... jego?"~ */ GOTO 10
  IF ~~ THEN REPLY #11411 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11412 /* ~"O razu pójdę się z nim zobaczyć w tej sprawie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #11287 /* ~Wydaje z siebie podobne do łkania westchnienie, przy czym każdy wydech zaznaczony jest cuchnącą czkawką. "Nieważne więc, nieważne..."~ */
  IF ~~ THEN REPLY #11413 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ GOTO 15
  IF ~~ THEN REPLY #11414 /* ~"Żegnaj."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ EXIT
END

IF ~  OR(2)
Global("Reekwind","GLOBAL",1)
Global("reekwind","global",10)
~ THEN BEGIN 14 // from:
  SAY #11288 /* ~Śmierdziwiatr zauważa cię, gdy się zbliżasz, ruszając energicznie głową na wszystkie strony i wpatrując się w ciebie swoimi ogromnymi oczami. Gdy podchodzisz do niego całkiem blisko, powtórnie uderza cię otaczający go odór moczu i kału.~ */
  IF ~~ THEN REPLY #11415 /* ~"Witaj, Śmierdziwiatrze. Mam do ciebie kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11416 /* ~Zostaw Śmierdziwiatra w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1 7.2 8.1 9.2 10.0 11.1 12.1 13.0 14.0 16.1 16.2 18.1 18.2 19.1 20.1 21.1 22.1 23.1 23.2 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 32.0 33.1 33.2 34.1 35.1 36.1 37.1 38.1 39.0 40.1 41.1 42.1 43.1 44.3 45.0 47.0
  SAY #11289 /* ~"Pytania, pytania..." Śmierdziwiatr garbi się, przyglądając ci się uważnie swoimi ogromnymi oczami. "Odpowiedzi, odpowiedzi...?"~ */
  IF ~~ THEN REPLY #11417 /* ~"Jeszcze raz: kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #11418 /* ~"Co ci się stało?"~ */ GOTO 7
  IF ~~ THEN REPLY #11419 /* ~"Chcę wysłuchać opowieści."~ */ GOTO 16
  IF ~~ THEN REPLY #11420 /* ~"Możesz mi opowiedzieć o tej okolicy?"~ */ GOTO 18
  IF ~  Global("Pharod","GLOBAL",0)
Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #11421 /* ~"Możesz mi powiedzieć, gdzie znajdę kogoś o imieniu Farod?"~ */ GOTO 33
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #11422 /* ~"Możesz mi jeszcze raz opowiedzieć o Farodzie?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11423 /* ~"Szukam dziennika. Nie widziałeś jakiegoś?"~ */ GOTO 32
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11424 /* ~"Znalazłem człowieka, który rzucił na ciebie klątwę, w Gmachu Rozrywki. Ma na imię Mordsens."~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 11
  IF ~~ THEN REPLY #11425 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY #11290 /* ~"Opowiem ci to co mogę, z pewnością, ale najpierw muszę zobaczyć trzy miedziaki." Uśmiech przecina jego twarz, gdy wypowiada słowo *miedziaki*, a jego cuchnący oddech uderza w ciebie niczym młot.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11426 /* ~"Zgoda. Oto trzy miedziaki."~ */ DO ~TakePartyGold(3)
~ GOTO 17
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11427 /* ~Kłamstwo: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11428 /* ~Prawda: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11429 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11291 /* ~Mężczyzna bierze miedziaki, przygryza je dziąsłami, po czym, ku twojemu zaskoczeniu, połyka je. "Najlepszy portfel, jest tam najlepszy portfel, brzuszek, brzuszek." Sapie, wypuszczając z ust cuchnące powietrze. "Opowieść, opowieść..." Mlaska ustami, drapiąc się po brudnych łachach.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",0)
~ THEN REPLY #11430 /* ~Poczekaj, aż wybierze historię.~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",0)
~ THEN REPLY #11431 /* ~Poczekaj, aż wybierze historię.~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11432 /* ~Poczekaj, aż wybierze historię.~ */ GOTO 24
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
~ THEN REPLY #11433 /* ~"Chciałbym usłyszeć historię o tym jak zostałeś przeklęty."~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11434 /* ~"Chciałbym usłyszeć o tym, co się stało z Aleją Niebezpiecznych Węgłów."~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #11453 /* ~"Chciałbym usłyszeć historię Ignusa."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatGT(Protagonist,13,INT)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11457 /* ~"Chcę usłyszeć historię o człowieku, który przybył do tego miasta, bez imienia czy pamięci i rozmawiał z przeklętym bajarzem, który ostrzegł go przed niebezpieczeństwem jakie kryją imiona."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11459 /* ~"Chcę usłyszeć historię o człowieku, który przybył do tego miasta, bez imienia czy pamięci i rozmawiał z przeklętym bajarzem, który ostrzegł go przed niebezpieczeństwem jakie kryją imiona."~ */ GOTO 40
  IF ~~ THEN REPLY #11463 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY #11292 /* ~"Ul, Ul... mogę opowiedzieć historię, mogę opowiedzieć historię, tak, ale muszę zobaczyć trzy miedziaki." Mlaska dziąsłami i chrząka jak świnia.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11468 /* ~"Zgoda. Oto trzy miedziaki."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11479 /* ~Kłamstwo: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11480 /* ~Prawda: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11481 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.4 18.0
  SAY #11293 /* ~"Na iglicę, na iglicę..." Wskazuje w swoją lewą stronę, na spopieloną aleję w oddali. "*Aleja Niebezpiecznych Węgłów*." Wykrzywia swoje kończyny parodiując jeden ze szkieletowych budynków. "Nie zawsze pochylone, nie zawsze spalone i spopielone, kiedyś żyjące, ale już nie."~ */
  IF ~~ THEN REPLY #11482 /* ~Słuchaj.~ */ GOTO 20
  IF ~~ THEN REPLY #11483 /* ~"Właściwie to nie mam teraz czasu na opowieści. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11484 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #11294 /* ~"Płomienie, ogień!" Wyrzuca ręce wysoko w górę i porusza nimi naśladując płomienie. "Aleja spłonęła, wielki dym, wszędzie popiół... a na końcu zostały jedynie szkielety budynków, kości martwych budynków, kości martwych budynków. Zgliszcza... wszędzie, zgliszcza."~ */
  IF ~~ THEN REPLY #11485 /* ~Słuchaj.~ */ JOURNAL #63976 /* ~Śmierdziwiatr opowiedział mi historię "Alei Niebezpiecznych Węgłów". Ten rejon Ula znajduje się bardzo blisko jego sadyby. Śmierdziwiatr powiedział mi, że niegdyś była to zwykła ulica, ale wielki pożar któregoś dnia strawił domy i ich mieszkańców, pozostawiając po sobie tylko szkielety zabudowań i... szkielety ludzi. Aleja nazwę swoją wzięła od żałosnego wyglądu połamanych i przepalonych belek - pamiątki po niegdyś gwarnej i ludnej ulicy. Dzisiaj w Alei na zgliszczach uwiła sobie gniazdo grupka rozbójników.~ */ GOTO 21
  IF ~~ THEN REPLY #11486 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11487 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11295 /* ~Mężczyzna pochyla się mocno do przodu, jego głos przechodzi w szept. Po raz kolejny, odór jego ciała uderza w ciebie jak fala. "Teraz niebezpieczni, źli ludzie zrobili tam swoje leże, tam leże." Zgina się wpół, po czym puszcza całą serię szybkich bąków. "Oto opowieść o tym jak ulica zamienia się w Aleję Niebezpiecznych Węgłów."~ */
  IF ~~ THEN REPLY #11488 /* ~"Jak doszło do tego pożaru?"~ */ DO ~SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #11489 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11490 /* ~"Rozumiem... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #11296 /* ~Nakreśla półkole ponad swoim sercem. "Uczynił to człowiek. Uczyniła to bestia. Człowiek, którego podziwiają nawet *biesy*."~ */
  IF ~~ THEN REPLY #11491 /* ~"Kto?"~ */ GOTO 23
  IF ~~ THEN REPLY #11492 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11493 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11297 /* ~"Historia czarodzieja, wypełniona szaleństwem, smutkiem, pożogą, tęsknotą... historia, którą mogę opowiedzieć, historia, którą mogę opowiedzieć, ale muszę zobaczyć trzy miedziaki." Syczy, a następnie rechocze w sposób przypominający ci palący się ogień. "Niebezpieczna historia, niebezpieczna historia."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11494 /* ~"Zgoda. Oto trzy miedziaki."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
~ GOTO 24
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11495 /* ~Kłamstwo: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11496 /* ~Prawda: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11497 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.2 17.5 23.0
  SAY #11298 /* ~"Był tam czarodziej, nie byle kto, ale *potężny* mag." Śmierdziwiatr składa pobożnie ręce i uśmiecha się złowróżbnie. "Płonął Sztuką, a Sztuka wypaliła go."~ */
  IF ~~ THEN REPLY #11498 /* ~Słuchaj.~ */ GOTO 25
  IF ~~ THEN REPLY #11499 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11500 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #11299 /* ~"Nadano mu imię Ignus, imię szanowane, później siejące postrach, następnie znienawidzone, a na końcu ukarane." Śmierdziwiatr wydaje z siebie grzechoczące charknięcie, po czym przeszywa pazurami powietrze i syczy, najwidoczniej naśladując 'Ignusa'.~ */
  IF ~~ THEN REPLY #11501 /* ~Słuchaj.~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #11502 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11503 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11300 /* ~"Uczony przez jednego z ostatnich wielkich magów Ignus był i jako czeladnik Ignus nauczył się wiele, wiele... i nic zarazem." Śmierdziwiatr potrząsa ze smutkiem głową. "W jego sercu, jego czarnym jak węgiel sercu, płonął ogień. Palił się, palił się i *nie miał dość*." Śmierdziwiatr wbija sobie w pierś pazury, naśladując ból. "Gdy on nie miał dość, ni miał dość i Ignus. Chciał ujrzeć Sfery *w ogniu*."~ */
  IF ~~ THEN REPLY #11504 /* ~Słuchaj.~ */ GOTO 27
  IF ~~ THEN REPLY #11505 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11506 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11301 /* ~"W nocy..." Śmierdziwiatr garbi się i zaczyna powoli kroczyć w kierunku alei, na jego twarzy pojawia się szalony uśmiech. "Ignus przybył do Alei, która miała się stać Aleją Węgłów i uwolnił ogień, który nosił w swoich oczach i w swoim sercu." Śmierdziwiatr wskazuje na Aleję, po czym wyrzuca ręce w górę, wydając jednocześnie niemy krzyk i śmiech.~ */
  IF ~~ THEN REPLY #11507 /* ~Słuchaj.~ */ GOTO 28
  IF ~~ THEN REPLY #11508 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11509 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #11302 /* ~"Ciała topiły się jak wosk, ludzie jak świece, a Ignus śmiał się, śmiał się..." Śmierdziwiatr przylega do ziemi, jego twarz wykrzywiona jest z udawanego bólu. "Zło, zło zostało uczynione, a zapomniane nie, zapomniane nie." Wstaje, garbi się, spogląda w lewo, później w prawo i zaczyna mówić szeptem, jakby spotykał się z kimś w tajemnicy. "Należało coś zrobić, coś zrobić..."~ */
  IF ~~ THEN REPLY #11510 /* ~Słuchaj.~ */ GOTO 29
  IF ~~ THEN REPLY #11511 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11512 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11303 /* ~Wstaje, napięty jak struna, jego twarz wyraża zdecydowanie. "Zdecydowano o karze, wszyscy prości magowie, znachorki, jasnowidze, wyłudzające miedziaki wiedźmy, wszelkiego rodzaju praktykanci sztuki czarnoksięskiej... przybyli, wszyscy, nawet ci, którzy ledwie zaznajomili się ze Sztuką, aby ukarać Ignusa. W pojedynkę byli słabi jak muchy..." Naśladuje bzyczenie muchy swoimi nadgniłymi dziąsłami. "W grupie, byli niebezpieczni, niebezpieczni."~ */
  IF ~~ THEN REPLY #11513 /* ~Słuchaj.~ */ GOTO 30
  IF ~~ THEN REPLY #11514 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11515 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11304 /* ~Mężczyzna zaczyna coś nucić, a następnie wznosi ręce... "Złapali Ignusa, spełnili jego życzenie..." Obraca dłońmi jakby rzucał zaklęcie. "Pragnął spłonąć, zgodzili się na to, wykorzystując jego własne pragnienie do podsycenia ognia. Zrobili z jego ciała drzwi do Sfery Ognia - zamierzali zabić go, zabić go..."~ */
  IF ~~ THEN REPLY #11516 /* ~Słuchaj.~ */ JOURNAL #63977 /* ~Śmierdziwiatr opowiedział mi historię Ignusa, szalonego czarnoksiężnika, który był sprawcą tragedii, która doprowadziła do powstania Alei Niebezpiecznych Węgłów. Śmierdziwiatr powiedział, że Ignus był potężnym czarownikiem, uczniem jednego z ostatnich Wielkich Magów. Ignus zapalił się do Sztuki, dosłownie i w przenośni, bo kiedy nachodziła go ochota, podpalał swoimi czarami ludzi i budynki. Którejś nocy, na jednej z Ulic, Ignus dał upust swoim największym żądzom, obracając ją w popiół, razem z jej mieszkańcami. Lecz, czy to pod wpływem sprawiedliwego gniewu, czy też zawodowej zazdrości, przeciwko Ignusowi siły swe połączyło kilkunastu pomniejszych czarodziejów. Udało im się pchnąć zakochanego w ogniu czarodzieja ku bramie prowadzącej do Sfery Żywiołu Ognia. Mieli nadzieję. że to go zabije, ale... zawiedli się w swoich oczekiwaniach. Ignus nie umarł, lecz tylko zapadł w rodzaj letargu.~ */ GOTO 31
  IF ~~ THEN REPLY #11517 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11518 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11305 /* ~"Nie udało się, nie udało się..." Śmierdziwiatr po raz kolejny puszcza bąka, jakby chciał podkreślić niepowodzenie czarodziei. "Ignus żył, Ignus żył, tylko spał, otulony w płomienie, płomienie, zamieniły się w jego sen, gdy płonął, szczęśliwe jak nigdy, szczęśliwe jak nigdy..." Zamyka oczy, owija ramiona wokół siebie i powoli się obraca. "Płonący... na zawsze płonący..." Nagle otwiera oczy. "Pewnego dnia się przebudzi, a wtedy, wtedy Sfery będą *płonąć*!"~ */
  IF ~~ THEN REPLY #11519 /* ~"Niemiła historia. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11520 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 15.6
  SAY #11306 /* ~Śmierdziwiatr puszcz bąka i drapie się po ramionach. Myśli przez chwilę, po czym potrząsa głową. "Żadnego dziennika, nie widziałem żadnego dziennika."~ */
  IF ~~ THEN REPLY #11521 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11522 /* ~"Mniejsza więc z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 15.4 15.5
  SAY #11307 /* ~Śmierdziwiatr nagle się garbi i rzuca ci chytre spojrzenie. Chodzi wokół ciebie przez chwilę, ciągnąc po ziemi nogę jakby kulał. "Król! Wspaniałą historię, wspaniałą historię! Mogę opowiedzieć historię, ale muszę zobaczyć trzy miedziaki..."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11523 /* ~"Zgoda. Oto trzy miedziaki."~ */ DO ~TakePartyGold(3)
~ GOTO 34
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11544 /* ~Kłamstwo: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11548 /* ~Prawda: "Nie mam tyle przy sobie. Mam jednak kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11552 /* ~"Nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11308 /* ~Śmierdziwiatr w dalszym ciągu jest zgarbiony i gapi się na ciebie. "Niegdyś Farod budził szacunek, był człowiekiem czynów i *władzy*. Wszystko to stało się niczym, niczym, obróciło się w proch." Śmierdziwiatr mruży oczy i puszcza bąka, wypełniając powietrze wykręcającym kiszki odorem. "Obróciło się w proch... i smród."~ */
  IF ~~ THEN REPLY #11554 /* ~Słuchaj.~ */ GOTO 35
  IF ~~ THEN REPLY #11556 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11558 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #11309 /* ~"Kłamcą, oszustem, człowiekiem, który naginał prawo, był Farod." Garbi się do przodu jakby pisał przy biurku. 'Pisze' przez moment, po czym nagle zastyga wystraszony w bezruchu. "W końcu pewnego dnia, zdał sobie sprawę, że nagiął samego siebie!"~ */
  IF ~~ THEN REPLY #11560 /* ~Słuchaj.~ */ GOTO 36
  IF ~~ THEN REPLY #11563 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11564 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11310 /* ~"Stał się takim kłamcą, że kiedy umrze, ma się udać do strasznego miejsca..." Śmierdziwiatr potrząsa ze smutkiem głową, garbi się na powrót i rozgląda się dziko na wszystkie strony. "Farod nie zgodziłby się na to, nie, nie! Oszukał innych, oszukałby i swój los!"~ */
  IF ~~ THEN REPLY #11567 /* ~Słuchaj.~ */ GOTO 37
  IF ~~ THEN REPLY #11569 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11572 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #11311 /* ~"Czytał, szperał w księgach i konsultował się z jasnowidzami..." Śmierdziwiatr chodzi tam i z powrotem, trzymając rękę nad oczami jakby wpatrywał się gdzieś daleko przed siebie. "...i powiedzieli mu, że tylko wśród śmieci może znaleźć to, co pozwoli mu oszukać swój los." Śmierdziwiatr znów puszcza baka i kaszle, zatruwając powietrze wokół. "Być może kłamali..."~ */
  IF ~~ THEN REPLY #11575 /* ~Słuchaj.~ */ DO ~SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ JOURNAL #63978 /* ~Śmierdziwiatr opowiedział mi historię Faroda. Farod pochodził z sigilijskiej arystokracji, ale używał swej uprzywilejowanej pozycji społecznej do czynów nad wyraz niegodziwych - łamał prawa, oszukiwał i wtrącał do więzień niewinnych ludzi. Jego postępki były tak nikczemne i podłe, że dość szybko zapewnił swojej duszy pośmiertne "zakwaterowanie" w Sferach Niższych. Kiedy się o tym dowiedział, wystraszył się nie na żarty i zaczął kombinować, jak tu można uniknąć swojego niezbyt miłego przeznaczenia. Spytał o radę kilku wieszczków, a ci zawyrokowali, że może ocalić się, jeżeli zstąpi do pospólstwa i tam zacznie szukać dalszych środków na odwrócenia przeznaczenia. Farod poszedł za tą radą i porzuciwszy uciechy wyższych sfer, zaszył się pośród biedoty, z czasem wyrastając na Króla Zbieraczy. Ulicznicy, gang na usługach Faroda, od dawna przeczesują ulice Sigil w poszukiwaniu czegoś, co może uwolnić duszę ich pana. Jakkolwiek ani on, ani żaden z jego sług, nie ma pojęcia, co to może być.~ */ GOTO 38
  IF ~~ THEN REPLY #11576 /* ~"Właściwie, to nie mam teraz czasu na żadną opowieść. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11577 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #11312 /* ~Śmierdziwiatr stoi wyprostowany, a następnie zaczyna zrzucać z siebie niewidzialne ubranie. Po wyrzuceniu każdej części 'garderoby' garbi się coraz bardziej. "Farod odrzucił swoją władzę, swoje zamiary, i przyjął nowy tytuł..." Śmierdziwiatr robi przerwę i rzuca ci chytre spojrzenie. Chwyta mocno swoje łachy i potrząsa nimi. "I stał się Królem Szmaciarzy! Rządzi śmieciami i każe je poddanym przeszukiwać w poszukiwaniu tego, co jest mu potrzebne." Potrząsa głową. "Szuka nawet teraz, nawet teraz..."~ */
  IF ~~ THEN REPLY #11578 /* ~"Uch... wiesz może, gdzie mogę go znaleźć?"~ */ GOTO 39
  IF ~~ THEN REPLY #11579 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11581 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #11313 /* ~Śmierdziwiatr potrząsa głową. "Mieszka wśród szmat i chłamu. Tam go znajdziesz, znajdziesz go..."~ */
  IF ~~ THEN REPLY #11582 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11584 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 17.6 17.7
  SAY #11314 /* ~Śmierdziwiatr na chwilę przestaje się wiercić i drapać, i wlepia w ciebie wzrok. "Ta historia... ta historia nic nie kosztuje ponieważ nic nie jest warta, a warto zauważyć, że jest to naprawdę smutna historia."~ */
  IF ~~ THEN REPLY #11586 /* ~"Mimo wszystko wysłucham jej."~ */ GOTO 41
  IF ~~ THEN REPLY #11587 /* ~"Zgoda. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11589 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #11315 /* ~"Gdzie zaczyna się taka historia...?" Śmierdziwiatr chrząka, po czym zatruwa powietrze swoim oddechem, który niemal wyżera ci oczy. Zdaje się nad czymś myśleć.~ */
  IF ~~ THEN REPLY #11591 /* ~"Powinna się zacząć od człowieka budzącego się w Kostnicy, uważanego za zmarłego, ale tak naprawdę martwe są jedynie jego wspomnienia."~ */ GOTO 42
  IF ~~ THEN REPLY #11593 /* ~"Zgoda. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11596 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #11316 /* ~Śmierdziwiatr kiwa głową, przygląda ci się uważnie, i zaczyna gwałtownie się drapać jakby chciał narobić sobie blizn. "Martwy, ale nie martwy... żadnych wspomnień, żadnych wspomnień, żadnego imienia..."~ */
  IF ~~ THEN REPLY #11598 /* ~"Ucieka on z Kostnicy, dostaje się do Ula, i rozmawia z człowiekiem, który przez przypadek zdradził jego prawdziwe imię, i później tego żałował."~ */ GOTO 43
  IF ~~ THEN REPLY #11599 /* ~"Zgoda. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11600 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #11317 /* ~Twoje słowa zdają się hipnotyzować Śmierdziwiatra. "Tak, tak, wielkie niebezpieczeństwo w nadawaniu imienia... być może..." Robi przerwę. "Być może człowiek, do którego przemawia bezimienny jest ostrzeżeniem przed niebezpieczeństwem jakie kryją imiona." Zdaje się nad tym rozmyślać. "Być może ten, który zapomniał swoje imię lepiej na tym wyszedł...?"~ */
  IF ~~ THEN REPLY #11601 /* ~"Doprawdy? Lepiej znać prawdę wraz ze wszystkimi jej konsekwencjami, czy też lepiej pozostać nieświadomym? Który z nich dwóch lepiej na tym wyjdzie?"~ */ GOTO 44
  IF ~~ THEN REPLY #11602 /* ~"Zgoda. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11603 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11318 /* ~Śmierdziwiatr wydaje z siebie grzmiący kaszel, pluje na ziemię, plwocina jest zielna i lepka, i odwraca się w twoja stronę. "To jest twoje pytanie, twoja historia..." Mówi wolno. "To *ty* musisz na nie odpowiedzieć."~ */
  IF ~~ THEN REPLY #11604 /* ~"Chcę usłyszeć twoją odpowiedź."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 45
  IF ~~ THEN REPLY #11605 /* ~"Człowiek, który zna swoje imię, lepiej na tym wychodzi ponieważ zna siebie i jest dzięki temu silniejszy."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11607 /* ~"Człowiek, który zapomniał swoje imię, lepiej na tym wychodzi ponieważ chroniony jest przed tymi, którzy mogliby go skrzywdzić, wliczając w to jego samego."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",3)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11610 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11611 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #11319 /* ~Śmierdziwiatr potrząsa głową. "Moja odpowiedź, moja odpowiedź..." Znowu kaszle, wydzielając z ust kolejną falę wyziewów. Mlaska ustami jakby próbował zlizać smak ze swoich ust. "Moja odpowiedź jest taka: oni obaj są głupcami, ale tylko jeden zdaje sobie z tego sprawę."~ */
  IF ~~ THEN REPLY #11613 /* ~"Zgoda. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11614 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 44.2
  SAY #11320 /* ~Śmierdziwiatr rozmyśla nad tym, oblizując usta. Zaczyna wolno kiwać głową, po czym mamrocze coś pod nosem jakby debatował sam z sobą. Wreszcie odwraca się w twoją stronę. "To jest historia, historia z morałem, który mówi o zasadach tego, który opowiedział tę historią..." Kaszle i wypluwa na bruk kolejną porcję flegmy. "Historia, która sama sobie odpowie, z czasem, z czasem...?"~ */
  IF ~~ THEN REPLY #11615 /* ~Prawda: "być może. Co się ma stać, to się stanie, a może być i tak, że ta historia nie daje odpowiedzi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_2","GLOBALLaw",-2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11616 /* ~Prawda: "Musi dawać odpowiedź, poza tym każda historia ma zakończenie. Nie przyjmę jej pod żadną inną postacią."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_2","GLOBALLaw",2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11617 /* ~Prawda: "Nie wiem. Nie ja o tym decyduję."~ */ DO ~GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 46.2
  SAY #11321 /* ~Śmierdziwiatr drapie się przez chwilę, kiwając głową, a następnie sięga między fałdy swojej szaty i wyciąga z niej monetę. "Za taką historię: wytarty miedziak." Naśmiewa się. "Nic więcej ponieważ historia nie jest skończona."~ */
  IF ~~ THEN REPLY #11618 /* ~"Uczciwa cena. Dobrze więc, być może jest kilka pytań, na które będziesz mi mógł odpowiedzieć..."~ */ GOTO 15
  IF ~~ THEN REPLY #11619 /* ~"Żegnaj."~ */ EXIT
END

IF ~  GlobalLT("reekwind","global",10)
GlobalGT("Reekwind","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11322 /* ~Widzisz Śmierdziwiatra... jego oczy powróciły do normalnych rozmiarów, i nie poniewierają już nim spazmy, które widoczne były wcześniej. Uśmiecha się i wygląda na dużo czystszego niż wcześniej.~ */
  IF ~~ THEN REPLY #11620 /* ~"Witaj, Śmierdziwiatrze. Mam do ciebie kilka pytań..."~ */ GOTO 49
  IF ~~ THEN REPLY #11621 /* ~Zostaw Śmierdziwiatra w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #11323 /* ~Patrzy na ciebie zdziwiony. "Skończyło się... wszystko się skończyło ot tak po prostu." Pstryka palcami i spogląda na siebie. "Wielkie nieba, ja..." Śmieje się. "Ja znowu czuję się *czysty*."~ */
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11622 /* ~"Dobrze to słyszeć. Mieszacz nie chciał usunąć klątwy, ale ja ją z niego wydobyłem."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11623 /* ~"Miło mi usłyszeć, że dobrze ci się wiedzie."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11624 /* ~"Dobrze to słyszeć. Mieszacz nie chciał usunąć klątwy, ale udało mi się go do tego zmusić."~ */ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11625 /* ~"Miło mi usłyszeć, że dobrze ci się wiedzie."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2 49.3
  SAY #11324 /* ~"Dziękuję ci, panie." Wygląda na podekscytowanego. "Nie mam jak ci się odpłacić, ale jesteś w mojej łasce..." Wzrusza ramionami. "Na tyle na ile tamto jest warte." Marszczy czoło, po czym wypręża się. "Opowiem o twojej dobroci wszystkim, którzy zechcą słuchać."~ */
  IF ~  Global("Reekwind","GLOBAL",3)
~ THEN REPLY #11626 /* ~"Właściwie, to znasz jakieś historie, których mi jeszcze nie opowiedziałeś? Może ci się to opłacić..."~ */ DO ~SetGlobal("Reekwind","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #11627 /* ~"Dzięki, Śmierdziwiatrze. Cieszę się, że mogłem pomóc."~ */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #11325 /* ~"Oczywiście, oczywiście!" Śmierdziwiatr rozgląda się wokół... "Chociaż na razie mam dość opowiadania historii... masz coś, w czym mógłbym je zapisać?"~ */
  IF ~~ THEN REPLY #11628 /* ~"Mam tutaj dziennik."~ */ JOURNAL #63979 /* ~W zamian za pomoc w zdjęciu z niego smrodliwego przekleństwa, Śmierdziwiatr zgodził się wpisać do mojego dziennika wszystkie swoje opowieści:

Pierwsza opowieść była historią "Alei Niebezpiecznych Intencji". Ten rejon Ula znajduje się bardzo blisko jego kwatery. Śmierdziwiatr powiedział mi, że niegdyś była to zwykła ulica, ale wielki pożar któregoś dnia strawił domy i ich mieszkańców, pozostawiając po sobie tylko szkielety zabudowań i... szkielety mieszkańców. Aleja nazwę swoją wzięła od żałosnego wyglądu połamanych i przepalonych belek - pamiątki po niegdyś gwarnej i ludnej ulicy. Dzisiaj w Alei na zgliszczach uwiła sobie gniazdo grupka rozbójników.

Druga opowieść dotyczyła Ignusa, szalonego czarnoksiężnika, który był sprawcą tragedii, która doprowadziła do powstania Alei Niebezpiecznych Węgłów. Ignus był potężnym czarownikiem, uczniem jednego z ostatnich Wielkich Magów. Ignus zapalił się do Sztuki Czarnoksięskiej, dosłownie i w przenośni, bo kiedy nachodziła go ochota, podpalał swoimi czarami ludzi i budynki. Którejś nocy, na jednej z Ulic, Ignus dał upust swoim największym żądzom, obracając ją w popiół, razem z jej mieszkańcami. Lecz, czy to pod wpływem sprawiedliwego gniewu, czy też zawodowej zazdrości, przeciwko Ignusowi siły swe połączyło kilkunastu pomniejszych czarodziejów. Udało im się pchnąć zakochanego w ogniu czarodzieja ku bramie prowadzącej do Sfery Żywiołu Ognia. Mieli nadzieję. że to go zabije, ale... zawiedli się w swoich oczekiwaniach. Ignus nie umarł, lecz tylko zapadł w rodzaj letargu.

Trzecia i ostatnia historia opowiadała o Farodzie. Farod pochodził z sigilijskiej arystokracji, ale używał swej uprzywilejowanej pozycji społecznej do czynów nad wyraz niegodziwych - łamał prawa, oszukiwał i wtrącał do więzień niewinnych ludzi. Jego postępki były tak nikczemne i podłe, że dość szybko zapewnił swojej duszy pośmiertne "zakwaterowanie" w Sferach Niższych. Kiedy się o tym dowiedział, wystraszył się nie na żarty i zaczął kombinować, jak tu można uniknąć swojego niezbyt miłego przeznaczenia. Spytał o radę kilku wieszczków, a ci zawyrokowali, że może ocalić się, jeżeli zstąpi do pospólstwa i tam zacznie szukać dalszych środków na odwrócenia przeznaczenia. Farod poszedł za tą radą i porzuciwszy uciechy wyższych sfer i zaszył się pośród biedoty, z czasem wyrastając na Króla Zbieraczy. Ulicznicy, gang na usługach Faroda, od dawna przeczesują ulice Sigil w poszukiwaniu czegoś, co może uwolnić duszę ich pana. Jakkolwiek ani on, ani żaden z jego sług, nie ma pojęcia, co to może być.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #11326 /* ~Śmierdziwiatr bierze do rąk dziennik. "Ach..." Przez chwilę coś bazgroli, po czym oddaje ci dziennik. "Oto one."~ */
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Dzięki, Śmierdziwiatrze."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Dzięki, Śmierdziwiatrze."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 50.1 52.0 52.1
  SAY #11327 /* ~"Ech... gdybyś już nigdy nie wypowiedział tego imienia, ja... między innymi, byłbym wdzięczny."~ */
  IF ~~ THEN REPLY #11632 /* ~"Zgoda. Jak mam na ciebie mówić?"~ */ GOTO 54
  IF ~~ THEN REPLY #11634 /* ~"Jest to w porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #11328 /* ~"Mam na imię..." Nagle się wstrzymuje i uśmiecha. "Nie, być może tym razem powinienem to zachować dla siebie." Kłania ci się z szacunkiem. "Dziękuję raz jeszcze, dobry panie."~ */
  IF ~~ THEN REPLY #11636 /* ~"Żegnaj."~ */ EXIT
END
