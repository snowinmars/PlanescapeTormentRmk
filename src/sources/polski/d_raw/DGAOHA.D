// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~Widzisz chudego humanoida o pożółkłej skórze, z mnóstwem oślepiających tatuaży. Jego brwi podkreślono czarnym węglem, a zęby ma spiłowane do szpica. Dostrzega cię i macha, abyś podszedł, szczękając kośćmi trzymanymi w dłoni.~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~"Witaj..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~"Witaj..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~Szeroki, dziki uśmiech odsłania kły niczym u rekina; jego oczy przypominają lśniące, czarne kule. Mówi niskim, chrapliwym głosem: "Gaoha pozdrawia cię takoż... jesteś tutaj, aby zagrać. Tak?"~ */
  IF ~~ THEN REPLY #34026 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~"Tak, zagram."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~"Nie... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~Już ma coś powiedzieć, gdy jego oczy - lśniące i czarne niczym u kruka - zatrzymują się na Dak'konie. Obaj patrzą teraz na siebie przez chwilę, zanim wzrok wytatuowanego githzerai z powrotem spocznie na tobie. "Gaoha pozdrawia cię... jesteś tutaj, aby zagrać. Tak?"~ */
  IF ~~ THEN REPLY #34030 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~"Tak, zagram."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~"Nie... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~Uśmiech Gaohy rzednie w mgnieniu oka; kręci przecząco głową. "Pytania mnie nie interesują. Tylko granie... rzucanie kośćmi, błysk wygranej lub przegranej monety, tak?" Potrząsa kośćmi w dłoni. "A ciebie... te rzeczy nie interesują?"~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~"No dobrze... zagram."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~"No dobrze... zagram."~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~Gaoha sięga do tuniki i wyjmuje monetę. "Ta moneta? Twoja moneta." Kładzie ci ją u stóp i wyciąga następną. "Ta moneta? Gaohy." Kładzie ją sobie u swych stóp, potem unosi dwie kostki pomiędzy kciukiem i palcem wskazującym. "Kości... razem rzucamy po jednej, tak?"~ */
  IF ~~ THEN REPLY #34038 /* ~"Mów dalej..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~"Tobie wypadnie więcej, obie monety..." Szybko porywa monety z ziemi i podaje tobie. "...są twoje. Gaoha wyrzuci więcej?" Szybko wsuwa monety z powrotem do tuniki. "Są moje. Nikt nie wyrzuci więcej? Monety zostają na następną kolejkę. Więc jak: Ile monet kładziesz u swych stóp?~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~"Jednego miedziaka."~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~"Jednego miedziaka."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~"Pięć miedziaków."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~"Pięć miedziaków."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~"Dziesięć miedziaków."~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~"Dziesięć miedziaków."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~"Dwadzieścia pięć miedziaków."~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~"Dwadzieścia pięć miedziaków."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~"Pięćdziesiąt miedziaków."~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~"Pięćdziesiąt miedziaków."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~"Sto miedziaków."~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~"Sto miedziaków."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~"Nic. Nie mam ochoty teraz grać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~Rzucasz kośćmi i Gaoha również, aż wreszcie jemu wypada więcej oczek; porywa twoje monety i wkłada je do kieszeni. Wydaje się, że przez chwilę się waha, potem odzywa się. "Jeszcze raz, tak?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~"Chwileczkę - czy coś się stało?"~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~"Tak, jeszcze raz."~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~"Dziękuję, nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~Gaoha bacznie ci się przygląda przez chwilę, potem kiwa głową potakująco. "Nigdy nie ulegam szaleństwu Hashmy - nigdy nie *oszukuję*, człowiecze. Ale odgaduję przypadki, ślepy traf, czytam je, *znajduję* je w twarzy człowieka. Jednakże ty... w tobie nie widzę nic. Niczego nie *znajduję*. Ty... nie masz szczęścia? Żadnego ślepego trafu, czy to dobrego, czy też złego? A może ty go tworzysz? Nie wiem." Wkłada kości z powrotem do tuniki. "Może zagramy później, ale teraz już nie."~ */
  IF ~~ THEN REPLY #60421 /* ~"W porządku... Żegnaj."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~"A ile monet będzie leżało u twych stóp?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~"Jeden miedziak."~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~"Jeden miedziak."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~"Pięć miedziaków."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~"Pięć miedziaków."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~"Dziesięć miedziaków."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~"Dziesięć miedziaków."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~"Dwadzieścia pięć miedziaków."~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~"Dwadzieścia pięć miedziaków."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~"Pięćdziesiąt miedziaków."~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~"Pięćdziesiąt miedziaków."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~"Sto miedziaków."~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~"Sto miedziaków."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~"Żadna. Żegnaj."~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~Gaoha rzuca ci swój niepokojący, szeroki uśmiech i grzechocze kośćmi trzymanymi w dłoni. "Jesteś tu ponownie, aby zagrać, czy tak?"~ */
  IF ~~ THEN REPLY #60437 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~"Tak, zagram."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~"Tak, zagram."~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~"Nie... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~Rzucasz kośćmi i Gaoha również, aż wreszcie jemu wypada więcej oczek; porywa twoje monety i marszczy brwi, zanim schowa je w tunice. "Na razie wystarczy. Ale może później jeszcze razem zagramy."~ */
  IF ~~ THEN REPLY #60442 /* ~"Dlaczego? Co się stało?"~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~"W porządku. Żegnaj."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~Rzucasz kośćmi i Gaoha również, aż wreszcie tobie wypada więcej oczek; podnosisz monety i odkładasz je. Gaoha kiwa potakująco głową, marszcząc brwi. "Na razie wystarczy. Ale może później jeszcze razem zagramy."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~"Chwileczkę - czy coś się stało?"~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~"W porządku. Żegnaj."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~Gaoha rzuca ci swój niepokojący, szeroki uśmiech. "Ciągnie cię do gry, tak? Ale zbyt szybko zjawiasz się z powrotem. Wróć później i będziemy mogli zagrać ponownie."~ */
  IF ~~ THEN REPLY #60448 /* ~"A zatem żegnaj."~ */ EXIT
END
