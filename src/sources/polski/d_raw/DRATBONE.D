// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRATBONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRATBONE~

IF ~  Global("Ratbone","AR0101",0)
~ THEN BEGIN 0 // from:
  SAY #16225 /* ~Ten wysoki, chudy jak tyczka człowiek wpatruje się w ziemię pod swoimi stopami; od czasu do czasu klęka, jakby szukając w śmieciach jakiegoś ukrytego przedmiotu lub wskazówki. Pomimo swoich nietypowych rozmiarów zdaje się być całkiem zwinny i giętki.~ */
  IF ~~ THEN REPLY #16305 /* ~"Witaj..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 1
  IF ~~ THEN REPLY #16306 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16226 /* ~W chwili, gdy się do niego odzywasz, obraca się szybko wokół i przykuca... nie jesteś jednak w stanie stwierdzić, czy jest gotów do skoku w twoją czy w inną stronę. "Czego? Mów szybko..."~ */
  IF ~~ THEN REPLY #16307 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #16308 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16227 /* ~"Nie odpowiadam na pytania. Szpicuj sie!" Nie zauważyłeś tego wcześniej, ale w ręce trzyma długi zakrzywiony sztylet.~ */
  IF ~~ THEN REPLY #16309 /* ~"Rozmowa ze mną na pewno ci nie zaszkodzi..."~ */ GOTO 3
  IF ~~ THEN REPLY #16310 /* ~"Grozisz mi?"~ */ GOTO 6
  IF ~~ THEN REPLY #16311 /* ~"Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #16228 /* ~"Tak?" Przez chwilę patrzy na ciebie z ukosa, po czym spluwa na ziemię obok siebie. "Skąd mnie to wiedzieć, ech?"~ */
  IF ~~ THEN REPLY #16312 /* ~"Nie rozumiem."~ */ GOTO 4
  IF ~~ THEN REPLY #16313 /* ~"Po prostu musisz mi zaufać."~ */ GOTO 5
  IF ~~ THEN REPLY #16314 /* ~"Nieważne. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16229 /* ~"Czego nie kapujesz, trepie? Hmpf! Słuchaj uważnie: skąd mnie wiedzieć, żeś tu jest tyko żeby 'zadawać pytania'. A co jeśli to pytania, na które nie chce odpowiedzieć, ech? Będziesz mnie więził, torturował? Hmm?"~ */
  IF ~~ THEN REPLY #16315 /* ~"Wystarczy, że ze mną porozmawiasz. Mam tylko kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #16316 /* ~Przyrzeczenie: "Nie będę próbował cię skrzywdzić; masz na to moje słowo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #16317 /* ~Kłamstwo: "Nie będę próbował cię skrzywdzić; masz na to moje słowo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #16318 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 4.1 4.2
  SAY #16230 /* ~"Ni. Nic z tego. Idź dręczyć kogoś innego."~ */
  IF ~~ THEN REPLY #16319 /* ~Odejdź.~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #16231 /* ~"A co? Cykasz się Kościszczura? Czujesz sie zagrożony, trepie?"~ */
  IF ~~ THEN REPLY #16320 /* ~"Nie, nie jestem."~ */ GOTO 7
  IF ~~ THEN REPLY #16321 /* ~"Tak."~ */ GOTO 8
  IF ~~ THEN REPLY #16322 /* ~"Zapomnij o tym. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16232 /* ~"Cha, cha! Nie dziwota, z takim wyglądem. W porządku, czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #16323 /* ~"Jak już słyszałeś, mam kilka pytań..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16324 /* ~"Nieważne. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #16233 /* ~"Cóż, to twoja wina. Odczep sie, zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #16325 /* ~Odejdź.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.2 3.2 4.3 5.0 6.2 7.1 8.0
  SAY #16234 /* ~Gdy odwracasz się, aby odejść, woła: "Hej! Czekaj..."~ */
  IF ~~ THEN REPLY #16326 /* ~"Tak?"~ */ GOTO 10
  IF ~~ THEN REPLY #16327 /* ~Zignoruj go, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16235 /* ~Mężczyzna prostuje się i odkłada swoją broń. "Kto cie przysłał? Po coś tu przylaz?"~ */
  IF ~~ THEN REPLY #16328 /* ~"Nikt mnie nie przysłał. Jestem tutaj z własnej woli."~ */ GOTO 12
  IF ~~ THEN REPLY #16329 /* ~"Dlaczego myślisz, że ktoś mnie przysłał?"~ */ GOTO 12
  IF ~~ THEN REPLY #16330 /* ~"O czym ty *mówisz?*"~ */ GOTO 12
  IF ~~ THEN REPLY #16331 /* ~"Nie twoja sprawa."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #16236 /* ~Ponownie spluwa na ziemię. "Hmpf. Spadaj więc."~ */
  IF ~~ THEN REPLY #16332 /* ~Odejdź.~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2
  SAY #16237 /* ~"Hmm..." Wpatruje się w ciebie długo zmrużonymi oczami. Po chwili niezręcznej ciszy, mówi: "No dobra. Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #16333 /* ~"Jak już słyszałeś, mam kilka pytań..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16334 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0 12.0 15.0 17.0 20.0 21.1 22.3 23.1 24.2 25.1 27.2 28.0 29.1 33.0 34.0 35.7 36.0 37.4 39.0 40.4 41.0 42.4 43.3 44.2 45.2 46.1 47.2 48.4 49.3 50.3 51.2 52.3 55.1 58.2 59.2 62.0 64.1 65.1 76.0 77.0 79.0
  SAY #16238 /* ~"No to mów. Zadawaj swoje pytania."~ */
  IF ~  Global("RB_Name","AR0101",0)
