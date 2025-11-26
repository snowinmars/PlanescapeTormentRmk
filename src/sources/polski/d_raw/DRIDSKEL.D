// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~Szkielet ten potrząsa głową i chichocze cicho do siebie. Od czasu do czasu wybucha rubasznym śmiechem i parska jak koń, gryząc się w kościstą rękę, aby powstrzymać się od dalszego śmiechu. Jest dość stary, tak więc nie zachowało się na jego kościach żadne mięso... jedynie kilka barwnych szmat.~ */
  IF ~~ THEN REPLY #20356 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~Przejdź obok niego obojętnie.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~"Witaj, o tak!" Chichocze złośliwie, wzniecając przy tym kłęby kurzu.~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~"Jak rozumiem, masz do rozwiązania trudną zagadkę."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~"Chciałbym usłyszeć odpowiedź na jedną z twoich zagadek."~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~"Pójdę już sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~"Lepiej zrobisz, szukając odpowiedzi gdzieś indziej, ponieważ nie interesują mnie twoje pytania." Zakrywa usta, chichocząc i parskając. "Wiem, że jest to okropnie nieuprzejme, ale będziesz musiał mi to wybaczyć."~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~"Jak rozumiem, masz do rozwiązania trudną zagadkę."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~"Chciałbym usłyszeć odpowiedź na jedną z twoich zagadek."~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~"Niech i tak będzie. Znajdę kogo innego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~Chichocze z kpiną. "Mało prawdopodobne!" Wyraz twojej twarzy powoduje jedynie, że szkielet śmieje się jeszcze głośniej, dzwoniąc przy tym zębami.~ */
  IF ~~ THEN REPLY #20365 /* ~"Jak brzmi ta zagadka?"~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~Prawda: "Powiedz mi albo rozłupię cię na drobne, chichoczące kawałeczki."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~Blef: "Powiedz mi albo rozłupię cię na drobne, chichoczące kawałeczki."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~Śmiech nagle ustaje. "Hmpf!" Szkielet odwraca od ciebie głowę.~ */
  IF ~~ THEN REPLY #20370 /* ~Odejdź.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~Kiwa głową, chichocząc. "Chcesz li to usłyszeć?"~ */
  IF ~~ THEN REPLY #20371 /* ~"Tak."~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~"Nie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~"Pomyśl o słowach, które zaczynają się na 'GB'. Jedno z nich to gbur. We Wspólnym Języku są dwa słowa... jakie jest drugie słowo? To coś, czego używa się na co dzień. Jeśli słuchałeś uważnie, to już ci powiedziałem co to jest."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~"Oczywiście. Tym słowem jest 'język'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~"To jest... uch... hmm."~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~"Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~"Gaaaah! Skąd żeś wiedział?!"~ */
  IF ~~ THEN REPLY #20376 /* ~"Dwa pierwsze zdania są tylko zmyłką. We 'Wspólnym Języku' są dwa słowa. Drugim słowem jest 'język'."~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~Odejdź, śmiejąc się.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~"Och, dobrze. Tylko nie zdradź nikomu tej odpowiedzi. Możesz mi przyrzec przynajmniej tyle?"~ */
  IF ~~ THEN REPLY #20378 /* ~"Dlaczego nie powinienem tego robić?"~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~"Jasne. Przyrzekam nic nie mówić. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~"Niczego nie przyrzeknę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~"Ponieważ lubię, kiedy stoją obok, próbując rozwiązać tę zagadkę przez całą wieczność." Chichocze złośliwie, zakrywając usta kościstą dłonią. "I jak? Przyrzekniesz?"~ */
  IF ~~ THEN REPLY #20381 /* ~"Jasne. Przyrzekam nic nie mówić. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~"Niczego nie przyrzeknę. Żegnaj."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~"Pamiętaj..." Robi przerwę, aby złośliwie zachichotać. "Nie zdradź nikomu tej odpowiedzi!"~ */
  IF ~~ THEN REPLY #20383 /* ~"Tak, tak. Żegnaj."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~"Łotr! Niech cię pochłonie Baator za to, że psujesz mi zabawę! Splunąłbym na ciebie, gdybym miał czym! Hmpf!" Szkielet odwraca od ciebie głowę.~ */
  IF ~~ THEN REPLY #20384 /* ~Odejdź.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~"Zaczekaj, zaczekaj! Nie zdradzaj nikomu odpowiedzi. Możesz mi przyrzec przynajmniej tyle?"~ */
  IF ~~ THEN REPLY #20385 /* ~"Dlaczego nie powinienem tego robić?"~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~"Jasne. Przyrzekam nic nie mówić. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~"Niczego nie przyrzeknę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~Szkielet dostaje ataku kpiącego, szyderczego śmiechu. Wskazuje na ciebie kościstym palcem, rechocząc ze śmiechu i dzwoniąc zębami.~ */
  IF ~~ THEN REPLY #20388 /* ~"W porządku, jak brzmi odpowiedź?"~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~"Ech. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~"Nie da rady! Nie da *rady*!" Wyraz twojej twarzy powoduje jedynie, że szkielet śmieje się jeszcze głośniej, dzwoniąc przy tym zębami.~ */
  IF ~~ THEN REPLY #20390 /* ~"A co, gdybym ja zabił klina *tobie*? Powiedziałbyś mi wtedy?"~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~Prawda: "Powiedz mi albo rozłupię cię na drobne chichoczące kawałeczki."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~Blef: "Powiedz mi albo rozłupię cię na drobne chichoczące kawałeczki."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~Śmiech ucina się nagle. "Co to jest?" Przykłada złożoną w kielich dłoń do swojej czaszki. "Czy ja słyszę... wyzwanie? Tak... tak... mów dalej! Ale jeśli przegrasz, albo zrezygnujesz w połowie drogi, nie będę więcej z tobą rozmawiał!"~ */
  IF ~~ THEN REPLY #20394 /* ~"Zgoda. Zaczynajmy."~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~Energicznie przytakuje głową.~ */
  IF ~~ THEN REPLY #20396 /* ~"Hmm. Co jest więcej warte? Kilogram groszówek z czystego złota czy pół kilograma dwugroszówek z czystego złota?"~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~"Proste, zbyt proste! Kilogram złota *zawsze* wart jest więcej niż pół kilograma! Głupie, głupie!" Chichocze pod nosem.~ */
  IF ~~ THEN REPLY #20398 /* ~"W porządku. Twoja kolej."~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~Szkielet kuca i rysuje w kurzu twarz. Wskazując na nią mówi: "Nie mam wujków ani braci, ale ojciec tego człowieka jest synem mojego ojca. Kim on jest?"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~"Twoim synem."~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~"Ja... nie wiem."~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~"A niech to! Twoja kolej."~ */
  IF ~~ THEN REPLY #20403 /* ~"Wykonawca nie chce tego, kupujący nie używa tego, użytkownik nie widzi tego. Co to jest?"~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~Szkielet chichocze jak małe dziecko. "Nieprawda, nieprawda! Odpowiedź brzmi 'trumna', a ja z pewnością widzę moją!"~ */
  IF ~~ THEN REPLY #20405 /* ~"Dobrze. Znów twoja kolej."~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~"Które z siedmioliterowych słów nawet największy ze śmiertelnych mędrców wypowiada błędnie?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~"Hmm. 'Błędnie'."~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~"Ja... nie wiem."~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~Potrząsa w twoją stronę pięścią. "Oooo, przeklęty! Dalej."~ */
  IF ~~ THEN REPLY #20410 /* ~"W nocy pojawiają się chociaż nikt ich nie przynosi, a w dzień znikają chociaż nikt ich nie kradnie."~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~"Ech... hmm. Ach... gwiazdy! Gwiazdy, hi hi hi!"~ */
  IF ~~ THEN REPLY #20412 /* ~"Tak, oczywiście. Pytaj."~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~Szkielet strzela kostkami. "Nigdy nie byłem, zawsze będę, nikt mnie nigdy nie widział, ani nie zobaczy. A mimo daję pewność wszystkiemu, że będzie żyć i oddychać w tym poświęconym miejscu."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~"Odpowiedź brzmi... brzmi... ach! 'Jutro'."~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~"Ja... nie wiem."~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~"Łaaaa! Tak, rzeczywiście 'jutro'. Teraz ty."~ */
  IF ~~ THEN REPLY #20417 /* ~"Jesteśmy dwoma braćmi; nosimy wielkie ciężary, które nas mocno przygniatają do ziemi; prawda jest taka, że jesteśmy pełni przez cały dzień, a idziemy spać o pustych żołądkach."~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~Szkielet zaczyna szyderczo chichotać, ale nagle przestaje. "Ach... hm. A niech to."~ */
  IF ~~ THEN REPLY #20419 /* ~"I jak? Jak brzmi twoja odpowiedź... no dalej."~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~Roześmiej mu się szyderczo w twarz tak jak to potrafisz.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~Czekaj cierpliwie.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~Szkielet zwiesza głowę. "Ja... nie wiem."~ */
  IF ~~ THEN REPLY #20422 /* ~"Zdradź mi odpowiedź na twoją pierwszą zagadkę, a ja ci zdradzę odpowiedź na moją."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~Kiwa głową. "Odpowiedź brzmi 'język'. Dwa pierwsze zdania są tylko zmyłką. Pamiętasz? We 'Wspólnym Języku' są dwa słowa. Drugim słowem jest 'język'." Głośno wzdycha. "A twoja odpowiedź?"~ */
  IF ~~ THEN REPLY #20423 /* ~"'Para butów'."~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~"Nie da rady, nie da rady. Żegnaj."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~"Ech... zabawne. A zatem, jak brzmi odpowiedź? Ach... zaczekaj! Dokąd idziesz?"~ */
  IF ~~ THEN REPLY #20425 /* ~"Dobrze. 'Para butów'."~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~Wybuchnij śmiechem i odejdź.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~Szkielet zwija się z głośnego śmiechu. Jego rechot i pohukiwanie odbijają się echem od ścian katakumb, a on sam kręci z rozbawienia głową na wszystkie strony, dzwoniąc przez cały czas zębami.~ */
  IF ~~ THEN REPLY #20428 /* ~Odejdź.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~Szkielet ignoruje wszelkie próby nawiązania z nim rozmowy.~ */
  IF ~~ THEN REPLY #48940 /* ~Odejdź.~ */ EXIT
END
