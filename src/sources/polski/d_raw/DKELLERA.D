// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELLERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELLERA~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6342 /* ~"Dowiesz się, że nie jestem bezbronna, człowieku pokryty bliznami. Ani kroku dalej."~ */
  IF ~~ THEN REPLY #6343 /* ~Zrobione.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6344 /* ~"Widać, że to nie miejsce dla ciebie. Odejdź natychmiast, intruzie, albo straże będą czymś gorszym niż zwykła eskorta."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #6345 /* ~"Mam tylko jedno, krótkie pytanie."~ */ GOTO 2
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6346 /* ~"Mam tylko jedno, krótkie pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #6347 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #6348 /* ~"Odejdź. Natychmiast. Zanim będzie to błędem, którego wszyscy będziemy żałować."~ */
  IF ~~ THEN REPLY #6349 /* ~"Po prostu odpowiedz na pytanie!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6350 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #6351 /* ~Widzisz kobietę githzerai, jej twarz pokryta jest bliznami. Według standardów githzerai mogłaby uchodzić za piękną. "Nie mogę ci w tym pomóc. Odejdź, zanim będę musiała wezwać straże. Daję ci tę możliwość tylko ze względu na twego towarzysza." Kłania się Dak'konowi i mówi, "Wybacz mi, czcigodny."~ */
  IF ~~ THEN REPLY #6352 /* ~"Bardzo to wszystko piękne, ale musisz mi odpowiedzieć na kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #6353 /* ~"Dobrze." Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.0
  SAY #6354 /* ~"Nie dajesz mi wyboru." Przerywa, następnie krzyczy, "STRAŻE! DO MNIE!"~ */
  IF ~~ THEN REPLY #6355 /* ~Zrobione.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 7.0
  SAY #6357 /* ~Znów odwraca się do Dak'kona. "Przyjmij moje przeprosiny." Wraca do ciebie. "Pozwól, że to wyjaśnię. Odjedź. Natychmiast. Albo będę zmuszona wezwać straże, aby 'eskortowały' cię do wyjścia. Nasz projekt nie może być narażony na szwank."~ */
  IF ~~ THEN REPLY #6356 /* ~"Chcę tylko, żebyś odpowiedziała na parę pytań!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6358 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6359 /* ~"Nie dajesz mi wyboru." Przerywa, następnie krzyczy, "STRAŻE! DO MNIE!"~ */
  IF ~~ THEN REPLY #6360 /* ~Zrobione.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6361 /* ~Znów zwraca się do Dak'kona. "Czcigodny... nie wracaj tu. Nie chcę na ciebie nasyłać straży. Odjedź."~ */
  IF ~~ THEN REPLY #6362 /* ~"Słuchaj, odpowiedz tylko na jedno, lub dwa pytania."~ */ GOTO 5
  IF ~~ THEN REPLY #6363 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6364 /* ~Jej czarne oczy spoczywają na Dak'konie. "Czcigodny... nie dajesz mi wyboru. Wybacz mi." Odwraca się i podnosi głos. "Straże! Straże!"~ */
  IF ~~ THEN REPLY #6365 /* ~Odjedź.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY #6366 /* ~Widzisz kobietę githzerai. Jest łysa, jej policzki pokryte są bliznami. Porusza się z kocią gracją. Odwracając się, zauważa Dak'kona. Jej oczy rozszerzają się. Zwraca się do niego, "Sprawiasz radość memu sercu. Nazywam się Kel'lera. W czym mogę ci pomóc?"~ */
  IF ~~ THEN DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 4
END