~ THEN REPLY #16335 /* ~"Kim jesteś?"~ */ GOTO 14
  IF ~  Global("RB_Name","AR0101",1)
~ THEN REPLY #16336 /* ~"Jeszcze raz: kim jesteś?"~ */ GOTO 20
  IF ~~ THEN REPLY #16337 /* ~"Co tu robisz?"~ */ GOTO 21
  IF ~~ THEN REPLY #16338 /* ~"Możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 42
  IF ~  Global("RB_Quest","AR0101",3)
~ THEN REPLY #16339 /* ~"Opowiedz mi jeszcze raz o tym Zbieraczu i hulace."~ */ GOTO 67
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",0)
~ THEN REPLY #16340 /* ~"Szukam kogoś o imieniu Farod."~ */ GOTO 32
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",1)
~ THEN REPLY #16341 /* ~"Szukam kogoś o imieniu Farod."~ */ GOTO 39
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",2)
~ THEN REPLY #16342 /* ~"Szukam kogoś o imieniu Farod."~ */ GOTO 40
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16343 /* ~"Szukam swojego dziennika."~ */ GOTO 41
  IF ~~ THEN REPLY #16344 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #16239 /* ~"Kościszczur jestem. A ty?"~ */
  IF ~~ THEN REPLY #16345 /* ~Kłamstwo: "Jestem, uch... Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16346 /* ~"Nie mam imienia."~ */ GOTO 16
  IF ~~ THEN REPLY #16347 /* ~"Ja... nie wiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16348 /* ~"Nie twoja sprawa."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #16240 /* ~Marszy czoło. "Ano, z pewnością."~ */
  IF ~~ THEN REPLY #16349 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16350 /* ~"Tak, to ja. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #16241 /* ~Kościszczur uśmiecha się głupio. "Pewnie, że nie; tyle to i ja bym zgadł. Ale dlaczego nie, he?"~ */
  IF ~~ THEN REPLY #16351 /* ~Kłamstwo: "W porządku... jestem, uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16352 /* ~"Ponieważ go nie pamiętam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16353 /* ~"Nie twoja sprawa."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2 16.1
  SAY #16242 /* ~Brwi Kościszczura wystrzeliwują w górę jak sprężyny. "Naprawdę? To zbyt dziwne, żeby było prawdziwe... ech. Co się stało? Ktoś cie wyrżnął w ten pokryty bliznami łeb?"~ */
  IF ~~ THEN REPLY #16354 /* ~"Coś w tym rodzaju. Mam kilka pytań..."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16355 /* ~"To długa historia... Może innym razem. Żegnaj."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3 16.2 30.3 31.2 32.3 35.3 35.5 37.0 37.2 40.0 40.2
  SAY #16243 /* ~"Och? Hmpf. Rozmowa z tobą od razu nie była dobrym pomysłem. Szpicuj sie; nie mam zamiaru się z tobą zadawać."~ */
  IF ~~ THEN REPLY #16356 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16357 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 38.0 60.0
  SAY #16244 /* ~Przerywa ci w pół zdania: "Ni! Nie chce tego słuchać. Spadaj." Odwraca się do ciebie tyłem i wraca do swoich poszukiwań.~ */
  IF ~~ THEN REPLY #16358 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #16245 /* ~"Ech! Już zapomniałeś trepie? Kościszczur!"~ */
  IF ~~ THEN REPLY #16359 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16360 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #16246 /* ~"Nic co byś chciał wiedzieć."~ */
  IF ~~ THEN REPLY #16361 /* ~"Wygląda jakbyś czegoś szukał."~ */ GOTO 22
  IF ~~ THEN REPLY #16362 /* ~"Pozwól, że zapytam o co innego..."~ */ GOTO 13
  IF ~~ THEN REPLY #16363 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #16247 /* ~"Ni, właściwie to polu..." nagle przestaje mówić, patrząc na ciebie podejrzliwie. "A co *cię* to obchodzi, ech?"~ */
  IF ~~ THEN REPLY #16364 /* ~"Jestem po prostu ciekaw."~ */ GOTO 30
  IF ~~ THEN REPLY #16365 /* ~Prawda: "Zastanawiam się, czy mogę w czymś pomóc."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Rbone_1","GLOBALGood",1)
~ GOTO 30
  IF ~~ THEN REPLY #16366 /* ~Kłamstwo: "Zastanawiam się, czy mogę w czymś pomóc."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_3","GLOBALLaw",-1)
