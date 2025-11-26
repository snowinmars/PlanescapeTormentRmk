// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSERE~

IF ~  Global("Sere","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1796 /* ~Kiedy podchodzisz, staruszka odwraca się do ciebie i bacznie ci się przygląda. "La, tylko popatrzcie, kto dzisiaj odwiedził Serę... toż to najukochańszy syn śmierci." Kobieta mierzy cię wzrokiem od stóp do głów, a potem kręci głową z niedowierzaniem. "Na wszystkie Moce, chłopcze... Z jakiej krypty żeś wypełz?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #1797 /* ~"Wcale nie wypełzłem z żadnej krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14338 /* ~"Wcale nie wypełzłem z żadnej krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14339 /* ~"Prawdę mówiąc, to przychodzę prosto z Kostnicy."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14340 /* ~Zażartuj: "No cóż, krypta zaczynała mi się już nudzić, więc rozglądam się za odpowiednim miejscem, żeby umrzeć. Znasz takie?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14341 /* ~"Przepraszam, wziąłem cię za kogoś innego. Żegnaj."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ EXIT
END

IF ~  Global("Sere","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14342 /* ~Kiedy Sere cię spostrzega, na jej twarzy pojawia się wymuszony uśmiech. "La, czyż to nie kryptopełzacz? Co tym razem przywiodło cię do drzwi starej Sere, chłopcze?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14343 /* ~"Wcale nie wypełzłem z żadnej krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14344 /* ~"Wcale nie wypełzłem z żadnej krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14345 /* ~Zażartuj: "No cóż, krypta zaczynała mi się już nudzić, więc rozglądam się za odpowiednim miejscem, żeby umrzeć. Znasz takie?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14346 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14347 /* ~"Nic, tak tylko wpadłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.1 4.4 5.3 6.1 7.2 8.0 9.1 10.3 11.1 12.1 13.1 14.4 15.3 16.1 17.4 18.2 19.2 21.2 22.2 23.2 24.1 25.3 26.1 27.4 28.3 29.2 30.1 31.1 32.0 34.1 35.2 37.2 39.0 42.0 43.1 44.0 45.1 46.0 47.8 48.4 49.2 50.1 51.2 52.1 53.1 54.1 55.2 56.2 57.3 58.1 59.2 60.1 61.1 62.2 63.2 64.0 65.3
  SAY #14348 /* ~"Pytania, co? Hmm, pytaj..." Sere mierzy cię zimnym wzrokiem, a potem na jej twarzy pojawia się uśmiech. "...Kryptopełzaczu."~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14349 /* ~"Wcale nie wypełzłem z żadnej krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14350 /* ~"Wcale nie wypełzłem z żadnej krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14351 /* ~"Chciałem zapytać cię o kilku Grabarzy..."~ */ GOTO 47
  IF ~  Global("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14352 /* ~"Czy jesteś Grabarzem?"~ */ GOTO 13
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14353 /* ~"Możesz opowiedzieć mi o Hamrysie?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14354 /* ~"Chcę porozmawiać o twoich poglądach. Co sprawiło, że przestałaś wyznawać filozofię Grabarzy?"~ */ GOTO 16
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Recruit_Sere","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #14355 /* ~"Sere, nie jesteś już Grabarzem. Może pomyślisz o czym innym?"~ */ GOTO 34
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14356 /* ~"Nie rzucił ci się ostatnio w oczy jakiś dziennik? Bo właśnie szukam swojego."~ */ GOTO 43
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #14357 /* ~"Szukam człowieka imieniem Farod. Może go widziałaś?"~ */ GOTO 45
  IF ~~ THEN REPLY #14358 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2 5.1
  SAY #14359 /* ~"Naprawdę?" Sere unosi brwi do góry. "Cieszę się, że udało ci się stamtąd odśmiać, chłopcze. Tszzzzz. Za dużo tam pajęczyn i zagrabionych umysłów."~ */
  IF ~~ THEN REPLY #14360 /* ~"Nie lubisz Kostnicy? Czyż nie jesteś Grabarzem?"~ */ GOTO 13
  IF ~~ THEN REPLY #14361 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14362 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1 1.0 1.1 2.0 2.1
  SAY #14363 /* ~Kobieta marszczy czoło. "No dobrze. W takim razie, z jakiej *trumny* żeś wypełznął. Może z tej od Hamrysa, pewnie tak. Słyszałam, że w jego trumnach można sobie nawbijać drzazg." Staruszka pociąga nosem. "Ten chłopak nie jest wart złamanego miedziaka od czasu, jak umarł jego ojciec."~ */
  IF ~~ THEN REPLY #14364 /* ~"Nie wypełzłem też z żadnej *trumny*."~ */ GOTO 5
  IF ~~ THEN REPLY #14365 /* ~"Kto to jest Hamrys?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14366 /* ~"Nie wypełzłem z żadnej trumny... Prawdę mówiąc, przybywam prosto z Kostnicy."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14367 /* ~Zażartuj: "No cóż, w trumnie było zbyt dużo przeciągów, więc rozglądam się za odpowiednim miejscem, żeby umrzeć. Znasz takie?"~ */ GOTO 9
  IF ~~ THEN REPLY #14368 /* ~"Potrzebuję pewnych informacji. Mogę zadać ci kilka pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #14369 /* ~"Przepraszam, że ci zawracałem głowę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #14370 /* ~Kobieta uśmiecha się, ukazując rząd krzywych zębów. "No dobrze. Zatem z jakiego *sarkofagu* żeś wypełznął?" Kobieta przerywa i zaczyna do siebie chichotać. "Tylko żartuję, chłopcze. Choć wyglądasz, jakbyś wyleciał śmierci spod spódnicy."~ */
  IF ~~ THEN REPLY #14371 /* ~"Kim jest ten Hamrys, o którym wspomniałaś?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14372 /* ~"Chyba tak... Przybywam prosto z Kostnicy."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14373 /* ~Zażartuj: "Nie gniewam się o to. Prawda mówiąc, sarkofag wydawał mi się zbyt duży, więc rozglądam się za odpowiednim miejscem, żeby umrzeć. Znasz takie?"~ */ GOTO 9
  IF ~~ THEN REPLY #14375 /* ~"Potrzeba mi pewnych informacji. Mogę zadać ci kilka pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #14376 /* ~"Przepraszam, że ci zawracałem głowę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 4.1 5.0
  SAY #14374 /* ~"Hamrys psuje trumny... przepraszam, produkuje trumny w Niższej Dzielnicy. Odziedziczył warsztat po śmierci ojca. Teraz tylko przynosi wstyd wszystkim zwłokom w Sigil, które potrzebują trumny, krypty czy nagrobka."~ */
  IF ~~ THEN REPLY #14377 /* ~"Co się stało z jego ojcem?"~ */ GOTO 7
  IF ~~ THEN REPLY #14378 /* ~"Rozumiem. Mogę ci zadać kilka pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #14379 /* ~"Dziękuję za informacje... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14380 /* ~"A cóż to, uszyska masz tylko na pokaz? On *umarł*. Pewnie to jego syn zagadał go na śmierć. Język tego chłopaczyska nie przestaje trajkotać. Dziwię się, że jeszcze nie odtrajkotał sobie głowy od reszty ciała."~ */
  IF ~~ THEN REPLY #14381 /* ~"W takim razie chyba macie ze sobą wiele wspólnego."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14382 /* ~Zażartuj: "W takim razie raczej nie chciałbym być pochowany w trumnie, która wyszłą spod jego ręki. Może polecisz mi jakieś inne miejsce, gdzie mógłbym spocząć i umrzeć?"~ */ GOTO 9
  IF ~~ THEN REPLY #14383 /* ~"Potrzeba mi pewnych informacji. Mogę zadać ci kilka pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #14384 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14385 /* ~Oczy kobiety zwężają się. "Zrób nam obojgu przysługę i zamknij tę swoją jadaczkę, chłopcze. Nie porównuj mnie z tym rozgadanym szczenięciem."~ */
  IF ~~ THEN REPLY #14386 /* ~"Dobrze. Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14387 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.2 4.3 5.2 7.1
  SAY #14388 /* ~Kobieta wybucha śmiechem. "Ha! Nie tutaj... Chyba że chcesz umrzeć z nudów."~ */
  IF ~~ THEN REPLY #14389 /* ~"Co jest złego w tym miejscu?"~ */ GOTO 10
  IF ~~ THEN REPLY #14390 /* ~"Będę o tym pamiętać. Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14391 /* ~"Muszę już iść. Żegnaj, Sere."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14392 /* ~"Tszzzz. Ktoś ci zabrał rozsądek i wzrok, chłopcze?" Kobieta pokazuje ręką wokół siebie. "Rozejrzyj się dokoła. Co ci mówią oczy?"~ */
  IF ~~ THEN REPLY #14393 /* ~"Widzę Grabarzy."~ */ GOTO 11
  IF ~~ THEN REPLY #14394 /* ~"To bar Grabarzy."~ */ GOTO 11
  IF ~~ THEN REPLY #14395 /* ~"Widzę grupę rozbawionych Grabarzy, śmiejących się, popijających i rozmawiających. Widać, że cieszą się życiem jak mogą."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #14396 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14397 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #14398 /* ~"*Bardzo* dobrze!" Sere wybucha suchym chichotem, choć nie wygląda, żeby śmiała się z ciebie. "Grabarze to najnudniejsza banda nudziarzy, jaką kiedykolwiek Sigil widziało... Zawsze gadają o śmierci z takim uwielbieniem, jakby to był jakiś święty związek, którego powinno pragnąć każde stworzenie w wieloświecie. Tszzzzz."~ */
  IF ~~ THEN REPLY #14399 /* ~"Ale przecież ty należysz do Grabarzy."~ */ GOTO 13
  IF ~~ THEN REPLY #14400 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14401 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #14402 /* ~"Sprytny masz języczek, chłopcze... Może sprytniejszy niż ty sam?" Sere spogląda na ciebie z ukosa. "To by wyjaśniało te blizny."~ */
  IF ~~ THEN REPLY #14403 /* ~"Ale to nie wyjaśnia, dlaczego Grabarz naśmiewa się z innych Grabarzy. Może odpowiesz mi na to pytanie? *Jesteś* Grabarzem?"~ */ GOTO 13
  IF ~~ THEN REPLY #14404 /* ~"Bardzo sprytne. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14405 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 3.0 11.0 12.0
  SAY #14406 /* ~"Grabarzem? Chyba tak." Sere pociąga nosem. "Tszzzz. Wiele już piasku przesypało się w klepsydrze, od czasu jak noszę te szaty. To ciało jest już prawie gotowe, żeby zapłacić przewoźnikowi." Kobieta zaczyna chichotać, ale w jej śmiechu nie słychać wesołości.~ */
  IF ~~ THEN REPLY #14407 /* ~"Boisz się śmierci?"~ */ GOTO 14
  IF ~~ THEN REPLY #14408 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14409 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #14410 /* ~"No pewnie, że tak, chłopcze! A kto się jej nie boi?" Kobieta marszczy na ciebie czoło i spogląda wkoło. "Hmm, może oprócz Grabarzy. Oni się jej nie obawiają, bo przez te dziesiątki lat połknęli już zbyt dużo tego swojego chłamu i zaczęli myśleć, że śmierć jest jakimś tam 'uwolnieniem'. Tszzzzz."~ */
  IF ~~ THEN REPLY #14411 /* ~"W pewnym sensie to *jest* uwolnienie."~ */ GOTO 15
  IF ~~ THEN REPLY #14412 /* ~"Twoje słowa nie brzmią, jakby pochodziły z ust Grabarza."~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14413 /* ~"Więc co wywołało ten kryzys wiary?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14414 /* ~"Więc co wywołało ten kryzys wiary?"~ */ GOTO 16
  IF ~~ THEN REPLY #14415 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14416 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #14417 /* ~"Jeśli ktoś uważa, że jego życie jest jarzmem, to może i tak. Nie jestem o tym przekonana."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14418 /* ~"Więc co wywołało ten kryzys wiary?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14419 /* ~"Więc co wywołało ten kryzys wiary?"~ */ GOTO 16
  IF ~~ THEN REPLY #14420 /* ~"Więc nie wierzysz w to, co mówią Grabarze? Czyż nie jesteś jedną z nich?"~ */ GOTO 65
  IF ~~ THEN REPLY #14421 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14422 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 14.2 14.3 15.0 15.1 65.0 65.1 65.2
  SAY #14423 /* ~Kobieta wzrusza ramionami. "Pewnie życie. Ono... ech..." Staruszka marszczy twarz. "Ha! Nie będę cię zanudzała zbędnymi szczegółami."~ */
  IF ~~ THEN REPLY #14424 /* ~"Prawdę mówiąc, bardzo mnie to ciekawi."~ */ GOTO 17
  IF ~~ THEN REPLY #14425 /* ~"W porządku. Mam do ciebie kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14426 /* ~"Dzięki za to Mocom. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #14427 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #14428 /* ~"Och, *naprawdę*?" Kobieta spogląda na ciebie sceptycznie. "Tszzzzz. Jak myślisz, chłopcze, ile mam lat?"~ */
  IF ~~ THEN REPLY #14429 /* ~Prawda: "Jesteś stara."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sere_1","GLOBALLaw",1)
~ GOTO 18
  IF ~~ THEN REPLY #14430 /* ~Rzuć jej lekkie pochlebstwo: "Nie wyglądasz zbyt staro."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sere_1","GLOBALGood",1)
~ GOTO 18
  IF ~~ THEN REPLY #14431 /* ~Skłam przez uprzejmość: "Jesteś raczej młoda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALGood_Sere_2","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #14432 /* ~"Nie wiem, nic mnie to nie obchodzi."~ */ GOTO 20
  IF ~~ THEN REPLY #14433 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14434 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #14435 /* ~Kobieta prycha. "Hmmm, jesteś w błędzie. Jestem *bardzo* stara. Większość swojego długiego życia spędziłam ucząc Grabarzy. Widziałam jak wiele grabarskich szczeniąt dorasta wewnątrz naszego bractwa, uczyłam ich o frakcji, o trzymaniu się wiary, o doktrynach i dogmatach..." Staruszka marszczy czoło. "...i tak dalej i tak dalej. Żadnych pytań. Żadnych wątpliwości. To życie było tylko przedsionkiem do Prawdziwej Śmierci."~ */
  IF ~~ THEN REPLY #14436 /* ~"Co się stało?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14437 /* ~"Wiesz co, zaczynasz mnie nudzić. Żegnaj."~ */ GOTO 20
  IF ~~ THEN REPLY #14438 /* ~"Rozumiem. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14439 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY #14440 /* ~Sere mruga oczyma, a potem na jej twarzy pojawia się uśmiech. "A *ty* się nie boisz, kochaniutki?" Kobieta chichocze do siebie, a potem zanosi się kaszlem. "Hmmm, jestem starsza, niż na to wyglądam. O wiele starsza." Staruszka wzdycha. "Większość swojego długiego życia spędziłam ucząc Grabarzy. Widziałam jak wiele grabarskich szczeniąt dorasta wewnątrz naszego bractwa, uczyłam ich o frakcji, o trzymaniu się wiary..." Staruszka marszczy czoło. "...i tak dalej i tak dalej. Żadnych pytań. Żadnych wątpliwości. To życie było tylko przedsionkiem do Prawdziwej Śmierci."~ */
  IF ~~ THEN REPLY #14441 /* ~"Co się stało?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14442 /* ~"Wiesz co, zaczynasz mnie nudzić. Żegnaj."~ */ GOTO 20
  IF ~~ THEN REPLY #14443 /* ~"Rozumiem. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14444 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.1 22.1
  SAY #14445 /* ~Sere marszczy czoło. "Tsszzzz. To *ty* pierwszy poprosiłeś mnie, żebym kłapała jadaczką, chłopcze. Na przyszłość będę uważała na to, o co prosisz."~ */
  IF ~~ THEN REPLY #14446 /* ~"Dobrze. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Sere_1","GLOBALGood",-1)
SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0 19.0
  SAY #14447 /* ~"Hmmm... Pół miesiąca temu zachorowałam na febrę." Kobieta wzdycha. "Myślałam, że to już koniec. To... ech, to mi dało w kość."~ */
  IF ~~ THEN REPLY #14448 /* ~"Jak?"~ */ GOTO 22
  IF ~~ THEN REPLY #14449 /* ~"Wiesz co, zaczynasz mnie nudzić. Żegnaj."~ */ GOTO 20
  IF ~~ THEN REPLY #14450 /* ~"Rozumiem. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14451 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #14452 /* ~Twarz kobiety zamienia się w kamień. "To dziwne uczucie, jak wokół twojego łoża śmierci stoją członkowie twojej frakcji, jak stado bladolicych ghuli, którzy tylko kiwają głowami i twierdzą, że twoje cierpienia i agonia to dla twojego dobra. 'Och, Sere ma tak dużo szczęścia! Już wkrótce zostanie z niej zdjęte brzemię życia!' *Brzemię życia* Właśnie wtedy zrozumiałam..."~ */
  IF ~~ THEN REPLY #14453 /* ~"Że...?"~ */ GOTO 23
  IF ~~ THEN REPLY #14454 /* ~"Wiesz co, zaczynasz mnie nudzić. Żegnaj."~ */ GOTO 20
  IF ~~ THEN REPLY #14455 /* ~"Rozumiem. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14456 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14457 /* ~"Że w tym niedocenianiu *życia*..." Na twarzy staruszki pojawia się dziwny grymas. "jest coś nienormalnego. Grabarze upierają się, że życie to tylko smutki i cierpienia... czy aby naprawdę? Twierdzą, że powinniśmy cieszyć się, że przechodzimy na tamtą stronę... czy na pewno?" Kobieta potrząsa głową. "Pytania, pytania... i tak niewiele cennych odpowiedzi."~ */
  IF ~~ THEN REPLY #14458 /* ~"To brzmi tak, jakbyś już nie wierzyła w filozofię Grabarzy."~ */ GOTO 24
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14459 /* ~"Co zrobisz?"~ */ GOTO 25
  IF ~~ THEN REPLY #14460 /* ~"Rozumiem. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14461 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14462 /* ~"Chyba w mojej czaszce aż roi się od wątpliwości." Staruszka pociera sobie skronie. "Czasami ciężko je uciszyć. Trzeba nakarmić je odpowiedziami, a ja jeszcze nie wymyśliłam wszystkich odpowiedzi."~ */
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14463 /* ~"Co zrobisz?"~ */ GOTO 25
  IF ~~ THEN REPLY #14464 /* ~"Rozumiem. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14465 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #14466 /* ~"Prawdę mówiąc, chłopcze, to nie wiem." Sere wzdycha do siebie. "To jest właśnie problem z wątpliwościami. Nie jestem pewna, czy moje odczucia są prawdziwe, albo czy boję się śmierci tylko dlatego, że otarłam się o nią w czasie choroby. Nie mam nawet pewności, co powinnam zrobić. Czy to minie? Nie wiem."~ */
  IF ~~ THEN REPLY #14467 /* ~"Sere, gdybyś naprawdę wierzyła w filozofię Grabarzy, to febra nie wywołała by u ciebie takich wątpliwości."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14468 /* ~"Sere, na twoim miejscu potraktowałbym to jako sprawdzian wiary. Wygląda na to, że to uczucie niedługo minie. Przecież nie mogłaś przez tyle lat wyznawać wiary Grabarzy, nie wierząc w nią."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",2)
AddexperienceParty(500)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14469 /* ~"Podstawą filozofii Grabarzy jest to, że życie jest pełne bólu. To broń, którą życie używa przeciwko duszy, żeby utrzymać ją przy istnieniu. Nie pozwól, żeby to przeżycie z chorobą zachwiało tym, w co wierzysz ty i wszyscy Grabarze. Z czasem te wątpliwości cię opuszczą."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",3)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14470 /* ~"Ciężko znaleźć jakąkolwiek odpowiedź. Słuchaj, mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14471 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2
  SAY #14472 /* ~Sere spogląda na ciebie, a potem wolno kiwa głową. "Może tak... może tak." Potem marszczy czoło, jakby się próbowała skoncentrować. "Muszę to jeszcze bardziej przemyśleć."~ */
  IF ~  Global("Sere_Death_Answer","GLOBAL",0)
~ THEN REPLY #14473 /* ~"Powinnaś to zrobić. To ważna sprawa."~ */ GOTO 27
  IF ~~ THEN REPLY #14474 /* ~"Tylko o to proszę. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14475 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14476 /* ~"La... wystarczy tego mojego kłapania jadaczką o swoich żalach!" Sere zaczyna wpatrywać się w twoje blizny. "Wyglądasz, jakbyś sam nieraz otarł się o śmierć. Czy to nie zmieniło w jakiś sposób twoich zapatrywań? Czy dzięki temu nie nauczyłeś się trochę bardziej doceniać życie?"~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14477 /* ~"Hmmm, mój stan jest bardzo specyficzny... Obudziłem się w Kostnicy. Musieli wziąć mnie za trupa i przygotowali mnie do pochówku. Najdziwniejsze jest to, że chyba naprawdę umarłem... a potem mi się polepszyło."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",1)
~ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14478 /* ~"Moje spotkania ze śmiercią były o wiele bliższe niż to, czego doświadczają inni. Po prostu nie mogę umrzeć... przynajmniej z tego, co wiem."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",2)
~ GOTO 28
  IF ~~ THEN REPLY #14479 /* ~Prawda: "Tak."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",3)
~ GOTO 62
  IF ~~ THEN REPLY #14480 /* ~Prawda: "Prawdę mówiąc, nie."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",4)
~ GOTO 63
  IF ~~ THEN REPLY #14481 /* ~"Nie chcę o tym mówić. Ale mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14482 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 62.0 62.1 63.0 63.1
  SAY #14483 /* ~Sere mruga ze zdziwienia. "Trzęsiesz moją trumną."~ */
  IF ~~ THEN REPLY #14484 /* ~"To prawda."~ */ GOTO 29
  IF ~~ THEN REPLY #14485 /* ~"Tylko żartowałem."~ */ GOTO 33
  IF ~~ THEN REPLY #14486 /* ~"Prawdę mówiąc, nie."~ */ GOTO 29
  IF ~~ THEN REPLY #14487 /* ~"Nie chcę o tym mówić. Ale mam do ciebie jeszcze parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14488 /* ~"Chyba powiedziałem już wystarczająco dużo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #14489 /* ~"Niezbadane są ścieżki Sfer, a ja widziałam już tak wiele, że uwierzę w *każdą* historię." Kobieta bacznie przygląda się twojej twarzy. "Jeśli to prawda, to dlaczego tak się dzieje?"~ */
  IF ~~ THEN REPLY #14490 /* ~"Nie wiem."~ */ GOTO 30
  IF ~~ THEN REPLY #14491 /* ~"Wiem tylko, że obudziłem się w Kostnicy. Nic nie pamiętałem, a na moim ciele było tyle ran, że mógłbym już parę razy przez nie umrzeć."~ */ GOTO 31
  IF ~~ THEN REPLY #14492 /* ~"Naprawdę, nie wiem. Słuchaj, mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14493 /* ~"Chyba powiedziałem już wystarczająco dużo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14494 /* ~Staruszka zamyśla się przez chwilę, a potem wzrusza ramionami. "W takim razie jest nas dwoje. Bardzo osobliwe. Nigdy o czymś takim nie słyszałam. Dziwna sprawa z tymi wspomnieniami."~ */
  IF ~~ THEN REPLY #14495 /* ~"Nie wiesz może, dlaczego tak się dzieje?"~ */ GOTO 32
  IF ~~ THEN REPLY #14496 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14497 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #14498 /* ~"Nie mów tego tak głośno." Staruszka rozgląda się wkoło. "Bardzo osobliwe. Nigdy o czymś takim nie słyszałam. Dziwna sprawa z tymi wspomnieniami."~ */
  IF ~~ THEN REPLY #14499 /* ~"Nie wiesz może, dlaczego tak się dzieje?"~ */ GOTO 32
  IF ~~ THEN REPLY #14500 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14501 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0 31.0
  SAY #14502 /* ~"Nie. Nigdy nie znałam nikogo, kogo nie chciałaby śmierć... aż do tej chwili."~ */
  IF ~~ THEN REPLY #14503 /* ~"No cóż, mógłbym ci zadać parę innych pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #14504 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY #14505 /* ~Kobieta marszczy czoło. "Na twoim miejscu uważałabym z tym twoim dowcipem. Jest na tyle osty, że możesz się kiedyś o niego przeciąć." Staruszka odwraca się od ciebie i wykonuje ręką gest, jakby chciała cię odprawić. "Zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #14506 /* ~"Żegnaj."~ */ DO ~SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 2.6
  SAY #14507 /* ~"Co? Mów jasno, chłopcze."~ */
  IF ~~ THEN REPLY #14508 /* ~"Mam paru przyjaciół, którzy uważają, że takie instytucje jak Grabarze powinny przestać istnieć."~ */ GOTO 35
  IF ~~ THEN REPLY #14509 /* ~"Prawdę mówiąc, musiałem się przejęzyczyć. Mam jeszcze parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14510 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14511 /* ~"Och?" Na twarzy staruszki pojawia się wymuszony uśmiech. "Czyżbyś mówił o *Lidze?*"~ */
  IF ~~ THEN REPLY #14512 /* ~"Tak."~ */ GOTO 36
  IF ~~ THEN REPLY #14513 /* ~"Może..."~ */ GOTO 36
  IF ~~ THEN REPLY #14514 /* ~"Prawdę mówiąc, musiałem się przejęzyczyć. Mam jeszcze parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14515 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1
  SAY #14516 /* ~"Tsssz! Ci w gorącej wodzie kąpani podburzacze to większe świry niż Grabarze. To nie dla takiej starej kobiety jak ja."~ */
  IF ~~ THEN REPLY #14517 /* ~"Nie? Myślę, że byłabyś dla nich cennym nabytkiem."~ */ GOTO 37
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14518 /* ~"Zanim powiesz nie, zastanów się nad jedną sprawą: Otarłaś się o śmierć, i to przekonało cię, że może jednak warto docenić życie. Grabarze mieszają w głowach nowym rekrutom, zmuszając ich, by wierzyli, że śmierć jest lepsza od życia. Wydaje ci się, że to jest w porządku?"~ */ GOTO 40
  IF ~~ THEN REPLY #14519 /* ~"Myślałem, że potrzebujesz zmiany."~ */ GOTO 37
  IF ~~ THEN REPLY #14520 /* ~"Dobrze. Muszę już iść... Daj mi znać, jeśli zmienisz zdanie."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.2
  SAY #14521 /* ~"Chyba się mylisz." Na twarzy Sere pojawia się lekki uśmiech, jakby była rozbawiona. "Może i mam pewne wątpliwości, ale one nie idą aż *tak* daleko."~ */
  IF ~~ THEN REPLY #14522 /* ~"W takim razie zastanów się nad jednym: Otarłaś się o śmierć, i to przekonało cię, że może jednak warto docenić życie. Grabarze mieszają w głowach nowym rekrutom, zmuszając ich, by wierzyli, że śmierć jest lepsza od życia. Wydaje ci się, że to jest w porządku?"~ */ GOTO 40
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14523 /* ~"Dobrze, w takim razie tylko ostatnie pytanie: Co myślisz o Kontrakcie Umarłych?"~ */ GOTO 38
  IF ~~ THEN REPLY #14524 /* ~"W takim razie zapomnij o tym. Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14525 /* ~"Dobrze. Muszę już iść... Daj mi znać, jeśli zmienisz zdanie."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #14526 /* ~"Kontrakt Umarłych?" Kobieta wydaje się być zdziwiona. "Co z nim?"~ */
  IF ~~ THEN REPLY #14527 /* ~"Uważasz, że kupowanie czyjegoś ciała jako taniej siły roboczej jest *w porządku?* Że można wykorzystywać czyjąś chwilową słabość, żeby po śmierci zrobić sobie z jego ciała niewolnika? Czy to z tego Grabarze powinni być dumni?"~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #14528 /* ~"Wątpliwe, chłopcze."~ */
  IF ~~ THEN REPLY #14529 /* ~"Mogę zadać ci parę innych pytań...?"~ */ GOTO 2
  IF ~~ THEN REPLY #14530 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1 37.0
  SAY #14531 /* ~"Hmmm, nie... ale..."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14532 /* ~"A co z Kontraktem Umarłych? Uważasz, że kupowanie czyjegoś ciała jako taniej siły roboczej jest *w porządku?* Że można wykorzystywać czyjąś chwilową słabość, żeby po śmierci zrobić sobie z jego ciała niewolnika? Czy to z tego Grabarze powinni być dumni?"~ */ GOTO 41
  IF ~~ THEN REPLY #14533 /* ~"Posłuchaj samej siebie, Sere. Nawet twoja odpowiedź zdradza twoje wątpliwości. Nie wierzysz w filozofię Grabarzy. Wiesz, że ona jest nieprawdziwa."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.0 40.0 40.1
  SAY #14534 /* ~Sere marszczy czoło "Ee... Hmmm. Nie mówię, że *zgadzam* się z wszystkim, co wyznają Grabarze, ale niby co mogliby z tym zrobić twoi przyjaciele?"~ */
  IF ~~ THEN REPLY #14535 /* ~"Zburzylibyśmy mury. Zaczęlibyśmy od początku. I każdy byłby wolny od tych hipokryzji, które oni nazywają filozofiami."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Recruit_Sere","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #14536 /* ~"W porządku, wysłucham twoich przyjaciół." Sere wydaje się być zdziwiona tym co mówi. "A może i więcej." Staruszka wybucha śmiechem. "Już czuję się lepiej... Musi być z tego jakaś intryga."~ */
  IF ~~ THEN REPLY #14537 /* ~"Nie pożałujesz tego. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14538 /* ~"Dziękuję ci, Sere. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 2.7
  SAY #14539 /* ~"Jak on wygląda?"~ */
  IF ~~ THEN REPLY #14540 /* ~"Nie mam pojęcia."~ */ GOTO 44
  IF ~~ THEN REPLY #14541 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14542 /* ~"To nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #14543 /* ~"Jeśli nie wiesz, jak on wygląda, to jak chcesz go znaleźć?"~ */
  IF ~~ THEN REPLY #14544 /* ~"Sam się zaczynam nad tym zastanawiać. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14545 /* ~"To nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 2.8
  SAY #14546 /* ~Sere marszczy czoło. "Ten *pies*... to najgorszy z wszystkich Zbieraczy. Słyszałam, że jego dom jest ukryty gdzieś na Placu Szmaciarzy, wiele ulic na zachód od wrót Kostnicy. To bardzo niebezpieczne miejsce. Niektórzy Zbieracze nawet nie czekają, aż ktoś wyzionie ducha, żeby mogli go sprzedać za brzdęk."~ */
  IF ~~ THEN REPLY #14547 /* ~"Zbieracze? Kto to taki?"~ */ GOTO 46
  IF ~~ THEN REPLY #14548 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14549 /* ~"Dziękuję za ostrzeżenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14550 /* ~"To pasożyty, które przeszukują najgłębsze zakamarki Ula w poszukiwaniu ciał, które mogliby sprzedać Grabarzom. Żyją z umarłych. Człowiekowi jest wstyd, że mieszka w tym samym mieście co oni." Staruszka wzdycha. "Tsszzzz. Przynajmniej pomagają utrzymać czystość na ulicach."~ */
  IF ~~ THEN REPLY #14551 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14552 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.2 48.3 49.1 50.0 51.1 52.0 53.0 54.0 55.1 56.1 57.2 58.0 59.1 60.0 61.0
  SAY #14553 /* ~"O kim myślisz?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #14554 /* ~"Możesz mi opowiedzieć o Oczekującym Śmierci?"~ */ GOTO 53
  IF ~  GlobalGT("Mortai","GLOBAL",0)
~ THEN REPLY #14555 /* ~"Możesz mi opowiedzieć o Mortai?"~ */ GOTO 55
  IF ~  GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #14556 /* ~"Możesz mi opowiedzieć o Emoriku?"~ */ GOTO 54
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #14557 /* ~"Możesz mi opowiedzieć o Starym Miedziookim?"~ */ GOTO 61
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #14558 /* ~"Prawdę mówiąc, spotkałem w Kostnicy skrybę o imieniu Dhall. Znasz go?"~ */ GOTO 51
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #14559 /* ~"Spotkałem w Kostnicy przewodnika o imieniu Soe. Znasz go?"~ */ GOTO 48
  IF ~  GlobalGT("Eivene","GLOBAL",0)
~ THEN REPLY #14560 /* ~"Spotkałem w Kostnicy pewną kobietę pracującą przy balsamowaniu zwłok... Nazywała się Ei-Vene. Znasz ją?"~ */ GOTO 59
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
Global("Soego","GLOBAL",0)
Global("Dhall","GLOBAL",0)
Global("Eivene","GLOBAL",0)
~ THEN REPLY #14561 /* ~"Mniejsza z tym - nie znam żadnego z nich po imieniu."~ */ GOTO 64
  IF ~~ THEN REPLY #14562 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14563 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.5
  SAY #14564 /* ~"Ten chłopak kiedyś bywał tu regularnie. Nie wiem, co się z nim stało. Może załamał się po śmierci swojego przyjaciela."~ */
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",0)
~ THEN REPLY #14565 /* ~"Wyjaśnij mi to."~ */ DO ~SetGlobal("Know_Soego_Friend_Death","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",1)
~ THEN REPLY #14566 /* ~"Wyjaśnij mi to."~ */ GOTO 49
  IF ~~ THEN REPLY #14567 /* ~"Czy Soe zawsze był przewodnikiem w Kostnicy?"~ */ GOTO 50
  IF ~~ THEN REPLY #14568 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14569 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14570 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #14571 /* ~"Jeden z jego przyjaciół został zabity w Ulu kilka tygodni temu - rozdarły go szczury." Kobieta kręci głową. "Paskudna sprawa."~ */
  IF ~~ THEN REPLY #14572 /* ~"Czy Soe zawsze był przewodnikiem w Kostnicy?"~ */ GOTO 50
  IF ~~ THEN REPLY #14573 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14574 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14575 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2 49.0
  SAY #14576 /* ~"Nie, tylko od kilku ostatnich miesięcy... Ostatnią rzeczą, którą o nim słyszałam, było to, że wysłano go na misję, ale nie wiem dokąd."~ */
  IF ~~ THEN REPLY #14577 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14578 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14579 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY #14580 /* ~"Tssszzz. Dhall? Kiedyś, gdy pobierałam jeszcze nauki w Kostnicy, on uczył mnie Sztuk Filozoficznych. Moje uszy mówią, że teraz jest chory. Założę się, że zanudziłby swoją obecnością nawet samą śmierć."~ */
  IF ~~ THEN REPLY #14581 /* ~"Czy on umiera?"~ */ GOTO 52
  IF ~~ THEN REPLY #14582 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14583 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14584 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14585 /* ~"Tssszzz. Jest bardziej chory niż pryszczaty pies. Nie zostało mu już dużo piasku w klepsydrze."~ */
  IF ~~ THEN REPLY #14586 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14587 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14588 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.0
  SAY #14593 /* ~"Oczekujący Śmierci? Tszzz! Ten chłopak ma *mniej* rozumu niż małpa. On po prosu *chce* umrzeć, a do tego jest jeszcze taki młody. Mam nadzieję, że śmierć w końcu nim potrząśnie. Może to go nauczy paru rzeczy..."~ */
  IF ~~ THEN REPLY #14594 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14595 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14596 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.2
  SAY #14597 /* ~"Ten stary głupiec o kamiennej twarzy. Uczyłam go i kiedyś miałam o nim bardzo wysokie mniemanie, ale potem się obudziłam. To stary, zasuszony ghul, który siedzi tutaj po godzinach, żeby młodsi Grabarze mieli przed sobą symbol władzy. Stary sęp."~ */
  IF ~~ THEN REPLY #14598 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14599 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14600 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.1
  SAY #14601 /* ~"Mortai? Ha! Myślałam, że zapytasz o Grabarza." Staruszka spluwa na ziemię. "Żaden Grabarz nie zasługuje na to miano mniej, niż ten roztrajkotany, goniący za brzdękiem idiota!"~ */
  IF ~~ THEN REPLY #14602 /* ~"Co masz na myśli?"~ */ GOTO 56
  IF ~~ THEN REPLY #14603 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14604 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14605 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #14606 /* ~"Mortai bardzo chce zrobić wrażenie na przełożonych, dostarczając im jak najwięcej podpisanych Kontraktów Umarłych, że zastanawiam się, czy kiedykolwiek zostanie Grabarzem."~ */
  IF ~~ THEN REPLY #14607 /* ~"Nie rozumiem."~ */ GOTO 57
  IF ~~ THEN REPLY #14608 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14609 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14610 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #14611 /* ~"Bardzo chce podpisać jak najwięcej kontraktów, chłopcze. Bardzo mu zależy na reputacji. Myśli o zrobieniu *kariery* jako Grabarz. To chyba wszystko wyjaśnia."~ */
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14612 /* ~"Ciągle nie rozumiem."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 58
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14613 /* ~"Ciągle nie rozumiem."~ */ GOTO 58
  IF ~~ THEN REPLY #14614 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14615 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14616 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #14617 /* ~"Mówi się, że żądze zabijają." Sere prycha. "Tssszz. W przypadku Grabarzy jest zupełnie na odwrót. Żądze utrzymują ich przy życiu. Jeśli człowiek nie może obedrzeć się z żądz, czy to z zapalczywości, chciwości czy ambicji, to jest skazany na to, że nigdy nie umrze naprawdę, bo życie zawsze będzie się go trzymało."~ */
  IF ~~ THEN REPLY #14618 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14619 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14620 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 47.6
  SAY #14621 /* ~"Kogo?"~ */
  IF ~~ THEN REPLY #14622 /* ~"Pewną dziwną młodą kobietę... Ma słaby wzrok, jest prawie głucha, a zamiast rąk ma szpony?"~ */ GOTO 60
  IF ~~ THEN REPLY #14623 /* ~"Mniejsza z tym. Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14624 /* ~"Nieważne. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14625 /* ~"Mniejsza z tym. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #14626 /* ~Sere kręci głową. "Może ona jest nowa. Nigdy o niej nie słyszałam."~ */
  IF ~~ THEN REPLY #14627 /* ~"Dobrze. Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14628 /* ~"Nieważne. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14629 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 47.3
  SAY #14630 /* ~"Nie wiem o nim dużo... To dziwny człowiek. Nigdy nie rusza się ze swojego miejsca, nigdy nic nie je ani nie pije, tylko czeka." Staruszkę przechodzi lekki dreszcz. "Przez niego czuję się nieswojo."~ */
  IF ~~ THEN REPLY #14631 /* ~"Czy mogę cię zapytać o paru innych Grabarzy?"~ */ GOTO 47
  IF ~~ THEN REPLY #14632 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14633 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 27.2
  SAY #14634 /* ~"I tak być powinno. W śmierci nie ma nic pocieszającego."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14635 /* ~"Hmmm, mój stan jest bardzo specyficzny... Obudziłem się w Kostnicy. Musieli wziąć mnie za trupa i przygotowali mnie do pochówku. Najdziwniejsze jest to, że chyba naprawdę umarłem... a potem mi się polepszyło."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14636 /* ~"Moje spotkania ze śmiercią były o wiele bliższe niż to, czego doświadczają inni. Po prostu nie mogę umrzeć... przynajmniej z tego, co wiem."~ */ GOTO 28
  IF ~~ THEN REPLY #14637 /* ~"Chyba nie. Ale mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14638 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 27.3
  SAY #14639 /* ~"Hmmm, to szkoda, chłopcze. Jeśli nawet widok śmieci nie wystarczy, żeby skłonić cię do pozostania przy życiu, to pewnie żadna siła w całych Sferach nie będzie w stanie tego zrobić."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14640 /* ~"Hmmm, mój stan jest bardzo specyficzny... Obudziłem się w Kostnicy. Musieli wziąć mnie za trupa i przygotowali mnie do pochówku. Najdziwniejsze jest to, że chyba naprawdę umarłem... a potem mi się polepszyło."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14641 /* ~"Moje spotkania ze śmiercią były o wiele częstsze niż w przypadku innych ludzi. Po prostu nie mogę umrzeć... przynajmniej z tego, co wiem. To może człowieka zamęczyć na śmierć."~ */ GOTO 28
  IF ~~ THEN REPLY #14642 /* ~"To ty tak sądzisz. Mam do ciebie parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14643 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 47.7
  SAY #14644 /* ~"Hmmm, oszczędzę ci wstępów." Sere pociąga nosem. "To zbieranina. Jeśli chcesz się czegoś dowiedzieć o którymś z nich, dowiedz się, jakie ma imię, a potem do mnie wróć."~ */
  IF ~~ THEN REPLY #14645 /* ~"Dobrze. Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14646 /* ~"W takim razie chyba pójdę z nimi porozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 14.1 15.2
  SAY #14647 /* ~Kobieta wzrusza ramionami. "Szaty Grabarza nie pasują do mnie tak, jak kiedyś."~ */
  IF ~~ THEN REPLY #14648 /* ~"Co się stało?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14649 /* ~"Więc co wywołało ten kryzys wiary?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14650 /* ~"Więc co wywołało ten kryzys wiary?"~ */ GOTO 16
  IF ~~ THEN REPLY #14651 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #14652 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  Global("Sere","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY #14653 /* ~Na twój widok Sere marszczy czoło. "Lepiej wracaj do swojej krypty, chłopcze. Za mało czasu mi zostało w tym życiu, żeby urządzać sobie z tobą pogaduszki."~ */
  IF ~~ THEN EXIT
END
