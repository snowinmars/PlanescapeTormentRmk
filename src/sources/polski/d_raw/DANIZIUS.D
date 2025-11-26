// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANIZIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANIZIUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #59314 /* ~Githyanki wpatruje się w ciebie gorzko, ale nic nie mówi. Gdy chcesz się do niego odezwać, spluwa na ziemię i odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #59317 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("Ddakkon")
~ THEN BEGIN 1 // from:
  SAY #59321 /* ~Widzisz zółtoskórego githyanki o wąskiej twarzy i okrutnym błysku w oczach, idącego dumnym krokiem. Prawie czujesz w powietrzu jego gniew. Gdy zbliżasz się do niego, on spogląda na ciebie. "Czego chcesz?" parska.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59323 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59327 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #59328 /* ~"Co możesz powiedzieć mi o Klątwie?"~ */ GOTO 3
  IF ~~ THEN REPLY #59329 /* ~"Czy słyszałeś może tutaj coś o devie?"~ */ GOTO 4
  IF ~~ THEN REPLY #59331 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.2 18.1 25.1
  SAY #59334 /* ~"Jestem An'izjusz, a ty powinieneś zwracać się do mnie per "Wasza Dostojność". Jestem jednym z przywódców miasta i zasłużyłem sobie na to." Przygląda ci się bliżej. "Nie jesteś stąd. Czego chcesz?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59335 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59338 /* ~"Poszukuję devy."~ */ GOTO 4
  IF ~~ THEN REPLY #59339 /* ~"Poszukuję czegoś, co straciłem."~ */ GOTO 5
  IF ~~ THEN REPLY #59341 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 18.2 25.2
  SAY #59345 /* ~"Spytaj kogoś, kto ma czas." szydzi. "Ja mam na głowie sprawy wielkiej wagi."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59346 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59350 /* ~"Sprawy wagi państwowej?"~ */ GOTO 6
  IF ~~ THEN REPLY #59352 /* ~"Kim ty właściwie jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #59354 /* ~"Poszukuję devy."~ */ GOTO 4
  IF ~~ THEN REPLY #59356 /* ~"Tak uczynię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1 3.3 18.3 25.3
  SAY #59401 /* ~"Deva?" Jego oczy zwężają się. "Co byście z nim zrobili i czemu szukacie go w Klątwie?"~ */
  IF ~~ THEN REPLY #59410 /* ~"Sądzę, że on zna tajemnicę mojej śmiertelności."~ */ GOTO 7
  IF ~~ THEN REPLY #59411 /* ~"Słyszałem, że jeden się tu znajduje. Czy wiesz coś o tym?"~ */ GOTO 8
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59413 /* ~"Zapomnij o tym. Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59415 /* ~"Zapomnij o tym. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #59417 /* ~"Cóż to jest? Może jako przywódca tego miasta mogę wam pomóc."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59418 /* ~"Jako przywódca miasta możesz potrzebować *mnie*. Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59419 /* ~"Straciłem swoją śmiertelność. Muszę ją odnaleźć."~ */ GOTO 7
  IF ~~ THEN REPLY #59420 /* ~"Nic ważnego. Mogę to znaleźć sam."~ */ GOTO 9
  IF ~~ THEN REPLY #59421 /* ~"Nic ważnego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 8.0
  SAY #59422 /* ~Mierzy cię dokładnie wzrokiem, zdając się ocenić cię w myślach i stwierdza: "Nic, w czym mógłbyś mi pomóc. A teraz odsuń się. Muszę rozważyć pewne sprawy."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59423 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59424 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.1
  SAY #59427 /* ~Patrzy na ciebie, jakbyś przekroczył granicę szaleństwa. "Wybitnie potrzeba ci pomocy. Miłego dnia." Odwraca się sztywno od ciebie.~ */
  IF ~~ THEN REPLY #59431 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #59434 /* ~"Nic mi się nie kojarzy." Dalej ci się przypatruje. "Wybacz, ale mam ważne sprawy, którymi powinienem się zająć."~ */
  IF ~~ THEN REPLY #59436 /* ~"Sprawy wielkiej wagi?"~ */ GOTO 6
  IF ~~ THEN REPLY #59438 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #59441 /* ~"Zatem czemu przerwałeś mi rozmyślania? Powinienem cię zakuć w kajdany! Odejdź!" Odwraca się od ciebie.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59444 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59448 /* ~"Żegnaj zatem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #59451 /* ~"Doskonale. Powinieneś odnaleźć to, czego szukasz, jak będziesz zamknięty pod Klątwą. Straże!" Strażnicy materializują się wokół, a ty czujesz, jak ktoś uderza cię w tył głowy. Wszystko czernieje...~ */
  IF ~~ THEN REPLY #59454 /* ~"Klątwy..."~ */ DO ~FadeToColor([20.0],0)
SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 4.2 5.0 6.0 9.0 18.0 25.0
  SAY #59460 /* ~Staje się dwa razy bardziej natarczywy. "Co żeś słyszał?"~ */
  IF ~~ THEN REPLY #59462 /* ~"Tylko tyle, że miałeś problemy z przeciwnikiem politycznym."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #59464 /* ~Jego oczy rozszerzają się na ułamek sekundy, po czym zwężają ponownie. "Rozumiem. Czy masz zamiar mi pomóc?"~ */
  IF ~~ THEN REPLY #59468 /* ~"To zależy, czego ode mnie chcesz."~ */ GOTO 14
  IF ~~ THEN REPLY #59471 /* ~"Tak."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59473 /* ~"Nie."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.1
  SAY #59485 /* ~"Zatem jesteście dla mnie bezużyteczni. Precz!" Odprawia was gestem dłoni i ignoruje.~ */
  IF ~~ THEN REPLY #59486 /* ~"Żegnaj zatem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #59490 /* ~"To jest sprawa dość delikatna. Trzeba dać nauczkę mojej rywalce. Nie będziecie musieli jej zabijać, jeśli to was razi."~ */
  IF ~~ THEN REPLY #59493 /* ~"Zatem to uczynię."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59496 /* ~"Zapomnij."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0 19.0
  SAY #59499 /* ~"Oto, co musisz uczynić: kobieta, Sjaba... sprzedawała swoje wpływy tym, którzy płacą najwięcej, podważając moją pozycję u Włodarza tego miasta. Chcę, abyś ją poniżył. Masz tylko powiedzieć kapitanowi straży, że ona cię wynajęła, abyś mnie zaatakował, a zostaniesz wynagrodzony. Jeśli chcesz, możesz ją odnaleźć niedaleko budynku Administracji."~ */
  IF ~~ THEN REPLY #59502 /* ~"Wrócę tu."~ */ JOURNAL #59505 /* ~An'izjusz, urzędnik rasy githyanki z miasta Klątwa, chciałby, żebym upokorzył jego polityczną przeciwniczkę, okłamując kapitana gwardii. Przeciwniczką An'izjusza jest niejaka Sjaba i można ją odnaleźć w pobliżu Budynku Administracyjnego w Wewnętrznej Dzielnicy Klątwy.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("Ddakkon")
~ THEN BEGIN 16 // from:
  SAY #59515 /* ~Widzisz zółtoskórego githyanki o wąskiej twarzy i okrutnym błysku w oczach, idącego dumnym krokiem. Prawie czujesz w powietrzu jego gniew. Gdy zbliżasz się do niego, on spogląda na ciebie. "Czego chcesz?" parska.~ */
  IF ~~ THEN REPLY #59516 /* ~"Mam do ciebie kilka pytań..."~ */ EXTERN ~DDAKKON~ 357
END