~ GOTO 30
  IF ~~ THEN REPLY #16367 /* ~"Nie. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16368 /* ~"Właściwie to nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 30.0 30.1 31.0 31.1 31.3
  SAY #16248 /* ~"Hmm. Jakby to powiedzieć, poluję na czaszkoszczury."~ */
  IF ~~ THEN REPLY #16369 /* ~"Dlaczego polujesz na szczury?"~ */ GOTO 24
  IF ~~ THEN REPLY #16370 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16371 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #16249 /* ~"To nie są zwykłe szczury, ale - czaszkoszczury. Wyznaczona jest za nie nagroda. Nie wiedziałeś? Jeden miedziak za każdy ogon, jaki przyniesiesz."~ */
  IF ~~ THEN REPLY #16372 /* ~"Dlaczego wyznaczono za nie nagrodę?"~ */ GOTO 25
  IF ~~ THEN REPLY #16373 /* ~"Gdzie zanosisz te ogony?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16374 /* ~"Ciekawe. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16375 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #16250 /* ~"Co? Bo nie są jak zwykłe szczury; są o wiele niebezpieczniejsze pa. Im więcej sie ich razem zbierze, tym są przebieglejsze... dość przebiegłe, żeby rzucać zaklęcia tak jak mag. Ul - ech, w zasadzie to całe Sigil - jest dość niebezpiecznym miejscem i to bez zgrai rzucających czary, piszczących wkoło genialnych szczurów!"~ */
  IF ~~ THEN REPLY #16376 /* ~"Gdzie zanosisz te ogony?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16377 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16378 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #16251 /* ~"Dlaczego? Masz zamiar sam połapać troche szczurów?"~ */
  IF ~~ THEN REPLY #16379 /* ~"Tak."~ */ GOTO 27
  IF ~~ THEN REPLY #16380 /* ~"Być może."~ */ GOTO 27
  IF ~~ THEN REPLY #16381 /* ~"Nie, jestem po prostu ciekaw."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #16252 /* ~"W takim razie nie rób tego tutaj, trepie! I tak jest ich ostatnio mało. Nie potrzebuję, żeby kolejny skurl przylaz i panoszył sie na moim terenie."~ */
  IF ~~ THEN REPLY #16382 /* ~"Mało ich ostatnio? Wiesz dlaczego?"~ */ GOTO 28
  IF ~~ THEN REPLY #16383 /* ~"Chciałbym tylko wiedzieć."~ */ GOTO 29
  IF ~~ THEN REPLY #16384 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16385 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #16253 /* ~"Ni, nie mam zielonego pojęcia. Może za dużo ich wytępiono; przecież nie jestem jedynym szczurołapem w Sigil. Chociaż tylko ja poluję na szczury na Placu Szmaciarzy."~ */
  IF ~~ THEN REPLY #16386 /* ~"Interesujące. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16387 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.1
  SAY #16254 /* ~"Hmm. Przez chwilę patrzy na ciebie z ukosa, po czym wzdycha. "Sam nie wiem czemu zdradzam ci cień tej sprawy, ale to się znajduje na wschód od Placu, a później na południe. Znajdziesz to na południe od Placu Targowego. Tylko nie poluj tu na szczury; ledwie ich starcza dla jednego szczurołapa!"~ */
  IF ~~ THEN REPLY #16388 /* ~"Nie ma? Wiesz może dlaczego?"~ */ GOTO 28
  IF ~~ THEN REPLY #16389 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16390 /* ~"Dzięki, kiedyś tam wpadnę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 22.0 22.1 22.2
  SAY #16255 /* ~"Hmm. Nie zwykłem wyjawiać śpiewki i nic nie dostawać w zamian. Powiedz mi najpierw co tu robisz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16391 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16392 /* ~"Szukam dziennika, który zgubiłem."~ */ GOTO 23
  IF ~~ THEN REPLY #16393 /* ~"Sam nie wiem. Po prostu tędy przechodziłem."~ */ GOTO 31
  IF ~~ THEN REPLY #16394 /* ~"Nie powinno cię to interesować."~ */ GOTO 18
  IF ~~ THEN REPLY #16395 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #16256 /* ~"Ech? Daj spokój trepie, stać cie na więcej. Skłam, jeśli musisz... jeśli jeszcze tego nie zrobiłeś!" Przewraca oczami, gorzko chichocząc.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16396 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16397 /* ~"Szukam dziennika, który zgubiłem."~ */ GOTO 23
  IF ~~ THEN REPLY #16398 /* ~"Jak już mówiłem, po prostu tędy przechodziłem."~ */ GOTO 18
  IF ~~ THEN REPLY #16399 /* ~Wymyśl coś.~ */ GOTO 23
  IF ~~ THEN REPLY #16400 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 13.5
  SAY #16257 /* ~"Czyżby? Hmm..." Pochyla się do przodu i zniża głos. "Jest blisko. Czemu go szukasz, co? To twój przyjaciel? Wróg?"~ */
  IF ~~ THEN REPLY #16401 /* ~"Ma dla mnie pewne informacje."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 33
  IF ~~ THEN REPLY #16402 /* ~Kłamstwo: "Jest moim przyjacielem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 34
  IF ~~ THEN REPLY #16403 /* ~Kłamstwo: "Wrogiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #16404 /* ~"Nie powinno cię to interesować."~ */ DO ~SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~~ THEN REPLY #16405 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #16258 /* ~"Naprawdę? Jesteś więc we właściwym miejscu. Musisz się tylko ciągle rozglądać wokół. Ten człowiek dobrze się ukrywa, ale z pewnością można go znaleźć na Placu Szmaciarzy. Spotkasz go już niedługo."~ */
  IF ~~ THEN REPLY #16406 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16407 /* ~"Pójdę go więc poszukać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #16259 /* ~"Naprawdę?" Kościszczur przygląda ci się z uwagą. "Hmm. Chcesz więc znaleźć u niego pracę? Nie wyglądasz na takiego. Właściwie mniejsza o to... jesteś we właściwym miejscu. Musisz się tylko ciągle rozglądać wokół. Ten człowiek dobrze się ukrywa, ale z pewnością można go znaleźć na Placu Szmaciarzy. Spotkasz go już niedługo."~ */
  IF ~~ THEN REPLY #16408 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16409 /* ~"Pójdę go więc poszukać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #16260 /* ~Wykrzywia twarz w grymasie, po czym potrząsa głową, chichocząc. "Ech! Nie chciałbym by szukał mnie śmiałek wyglądający jak ty! Nie sądzę, żeby Farod ucieszył się z tego, że powiedziałem gdzie jest takiemu hultajowi jak ty. Kościszczur mógłby mieć kłopoty..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16410 /* ~Przyrzeczenie: "Przyrzekam, że nie wspomnę twojego imienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
