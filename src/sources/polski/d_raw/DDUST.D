// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUST~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #300 /* ~Grabarz zdaje się ciebie nie zauważać. Wziął cię najwyraźniej za jednego z niumarłych pracowników.~ */
  IF ~~ THEN REPLY #302 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #303 /* ~"Kim jesteś?"~ */ GOTO 1
  IF ~~ THEN REPLY #304 /* ~"Co to za miejsce?"~ */ GOTO 1
  IF ~~ THEN REPLY #305 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #306 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #307 /* ~Grabarz podskakuje, po czym podnosi gwałtownie głowę, by na ciebie spojrzeć. Zdaje się być zszokowany - twoje przebranie jest całkiem dobre.~ */
  IF ~~ THEN REPLY #310 /* ~Wykorzystaj to, że jest zaskoczony i skręć mu kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #312 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #1332 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
  SAY #309 /* ~Grabarz cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #313 /* ~"No dobrze..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #314 /* ~Ten blady mężczyzna ubrany jest w długie, ciemne szaty. Wokół niego roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięty swoimi obowiązkami.~ */
  IF ~~ THEN REPLY #315 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #316 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #317 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #319 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #382 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #321 /* ~Grabarz unosi powoli głowę i odwraca się w twym kierunku. "Zgubiłeś się?"~ */
  IF ~~ THEN REPLY #322 /* ~"Tak."~ */ GOTO 5
  IF ~~ THEN REPLY #323 /* ~"Nie."~ */ GOTO 6
  IF ~~ THEN REPLY #324 /* ~"Nie, nie zgubiłem się. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #325 /* ~"Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3 6.4 16.2 51.1
  SAY #326 /* ~"Wezwę straż, by cię wyprowadziła. Poczekaj chwilę."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #327 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #328 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #329 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
  IF ~~ THEN REPLY #1333 /* ~Poczekaj.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #330 /* ~"Skoro się nie zgubiłeś, to co tutaj robisz?"~ */
  IF ~~ THEN REPLY #331 /* ~"To nie twoja sprawa."~ */ GOTO 7
  IF ~~ THEN REPLY #332 /* ~"Obudziłem się na jednym ze stołów w sali przygotowawczej."~ */ GOTO 8
  IF ~~ THEN REPLY #333 /* ~"Przyszedłem tu, żeby się z kimś zobaczyć."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #334 /* ~"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."~ */ GOTO 16
  IF ~~ THEN REPLY #337 /* ~Odejdź. Jak najszybciej.~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #335 /* ~"Obawiam się, że to jest moja sprawa. Być może straż pomoże rozwiązać ci język." Grabarz cofa się o krok. Wygląda na to, że chce wezwać straże.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #344 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3887 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #3888 /* ~"No to ich przyzwij. Chętnie się z nimi spotkam."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #336 /* ~"Żarty sobie stroisz? Może chcesz się nimi podzielić ze strażą?" Grabarz cofa się o krok. Wygląda na to, że chce wezwać straże."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #358 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3885 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #3886 /* ~"No to ich przyzwij. Chętnie się z nimi spotkam."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #338 /* ~"Z kim się chcesz zobaczyć?"~ */
  IF ~~ THEN REPLY #3922 /* ~"To nie twoja sprawa."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #342 /* ~"Mam się zobaczyć z Dhallem."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #343 /* ~"Mam się zobaczyć z Dhallem."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33183 /* ~"Jestem tu, żeby się zobaczyć z Deionarrą."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33185 /* ~"Jestem tu, żeby się zobaczyć z Deionarrą."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33186 /* ~"Jestem tu, żeby się zobaczyć z Soem."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33187 /* ~"Jestem tu, żeby się zobaczyć z Soem."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33189 /* ~Kłamstwo: "Uch... z Adahnem. Nadal tu pracuje, czy...?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33190 /* ~Kłamstwo: "Uch... z Adahnem. Nadal tu pracuje, czy...?"~ */ GOTO 21
  IF ~~ THEN REPLY #33191 /* ~"Uch, z nikim. Przejęzyczyłem się."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #345 /* ~"Znajdziesz go w sali odbiorczej na tym piętrze. Muszę cię jednak przestrzec... Dhall jest wyjątkowo zajęty swoimi obowiązkami, poza tym nie jest okazem najlepszego zdrowia. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."~ */
  IF ~~ THEN REPLY #347 /* ~"Świetnie. Dzięki za informacje."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #346 /* ~"Jest najprawdopodobniej w sali odbiorczej na pierwszym piętrze. Jest jednak wyjątkowo zajęty i nie grzeszy zbytnio zdrowiem. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."~ */
  IF ~~ THEN REPLY #348 /* ~"Świetnie. Dzięki za informacje."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #349 /* ~"Deionarra? Wiem, że w sali pamięci na parterze pochowano jakąś kobietę. Może to była ona?"~ */
  IF ~~ THEN REPLY #352 /* ~"Najprawdopodobniej. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #350 /* ~"Deionarra? Wiem, że w północno-zachodniej sali pamięci pochowano jakąś kobietę. Może to była ona?"~ */
  IF ~~ THEN REPLY #353 /* ~"Najprawdopodobniej. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #351 /* ~"Sądzę, że Soe znajduje się gdzieś w pobliżu frontowej bramy na parterze. Pracuje jako przewodnik w godzinach antyszczytu."~ */
  IF ~~ THEN REPLY #354 /* ~"Dobrze. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #355 /* ~"Sądzę, że znajdziesz go w pobliżu frontowej bramy. Pracuje jako przewodnik w godzinach antyszczytu."~ */
  IF ~~ THEN REPLY #356 /* ~"Dobrze. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #357 /* ~"Kto miał zostać pochowany? Być może posługi te odbywają się w innym miejscu Kostnicy."~ */
  IF ~~ THEN REPLY #359 /* ~"Źle mnie zrozumiałeś... To MNIE chciano przez pomyłkę pochować."~ */ GOTO 8
  IF ~~ THEN REPLY #360 /* ~"Możliwe. W którym miejscu odbywają się te posługi?"~ */ GOTO 17
  IF ~~ THEN REPLY #361 /* ~"Czy mógłbyś wskazać mi drogę do wyjścia?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #362 /* ~"W obwodzie Kostnicy znajduje się kilka komnat pogrzebowych, które ciągną się wzdłuż krzywizny ścian na parterze i pierwszym piętrze. Znasz imię zmarłego?"~ */
  IF ~~ THEN REPLY #363 /* ~"Nie."~ */ GOTO 18
  IF ~~ THEN REPLY #364 /* ~"Tak."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #365 /* ~"W takim razie powinieneś skonsultować się z którymś z przewodników przy frontowej bramie. Powinien ci pomóc."~ */
  IF ~~ THEN REPLY #366 /* ~"Dobrze. Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #367 /* ~Grabarz czeka.~ */
  IF ~~ THEN REPLY #369 /* ~"Wybacz... Przejęzyczyłem się. Nie znam imienia zmarłego."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #370 /* ~"To imię to Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #371 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #372 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #373 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1335 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 45
  IF ~~ THEN REPLY #1336 /* ~Uciekaj.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #374 /* ~"Rozumiem. Powiedz teraz, w jakiej sprawie tu jesteś?"~ */
  IF ~~ THEN REPLY #375 /* ~"Nie twój interes."~ */ GOTO 7
  IF ~~ THEN REPLY #376 /* ~"Obudziłem się na jednym ze stołów w sali przygotowawczej."~ */ GOTO 8
  IF ~~ THEN REPLY #377 /* ~"Przyszedłem tu, żeby się z kimś zobaczyć."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #378 /* ~"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."~ */ GOTO 16
  IF ~~ THEN REPLY #379 /* ~Uciekaj.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #368 /* ~"To imię jest mi obce. Skonsultuj się w tej sprawie z jednym z przewodników przy frontowej bramie... Oni będą w stanie pokierować cię lepiej niż ja."~ */
  IF ~~ THEN REPLY #380 /* ~"Dobrze. Zrobię tak. Żegnaj."~ */ GOTO 48
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #294 /* ~Ten blady mężczyzna ubrany jest w długie, ciemne szaty. Wokół niego roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięty swoimi obowiązkami.~ */
  IF ~~ THEN REPLY #295 /* ~"Witaj."~ */ GOTO 23
  IF ~~ THEN REPLY #297 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #381 /* ~Odwraca się powoli i zerka na twoje szaty. "Witaj, bracie wtajemniczony."~ */
  IF ~~ THEN REPLY #383 /* ~"Kim jesteś?"~ */ GOTO 24
  IF ~~ THEN REPLY #384 /* ~"Co to za miejsce?"~ */ GOTO 25
  IF ~~ THEN REPLY #391 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #392 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #393 /* ~"Mam do ciebie takie samo pytanie. Nie znam twojej twarzy. Kim jesteś?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #450 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1337 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3904 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3905 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #394 /* ~"To Kostnica..." Grabarz wpatruje się w ciebie przez chwilę, jakby rozważał to, co właśnie powiedziałeś. "Mógłbyś powtórzyć, jak masz na imię?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #399 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #3906 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3907 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3908 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #400 /* ~Grabarz cierpliwe czeka, aż zaczniesz kontynuować.~ */
  IF ~~ THEN REPLY #401 /* ~"Mógłbyś mi powiedzieć, jak stąd wyjść?"~ */ GOTO 27
  IF ~~ THEN REPLY #402 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 28
  IF ~~ THEN REPLY #403 /* ~"Zgubiłem dziennik. Nie widziałeś go czasem?"~ */ GOTO 39
  IF ~~ THEN REPLY #404 /* ~"Nieważne. Przepraszam, że ci przeszkodziłem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #405 /* ~"Najprościej będzie wyjść przez frontową bramę. Znajduje się ona na parterze."~ */
  IF ~~ THEN REPLY #406 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #407 /* ~"Dziękuję. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #408 /* ~"To imię..." Grabarz przerywa na chwilę. "To imię *brzmi* znajomo... Wydaje mi się, że przypominam sobie Zbieracza, który się tak nazywał. Skryba Dhall powinien o nim wiedzieć."~ */
  IF ~~ THEN REPLY #409 /* ~"Zbieracza?"~ */ GOTO 29
  IF ~~ THEN REPLY #410 /* ~"Dhall?"~ */ GOTO 30
  IF ~~ THEN REPLY #411 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #425 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #412 /* ~"Zbieracze... Zabierają z ulic Sigil umarłych i przynoszą ich do Kostnicy." Grabarz przerywa, po czym marszczy brwi. "Nie jesteś stąd. Kim jesteś?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #413 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3918 /* ~"Jestem... tu nowy. Sta... ram się przyswoić sobie pewne rzeczy."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3919 /* ~"No tak... Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3920 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #414 /* ~"Dhall jest jednym z najbardziej poważanych spośród naszej frakcji. Nie znam nikogo, kto częściej rozmyślałby nad naturą Prawdziwej Śmierci i kto bardziej by na nią zasługiwał, niż on. Posiada sporą wiedzę, którą się może podzielić. Jeśli go nie znasz, proponuję ci, byś z nim porozmawiał, gdy tylko będziesz miał okazję. Nie pozostanie on już zbyt długo w cieniu tego istnienia."~ */
  IF ~~ THEN REPLY #415 /* ~"*Nie pozostanie on już zbyt długo w cieniu tego istnienia*?"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #416 /* ~"Gdzie mogę znaleźć Dhalla?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #417 /* ~"Gdzie mogę znaleźć Dhalla?"~ */ GOTO 33
  IF ~~ THEN REPLY #418 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #33204 /* ~"Dzięki za informacje. Porozmawiam z nim."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #419 /* ~Potwierdza. "Dhall jest chory. Jest stary nawet jak na standardy githzerai. Następstwem choroby, której się nabawił, będzie niewątpliwie śmierć. I tak ma szczęście."~ */
  IF ~~ THEN REPLY #420 /* ~"Standardy githzerai?"~ */ GOTO 34
  IF ~~ THEN REPLY #421 /* ~"Co to jest *githzerai*?"~ */ GOTO 35
  IF ~~ THEN REPLY #422 /* ~"Szczęście?"~ */ GOTO 36
  IF ~~ THEN REPLY #423 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #424 /* ~"Dziękuję za poświęcony mi czas. Muszę już iść."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #427 /* ~"Znajdziesz go w sali odbiorczej w północno-zachodnim narożniku tej kondygnacji. Muszę cię jednak przestrzec... Dhall jest bardzo zajęty... Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."~ */
  IF ~~ THEN REPLY #428 /* ~"Dhall jest chory?"~ */ GOTO 31
  IF ~~ THEN REPLY #429 /* ~"Dziękuję za poświęcony mi czas. Muszę już iść. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #426 /* ~"Znajdziesz go najpewniej w sali odbiorczej na pierwszym piętrze. Muszę cię jednak przestrzec... Dhall jest bardzo zajęty... Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."~ */
  IF ~~ THEN REPLY #430 /* ~"Dhall jest chory?"~ */ GOTO 31
  IF ~~ THEN REPLY #431 /* ~"Dziękuję za poświęcony mi czas. Muszę już cię opuścić. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #432 /* ~"Tak, średnia życia githzerai jest znacznie dłuższa niż ludzi."~ */
  IF ~~ THEN REPLY #433 /* ~"Co to jest *githzerai*?"~ */ GOTO 35
  IF ~~ THEN REPLY #437 /* ~"Dlaczego śmierć Dhalla miałaby być szczęściem? Czyż nie jest on lubiany?"~ */ GOTO 36
  IF ~~ THEN REPLY #438 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #440 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #435 /* ~"Githzerai to..." Przerywa, po czym marszczy brwi i zaczyna przeglądać ci się uważne. "Nie jesteś tutejszy. Kim jesteś?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #436 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3909 /* ~"Jestem... tu nowy. Sta... ram się przyswoić sobie pewne rzeczy."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3910 /* ~"No tak... Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3911 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #439 /* ~"Ma szczęście, gdyż osiągnie Prawdziwą Śmierć. Nie będzie już musiał żyć w cieniu tego istnienia."~ */
  IF ~~ THEN REPLY #441 /* ~"I... to jest czymś dobrym?"~ */ GOTO 37
  IF ~~ THEN REPLY #442 /* ~"Rozumiem. To rzeczywiście wyjątkowe szczęście. Mam kilka innych pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #443 /* ~"Rozumiem. Cóż, muszę cię już opuścić. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #444 /* ~Grabarz przytakuje. "Tak." Marszczy brwi, po czym przygląda ci się wnikliwie. "Nie jesteś tutejszy. Kim jesteś?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #445 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #446 /* ~"Jestem... tu nowy. Sta... ram się przyswoić sobie pewne rzeczy."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3912 /* ~"No tak... Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3913 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #447 /* ~"Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji? Straż! Straż!"~ */
  IF ~~ THEN REPLY #448 /* ~"Cholera!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #449 /* ~"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1339 /* ~"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #398 /* ~"Dziennik? Nie widziałem żadnego."~ */
  IF ~~ THEN REPLY #451 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #452 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1419 /* ~Ten blady mężczyzna ubrany jest w długie, ciemne szaty. Roztacza się wokół niego słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięty swoimi obowiązkami.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #1420 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 61
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #1421 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 63
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #1422 /* ~"Witaj."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1423 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #1424 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1425 /* ~Nim ma szanse wypowiedzieć choćby słowo, twe dłonie zaciskają się wokół jego skroni i przekręcasz mu głowę gwałtownie w lewą stronę.~ */
  IF ~~ THEN REPLY #1426 /* ~"Nie mogę pozwolić, byś powiadomił swoich przyjaciół..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1427 /* ~Następuje *chrupnięcie* i Grabarz upada bezwładnie w twe ramiona.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1428 /* ~"Lepiej ty niż ja, Grabarzu."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1429 /* ~"Lepiej ty niż ja, Grabarzu."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1430 /* ~Ku twemu zdziwieniu wykonałeś to instynktownie, jakbyś już wcześniej robił to wiele razy... Przemyśleniu temu towarzyszą przebłyski wspomnień, są jednak zbyt słabe, by ujawnić się w pełni.~ */
  IF ~~ THEN REPLY #3882 /* ~Zostaw ciało i kontynuuj.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #3883 /* ~Nie okazujesz się dostatecznie szybki i Grabarz wykonuje unik, gdy się na niego rzucasz. Następnie cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego, żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #3884 /* ~"No dobrze..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #3889 /* ~Gdy się przybliżasz, by mu coś wyszeptać, on również się przybliża. Gdy tylko wkracza w zasięg twych ramion, zaciskasz swe dłonie wokół jego skroni i przekręcasz mu głowę gwałtownie w lewą stronę.~ */
  IF ~~ THEN REPLY #3890 /* ~"Nie mogę pozwolić, byś powiadomił swoich przyjaciół..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #3891 /* ~Grabarz wydaje się być podejrzliwy. Wygląda na to, że chce coś powiedzieć, po czym potrząsa nieznacznie głową i wraca do swoich zajęć.~ */
  IF ~~ THEN REPLY #3892 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #3893 /* ~Grabarz przygląda ci się dokładnie. "Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji? Zdaje się, że powinna się tym zająć straż..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #3914 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3915 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #3916 /* ~"Nie, nie... To nie tak, eee... To znaczy nie jestem szpiegiem... Rozumiesz, obudziłem się ma jednym ze stołów... i..."~ */ GOTO 2
  IF ~~ THEN REPLY #3917 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #3894 /* ~Grabarz kiwa głową, po czym powraca do swych obowiązków.~ */
  IF ~~ THEN REPLY #3895 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #3896 /* ~Grabarz marszczy brwi. "Imię to jest mi obce."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3898 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3899 /* ~"Jestem... tu nowy. Sta... ram się poznać zasady."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3900 /* ~"No tak... Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3901 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #3897 /* ~Wciąż patrzy na ciebie krzywo, skłania jednakże lekko głową. "Dobrze. W czym mogę ci pomóc, wtajemniczony?"~ */
  IF ~~ THEN REPLY #3902 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #3903 /* ~"Nie tym razem. Żegnaj."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66674 /* ~Grabarz spogląda na ciebie kamiennym wzrokiem. "Zgubiłeś się?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66675 /* ~"Nie, jestem członkiem frakcji. Zwiedzam jedynie Kostnicę."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66676 /* ~"Tak."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66677 /* ~"Nie."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66678 /* ~"Nie, nie zgubiłem się. Mam kilka pytań..."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66679 /* ~"Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66681 /* ~Grabarz wpatruje się w ciebie przez chwilę, po czym kiwa głową. "Dobrze. Gdybyś potrzebował pomocy, daj mi znać."~ */
  IF ~~ THEN REPLY #66682 /* ~"Zrobię tak. Żegnaj."~ */ EXIT
END