IF ~~ THEN BEGIN 10 // from: 35.0
  SAY #6370 /* ~"Więc pytaj, jeśli będę mogła, odpowiem. Twój towarzysz niesie cały ciężar twej tajemnicy i jest to dla niego sprawa honoru. I choć nie wiem, czy mogę ufać tobie, wiem, że ufam jemu."~ */
  IF ~~ THEN REPLY #6371 /* ~"Powiedz mi, do czego służy to urządzenie."~ */ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6372 /* ~"Jakie są słabe punkty tego urządzenia?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6373 /* ~"Kto zakontraktował to urządzenie?"~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6374 /* ~"Kto zakontraktował to urządzenie?"~ */ GOTO 12
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6375 /* ~"Co wiesz na temat morderstwa?"~ */ GOTO 17
  IF ~~ THEN REPLY #6376 /* ~"Opowiedz mi o inżynierach."~ */ GOTO 18
  IF ~~ THEN REPLY #6377 /* ~Na boku do Dak'kona: "Kim ona jest i dlaczego traktuje cię z takim respektem?"~ */ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6378 /* ~"Na razie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0
  SAY #6379 /* ~"Nasze urządzenie wypuszcza pewnego rodzaju magiczny ogień, który rani nawet odpornych na zwykły ogień. Pracujemy nad udoskonaleniem, dzięki któremu będziemy mogli nawet obejść czyjąś odporność na magię."~ */
  IF ~~ THEN REPLY #6380 /* ~"Jakie jeszcze może mieć zastosowania?"~ */ GOTO 15
  IF ~~ THEN REPLY #6381 /* ~"Bardzo dobrze. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 21
  IF ~~ THEN REPLY #6382 /* ~"To wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.3 21.2 35.1
  SAY #6383 /* ~Rzuca okiem na Nie-Sławę i z wdziękiem wydyma wargi. "Przepraszam, czcigodny, ale nie mogę o tym mówić. Zarówno mój kontrakt, jak i magiczne ograniczenia nie pozwalają mi mówić o tym w obecności pewnych... że tak powiem 'przejawów'... wiary." Odwraca się do sukkuba. "Przepraszam, Pani Sławo."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 9
END