~ GOTO 36
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16411 /* ~Przyrzeczenie: "Przyrzekam, że nie wspomnę twojego imienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~~ THEN REPLY #16412 /* ~Kłamstwo: "Przyrzekam, że nie wspomnę twojego imienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_5","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16413 /* ~Prawda: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16414 /* ~Prawda: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16415 /* ~Blef: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16416 /* ~Blef: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~~ THEN REPLY #16417 /* ~"Mniejsza więc o to. Pozwól, że zapytam o co innego..."~ */ GOTO 13
  IF ~~ THEN REPLY #16418 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #16261 /* ~"Niech to wszystko szlag! Ech... nie pytaj dlaczego, ale zaufam ci." Przerywa, aby splunąć przez ramię. "I obym tego później nie żałował, trepie! Musisz się tylko ciągle rozglądać wokół. Ten człowiek dobrze się ukrywa, ale z pewnością można go znaleźć na Placu Szmaciarzy. Spotkasz go już niedługo."~ */
  IF ~~ THEN REPLY #16419 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16420 /* ~"Pójdę go więc poszukać. Żegnaj."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 35.2
  SAY #16262 /* ~Mężczyzna smutno potrząsa głową. "Przykro mi, ale to sie raczej nie wydarzy. Jest jednak blisko. Sam go wkrótce znajdziesz."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16421 /* ~Prawda: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16422 /* ~Prawda: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16423 /* ~Blef: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16424 /* ~Blef: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16425 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16426 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.4 35.6 37.1 37.3 40.1 40.3
  SAY #16263 /* ~Mężczyzna szydzi z ciebie i spluwa na twoje stopy. "Hmpf. A wcześniej dałeś słowo, że mnie nie skrzywdzisz. Rozmowa z tobą od razu nie była dobrym pomysłem. Szpicuj sie; nie mam zamiaru się z tobą zadawać."~ */
  IF ~~ THEN REPLY #16427 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16428 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 13.6
  SAY #16264 /* ~Potrząsa głową rozgniewany. "Nie przerabialiśmy już tego? Musisz się tylko ciągle rozglądać wokół. Ten człowiek dobrze się ukrywa, ale z pewnością można go znaleźć na Placu Szmaciarzy. Idź i odszukaj tego skurla zanim znowu zapomnisz i bedziesz mnie tym od nowa niepokoił!"~ */
  IF ~~ THEN REPLY #16429 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16430 /* ~"Pójdę go więc poszukać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7
  SAY #16265 /* ~Twarz Kościszczura przybiera kwaśny wyraz. "Mówiłem już: nie powiem ci. Jest dość blisko. Znajdź go sam."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16431 /* ~Prawda: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16432 /* ~Prawda: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16433 /* ~Blef: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16434 /* ~Blef: "Mów co wiesz albo podzielisz jego los."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16435 /* ~"Mam więc jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16436 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.8
  SAY #16266 /* ~"Jeśli to tu zgubiłeś, moge ci tylko życzyć, żeby ci sie udało to znaleźć w tym całym bałaganie. Na pewno nie mogę ci pomóc."~ */
  IF ~~ THEN REPLY #16437 /* ~"Mam więc jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16438 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 13.3
  SAY #16267 /* ~"Czego chcesz sie dowiedzieć? Kościszczur mógłby odpowiedzieć na pytanie lub dwa."~ */
  IF ~~ THEN REPLY #16439 /* ~"Gdzie mogę znaleźć pracę?"~ */ GOTO 43
  IF ~~ THEN REPLY #16440 /* ~"Gdzie mogę się zabawić?"~ */ GOTO 48
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16441 /* ~"Jest tu coś ciekawego?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16442 /* ~"Jest tu coś ciekawego?"~ */ GOTO 50
  IF ~~ THEN REPLY #16443 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16444 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 48.1 49.0 50.1 51.0 52.1 58.0 59.0
  SAY #16268 /* ~"Pracę, ech? Niewiele jej w Ulu. A już na pewno brakuje uczciwego zajęcia. Jeśli jesteś bardzo zdesperowany, możesz pracować jako Zbieracz... osobiście szukałbym w innej dzielnicy. Ta Niższa byłaby najlepsza."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16445 /* ~"A łapanie szczurów?"~ */ GOTO 47
  IF ~~ THEN REPLY #16446 /* ~"Zbieracz?"~ */ GOTO 45
  IF ~~ THEN REPLY #16447 /* ~"Jak mogę się dostać do Niższej Dzielnicy?"~ */ GOTO 44
  IF ~~ THEN REPLY #16448 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16449 /* ~"Być może tam zajrzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2 45.1 47.1
  SAY #16269 /* ~"To proste. Wystarczy żebyś... hmm, nie. Szczerze mówiąc droga jaką zwykłem tam chodzić jest teraz cała pozmieniana... te dabusy pozmieniały tu co nie miara. Nie jestem pewien, jak można się tam teraz dostać."~ */
  IF ~~ THEN REPLY #16450 /* ~"Dabusy?"~ */ GOTO 46
  IF ~~ THEN REPLY #16451 /* ~"Co powiedziałeś o pracy Zbieracza?"~ */ GOTO 45
  IF ~~ THEN REPLY #16452 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16453 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.1 46.0 47.0
  SAY #16270 /* ~"Ano. Zbieracze znoszą truposzy z Sigil... głównie z Ula... do Kostnicy. Martwi - Grabarze - płacą za zwłoki. Dzięki temu to miejsce nie staje się jeszcze gorsze."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16454 /* ~"A łapanie szczurów?"~ */ GOTO 47
  IF ~~ THEN REPLY #16455 /* ~"Jak mogę się dostać do Niższej Dzielnicy?"~ */ GOTO 44
  IF ~~ THEN REPLY #16456 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16457 /* ~"Nie mam więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0
  SAY #16271 /* ~"Jesteś naprawdę taki tępy? Uuu! Dabusy to słudzy Pani Bólu, Władczyni Sigil. Nawet nie próbuj mnie o nią pytać, bo sama rozmowa o niej przynosi nieszczęście."~ */
  IF ~~ THEN REPLY #16458 /* ~"Co powiedziałeś o pracy Zbieracza?"~ */ GOTO 45
  IF ~~ THEN REPLY #16459 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16460 /* ~"To wszystko, czego musiałem się dowiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0 45.0
  SAY #16272 /* ~Kościszczur podnosi do góry ręce, jakby chciał cię zatrzymać: "Och, nie! Nawet o tym nie myśl... przynajmniej nie tutaj! To, co zostało, ledwie mi wystarcza; myśle, że są prawie wytępione. Jeśli zamierzasz zając się tym rzemiosłem, idź gdzie indziej."~ */
  IF ~~ THEN REPLY #16461 /* ~"Co powiedziałeś o pracy Zbieracza?"~ */ GOTO 45
  IF ~~ THEN REPLY #16462 /* ~"Jak mogę się dostać do Niższej Dzielnicy?"~ */ GOTO 44
  IF ~~ THEN REPLY #16463 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16464 /* ~"Zobaczymy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.1 50.2 51.1 52.2 58.1 59.1
  SAY #16273 /* ~"Nie wiem, czego dokładnie szukasz, ale powiedziałbym, że wszędzie tylko nie tutaj. Nawet 'panie' mogą sprawiać kłopoty w tej części Sigil, chyba wiesz o co mi chodzi."~ */
  IF ~~ THEN REPLY #16465 /* ~"Nie."~ */ GOTO 49
  IF ~~ THEN REPLY #16466 /* ~"Gdzie mogę tu znaleźć pracę?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16467 /* ~"Jest tu coś ciekawego?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16468 /* ~"Jest tu coś ciekawego?"~ */ GOTO 50
  IF ~~ THEN REPLY #16469 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16470 /* ~"To wszystko, co chciałem usłyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #16274 /* ~"Ech... mniejsza więc o to."~ */
  IF ~~ THEN REPLY #16471 /* ~"Gdzie mogę tu znaleźć pracę?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