IF ~~ THEN BEGIN 17 // from:
  SAY #59519 /* ~Oczy githyanki zwężają się. "Odrzuciłem nienawiść, jaką żywiłem do twego ludu. Wyrosłem ponad małe wojenki pomiędzy naszymi dwiema rasami. Zostałem za to wygnany - ale w moim sercu ich pokonałem. Czy ty możesz powiedzieć to samo?"~ */
  IF ~~ THEN REPLY #59526 /* ~"Dobra, wy dwaj... skończcie to. Mam kilka pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #59527 /* ~"Zapomnij. Idziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #59530 /* ~"Jakich?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59533 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59537 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #59540 /* ~"Co możesz powiedzieć mi o Klątwie?"~ */ GOTO 3
  IF ~~ THEN REPLY #59542 /* ~"Czy słyszałeś może tutaj coś o devie?"~ */ GOTO 4
  IF ~~ THEN REPLY #59544 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("C_Off","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #59547 /* ~"Czego chcesz, psie?"~ */
  IF ~~ THEN REPLY #59549 /* ~"Zmieniłem zdanie. Pomogę ci. Czego potrzebujesz?"~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59553 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",9)
~ THEN BEGIN 20 // from:
  SAY #59558 /* ~"Cóż? Jak tam postępy?"~ */
  IF ~  Global("C_Off","GLOBAL",4)
~ THEN REPLY #59560 /* ~"Twoja rywalka zoferowała mi sporą sumę, abym cię zdradził."~ */ GOTO 21
  IF ~  Global("C_Off","GLOBAL",7)
~ THEN REPLY #59562 /* ~"Rozmawiałem z kapitanem gwardii, a on powiedział, że wyśle oddział, aby odeskortował ją do więzienia."~ */ DO ~SetGlobal("C_Off","GLOBAL",9)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #59578 /* ~An'izjusz sowicie wynagrodził mnie za wydanie Sjaby gwardzistom Klątwy. Taka zapłata to wręcz za dużo, jak na tak niewinne kłamstwo.~ */ GOTO 22
  IF ~~ THEN REPLY #59568 /* ~"Pracuję nad tym. Mam kilka pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #59574 /* ~"Pracuję nad tym. Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59582 /* ~"Co? Sam dam dwa razy więcej!"~ */
  IF ~~ THEN REPLY #59585 /* ~"Umowa stoi."~ */ DO ~SetGlobal("C_Off","GLOBAL",5)
~ GOTO 23
  IF ~~ THEN REPLY #59588 /* ~"Zobaczymy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #59590 /* ~"Zatem jestem ci winien to." Podaje ci ciężką sakwę z monetami. "A teraz precz."~ */
  IF ~~ THEN REPLY #59592 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0
  SAY #59595 /* ~"Więc idź! Idź! Albo każę cię obedrzeć ze skóry!"~ */
  IF ~~ THEN REPLY #59599 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #59601 /* ~"Nie mamy sobie nic więcej do powiedzenia. Nasza wspólna praca się skończyła. Nie wolno nam sprowadzać na siebie podejrzeń. Zostaw mnie."~ */
  IF ~~ THEN REPLY #59603 /* ~"Doskonale. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 25 // from:
  SAY #59605 /* ~"Czemu mnie nagabujesz?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59606 /* ~"Przyjaciel powiedział mi, że potrzebujesz pomocy."~ */ GOTO 11
  IF ~~ THEN REPLY #59609 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #59610 /* ~"Co możesz powiedzieć mi o Klątwie?"~ */ GOTO 3
  IF ~~ THEN REPLY #59611 /* ~"Czy słyszałeś może tutaj coś o devie?"~ */ GOTO 4
  IF ~~ THEN REPLY #59612 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 26 // from:
  SAY #66922 /* ~Urzędnik wygląda na wybitnie zdesperowanego. "Proszę, nieznajomy! Musisz mi pomóc! Przekonaj sędziego, że zbrodnie, o które się mnie podejrzewa, wcale nimi nie są!"~ */
  IF ~~ THEN REPLY #66923 /* ~"Spróbuję..."~ */ EXIT
  IF ~~ THEN REPLY #66924 /* ~"Zobaczymy, co się z tym da zrobić..."~ */ EXIT
END