IF ~~ THEN BEGIN 13 // from: 10.1 21.1
  SAY #6387 /* ~Z niepokojem zerka na Dak'kona, który przez chwilę mierzy cię wzrokiem, a następnie odwraca się do niej i kiwa głową, dodając jej otuchy. "Dobrze. Najsłabszym punktem tego urządzenia jest mechanizm spustowy, który znajduje się z tyłu. Zbyt dużo szkód w tym miejscu może być fatalne w skutkach dla nas wszystkich. Dałoby to początek reakcji łańcuchowej, która zrównałaby z ziemią wszystko, co znajduje się w pobliżu urządzenia. Sabotażysta miałby wystarczająco dużo czasu na ucieczkę; ci z nas, którzy są związani z urządzeniem, nie."~ */
  IF ~~ THEN REPLY #6388 /* ~"Związani? Co masz na myśli?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 20
  IF ~~ THEN REPLY #6389 /* ~"W porządku. Odpowiedz jeszcze na kilka pytań."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 21
  IF ~~ THEN REPLY #6390 /* ~"Wielkie dzięki." Odejdź.~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6391 /* ~Nadzorca ponownie odwraca się nieznacznie w stronę Nie-Sławy i zaciska zęby. "Nie wolno mi o tym mówić."~ */
  IF ~~ THEN REPLY #6392 /* ~"W porządku. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 21
  IF ~~ THEN REPLY #6393 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #6394 /* ~"Poza wykorzystaniem go jako broń? Wyśmienicie sprawdziłoby się w górnictwie. Gdyby je dobrze ustawić, mogłoby zbierać całe połacie lasu lub pól uprawnych. Mogłoby na pewien czas umocnić powłokę Limbo - próbowaliśmy tego nawet ze słabszymi urządzeniami, opartymi na tej technologii - lub nawet zostać wykorzystane jako napęd do podróży przez Tartar. Możliwości jego zastosowania ograniczone są tylko ludzką wyobraźnią. Nie jest to tylko narzędzie zniszczenia."~ */
  IF ~~ THEN REPLY #6395 /* ~"Ciekawe. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 21
  IF ~~ THEN REPLY #6396 /* ~"Bardzo dobrze. Żegnaj." Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2 21.3
  SAY #6397 /* ~Rozgląda się, wzdycha i odpowiada: "Chociaż nie brałam udziału w negocjacjach, myślę, że to baatezu pozyskali nasze usługi. Znak, który nosisz, da ci pewnego rodzaju immunitet dyplomatyczny, gdybyś spotkał któregoś z nich."~ */
  IF ~~ THEN REPLY #6398 /* ~"Jestem pewien, że to się przyda. Odpowiedz jeszcze na kilka pytań, jeśli możesz."~ */ GOTO 21
  IF ~~ THEN REPLY #6399 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.4 21.4
  SAY #6400 /* ~"Niewiele mogę ci powiedzieć. Moi kowale i ja jesteśmy tu prawie non-stop, bez chwili przerwy. Sugeruję, żebyś porozmawiał z kimś, kto będzie w kuźni po zmroku. Jak na razie przychodzą mi do głowy tylko dwie osoby: Tyldon, nadzorca robotników i Saros, który wydaje się być złodziejem."~ */
  IF ~~ THEN REPLY #6401 /* ~"Tyldon i Saros, tak? Dobrze. Odpowiedz jeszcze na kilka pytań, jeśli możesz."~ */ GOTO 21
  IF ~~ THEN REPLY #6402 /* ~"Tyldon i Saros, tak? Pójdę to sprawdzić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.5 21.5
  SAY #6403 /* ~Krzywi się, co dodaje jej pokrytej bliznami twarzy parę dodatkowych bruzd. "Porozmawiaj z którymś z moich kowali, jeśli chcesz *poznać* inżynierów. Ode mnie nie usłyszysz na ich temat ani jednego miłego słowa."~ */
  IF ~~ THEN REPLY #6404 /* ~"Dlaczego nie?"~ */ GOTO 19
  IF ~~ THEN REPLY #6405 /* ~"Dobrze. W takim razie odpowiedz na kilka pytań."~ */ GOTO 21
  IF ~~ THEN REPLY #6406 /* ~"Bardzo dobrze." Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #6407 /* ~"Dlaczego? Ponieważ nie wydają się uwielbiać tego przedsięwzięcia tak, jak ich towarzysze. Ponieważ to marzyciele, którzy sami nic nie robią. I w końcu, ponieważ nie wierzę, że ich intencje wyjdą nam na dobre i myślę, że służą im i tylko im."~ */
  IF ~~ THEN REPLY #6408 /* ~"Rozumiem. W takim razie odpowiedz na inne pytanie."~ */ GOTO 21
  IF ~~ THEN REPLY #6409 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.0
  SAY #6410 /* ~"Chcę przez to powiedzieć, że zostaliśmy związani z tym urządzeniem poprzez magiczne rytuały. Jeśli zrobimy jakiś błąd, albo jeszcze gorzej, ktoś je sabotuje, ja i wszyscy, których widzicie w tej sali, zostaną spaleni. Co gorsza nasze duchy też zostaną zniszczone, rozszarpane, nie pozostanie im nic, tylko zimna, mroczna niepamięć. Rozumiesz już naszą tajemnicę?"~ */
  IF ~~ THEN REPLY #6411 /* ~"Tak przypuszczam. Gdybyś mogła jeszcze odpowiedzieć na inne pytania..."~ */ GOTO 21
  IF ~~ THEN REPLY #6412 /* ~"Tak przypuszczam. Żegnaj."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from: 11.1 13.1 14.0 15.0 16.0 17.0 18.1 19.0 20.0 36.1
  SAY #6413 /* ~"Pytaj, a jeśli będę mogła, odpowiem. Ufam w dyskrecję twego towarzysza."~ */
  IF ~~ THEN REPLY #6414 /* ~"Powiedz mi, do czego służy to urządzenie."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6415 /* ~"Jakie są słabe punkty tego urządzenia?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6416 /* ~"Kto zakontraktował to urządzenie?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 12
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6417 /* ~"Kto zakontraktował to urządzenie?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 16
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6418 /* ~"Co wiesz na temat morderstwa?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 17
  IF ~~ THEN REPLY #6419 /* ~"Opowiedz mi o inżynierach."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 18
  IF ~~ THEN REPLY #6420 /* ~Na boku do Dak'kona: "Kim ona jest i dlaczego traktuje cię z takim respektem?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6421 /* ~"Na razie nic. Żegnaj."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #6422 /* ~Łysa, pokryta bliznami kobieta githzerai podchodzi do ciebie z niewiarygodną gracją. Przebiega wzrokiem po twym ciele i mówi, "Twój znak daje ci prawo wstępu. Czego jeszcze chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #6423 /* ~"Chcę tylko, żebyś odpowiedziała na parę pytań."~ */ GOTO 23
  IF ~~ THEN REPLY #6424 /* ~"Nie odzywaj się do mnie w ten sposób, albo każę cię wychłostać."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kellera_1","GLOBALGood",-1)