!Dead("Adyzoel")
~ THEN REPLY #16472 /* ~"Jest tu coś ciekawego?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16473 /* ~"Jest tu coś ciekawego?"~ */ GOTO 50
  IF ~~ THEN REPLY #16474 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16475 /* ~"To wszystko, co chciałem usłyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 42.3 48.3 49.2
  SAY #16275 /* ~"Nic w szczególności... po prostu tutaj nigdy nie wiesz, z której strony spotkają cię kłopoty. Pilnuj swojego tyłka i miej baczenie na to, co mówisz ludziom. Paplanie jadaczką przed niewłaściwym śmiałkiem może spowodować, że jakiś trep szybko wyląduje w księdze umarłych - albo jeszcze gorzej."~ */
  IF ~~ THEN REPLY #16476 /* ~"Gorzej?"~ */ GOTO 51
  IF ~~ THEN REPLY #16477 /* ~"Gdzie mogę znaleźć pracę?"~ */ GOTO 43
  IF ~~ THEN REPLY #16478 /* ~"Gdzie mogę się zabawić?"~ */ GOTO 48
  IF ~~ THEN REPLY #16479 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16480 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #16276 /* ~Przytakuje głową z powagą. "Jasne. Nie mów mi, że nie możesz sobie wyobrazić niczego gorszego niż śmierć..."~ */
  IF ~~ THEN REPLY #16481 /* ~"Gdzie mogę znaleźć pracę?"~ */ GOTO 43
  IF ~~ THEN REPLY #16482 /* ~"Gdzie mogę się zabawić?"~ */ GOTO 48
  IF ~~ THEN REPLY #16483 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16484 /* ~"To wszystko, co chciałem usłyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.2 48.2 49.1
  SAY #16277 /* ~"Sporo. Powiedziałbym jednak, że jest jeden, na którego naprawdę należy zwrócić uwagę... pewien hulaka, wałęsający się po Ulu. Nie wygląda na hultaja, ale jest urodzonym wojownikiem."~ */
  IF ~~ THEN REPLY #16485 /* ~"Kim on jest?"~ */ GOTO 53
  IF ~~ THEN REPLY #16486 /* ~"Gdzie mogę znaleźć pracę?"~ */ GOTO 43
  IF ~~ THEN REPLY #16487 /* ~"Gdzie mogę się zabawić?"~ */ GOTO 48
  IF ~~ THEN REPLY #16488 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16489 /* ~"Będę się więc za nim rozglądał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #16278 /* ~"Czekaj, trepie, jeszcze nie skończyłem. Miałem ci właśnie powiedzieć: nie chodzi tyle o hulakę, co o brudnego jak nieszczęście Zbieracza, który wiecznie go ściga, kapujesz? Mówie ci, że Zbieracze mają więcej wspólnego z zabijaniem hulaków niż ze zbieraniem truposzy."~ */
  IF ~~ THEN REPLY #16490 /* ~"Zbieracze?"~ */ GOTO 54
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16491 /* ~"Co masz na myśli?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16492 /* ~"Skąd to wiesz?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16493 /* ~"Co masz na myśli?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16494 /* ~"Skąd to wiesz?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #16279 /* ~"Ano, ci którzy przynoszą umarłych z Sigil - głównie z Ula - do Kostnicy, w zamian za brzdęk."~ */
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16495 /* ~"Co miałeś na myśli mówiąc 'więcej wspólnego z'?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16496 /* ~"Skąd wiesz o tym Zbieraczu?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16497 /* ~"Co miałeś na myśli mówiąc 'więcej wspólnego z'?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16498 /* ~"Skąd wiesz o tym Zbieraczu?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 55 // from: 53.1 53.2 54.0 54.1
  SAY #16280 /* ~"Hmm... słuchaj, widze, że cie to interesuje, a to nie jest normalna sprawa - to jest śmiertelnie tajemnicze. Bede cie musiał prosić o przysługę zanim puszcze pare z gemby."~ */
  IF ~~ THEN REPLY #16499 /* ~"Proś więc o nią."~ */ GOTO 56
  IF ~~ THEN REPLY #16500 /* ~"Mniejsza więc o to. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16501 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #16281 /* ~"Dobrze, dobrze. Mam taki stały zakład z jednym z moich przyjaciół... coś w rodzaju współzawodnictwa. Wystarczy ci wiedzieć, że potrzebuje jak najwięcej szczurzych ogonów. Nie chodzi o ogony zwykłych szczurów, zauważ, ale czaszkoszczurów... mózgoszkodników. Przynieś mi pięć ogonów, a ja zdradze ci tajemnice tego brudnego Zbieracza i tego cholernego hulaki."~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16502 /* ~"Oto pięć szczurzych ogonów dla ciebie."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16503 /* ~"Czaszkoszczurów?"~ */ GOTO 57
  IF ~~ THEN REPLY #16504 /* ~"Rozumiem."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16505 /* ~"Myślę, że nie warte to jest mojego czasu."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY #16282 /* ~"Zgadza sie. To nie są zwykłe szczury; są o wiele niebezpieczniejsze. Im więcej sie ich razem zbierze, tym są przebieglejsze... dość przebiegłe, żeby robić zasadzki i rzucać zaklęcia tak jak mag. Uważaj na siebie, gdy będziesz zdobywał ich ogony!"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16506 /* ~"Oto pięć szczurzych ogonów dla ciebie."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16507 /* ~"Rozumiem."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16508 /* ~"Myślę, że to nie jest warte mojego czasu."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2 57.1 78.0
  SAY #16283 /* ~"W porządku. Coś jeszcze?"~ */
  IF ~~ THEN REPLY #16509 /* ~"Tak. Gdzie mogę znaleźć pracę?"~ */ GOTO 43
  IF ~~ THEN REPLY #16510 /* ~"Tak. Gdzie mogę się zabawić?"~ */ GOTO 48
  IF ~~ THEN REPLY #16511 /* ~"Tak, mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16512 /* ~"Nie, nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.3 57.2 78.1
  SAY #16284 /* ~"Jak chcesz. Wiesz co masz mi przynieść, jeśli chcesz kiedykolwiek poznać tajemnicę tych dwóch. Chcesz jeszcze czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #16513 /* ~"Tak. Gdzie mogę znaleźć pracę?"~ */ GOTO 43
  IF ~~ THEN REPLY #16514 /* ~"Tak. Gdzie mogę się zabawić?"~ */ GOTO 48
  IF ~~ THEN REPLY #16515 /* ~"Tak, mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16516 /* ~"Nie, nic. Żegnaj."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",1)
~ THEN BEGIN 60 // from:
  SAY #16285 /* ~"Nie ważne po co wróciłeś. Nie powiem ci już ani słowa."~ */
  IF ~~ THEN REPLY #16517 /* ~"Mam kilka pytań..."~ */ GOTO 19
  IF ~  !Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16518 /* ~"Chcę cię przeprosić."~ */ GOTO 62
  IF ~  Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16519 /* ~"Chcę cię przeprosić."~ */ GOTO 61
  IF ~  Global("RB_Sorry","AR0101",1)
~ THEN REPLY #16520 /* ~"Chcę cię przeprosić."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 60.2
  SAY #16286 /* ~"Ni, trepie; posunąłeś sie za daleko. Skłamałeś, a na dodatek mnie straszyłeś... szpicuj sie."~ */
  IF ~~ THEN REPLY #16521 /* ~Odejdź.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY #16287 /* ~"Hmpf." Mężczyzna myśli przez chwilę, po czym spluwa przez ramię. "Nie mogę powiedzieć, żebym nie chciał mieć nigdy drugiej szansy; nie pozbawie cie twojej. Uważaj tylko tym razem na to, co mówisz, trepie..."~ */
  IF ~~ THEN REPLY #16522 /* ~"Dzięki. Mam kilka pytań..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16523 /* ~"Tak. Żegnaj."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY #16288 /* ~"Ni, trepie; miałeś swoją drugą szanse. Szpicuj sie."~ */
  IF ~~ THEN REPLY #16524 /* ~Odejdź.~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