~ GOTO 24
  IF ~~ THEN REPLY #6425 /* ~"Na razie nic. Żegnaj."~ */ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from: 22.0 26.1 27.0 28.1 29.0 31.0 32.0 33.1 34.0 37.1
  SAY #6426 /* ~"Więc pytaj i kończmy jak najszybciej. Wiedz, że mam jeszcze dużo pracy."~ */
  IF ~~ THEN REPLY #6427 /* ~"Powiedz mi, do czego służy to urządzenie."~ */ GOTO 26
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6428 /* ~"Jakie są słabe punkty tego urządzenia?"~ */ GOTO 28
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6429 /* ~"Kto zakontraktował to urządzenie?"~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6430 /* ~"Kto zakontraktował to urządzenie?"~ */ GOTO 30
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6431 /* ~"Co wiesz na temat morderstwa?"~ */ GOTO 32
  IF ~~ THEN REPLY #6432 /* ~"Opowiedz mi o inżynierach."~ */ GOTO 33
  IF ~~ THEN REPLY #6433 /* ~"Na razie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 28.0
  SAY #6434 /* ~Oczy zmieniają się jej w szparki. "Ośmielasz się mi grozić? Tutaj? Wynoś się i daj mi trochę czasu abym zapomniała tę obrazę, albo każę strażom wyrzucić twe krwawiące ścierwo na ulicę."~ */
  IF ~~ THEN REPLY #6435 /* ~"Wolałbym umrzeć."~ */ GOTO 25
  IF ~~ THEN REPLY #6436 /* ~"No dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #6437 /* ~"To można załatwić. STRAŻE! Zabić intruza!"~ */
  IF ~~ THEN REPLY #6438 /* ~Przygotuj się do walki.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #6439 /* ~"Nasze urządzenie wypuszcza pewnego rodzaju magiczny ogień, który rani nawet odpornych na zwykły ogień. Pracujemy nad udoskonaleniem, dzięki któremu będziemy mogli obejść nawet czyjąś odporność na magię."~ */
  IF ~~ THEN REPLY #6440 /* ~"Jakie jeszcze może mieć zastosowania?"~ */ GOTO 27
  IF ~~ THEN REPLY #6441 /* ~"Bardzo dobrze. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 23
  IF ~~ THEN REPLY #6442 /* ~"To wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #6443 /* ~"Poza wykorzystaniem go jako broń? Wyśmienicie sprawdziłoby się w górnictwie. Gdyby je dobrze ustawić, mogłoby zbierać całe połacie lasu lub pól uprawnych. Mogłoby na pewien czas umocnić powłokę Limbo - próbowaliśmy tego nawet ze słabszymi urządzeniami, opartymi na tej technologii - lub nawet zostać wykorzystane jako napęd do podróży przez Tartar. Możliwości jego zastosowania ograniczone są tylko ludzką wyobraźnią. Nie jest to tylko narzędzie zniszczenia."~ */
  IF ~~ THEN REPLY #6444 /* ~"Ciekawe. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 23
  IF ~~ THEN REPLY #6445 /* ~"Bardzo dobrze. Żegnaj." Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY #6446 /* ~"Nie widzę powodu, dla którego miałbyś otrzymać te informacje, nieważne czy jesteś Bogowcem, czy nie. Nie dam ci ich."~ */
  IF ~~ THEN REPLY #6447 /* ~"Co ty na to, żebym cię zmusił?"~ */ GOTO 24
  IF ~~ THEN REPLY #6448 /* ~"Bardzo dobrze. W takim razie czy możesz odpowiedzieć na inne pytania?"~ */ GOTO 23
  IF ~~ THEN REPLY #6449 /* ~"W porządku. Dobrego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY #6450 /* ~Rozgląda się, wzdycha i odpowiada: "Chociaż nie brałam udziału w negocjacjach, myślę, że to baatezu pozyskali nasze usługi. Znak, który nosisz, da ci pewnego rodzaju immunitet dyplomatyczny, gdybyś spotkał któregoś z nich."~ */
  IF ~~ THEN REPLY #6451 /* ~"Jestem pewien, że się przyda. Odpowiedz mi jeszcze na parę pytań, jeśli możesz."~ */ GOTO 23
  IF ~~ THEN REPLY #6452 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.3
  SAY #6453 /* ~Rzuca okiem na Nie-Sławę i z wdziękiem wydyma wargi. "Przepraszam, czcigodny, ale nie mogę o tym mówić. Zarówno mój kontrakt, jak i magiczne ograniczenia nie pozwalają mi mówić o tym w obecności pewnych... że tak powiem 'przejawów'... wiary." Odwraca się do sukkuba. "Przepraszam, Pani Sławo."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #6457 /* ~Nadzorca ponownie odwraca się nieznacznie w stronę Nie-Sławy i zaciska zęby. "Nie wolno mi o tym mówić."~ */
  IF ~~ THEN REPLY #6458 /* ~"W porządku. Mam jeszcze kilka pytań."~ */ GOTO 23
  IF ~~ THEN REPLY #6459 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.4
  SAY #6460 /* ~"Niewiele mogę ci powiedzieć. Moi kowale i ja jesteśmy tu prawie non-stop, bez chwili przerwy. Sugeruję, żebyś porozmawiał z kimś, kto będzie w kuźni po zmroku. Jak na razie przychodzą mi do głowy tylko dwie osoby: Tyldon, nadzorca robotników i Saros, który wydaje się być złodziejem."~ */
  IF ~~ THEN REPLY #6461 /* ~"Tyldon i Saros, co? Bardzo dobrze. Odpowiedz jeszcze na kilka pytań, jeśli możesz."~ */ GOTO 23
  IF ~~ THEN REPLY #6462 /* ~"Tyldon i Saros, tak? Pójdę to sprawdzić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.5
  SAY #6463 /* ~Krzywi się, co dodaje jej pokrytej bliznami twarzy parę dodatkowych bruzd. "Porozmawiaj z którymś z moich kowali, jeśli chcesz *poznać* inżynierów. Ode mnie nie usłyszysz na ich temat ani jednego miłego słowa."~ */
  IF ~~ THEN REPLY #6464 /* ~"Dlaczego nie?"~ */ GOTO 34
  IF ~~ THEN REPLY #6465 /* ~"W porządku. W takim razie odpowiedz na kilka pytań."~ */ GOTO 23
  IF ~~ THEN REPLY #6466 /* ~"Bardzo dobrze." Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #6467 /* ~"Dlaczego? Ponieważ nie wydają się uwielbiać tego przedsięwzięcia tak, jak ich towarzysze. Ponieważ to marzyciele, którzy sami nic nie robią. I w końcu, ponieważ nie wierzę, że ich intencje wyjdą nam na dobre i myślę, że służą im i tylko im."~ */
  IF ~~ THEN REPLY #6468 /* ~"Rozumiem. Powiedz mi coś jeszcze."~ */ GOTO 23
  IF ~~ THEN REPLY #6469 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #6470 /* ~Patrzy na ciebie, a potem jej zagadkowe spojrzenie wraca na niego. "Oczywiście, czcigodny, jeśli mówisz w jego imieniu, i zobowiążesz się zachować to, co tu usłyszysz w tajemnicy." Niechętnie zwraca się do ciebie. "Masz dla mnie jakieś pytania?"~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6455 /* ~"Tak."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6456 /* ~"Tak."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #7998 /* ~"Nie. Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #6472 /* ~Kel'lera kłania się.~ */
  IF ~~ THEN REPLY #6367 /* ~"Co to znaczy?"~ */ EXTERN ~DGRACE~ 7
  IF ~~ THEN REPLY #6368 /* ~"Bardzo dobrze. W takim razie odpowiedz mi na kilka pytań, jeśli możesz."~ */ GOTO 21
  IF ~~ THEN REPLY #6369 /* ~"Bardzo dobrze. To wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #6384 /* ~Kel'lera kłania się.~ */
  IF ~~ THEN REPLY #6385 /* ~"Co to znaczy?"~ */ EXTERN ~DGRACE~ 8
  IF ~~ THEN REPLY #6386 /* ~"Bardzo dobrze. W takim razie odpowiedz mi na kilka pytań, jeśli możesz."~ */ GOTO 23
  IF ~~ THEN REPLY #6454 /* ~"Bardzo dobrze. To wszystko. Żegnaj."~ */ EXIT
END