GlobalLT("RB_Quest","AR0101",2)
~ THEN BEGIN 64 // from:
  SAY #16289 /* ~Gdy podchodzisz, Kościszczur podnosi wzrok. "Hmm?"~ */
  IF ~  GlobalGT("RB_Quest","AR0101",0)
NumItemsPartyGT("Tail",4)
~ THEN REPLY #16525 /* ~"Mam dla ciebie te szczurze ogony."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16526 /* ~"Mam kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16527 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",2)
~ THEN BEGIN 65 // from:
  SAY #16290 /* ~Gdy podchodzisz, Kościoszczur podnosi wzrok. "Dobrze cie znów widzieć. Masz już dla mnie te ogony?"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16528 /* ~"Tak."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16529 /* ~"Jeszcze nie. Mam kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16530 /* ~"Nie, jeszcze nie. Mam kilka pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 56.0 57.0 64.0 65.0
  SAY #16291 /* ~Mężczyzna bierze ogony i wrzuca je do skórzanej torby, chichocząc przez cały czas pod nosem. "To na pewno wystarczy! Jestem wielce zobowiązany."~ */
  IF ~~ THEN REPLY #16531 /* ~"A teraz zdradź mi ten swój sekret."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 13.4 66.0
  SAY #16292 /* ~"Oczywiście, oczywiście. Zdawało mi sie, że dzieje sie coś dziwnego, gdy po raz pierwszy spojrzałem na tego hulakę. Pojedynkowanie sie w Ulu w celu uniknięcia uwagi to jedna rzecz, ale on jest tutaj od wielu dni... pozostaje nawet w Ulu, zamiast wrócić na swoje miejsce."~ */
  IF ~~ THEN REPLY #16532 /* ~"Uwagi?"~ */ GOTO 68
  IF ~~ THEN REPLY #16533 /* ~"Mów dalej..."~ */ GOTO 69
  IF ~~ THEN REPLY #16534 /* ~"Reszty będę musiał wysłuchać innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #16293 /* ~"Ano. Łaskobójcy i im podobni. Patrolują ulice Sigil - przynajmniej część z nich - zaprowadzając 'porządek'." Grymas wykrzywia jego twarz. "Trzymają sie z dala od biedniejszych dzielnic miasta, takich jak Ul."~ */
  IF ~~ THEN REPLY #16535 /* ~"Rozumiem. Mów dalej..."~ */ GOTO 69
  IF ~~ THEN REPLY #16536 /* ~"Reszty będę musiał wysłuchać innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #16294 /* ~"Cóż, wyrzekłem sie kradzieży dawno temu - nie pytaj dlaczego - ale to było po prostu zbyt wiele, zbyt łatwo. Pewnej nocy, w okolicach przeciw-szczytu, zakradłem sie na tył zawszonej gospody, którą on nazywał leżem, i zgadnij kogo zobaczyłem w oknie jego pokoju? Tego Zbieracza!"~ */
  IF ~~ THEN REPLY #16537 /* ~"Kontynuuj proszę..."~ */ GOTO 70
  IF ~~ THEN REPLY #16538 /* ~"Reszty będę musiał wysłuchać innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #16295 /* ~"Teraz jestem więc po dwakroć podejrzliwy. Ciekawość wzięła we mnie górę i zacząłem śledzić tego Zbieracza po okolicy. On nigdy nie śpi, nigdy nie je... jeśli w pobliżu nie ma tego hulaki, on po prostu siedzi w najciemniejszej alei jaka może tylko znaleźć i wpatruje sie przed siebie."~ */
  IF ~~ THEN REPLY #16539 /* ~"Ciekawe. Mów dalej..."~ */ GOTO 71
  IF ~~ THEN REPLY #16540 /* ~"Reszty będę musiał wysłuchać innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #16296 /* ~"A teraz najlepszy kawałek. Pewnej ciemnej nocy, leże sobie na dachu nad aleją, w której siedzi Zbieracz, a tu kto pojawia się, by z nim porozmawiać?"~ */
  IF ~~ THEN REPLY #16541 /* ~"Hulaka?"~ */ GOTO 72
  IF ~~ THEN REPLY #16542 /* ~"Powiedz mi."~ */ GOTO 73
  IF ~~ THEN REPLY #16543 /* ~"Powiesz mi innym razem. żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #16297 /* ~"Nie! *Bies*!"~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.1 72.0
  SAY #16298 /* ~"Bies, jestem pewien. Urocza była, miała skrzydła ja anioł i usta jak... jak... w każdym bądź razie była cudowna. Ale była biesem, z pewnością - kusicielką, baatezu, tam skąd pochodze, rodzaj ten nazywaliśmy Eryniami."~ */
  IF ~~ THEN REPLY #16544 /* ~"Kontynuuj więc..."~ */ GOTO 74
  IF ~~ THEN REPLY #16545 /* ~"Reszty będę musiał wysłuchać innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #16299 /* ~"Dałbym wszystko za to żeby usłyszeć o czym mówili, ale widziałem już zbyt wiele, aby zwracać na siebie uwagę biesa. Wiem tylko, że rozmawiali przez chwile, po czym bies roześmiał sie - był to okrutny, szyderczy śmiech - i rozpłynął sie w powietrzu, a Zbieracz odprowadził go warczeniem i sykiem!"~ */
  IF ~~ THEN REPLY #16546 /* ~"Jesteś pewien tego wszystkiego?"~ */ GOTO 75
  IF ~~ THEN REPLY #16547 /* ~"Po cóż bies miałby rozmawiać ze Zbieraczem?"~ */ GOTO 76
  IF ~~ THEN REPLY #16548 /* ~"Ciekawa historia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #16300 /* ~"Ech! Jak mi nie wierzysz, to idź i przyjrzyj sie im sam! Nie przeciągaj jednak struny - ten hulaka to okrutny hultaj, a każdego, kto z nim zadziera, wkrótce wpisują do księgi umarłych."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #16549 /* ~"Po cóż bies miałby rozmawiać ze Zbieraczem?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #16550 /* ~"Po cóż bies miałby rozmawiać ze Zbieraczem?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #16551 /* ~"Ciekawa historia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1 75.0
  SAY #16301 /* ~"Nic nie rozumiesz, ty pomylony skurlu! On nie jest Zbieraczem! Ech... jeśli kiedykolwiek zdarzy ci sie rozmawiać z biesem... z baatezu, ma sie rozumieć, a nie z jednym z tych stukniętych tanar'ri... może o to zapytasz? Nigdy nie wiadomo, czego się można dowiedzieć."~ */
  IF ~~ THEN REPLY #16552 /* ~"Dzięki za informacje. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16553 /* ~"Być może tak zrobię, jeśli je spotkam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #16302 /* ~"Nic nie rozumiesz, ty pomylony skurlu! On nie jest Zbieraczem! Ech... jeśli kiedykolwiek zdarzy ci sie rozmawiać z biesem... z baatezu, ma sie rozumieć, a nie z jednym z tych stukniętych..." Urywa w pół zdania, zauważając Nie-Sławę. "Ech, znaczy sie 'swobodniej myślących' tanar'ri... może o to zapytasz? Nigdy nie wiadomo, czego się można dowiedzieć."~ */
  IF ~~ THEN REPLY #16554 /* ~"Dzięki za informacje. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16555 /* ~"Być może tak zrobię, jeśli je spotkam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 53.3 53.4 54.2 54.3
  SAY #16303 /* ~"Powiedziałem ci już, co chcę w zamian za tę tajemnicę: pięć szczurzych ogonów. Nie chodzi o ogony zwykłych szczurów, zauważ, ale czaszkoszczurów... Przynieś mi pięć ogonów, a ja zdradze ci tajemnice tego brudnego Zbieracza i tego cholernego hulaki."~ */
  IF ~~ THEN REPLY #16556 /* ~"Rozumiem."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16557 /* ~"Myślę, że to nie jest warte mojego czasu."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",3)
~ THEN BEGIN 79 // from:
  SAY #16304 /* ~Gdy podchodzisz, Kościszczur podnosi wzrok. "Hmm?"~ */
  IF ~~ THEN REPLY #16558 /* ~"Mam kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #16559 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END
