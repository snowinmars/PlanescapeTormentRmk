// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOEGO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOEGO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Appearance","GLOBAL",1)
Global("Gate_Open","GLOBAL",0)
Global("Soego","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1431 /* ~Twoim oczom ukazuje się człowiek odziany w spłowiałe czarne szaty. Jego sylwetka i ruchy świadczą o głębokim znużeniu. Wygląda, jakby nigdy nie zaznał snu. Plecy ma zgarbione, ramiona ciężko pochylone ku sobie. Szczupła twarz tchnie niesamowitą bladością, a spod podkrążonych, nabiegłych krwią oczu zwisają fałdy powiek. Zdaje się, że w ogóle cię nie zauważył. A może bierze cię za któregoś z tutejszych, makabrycznych robotników?~ */
  IF ~~ THEN REPLY #1432 /* ~"Witaj!"~ */ GOTO 1
  IF ~~ THEN REPLY #1433 /* ~"Kim jesteś?"~ */ GOTO 1
  IF ~~ THEN REPLY #1434 /* ~"Co to za miejsce?"~ */ GOTO 1
  IF ~~ THEN REPLY #1435 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #1436 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1437 /* ~Kiedy twoje słowa docierają doń, Grabarz gwałtownym ruchem obraca głowę. "Wy... wybaczcie, panie... Do mnie te słowa?"~ */
  IF ~~ THEN REPLY #1438 /* ~"Tak, to prawda. Mam kilka pytań."~ */ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 2
  IF ~~ THEN REPLY #1439 /* ~"Nie, to nieprawda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_1","GLOBALLaw",-1)
~ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1440 /* ~Milcz jak grób.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1441 /* ~Milcz jak grób.~ */ GOTO 4
  IF ~~ THEN REPLY #1442 /* ~Odejdź. Jak najszybciej.~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 3.0 3.3 4.0 4.1
  SAY #1443 /* ~"Na Wszelkie Moce!" Grabarz drży na całym ciele, a zaraz potem wbija w ciebie bystre spojrzenie. Teraz dopiero dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "O panie! Twe słowa zmuszają mnie, niegodnego, do haniebnego wyznania: wedle wszelkiego prawdopodobieństwa wydajesz mi się być zombie." Pochyla się w lekkim ukłonie "Jam jest zaś Soe. A czyli wolno mi spytać - twej obecności tutaj... jakiż cel przyświeca?..." Jego bystre spojrzenie omiata twoje blizny... "O ile w ogóle przyświeca..."~ */
  IF ~~ THEN REPLY #1444 /* ~"To nie twój interes."~ */ GOTO 6
  IF ~~ THEN REPLY #1445 /* ~"Właściwie to nie wiem, co tutaj robię. Obudziłem się na jednym z katafalków na górze i moja pamięć jest... nieco zamglona."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1446 /* ~"Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi pomóc?"~ */ GOTO 8
  IF ~~ THEN REPLY #1447 /* ~"Próbuję się stąd wydostać."~ */ GOTO 13
  IF ~~ THEN REPLY #1448 /* ~"Potrzeba mi było odmiany."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #4999 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #1449 /* ~Grabarz wpatruje się w ciebie przez chwilę, a potem z dezaprobatą kręci głową. "Trzeba więcej obrazów mentalnych..." Wzdycha ciężko i przeciera powieki. "Te czary przeciwgorączkowe są coraz gorsze..."~ */
  IF ~~ THEN REPLY #1450 /* ~"Nie, nie wydawało ci się. Mam kilka pytań..."~ */ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1451 /* ~Skręć jego kark, korzystając z jego roztargnienia.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1452 /* ~Skręć jego kark, korzystając z jego roztargnienia.~ */ GOTO 22
  IF ~~ THEN REPLY #1453 /* ~"Mam kilka pytań."~ */ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 2
  IF ~~ THEN REPLY #1454 /* ~Odejdź w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY #1455 /* ~Grabarz patrzy na ciebie ze skupieniem, potem zaś pochyla się... jego wargi rozstępują się, odsłaniając rząd brudnych, ostrych zębów i oto twój rozmówca zaczyna obwąchiwać cię jak szczur.~ */
  IF ~~ THEN REPLY #1456 /* ~"Uch... Dlaczegóż, u stu diabłów, obwąchujesz mnie?"~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 2
  IF ~~ THEN REPLY #1457 /* ~"Posłuchaj, chciałbym cię o coś spytać.."~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1458 /* ~Skręć mu kark, kiedy się ku tobie pochyli.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1459 /* ~Skręć mu kark, kiedy się ku tobie pochyli.~ */ GOTO 22
  IF ~~ THEN REPLY #1460 /* ~Odejdź. Jak najszybciej.~ */ GOTO 15
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY #1461 /* ~Kiedy zbierasz się do odejścia, Grabarz wydaje ciche syknięcie, potem zaś pochyla się ku tobie i węszy przez chwilę. "Na Wszelkie Moce!" - wykrzykuje. Cofa się, a jego oczy rozszerzają się ze zdumienia. Teraz dopiero dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "O panie! Twe słowa zmuszają mnie, niegodnego, do haniebnego wyznania: wedle wszelkiego prawdopodobieństwa wydajesz mi się być zombie." Pochyla się w lekkim ukłonie "Jam jest zaś Soe. A czyli wolno mi spytać - twej obecności tutaj... jakiż cel przyświeca?... O ile w ogóle przyświeca..."~ */
  IF ~~ THEN REPLY #1462 /* ~"To nie twój interes."~ */ GOTO 6
  IF ~~ THEN REPLY #1463 /* ~"Właściwie to nie wiem, co tutaj robię. Obudziłem się na jednym z katafalków na górze i moja pamięć jest... nieco zamglona."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1464 /* ~"Zabłądziłem i szukam wyjścia. Czy zechcesz mi pomóc?"~ */ GOTO 8
  IF ~~ THEN REPLY #1465 /* ~"Próbuję się stąd wydostać."~ */ GOTO 13
  IF ~~ THEN REPLY #1466 /* ~"Potrzeba mi było odmiany."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #1467 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0 15.0 41.1 43.0 50.1 115.1
  SAY #1468 /* ~"Oj, obawiam się, że to jednak *jest* moja sprawa." Oczy Soego rozbłyskują czerwienią, a kąciki jego ust poczynają nieznacznie drżeć, jak gdyby w oczekiwaniu. "Zatem..." Na jego twarz wstępuje złośliwy uśmieszek, w którym odsłania rząd ostrych, brudnych zębów. "Zatem może powinienem zawołać straże...? O tak, sądzę, że tak właśnie uczynię."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1469 /* ~"Poczekaj! Zgubiłem się... Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi pomóc?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1470 /* ~"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy zechcesz mi pomóc?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1471 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1472 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 22
  IF ~~ THEN REPLY #1473 /* ~"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 2.1 5.1 13.3 15.1 42.1 57.0
  SAY #1474 /* ~"Doprawdy?" Grabarz studiuje twoją postać w zamyśleniu. "Faktycznie wyglądasz, jakbyś przeszedł przygotowanie do pochówku. Sam nie wiem, jakżeś w ogóle mógł przeżyć tak ogromne boleści... Czy cierpisz? Czy czujesz bóle? Wyglądasz na takiego."~ */
  IF ~~ THEN REPLY #1475 /* ~"Po pierwsze chciałbym wiedzieć, jakim cudem się tutaj w ogóle znalazłem.~ */ GOTO 54
  IF ~~ THEN REPLY #1476 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
  SAY #1477 /* ~Soe kiwa głową, a kąciki jego ust poczynają nieznacznie drżeć. "Dobrze, już dobrze, nie denerwuj się. Zaraz cię stąd wypuszczę. Cóż, naturalnie, te pomieszczenia mogą budzić mieszane uczucia u gości. Bez obrazy, ale po dziewiątym dzwonie obcym nie wolno przebywać w Kostnicy. Pozwolisz, że otworzę ci frontową bramę."~ */
  IF ~  HasItem("KeyMo",Myself)
~ THEN REPLY #1478 /* ~"Dziękuję."~ */ DO ~AddexperienceParty(500)
SetGlobal("Gate_Open","GLOBAL",1)
SetGlobal("Gate_Cut_Scene","AR0201",1)
StartCutSceneMode()
StartCutSceneEx("0201cut1",FALSE)
~ EXIT
  IF ~  !HasItem("KeyMo",Myself)
~ THEN REPLY #1479 /* ~"Dziękuję."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 56.1 60.1
  SAY #1480 /* ~Soe sięga do swego pasa, obłapuje go nerwowo przez chwilę, a potem syka. "Klucz!". Oczy Grabarza rozbłyskują czerwienią, a wargi wykrzywiają się w grymasie wściekłości... Wygląda teraz nieomal jak zwierzę. "Ktoś ukradł mój klucz!". Obraca się ku tobie i warczy "To ty! To ty to uczyniłeś!"~ */
  IF ~~ THEN REPLY #1481 /* ~Blef: "Och poczekaj! Gdybym faktycznie skradł twój klucz, po cóż bym miał o niego pytać?"~ */ GOTO 18
  IF ~~ THEN REPLY #1482 /* ~Kłamstwo: "Nie wiem, o co ci chodzi. Nie mam z tym nic wspólnego."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Soego_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1483 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1484 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 22
  IF ~~ THEN REPLY #1485 /* ~"A jeżeli nawet to prawda, to co z tego? Cóż mi uczynisz?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from:
  SAY #1486 /* ~Soe zdejmuje ze swojego pasa pokaźnych rozmiarów klucz i podąża ku frontowej bramie. Jego chód jest nad wyraz osobliwy. Grabarz posuwa się naprzód w chwiejnej, przygarbionej pozycji, jakby w obawie przed utratą równowagi.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1487 /* ~"Dziwny ma facet chód. Nie ma co..."~ */ EXTERN ~DMORTE~ 101
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1488 /* ~Poczekaj, aż otworzy ci bramę.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #1489 /* ~Znalazłszy się w pobliżu bramy, Soe wkłada klucz w zamek i przekręca go. W chwilę później, z wnętrza komory zamka wydobywa się przeraźliwy zgrzyt i zwielokrotniony echem odbitym się od marmurowych posadzek wypełnia całe pomieszczenie jękliwym łoskotem.~ */
  IF ~~ THEN REPLY #1490 /* ~Poczekaj, aż wróci.~ */ DO ~SetDoorLocked("fakedoor",FALSE)
~ GOTO 12
END

IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Gate_Open","GLOBAL",1)
Global("Gate_Cut_Scene","AR0201",1)
~ THEN BEGIN 12 // from: 11.0
  SAY #1491 /* ~"Dobrze więc. Oto i frontowa brama stoi przed tobą otworem. Pamiętaj wszakże, że nie będziesz miał już więcej wstępu do tego przybytku."~ */
  IF ~~ THEN REPLY #1492 /* ~"Czy mogę jeszcze o coś spytać, zanim odejdę?"~ */ DO ~SetGlobal("Gate_Cut_Scene","AR0201",2)
~ GOTO 26
  IF ~~ THEN REPLY #1493 /* ~"Dzięki, Soe. Teraz już czas na mnie."~ */ DO ~SetGlobal("Gate_Cut_Scene","AR0201",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
  SAY #1494 /* ~"Chcesz się stąd wydostać?" Soe marszczy brwi w zastanowieniu. "Najpierw zdradź mi, jakżeś się tu dostał?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1495 /* ~"Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy pomożesz mi znaleźć wyjście?"~ */ GOTO 8
  IF ~  Global("Appearance","GLOBAL",2)
~ THEN REPLY #1496 /* ~"Naprawdę nie wiem."~ */ GOTO 14
  IF ~  !Global("Appearance","GLOBAL",2)
~ THEN REPLY #1497 /* ~"Naprawdę nie wiem."~ */ GOTO 61
  IF ~~ THEN REPLY #1498 /* ~"Obudziłem się na jednym z katafalków na górze i moja pamięć jest... nieco zamglona."~ */ GOTO 7
  IF ~~ THEN REPLY #1499 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #1500 /* ~Soe cmoka ze zdziwienia. "Wielce osobliwe." Znów ogląda cię w skupieniu. "Czyż możliwe, abyś był jednym z Zakontraktowanych?"~ */
  IF ~~ THEN REPLY #1501 /* ~"Hmm... 'Zakontraktowanych'...?~ */ GOTO 23
  IF ~~ THEN REPLY #1502 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #1503 /* ~Kiedy zbierasz się do odejścia, Grabarz przestaje cię obwąchiwać i wydaje ciche syknięcie. "Na Wszelkie Moce!" - wykrzykuje. Cofa się, a jego oczy rozszerzają się ze zdumienia. Teraz dopiero dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "O panie! Twe słowa zmuszają mnie, niegodnego, do haniebnego wyznania: wedle wszelkiego prawdopodobieństwa wydajesz mi się być zombie." Pochyla się w lekkim ukłonie "Jam jest zaś Soe. A czyli wolno mi spytać - twej obecności tutaj... jakiż cel przyświeca?"~ */
  IF ~~ THEN REPLY #1504 /* ~"Nie twoja sprawa."~ */ GOTO 6
  IF ~~ THEN REPLY #1505 /* ~"Właściwie to nie wiem, co tutaj robię. Obudziłem się na jednym z katafalków na górze i moja pamięć jest... nieco zamglona."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1506 /* ~"Zgubiłem się i szukam wyjścia. Czy zechcesz mi pomóc?~ */ GOTO 8
  IF ~~ THEN REPLY #1508 /* ~"Próbuję się stąd wydostać."~ */ GOTO 13
  IF ~~ THEN REPLY #1509 /* ~"Potrzeba mi było odmiany."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #1510 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 2.4 5.4 15.4
  SAY #1511 /* ~"Ach tak..." Oczy Soego rozbłyskują czerwienią, a kąciki jego ust poczynają nieznacznie drżeć, jak gdyby w oczekiwaniu. "Zatem..." Na jego twarz wstępuje złośliwy uśmieszek, w którym odsłania rząd ostrych, brudnych zębów. "Zatem może powinienem zawołać straże...? O tak, sądzę, że tak właśnie uczynię."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1512 /* ~"Poczekaj! Zgubiłem się... Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi pomóc?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1513 /* ~"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy zechcesz mi w tym pomóc?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1514 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1515 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 22
  IF ~~ THEN REPLY #1516 /* ~"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
  SAY #1517 /* ~Kiedy zbierasz się do odejścia, z ust Soego wydobywa się wściekły syk... Potem jednak zaraz Grabarz opanowuje się i wznosi dłoń. "Nie, nie... Obawiam się, że nie możesz tak po prostu odejść. Coś tutaj nie gra. Myślę, że najlepiej będzie, jeżeli sobie tę sprawę zaraz wyjaśnimy... Kąciki jego ust poczynają nieznacznie drżeć a oczy zajmują się blaskiem. "Zatem może straże coś na to poradzą... Tak... Chyba powinienem wezwać straże."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1518 /* ~"Poczekaj! Zgubiłem się... Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi w tym pomóc?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1520 /* ~"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy zechcesz mi w tym pomóc?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1521 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1522 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 22
  IF ~~ THEN REPLY #1523 /* ~"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
  SAY #1524 /* ~Soe cofa się, a potem zaś trzykrotnie klaszcze w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #1525 /* ~"No dobrze..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
  SAY #1526 /* ~Zanim Grabarz jest w stanie wydać z siebie jeden choćby dźwięk, twoje dłonie zaciskają się na jego skroniach i z wielką siłą wykręcają jego głowę.~ */
  IF ~~ THEN REPLY #1528 /* ~"Nie musisz zaraz wzywać swoich towarzyszy..."~ */ DO ~PlaySoundNotRanged("SPE_11")
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1529 /* ~Rozlega się krótki chrzest łamanego karku... Ale Grabarz, zamiast bezwładnie runąć na posadzkę, wydaje z siebie zduszony krzyk i wydziera się z uścisku twoich rąk!~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1530 /* ~"A cóż to..?!"~ */ DO ~SetGlobal("Soego_Strangle","GLOBAL",1)
~ EXTERN ~DMORTE~ 100
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1531 /* ~"A cóż to..?!"~ */ DO ~SetGlobal("Soego_Strangle","GLOBAL",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #1532 /* ~Grabarz wygląda na równie przerażonego jak ty: jego oczy połyskują dziko, a z gardła wydobywa się głuche rzężenie... Mógłbyś przysiąc, że przed chwilą skręciłeś mu kark, bo jego głowa wystaje pod nienaturalnym kątem, ale Soe jest cały czas żywy! Patrzysz w oniemieniu, jak Grabarz o przetrąconym karku klaszcze trzykrotnie osłabłymi dłońmi. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #1533 /* ~"No dobrze..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
  SAY #1534 /* ~Coś musiało zaalarmować Grabarza... Zanim zdążyłeś rzucić się na niego, cofnął się ze szkarłatnym błyskiem w oczach i odsłonił zęby. Teraz zaś syknąwszy, trzykrotnie donośnie klasnął w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #1535 /* ~"No dobrze..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.0
  SAY #4792 /* ~"Zakontraktowani to ci, którzy spisali umowę, w której pośmiertnie powierzyli swoje ciała Grabarzom. Wygląda na to, że tobie przydarzyło się coś w rodzaju niezwykłego stanu zawieszenia między życiem a śmiercią. Wyglądasz zresztą znacznie lepiej niżeli zwykły zombie."~ */
  IF ~~ THEN REPLY #4793 /* ~"Ludzie sprzedają wam pośmiertnie swoje ciała?"~ */ GOTO 24
  IF ~~ THEN REPLY #4794 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #4795 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #4796 /* ~"O tak, w zamian za garść miedziaków, niejeden chętnie sprzeda swoje ciało. Szczególnie, że z chwilą spotkania Prawdziwej Śmierci, nie będzie mu ono do niczego potrzebne."~ */
  IF ~~ THEN REPLY #4797 /* ~"Co robicie z tymi ciałami?"~ */ GOTO 25
  IF ~~ THEN REPLY #4798 /* ~"Ro... rozumiem. Czy zechciałbyś odpowiedzieć na kilka innych pytań?"~ */ GOTO 25
  IF ~~ THEN REPLY #4799 /* ~"Dzięki za wszystkie informacje. Bywaj zdrów."~ */ GOTO 17
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #4800 /* ~"Żywe trupy pełnią tutaj w Kostnicy obowiązki służących. Przenoszą zwłoki, czyszczą posadzki, uczestniczą w przygotowaniu zmarłych do pochówku... Spoczywają na nich generalnie najprostsze powinności. Niestety, nie są w stanie wywiązywać się z bardziej skomplikowanych rozkazów."~ */
  IF ~~ THEN REPLY #4801 /* ~"No cóż, Zakontraktowany, czy też nie, jakimż cudem się tutaj znalazłem, skoro nie jestem martwy?"~ */ GOTO 54
  IF ~~ THEN REPLY #4802 /* ~"Ro... rozumiem. Czy zechciałbyś odpowiedzieć na kilka innych pytań?"~ */ GOTO 26
  IF ~~ THEN REPLY #4803 /* ~"Dziękuję za wszystkie informacje. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 26 // from: 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
  SAY #4804 /* ~Soe kiwa głową. "Tak, możesz zadać swoje pytania."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4805 /* ~"Teraz już czas na mnie. Czy zechcesz wskazać mi drogę do wyjścia?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4806 /* ~"Czy możesz mnie stąd wyprowadzić?"~ */ GOTO 13
  IF ~  Global("Vaxis","GLOBAL",1)
!Dead("Vaxis")
Global("Vaxis_Leave","GLOBAL",0)
Global("Betray_Vaxis","GLOBAL",0)
~ THEN REPLY #4807 /* ~"Czy wiesz, że na drugim poziomie jest człowiek, który udaje trupa?"~ */ GOTO 27
  IF ~~ THEN REPLY #4809 /* ~"Jeśli wolno mi spytać... Dobrze się czujesz? Wyglądasz na bardzo wyczerpanego."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Soego_1","GLOBALGood",1)
~ GOTO 31
  IF ~  CheckStatLT(Protagonist,13,WIS)
Global("Vaxis_Exposes_Soego","GLOBAL",1)
~ THEN REPLY #4810 /* ~"Tyś jest Soe, prawda? Doszły mnie słuchy, że jesteś nieco dziwny, jak na Grabarza. Mówiono mi, że lubisz szczury."~ */ DO ~SetGlobal("Soego_exposed","GLOBAL",1)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Vaxis_Exposes_Soego","GLOBAL",1)
~ THEN REPLY #4811 /* ~"Tyś jest Soe, prawda? Doszły mnie słuchy, że jesteś nieco dziwny, jak na Grabarza. Mówiono mi, że lubisz szczury."~ */ GOTO 29
  IF ~  GlobalLT("Pharod","GLOBAL",1)
~ THEN REPLY #4832 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 33
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #4833 /* ~"Szukam dziennika. Czy nie widziałeś go?"~ */ GOTO 37
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4834 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4835 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #4808 /* ~"Co proszę?"~ */
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",0)
~ THEN REPLY #4836 /* ~"Na górze jest człowiek udający trupa. Myślę, że ma on za zadanie szpiegować Grabarzy."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",1)
~ THEN REPLY #4837 /* ~"Na górze jest człowiek udający trupa. Myślę, że ma on za zadanie szpiegować Grabarzy."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Dhall_2","GLOBALGood",-3)
~ GOTO 28
  IF ~~ THEN REPLY #4838 /* ~"Zapomnij o tym. Mam kilka innych pytań."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4839 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #916 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj!"~ */ GOTO 17
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #4840 /* ~"Co? Czemu miałby ktokolwiek...?" Głos Soego przeistacza się nagle w syk. Wargi Grabarza cofają się i odsłaniają rząd poszczerbionych zębów. "Anarchista!" Oczy Soego zajmują się szkarłatnym blaskiem. "Anarchista! Tutaj!". Coś sprawia, że wnet wraca mu świadomość twojej obecności i opanowuje się prędko. "Dzięki za informacje. Zadbam o to, aby straże zajęły się tą sprawą."~ */
  IF ~~ THEN REPLY #4852 /* ~"Nie ma problemu. Mam kilka innych pytań."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4853 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4854 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 29 // from: 26.5
  SAY #4855 /* ~Masz zamiar mu o tym napomknąć, kiedy nagle coś cię przed tym powstrzymuje. Kiedy zerkasz na Soego, twoje ciało przeszywa dziwny dreszcz... Z niejasnych ci bliżej powodów, dochodzisz do wniosku, że najlepiej będzie, jeżeli w ogóle nie będziesz się odzywał.~ */
  IF ~~ THEN REPLY #4856 /* ~"Doszły mnie słuchy, że jesteś dziwakiem, Soe. Mówiono mi, że lubisz szczury."~ */ GOTO 30
  IF ~~ THEN REPLY #4857 /* ~"Więc... powiedzmy, że chcę cię o coś zapytać."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4858 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4859 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 30 // from: 26.4 29.0
  SAY #4860 /* ~Soe milknie na chwilę, lustrując bez słowa twoją postać. Jego oczy zajmują się szkarłatnym blaskiem, a z gardła wydobywa się stłumiony syk. "Sądzę, że nadużyłeś już mojej uprzejmości." Ku twojemu zdziwieniu Grabarz cofa się i trzykrotnie donośnie klaszcze w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #4861 /* ~"Coż to u diaska? Cóż ty wyczyniasz?"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #4862 /* ~"Dobrze więc. Przygotuj się na śmierć, Soe."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #4863 /* ~Soe zdobywa się na lekki uśmiech, a kąciki jego ust drżą nieznacznie "Ostatnio trochę niedomagałem... Niewielkie gorączki. Nic poważnego. Czasem tylko utrudniają sen."~ */
  IF ~~ THEN REPLY #4864 /* ~"Mogę ci jakoś pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Soego_2","GLOBALGood",1)
~ GOTO 32
  IF ~~ THEN REPLY #4865 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4866 /* ~"Rozumiem. No cóż... Czas już na mnie. Żegnaj."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4867 /* ~"Rozumiem. No cóż... Czas już na mnie. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #4868 /* ~Soe kręci głową. "Nie, nie, wielkie dzięki za troskę... Dam sobie radę." Grabarz lekko marszczy brwi. "Może masz jeszcze jakieś inne pytania?"~ */
  IF ~~ THEN REPLY #4869 /* ~"Tak, mam jeszcze kilka innych pytań"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4870 /* ~"Nie, nie będę ci więcej przeszkadzać. Dzięki za informacje."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4871 /* ~"Nie, nie będę ci więcej przeszkadzać. Dzięki za informacje."~ */ GOTO 17
END

IF ~~ THEN BEGIN 33 // from: 26.6
  SAY #4872 /* ~"Farod? Naturalnie, że go znam." Marszczy brwi, a jego oczy zajmują się szkarłatnym blaskiem. "Diabelski człowiek. Za grosz w nim szacunku dla zmarłych, a jeszcze mniej dla żyjących. To padlinożerca. Zbieracz."~ */
  IF ~~ THEN REPLY #4873 /* ~"Zbieracz?"~ */ GOTO 34
  IF ~~ THEN REPLY #4874 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 36
  IF ~~ THEN REPLY #4875 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4876 /* ~"Rozumiem. Chyba czas na mnie."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4877 /* ~"Rozumiem. Chyba czas na mnie."~ */ GOTO 17
END

IF ~~ THEN BEGIN 34 // from: 33.0 36.0
  SAY #4878 /* ~"Tak, Zbieracze zarabiają na życie zbierając zwłoki i przywożąc je tutaj - do Kostnicy. My zaś dbamy o to, aby ciała te znalazły godny pochówek."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #4879 /* ~"Więc, gdyby Zbieracz natknął się na zwłoki... moje, na przykład... wówczas przywiózłby je tutaj, żeby je wam sprzedać?"~ */ GOTO 35
  IF ~~ THEN REPLY #4880 /* ~"A wracając do tego Faroda... Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 36
  IF ~~ THEN REPLY #4881 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4882 /* ~"Rozumiem. No cóż... Czas już na mnie. Żegnaj."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4883 /* ~"Rozumiem. No cóż... Czas już na mnie. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #4884 /* ~"Tak."~ */
  IF ~~ THEN REPLY #4885 /* ~"Hmm... Tak się akurat składa, że bardzo mi zależy na odnalezieniu tego Faroda. Czy wiesz, gdzie mogę go znaleźć?~ */ GOTO 36
  IF ~~ THEN REPLY #4886 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4887 /* ~"Dzięki za informacje. Bywaj zdrów."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4888 /* ~"Dzięki za informacje. Bywaj zdrów."~ */ GOTO 17
END

IF ~~ THEN BEGIN 36 // from: 33.1 34.1 35.0
  SAY #4889 /* ~"Wiem, że Farod mieszka w Ulu, w slumsach sąsiadujących z Kostnicą, ale nie znam jego dokładnego adresu. Może mogliby ci w tym pomóc inni Zbieracze, jeżeli byś zechciał ich o to zagadnąć."~ */
  IF ~~ THEN REPLY #4890 /* ~"Powiedz mi jeszcze raz, czym się w końcu zajmują ci Zbieracze?"~ */ GOTO 34
  IF ~~ THEN REPLY #4891 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4892 /* ~"Dzięki za informacje. Bywaj zdrów."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4893 /* ~"Dzięki za informacje. Bywaj zdrów."~ */ GOTO 17
END

IF ~~ THEN BEGIN 37 // from: 26.7
  SAY #4894 /* ~"Dziennika?" Twoje słowa wprawiły Soego w zakłopotanie. "Nie, nie widziałem niczego takiego."~ */
  IF ~~ THEN REPLY #4895 /* ~"Zatem mniejsza o to. Mam jeszcze kilka innych pytań..."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4896 /* ~"Mimo wszystko dziękuję. Bywaj zdrów."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4897 /* ~"Mimo wszystko dziękuję. Bywaj zdrów."~ */ GOTO 17
END

IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
!Global("Appearance","GLOBAL",1)
Global("Gate_Open","GLOBAL",0)
Global("Soego","GLOBAL",0)
~ THEN BEGIN 38 // from:
  SAY #4898 /* ~Twoim oczom ukazuje się człowiek odziany w spłowiałe czarne szaty. Jego sylwetka i ruchy świadczą o głębokim znużeniu. Wygląda, jakby nigdy nie zaznał snu. Plecy ma zgarbione, ramiona ciężko pochylone ku sobie. Szczupła twarz tchnie niesamowitą bladością, a spod podkrążonych, nabiegłych krwią oczu zwisają fałdy powiek. Przybysz wydaje się być zatopiony w rozmyślaniach, że chyba w ogóle nie zauważył twojej obecności.~ */
  IF ~  GlobalLT("Appearance","GLOBAL",2)
~ THEN REPLY #66706 /* ~"Witaj..."~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 39
  IF ~  Global("Appearance","GLOBAL",2)
~ THEN REPLY #66707 /* ~"Witaj..."~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~U frontowej bramy Kostnicy spotkałem Grabarza o imieniu Soe. Wyglądał na nieco zmęczonego, jak gdyby nie zaznał snu od długich tygodni. Sądząc z jego oczu i nienaturalnej bladości ciała, musi cierpieć na jakąś chorobę.~ */ GOTO 113
  IF ~~ THEN REPLY #66708 /* ~Pozostaw go jego rozmyślaniom.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #4904 /* ~"Witaj..." Człowiek zwraca ku tobie oblicze i chyli się w lekkim ukłonie. Nagle dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "Jam jest Soe. W czym mogę..." Soe nagle zauważa twoje blizny i kąciki jego ust poczynają nieznacznie drżeć. "Przepraszam, panie, nie poznałem... Czy zgubiłeś się?"~ */
  IF ~~ THEN REPLY #4905 /* ~"Tak."~ */ GOTO 40
  IF ~~ THEN REPLY #4906 /* ~"Nie."~ */ GOTO 41
  IF ~~ THEN REPLY #4907 /* ~"Nie, nie zgubiłem się. Mam kilka pytań..."~ */ GOTO 41
  IF ~~ THEN REPLY #4908 /* ~"Nie. Po prostu szukam wyjścia. Żegnaj."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #4909 /* ~"Dobrze więc..." Kąciki jego Soego poczynają znowu nieznacznie drżeć, jak gdyby w oczekiwaniu. "Pozwól, niechaj wezwę straże, aby cię stąd wyprowadziły." Wygląda na to, że zaraz zawoła straże.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4910 /* ~"Powstrzymaj się! Proszę... Nie ma potrzeby wzywać straży. Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy zechcesz wskazać mi drogę do wyjścia?"~ */ GOTO 8
  IF ~~ THEN REPLY #4911 /* ~"Nie. Nie zabłądziłem - Przejęzyczyłem się."~ */ GOTO 50
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4912 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4913 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 22
  IF ~~ THEN REPLY #4914 /* ~Odejdź. Jak najszybciej.~ */ GOTO 18
  IF ~~ THEN REPLY #4915 /* ~Poczekaj.~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 39.1 39.2 39.3
  SAY #4916 /* ~"Nie przypominam sobie, abym cię tutaj wpuszczał." Soe spogląda nie ciebie podejrzliwie, a jego oczy w blasku pochodni zdają się płonąć szkarłatem. "Czy wolno mi spytać, czego tutaj szukasz?~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4917 /* ~"Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy zechcesz wskazać mi drogę do wyjścia?"~ */ GOTO 8
  IF ~~ THEN REPLY #4918 /* ~"To nie twoja sprawa."~ */ GOTO 6
  IF ~~ THEN REPLY #4919 /* ~"Obudziłem się na jednym ze stołów w sali przygotowawczej."~ */ GOTO 42
  IF ~~ THEN REPLY #4920 /* ~"Mam się tutaj z kimś zobaczyć."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4921 /* ~"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."~ */ GOTO 53
  IF ~~ THEN REPLY #4922 /* ~Pochyl się ku niemu, niby chcąc szepnąć mu coś na ucho, a kiedy skłoni się ku tobie, skręć mu kark.~ */ GOTO 51
  IF ~~ THEN REPLY #4923 /* ~Odejdź. Jak najszybciej.~ */ GOTO 18
END

IF ~~ THEN BEGIN 42 // from: 41.2 50.2 115.0
  SAY #4924 /* ~Soe wydaje się zdumiony. "Twierdzisz, że... że obudziłeś, na którymś z katafalków na górze?"~ */
  IF ~~ THEN REPLY #4925 /* ~"Nie. Przejęzyczyłem się."~ */ GOTO 50
  IF ~~ THEN REPLY #4926 /* ~"Tak. Wiem, że trudno w to uwierzyć, ale to prawda, obudziłem się na jednym z katafalków na górze."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Soego_1","GLOBALLaw",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 43 // from: 41.3 50.3
  SAY #4927 /* ~Soe kiwa głową. "Z kim chcesz się tutaj spotkać? Powiedz tylko, a z ogromną przyjemnością wskażę ci drogę."~ */
  IF ~~ THEN REPLY #4928 /* ~"Nie twoja sprawa."~ */ GOTO 6
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #4929 /* ~"Mam się zobaczyć z Dhallem."~ */ GOTO 44
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4930 /* ~"Mam się zobaczyć z Deionarrą"~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Soego_Adahn","AR0201",0)
~ THEN REPLY #4931 /* ~Kłamstwo: "Uch... z Adahnem. Nadal tu pracuje, czy...?"~ */ DO ~SetGlobal("Soego_Adahn","AR0201",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Soego_Adahn","AR0201",1)
~ THEN REPLY #4932 /* ~Kłamstwo: "Uch... z Adahnem. Nadal tu pracuje, czy...?"~ */ GOTO 49
  IF ~~ THEN REPLY #4933 /* ~"Uch, z nikim. Przejęzyczyłem się."~ */ GOTO 50
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY #4934 /* ~"Z Dhallem? Skrybę Dhalla znajdziesz w komnacie odbiorczej na wyższym piętrze." Kąciki ust Soego poczynają nieznacznie drżeć, "Dhall jest wszakże osobą wielce zajętą, a poza tym jego zdrowie coraz częściej odmawia mu posłuszeństwa. Jeśli nie przyszedłeś ze sprawą nie cierpiącą zwłoki, nie radziłbym ci przeszkadzać mu w pracy."~ */
  IF ~~ THEN REPLY #4935 /* ~"Co dolega Dhallowi?"~ */ GOTO 46
  IF ~~ THEN REPLY #4936 /* ~"W komnacie odbiorczej?"~ */ GOTO 45
  IF ~~ THEN REPLY #4937 /* ~"Bardzo dobrze. Nie zabawię u niego zbyt długo. Bywaj zdrów."~ */ GOTO 62
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY #4938 /* ~"Tak... komnata odbiorcza to pomieszczenie, gdzie gromadzone są zwłoki przywożone z miasta. Tam się je spisuje i przygotowuje do pochówku."~ */
  IF ~~ THEN REPLY #4939 /* ~"Co dolega Dhallowi?"~ */ GOTO 46
  IF ~~ THEN REPLY #4940 /* ~"Dzięki za twoje instrukcje. Nie zabawię u niego zbyt długo. Bywaj zdrów."~ */ GOTO 62
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0
  SAY #4941 /* ~"O, nie. Nic mu nie dolega. Dhall jest po prostu..." Soe szczęka zębami. "...stary. Jego długa służba pełna poświęcenie sprawom ewidencjonowania zmarłych ma się już ku końcowi. Już wkrótce śmierć przyjdzie śladem wyniszczającej choroby czasu, która go toczy."~ */
  IF ~~ THEN REPLY #4942 /* ~"Bardzo dobrze. Nie zabawię u niego zbyt długo. Bywaj zdrów."~ */ GOTO 62
END

IF ~~ THEN BEGIN 47 // from: 43.2 53.2
  SAY #4943 /* ~"Deionarra? Kobieta o tym imieniu rzeczywiście spoczywa w północno-zachodniej sali pamięci. Czy to właśnie jej poszukujesz?"~ */
  IF ~~ THEN REPLY #4944 /* ~"Tak... Czy mógłbyś mi powiedzieć, co jej się przydarzyło?~ */ GOTO 48
  IF ~~ THEN REPLY #4945 /* ~"Tak. Teraz odejdę, aby oddać należny szacunek zmarłym."~ */ GOTO 62
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #4946 /* ~"Trudno mi powiedzieć, ale wiem, że jej szczątki spoczywają tutaj od dłuższego czasu. Jej ojciec na pewno będzie wiedział, co jej się przytrafiło... Schodzi tutaj tu często ze Wyższych Dzielnic. To wolą ojca Deionarry było, aby jego córka spoczęła w tej sali pamięci."~ */
  IF ~~ THEN REPLY #4947 /* ~"Dzięki za twoje instrukcje. Teraz odejdę, aby oddać należny szacunek zmarłym."~ */ GOTO 62
END

IF ~~ THEN BEGIN 49 // from: 43.3 43.4 53.3 53.4
  SAY #4948 /* ~"Adahn..." Oczy Soego zwężają się, a czerwony barwnik, który wcześniej w nich dostrzegłeś staje się jeszcze bardziej wyrazisty. "Nikt o takim imieniu nie zamieszkuje w komnatach Kostnicy, żywy czy też martwy." Kąciki ust twojego rozmówcy poczynają nieznacznie drżeć, i Grabarz, ku twojemu zdziwieniu, przez chwilę wciąga nozdrzami powietrze, jak węszące zwierzę.~ */
  IF ~~ THEN REPLY #4949 /* ~"Hm... Wobec tego musiałem się przejęzyczyć."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 40.1 42.0 43.5 49.0 53.1 57.1
  SAY #4950 /* ~Kąciki ust Soego znowu drżą a oczy rozbłyskują. "Więc, czego tutaj szukasz?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4951 /* ~"Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy zechcesz mi wskazać drogę do wyjścia?"~ */ GOTO 8
  IF ~~ THEN REPLY #4952 /* ~"Nie twoja sprawa."~ */ GOTO 6
  IF ~~ THEN REPLY #4953 /* ~"Obudziłem się na jednym ze stołów w sali przygotowawczej."~ */ GOTO 42
  IF ~~ THEN REPLY #4954 /* ~"Mam się tutaj z kimś zobaczyć."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4955 /* ~"Przybyłem tu na ceremonię pochówku."~ */ GOTO 53
  IF ~~ THEN REPLY #4956 /* ~Pochyl się ku niemu, niby chcąc szepnąć mu coś na ucho, a kiedy skłoni się ku tobie, skręć mu kark.~ */ GOTO 51
  IF ~~ THEN REPLY #5028 /* ~Uciekaj.~ */ GOTO 18
END

IF ~~ THEN BEGIN 51 // from: 41.5 50.5 53.5
  SAY #4957 /* ~Soe marszczy brwi, kiedy się doń zbliżasz, a wtedy zauważasz, że Grabarz wciąga nozdrzami powietrze, jakby coś w nim badał. Jego oczy nagle zwężają się i wygląda na to, że zaraz zawoła straże.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4958 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4959 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #4960 /* ~Kiedy próbujesz rzucić się na niego, Soe cofa się ze szkarłatnym błyskiem w oczach i odsłania zęby. Wydobywszy z siebie stłumiony syk, trzykrotnie donośnie klaszcze w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #4961 /* ~"No dobrze..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.4 50.4
  SAY #4962 /* ~"Kto miał zostać pochowany? Być może posługi te odbywają się w innym miejscu Kostnicy."~ */
  IF ~~ THEN REPLY #4963 /* ~"Źle mnie zrozumiałeś... To JA miałem być pochowany."~ */ GOTO 57
  IF ~~ THEN REPLY #4964 /* ~"Wybacz... Przejęzyczyłem się. Nie znam imienia zmarłego."~ */ GOTO 50
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4965 /* ~"To imię to Deionarra."~ */ GOTO 47
  IF ~  Global("Soego_Adahn","AR0201",0)
~ THEN REPLY #4967 /* ~Kłamstwo: "To imię to... hm... Adahn."~ */ DO ~SetGlobal("Soego_Adahn","AR0201",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  Global("Soego_Adahn","AR0201",1)
~ THEN REPLY #4968 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 49
  IF ~~ THEN REPLY #4969 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 51
  IF ~~ THEN REPLY #4970 /* ~Uciekaj.~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 7.0 25.0
  SAY #4966 /* ~"Hm..." Soe spogląda przez zmrużone oczy. Twoje słowa wprawiły go w zakłopotanie. "Naturalnie doszło do pomyłki. Przywieźli cię tutaj albo twoi krewniacy, albo inni Grabarze, albo też..." Soe syczy gwałtownie, jakby przez jego umysł przebiegła wyjątkowo odrażająca myśl. "Albo też któryś ze Zbieraczy."~ */
  IF ~~ THEN REPLY #4971 /* ~"Ze Zbieraczy?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #4972 /* ~"Tak, Zbieracze... Bandy padlinożerców, którzy przywożą do nas ciała zmarłych. Pewnie sądzili, że jesteś martwy..." Soe syczy, a jego oczy rozbłyskują ponuro "...A Zbieracze to istoty tak oślepione nikczemnym blaskiem miedziaków, że nikomu z nich nie chciało się nawet sprawdzić przed przywiezieniem cię tutaj, czy jesteś całkiem martwy." Soe w zadumie studiuje twoją postać. "To duże szczęście, że się tutaj ocknąłeś. Inaczej spotkałbyś Prawdziwą Śmierć wcześniej, niżeli ci to było sądzone."~ */
  IF ~~ THEN REPLY #4973 /* ~"Wobec tego faktycznie doszło do grubego nieporozumienia. Dlatego chcę już opuścić to miejsce. Jak najszybciej."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0 59.1
  SAY #4974 /* ~Soe kiwa głową, a kąciki jego ust poczynają nieznacznie drżeć. "Ależ oczywiście, oczywiście. Pozwolisz, że otworzę ci frontową bramę."~ */
  IF ~  HasItem("KeyMo",Myself)
~ THEN REPLY #4975 /* ~"W porządku."~ */ DO ~AddexperienceParty(500)
SetGlobal("Gate_Open","GLOBAL",1)
SetGlobal("Gate_Cut_Scene","AR0201",1)
StartCutSceneMode()
StartCutSceneEx("0201cut1",FALSE)
~ EXIT
  IF ~  !HasItem("KeyMo",Myself)
~ THEN REPLY #4976 /* ~"W porządku."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 53.0
  SAY #4977 /* ~"Ty?"~ */
  IF ~~ THEN REPLY #4978 /* ~"Tak, ja. Obudziłem się na jednym z twoich katafalków na górze."~ */ GOTO 7
  IF ~~ THEN REPLY #4979 /* ~"Przepraszam... Przejęzyczyłem się."~ */ GOTO 50
END

IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Gate_Open","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #4980 /* ~Kiedy się przybliżasz, Soe pociąga nozdrzami powietrze i podnosi oczy. Kiedy dostrzega cię, marszczy brwi w poirytowaniu. "Przecie otworzyłem ci bramę! Co tutaj jeszcze robisz?"~ */
  IF ~~ THEN REPLY #4981 /* ~"Chcę o coś spytać przed odejściem."~ */ GOTO 26
  IF ~~ THEN REPLY #4982 /* ~"Kieruję się teraz ku bramie. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Soego","GLOBAL",1)
Global("Gate_Open","GLOBAL",0)
~ THEN BEGIN 59 // from:
  SAY #4983 /* ~Kiedy się przybliżasz, Soe chłonie nozdrzami powietrze i podnosi oczy. Kiedy dostrzega cię, pochyla się nieznacznie "Czyż znalazłeś, to czego szukałeś?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4984 /* ~"Tak, dziękuję. Wybacz, błąkam się w tych pomieszczeniach... Czy zechcesz wskazać mi drogę do wyjścia?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4985 /* ~"Tak, chcę teraz odejść. Czy zechcesz wskazać mi drogę do wyjścia?"~ */ GOTO 56
  IF ~~ THEN REPLY #4986 /* ~"Kieruję się teraz ku bramie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #4987 /* ~Soe kiwa głową, kąciki jego ust poczynają nieznacznie drżeć. "Cóż, naturalnie, te wnętrza mogą budzić mieszane uczucia u gości. Pozwolisz, że otworzę ci frontową bramę."~ */
  IF ~  HasItem("KeyMo",Myself)
~ THEN REPLY #4988 /* ~"Dziękuję."~ */ DO ~AddexperienceParty(500)
SetGlobal("Gate_Open","GLOBAL",1)
SetGlobal("Gate_Cut_Scene","AR0201",1)
StartCutSceneMode()
StartCutSceneEx("0201cut1",FALSE)
~ EXIT
  IF ~  !HasItem("KeyMo",Myself)
~ THEN REPLY #4989 /* ~"Dziękuję."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 13.2
  SAY #4990 /* ~"To nad wyraz osobliwe." Oczy Soego rozbłyskują czerwienią, a kąciki jego ust poczynają nieznacznie drżeć, jak gdyby w oczekiwaniu. "Zatem..." Na jego twarz wstępuje złośliwy uśmieszek, w którym odsłania rząd ostrych, brudnych zębów. "Zatem może powinienem zawołać straże...? O tak, sądzę, że tak właśnie uczynię."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4991 /* ~"Poczekaj. Zgubiłem się tutaj... Po prostu błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz wskazać mi drogę do wyjścia?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4992 /* ~"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy możesz mi w tym pomóc?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4993 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4994 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 22
  IF ~~ THEN REPLY #4995 /* ~"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"~ */ GOTO 18
END

IF ~~ THEN BEGIN 62 // from: 44.2 45.1 46.0 47.1 48.0
  SAY #4996 /* ~Soe kiwa głową, a jego usta znowu poczynają drżeć. Zapewne nie jest nawet tego świadom. "Tedy wracaj do świata żywych, jak tylko oddasz szacunek swym zmarłym. Otworzę ci frontową bramę. Jest już po dziewiątym dzwonie, więc powinieneś opuścić to miejsce zaraz po tym, jak załatwisz tutaj swoje sprawy."~ */
  IF ~~ THEN REPLY #4997 /* ~"Wiesz co, może innym razem? A teraz już wypuścisz mnie?"~ */ GOTO 8
  IF ~~ THEN REPLY #4998 /* ~"Dziękuję. Nie omieszkam tu powrócić."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR1500")
!Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #21653 /* ~"O, kolejny przybysz ze świata żywych. Większość z was pada ofiarą ghuli. Ale żeby aż tak daleko zapuścić się w katakumby? Proszę, proszę. Miałeś dużo szczęścia, śmiałku."~ */
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #21655 /* ~"Tyś jest Soe, człowiek z Kostnicy. Co robisz w tych okolicach?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21656 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 64
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21657 /* ~"Gdzie ja jestem?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 77
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21658 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 78
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21660 /* ~"Być może. Żegnaj."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 71
END

IF ~~ THEN BEGIN 64 // from: 63.1 77.0 78.0
  SAY #21661 /* ~"Jam jest Soe, faktotum Grabarzy. Jestem misjonarzem w tych okolicach." Oddaje ci lekki ukłon.~ */
  IF ~~ THEN REPLY #21662 /* ~"Misjonarzem?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21663 /* ~"A co tutaj robią Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #64595 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64596 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21665 /* ~"Witaj i żegnaj."~ */ GOTO 71
END

IF ~~ THEN BEGIN 65 // from: 64.0 72.2 73.2 74.0 101.3 104.1
  SAY #21666 /* ~"Tak, przybyłem do tych katakumb, kiedy doszły mnie pogłoski o nieumarłych, którzy zachowali świadomość swego żywota i błąkają się w tych okolicach. Moja rola to próbować ich ocalić."~ */
  IF ~~ THEN REPLY #21667 /* ~"Ocalić?"~ */ GOTO 67
  IF ~~ THEN REPLY #64597 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64599 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21669 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 66 // from: 64.1 72.3 73.3 74.1 101.4 104.2 109.2
  SAY #21670 /* ~"Działam w pojedynkę. Przybyłem do tych katakumb, kiedy doszły mnie pogłoski o nieumarłych, którzy zachowali świadomość swego żywota i błąkają się w tych okolicach Moja rola to próbować ich ocalić."~ */
  IF ~~ THEN REPLY #21671 /* ~"Ocalić?"~ */ GOTO 67
  IF ~~ THEN REPLY #64600 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64601 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21673 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #21674 /* ~"Tak, zgubne żądze przywiązują ich do tego fałszywego żywota. Ja zaś chcę nauczyć ich sztuki poświęcenia tych namiętności i odrzucenia fałszywego bytu dla chwały spotkania z Prawdziwą Śmiercią."~ */
  IF ~~ THEN REPLY #21675 /* ~"Fałszywego żywota?"~ */ GOTO 68
  IF ~~ THEN REPLY #21676 /* ~"Prawdziwą Śmiercią?"~ */ GOTO 69
  IF ~~ THEN REPLY #21767 /* ~"A więc pragniesz, aby oni umarli?"~ */ GOTO 70
  IF ~~ THEN REPLY #64602 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64603 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21770 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 68 // from: 67.0 69.0 70.0
  SAY #21771 /* ~"Ci... martwi... Są tak bliscy Prawdziwej Śmierci... Wszelako wciąż kurczowo trzymają się śladów życia. Ten kłamliwy byt skrywa wielką prawdę o istnieniu w tej sferze."~ */
  IF ~~ THEN REPLY #21772 /* ~"Prawdziwej Śmierć?"~ */ GOTO 69
  IF ~~ THEN REPLY #21774 /* ~"A więc pragniesz, aby oni umarli?"~ */ GOTO 70
  IF ~~ THEN REPLY #64604 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64605 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21776 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0 70.1
  SAY #21777 /* ~"To kompletne oczyszczenie ze wszelkich żądz. Prawdziwa Śmierć to prawdziwe życie, poza tym cieniem egzystencji. Ci martwi muszą ku niej sięgnąć, by się uwolnić."~ */
  IF ~~ THEN REPLY #21779 /* ~"Co rozumiesz przez 'fałszywy żywot', o którym wspomniałeś?"~ */ GOTO 68
  IF ~~ THEN REPLY #21780 /* ~"A więc pragniesz, aby oni umarli?"~ */ GOTO 70
  IF ~~ THEN REPLY #64606 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64607 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21784 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 67.2 68.1 69.1
  SAY #21786 /* ~"Moim zadaniem jest pomóc im w wyjściu poza sferę doczesnej egzystencji i w wyrzeczeniu się wszelkich żądz. To może ich ocalić."~ */
  IF ~~ THEN REPLY #21788 /* ~"Co rozumiesz przez 'fałszywy żywot', o którym wspomniałeś?"~ */ GOTO 68
  IF ~~ THEN REPLY #21790 /* ~"Mówiłeś coś o 'Prawdziwej Śmierci'?"~ */ GOTO 69
  IF ~~ THEN REPLY #64608 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64609 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21794 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
  SAY #21799 /* ~"Poświęć mi jeszcze krótką chwilę, zanim odejdziesz. Nie próbuj atakować żadnego z nieumarłych, jakiego napotkasz w tych katakumbach. Przekonałem ich, by aby ani tobie, ani żadnemu z twoich towarzyszy nie uczynili żadnej krzywdy, tak więc paktu tego nie próbuj łamać i nie nastawaj na ich życie. Wiedz, że oni potrafią się obronić i jest ich... niemało. Na koniec możesz wrócić tutaj, jeżeli przyjdzie ci ochota na odpoczynek."~ */
  IF ~  NumInParty(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #21800 /* ~"Poczekaj... Czy mogę teraz odpocząć?"~ */ JOURNAL #21805 /* ~Soe powiedział, abym nie atakował żadnych mieszkańców Ziem Umarłych, gdyż nie skrzywdzą mnie tak długo, dopóki sam będę zachowywał się pokojowo.~ */ GOTO 84
  IF ~  NumInPartyGT(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #64569 /* ~"Poczekaj... Czy możemy teraz odpocząć?"~ */ JOURNAL #21805 /* ~Soe powiedział, abym nie atakował żadnych mieszkańców Ziem Umarłych, gdyż nie skrzywdzą mnie tak długo, dopóki sam będę zachowywał się pokojowo.~ */ GOTO 84
  IF ~~ THEN REPLY #64570 /* ~Odejdź.~ */ JOURNAL #21805 /* ~Soe powiedział, abym nie atakował żadnych mieszkańców Ziem Umarłych, gdyż nie skrzywdzą mnie tak długo, dopóki sam będę zachowywał się pokojowo.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.0
  SAY #21806 /* ~"Twoja pamięć cię nie zawodzi. Ja już wszakże nie stacjonuję w Kostnicy. Jestem w tych okolicach misjonarzem."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64547 /* ~"Ale wydawało mi się, że złamałem ci kark..."~ */ GOTO 73
  IF ~  Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #21808 /* ~"Ale zdawało mi się, że cię *zabiłem*..."~ */ GOTO 73
  IF ~~ THEN REPLY #21809 /* ~"Misjonarzem?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21811 /* ~"A co tutaj robią Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #64610 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64611 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21813 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 109.0 109.1
  SAY #21814 /* ~"Rana, jaką mi zadałeś, nie należała do śmiertelnych. Szybko wróciłem do sił... I stwierdziłem, że chciałbym oddalić się od Kostnicy."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
~ THEN REPLY #21815 /* ~"Soe. Złamałem ci kark... to nie był cios śmiertelny?"~ */ GOTO 101
  IF ~~ THEN REPLY #21816 /* ~"Nie chowasz do mnie urazy?"~ */ GOTO 74
  IF ~~ THEN REPLY #21817 /* ~"Hmm. Więc powiadasz, że jesteś misjonarzem?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21818 /* ~"Dobrze zatem. Czego więc szukają tutaj Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #64612 /* ~"No dobrze... Więc gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64613 /* ~"Ach tak. Ale dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21820 /* ~"Zapomnij o tym. To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 74 // from: 73.1 101.2 104.0
  SAY #21821 /* ~"Nie... a czy powinienem? Jestem nieco rozczarowany, że nie było mi dane opuścić tego miejsca. Tak czy siak, nie radziłbym ci wracać do Kostnicy, albowiem wielu moich towarzyszy - faktotumów nie byłoby zachwyconych twoim widokiem."~ */
  IF ~~ THEN REPLY #64614 /* ~"Powiadasz, że jesteś misjonarzem?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21823 /* ~"A co tutaj robią Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #64615 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #64616 /* ~"Dlaczego uczyniono ze mnie tutaj więźnia?"~ */ GOTO 78
  IF ~~ THEN REPLY #21825 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 75 // from:
  SAY #21716 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #21832 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from: 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
  SAY #21837 /* ~"Znajdujesz w katakumbach Ziem Umarłych. Przyprowadziły cię tutaj straże."~ */
  IF ~~ THEN REPLY #21840 /* ~"Kim jesteś?"~ */ GOTO 64
  IF ~~ THEN REPLY #21841 /* ~"Dlaczego jestem tutaj więźniem?"~ */ GOTO 78
  IF ~~ THEN REPLY #21843 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 78 // from: 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
  SAY #21844 /* ~"Nie wiem. Spytaj któregoś z obywateli."~ */
  IF ~~ THEN REPLY #21847 /* ~"Kim jesteś?"~ */ GOTO 64
  IF ~~ THEN REPLY #21848 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #21850 /* ~"Być może. Póki co, bywaj zdrów."~ */ GOTO 71
END

IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */
~  CreatureInArea("AR1500")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 79 // from:
  SAY #21851 /* ~"O, zdaje się, że mamy nowego sprzymierzeńca! Ja, pełniący zaszczytną funkcję agenta Wielojedności, miałem informacje o twoim przybyciu. Chcemy, abyś spróbował odszukać drogę do sali tronowej Milczącego Króla, a uczyniwszy to, zakradł się i zgładził monarchę. Jeżeli ci się to uda, Jego Wielojedność nie omieszka cię wynagrodzić."~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
GlobalGT("Soego","GLOBAL",0)
GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #66181 /* ~"Soe... Emorik pytał o miejsce twojego pobytu."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 110
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Soego","GLOBAL",0)
~ THEN REPLY #21852 /* ~"Poczekaj? Czyś ty nie jest Soe? Emorik wypytywał o ciebie."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ JOURNAL #21856 /* ~Znalazłem Soego. Został zarażony likantropią, która przywiodła go do katakumb. Jego umysł nie należał już do niego, a jego poglądy Grabarza zniknęły.~ */ GOTO 110
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64623 /* ~"Poczekaj chwilę... Czy ja przypadkiem nie złamałem ci karku w Kostnicy?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 112
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64624 /* ~"Poczekaj chwilę... Wydawało mi się, że cię *zabiłem* w Kostnicy..."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 112
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
!Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21853 /* ~"Jak mogę trafić do Milczącego Króla?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ JOURNAL #21857 /* ~Soe powiedział mi, że nie wie jak się dostać do sali tronowej Milczącego Króla. Będę to jednak musiał uczynić, jeśli zamierzam zabić władcę.~ */ GOTO 80
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
!Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21854 /* ~"Ach tak. W takim razie żegnaj."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 71
END

IF ~~ THEN BEGIN 80 // from: 79.4 110.2 112.0
  SAY #21858 /* ~"Nie wiem. Mieszkam w tych okolicach już od pewnego czasu, ale wciąż nie potrafię znaleźć drogi do jego sali tronowej. Może ty będziesz miał więcej szczęścia, bowiem nie dźwigasz brzemienia nienawiści i dewocji, o jakie mnie się posądza."~ */
  IF ~~ THEN REPLY #21860 /* ~"Brzemienia nienawiści i dewocji?"~ */ GOTO 81
  IF ~~ THEN REPLY #21862 /* ~"Ach tak. W takim razie żegnaj."~ */ GOTO 71
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #21864 /* ~"Poglądy mojej frakcji bywają popularne, choć nie wszystkie z nich, i nie pośród wszystkich. Większość poważniejszych osobistości tej cywilizacji nie podpisuje się pod nimi."~ */
  IF ~~ THEN REPLY #21870 /* ~"Ach tak. W takim razie żegnaj."~ */ GOTO 71
END

IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */
~  CreatureInArea("AR1500")
Global("Met_Soego2","GLOBAL",1)
~ THEN BEGIN 82 // from:
  SAY #21913 /* ~"Och, witaj ponownie."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Soego_Told","GLOBAL",0)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24206 /* ~"Milczący Król nie żyje i to już od pewnego czasu. Nie ma już Milczącego Króla."~ */ DO ~SetGlobal("Soego_Told","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 94
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Soego_Told","GLOBAL",0)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21915 /* ~"Milczący Król nie żyje i to już od pewnego czasu. Nie ma już Milczącego Króla."~ */ DO ~SetGlobal("Soego_Told","GLOBAL",1)
~ JOURNAL #21926 /* ~Pokazałem Soemu, że znam treść jego dziennika, a on zmienił się szczurołaka i zaatakował mnie.~ */ GOTO 94
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #21914 /* ~"Czyś ty nie jest Soe? Emorik wypytywał o ciebie."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
~ GOTO 109
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21916 /* ~"Byłem w twojej komnacie i przeglądałem twój pamiętnik."~ */ DO ~SetGlobal("Soego_Fled","GLOBAL",1)
Enemy()
~ JOURNAL #21926 /* ~Pokazałem Soemu, że znam treść jego dziennika, a on zmienił się szczurołaka i zaatakował mnie.~ */ GOTO 100
  IF ~  Global("Doubtful_Skel","GLOBAL",1)
~ THEN REPLY #21917 /* ~"W jednej z sal tutaj widziałem kościotrupa. Sprawiał wrażenie kogoś, kto jest o krok od spotkania z Prawdziwą Śmiercią."~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",2)
SetGlobal("Visit_Doubtful","AR1500",1)
~ GOTO 97
  IF ~  NumInParty(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #21920 /* ~"Muszę odpocząć."~ */ GOTO 84
  IF ~  NumInPartyGT(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #21922 /* ~"Musimy odpocząć."~ */ GOTO 84
  IF ~~ THEN REPLY #21924 /* ~"Mam kilka pytań..."~ */ GOTO 83
  IF ~~ THEN REPLY #21925 /* ~"Akurat przechodziłem tędy. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
  SAY #21943 /* ~"O ile tylko będę mógł, odpowiem na wszystkie pytania."~ */
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21944 /* ~"Opowiedz mi o Hargrimmie."~ */ GOTO 88
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #21945 /* ~"Opowiedz mi o Akaście."~ */ GOTO 89
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21946 /* ~"Opowiedz mi o Czerstwej Mary."~ */ GOTO 90
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21947 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 91
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #21948 /* ~"Co możesz mi powiedzieć o tej, jak to ująłeś, 'cywilizacji'?"~ */ GOTO 92
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #21949 /* ~"Co możesz mi powiedzieć o tej, jak to ująłeś, 'cywilizacji'?"~ */ GOTO 93
  IF ~~ THEN REPLY #21951 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 71.0 71.1 82.5 82.6
  SAY #21954 /* ~"Oczywiście. Możesz odpocząć w tej komnacie. Będziesz bezpieczny."~ */
  IF ~~ THEN REPLY #21956 /* ~"Dzięki..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #21958 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21963 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #21969 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88 // from: 83.0 91.0
  SAY #21975 /* ~"Wielki uparciuch, ale godny podziwu w swojej pobożności i poświęceniu obowiązkom. To mój główny rywal. To on utrzymywał tę cywilizację w ryzach przez wiele lat. Jego namiętności biorą swoje źródło z pobożności i bezgranicznym oddaniu służbie... Wartości godne uszanowania, chociaż niewłaściwie ulokowane."~ */
  IF ~~ THEN REPLY #21976 /* ~"Mam kilka innych pytań."~ */ GOTO 83
  IF ~~ THEN REPLY #21977 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.1
  SAY #21978 /* ~"Akasta to brutalna istota. Chyba tylko Milczący Król ma nad nią władzę. Gdyby więc usunąć monarchę, ghule wezmą w swoje dzikie władanie całe katakumby."~ */
  IF ~~ THEN REPLY #21979 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #21980 /* ~"Mam kilka innych pytań.."~ */ GOTO 83
  IF ~~ THEN REPLY #21981 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 83.2
  SAY #21982 /* ~"Czerstwa Mary to stworzenie o dobrym sercu, choć wielce powolne. Niewiele można pojąć z tego, co Mary rzecze, ale i ona, i inne zombie, dalecy są od gwałtowności."~ */
  IF ~~ THEN REPLY #21983 /* ~"Mam kilka innych pytań.."~ */ GOTO 83
  IF ~~ THEN REPLY #21984 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 83.3 89.0
  SAY #21985 /* ~"Nigdy w życiu nie widziałem Milczącego Władcy. Bardzo chciałbym móc powiedzieć ci coś o nim, ale naprawdę nigdy go nie spotkałem. Jego sala tronowa przypuszczalnie znajduje się gdzieś za karmazynowymi wrotami, lecz ja nie mam poza nie wstępu... Hargrimm, kapłan-szkielet, nie zezwala mi na to."~ */
  IF ~~ THEN REPLY #21986 /* ~"Opowiedz mi o Hargrimmie."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 88
  IF ~~ THEN REPLY #21987 /* ~"Mam kilka innych pytań..."~ */ GOTO 83
  IF ~~ THEN REPLY #21988 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 83.4
  SAY #21989 /* ~"Są tutaj od wielu stuleci, zajmując się tymi, którzy zmarli w ich komnatach. Ale tak bezgraniczne oddanie służbie nie jest już konieczne... To niemal zbrodnia."~ */
  IF ~~ THEN REPLY #21990 /* ~"Mam kilka innych pytań.."~ */ GOTO 83
  IF ~~ THEN REPLY #21991 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 83.5
  SAY #21992 /* ~"Są tutaj od wielu stuleci, zajmując tymi, którzy zmarli w ich komnatach. Ale tak bezgraniczne oddanie służbie nie jest już konieczne... To niemal zbrodnia."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 220
END

IF ~~ THEN BEGIN 94 // from: 82.0 82.1
  SAY #21993 /* ~"Co? Czy to prawda? Och, jeśli tak jest, bądź pewien, że Wielojedność nagrodzi cię za takie nowiny."~ */
  IF ~  !Global("CR_Vic","GLOBAL",1)
Global("Know_Many","GLOBAL",0)
~ THEN REPLY #25248 /* ~"Wielojedność?"~ */ JOURNAL #25254 /* ~Powiedziałem Soemu, że Milczący Król nie jest już niczym więcej aniżeli pomarszczonymi zwłokami. Stwierdził, że powinienem powiadomić o tym Wielojedność, i że zostanę za to nagrodzony. Wielojedność to zbiorowa świadomość czaszkoszczurów w Labiryntach Myśli, na południe od katakumb Łkających Kamieni.~ */ GOTO 111
  IF ~  !Global("CR_Vic","GLOBAL",1)
Global("Know_Many","GLOBAL",1)
~ THEN REPLY #25252 /* ~"Interesujące. Mam kilka pytań..."~ */ JOURNAL #25254 /* ~Powiedziałem Soemu, że Milczący Król nie jest już niczym więcej aniżeli pomarszczonymi zwłokami. Stwierdził, że powinienem powiadomić o tym Wielojedność, i że zostanę za to nagrodzony. Wielojedność to zbiorowa świadomość czaszkoszczurów w Labiryntach Myśli, na południe od katakumb Łkających Kamieni.~ */ GOTO 83
  IF ~  !Global("CR_Vic","GLOBAL",1)
Global("Know_Many","GLOBAL",1)
~ THEN REPLY #25253 /* ~"Być może. Póki co, bywaj zdrów."~ */ JOURNAL #25254 /* ~Powiedziałem Soemu, że Milczący Król nie jest już niczym więcej aniżeli pomarszczonymi zwłokami. Stwierdził, że powinienem powiadomić o tym Wielojedność, i że zostanę za to nagrodzony. Wielojedność to zbiorowa świadomość czaszkoszczurów w Labiryntach Myśli, na południe od katakumb Łkających Kamieni.~ */ EXIT
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21994 /* ~"Dobrze. Mam kilka pytań."~ */ JOURNAL #21996 /* ~Powiedziałem Soemu, że Milczący Król nie jest już niczym więcej aniżeli pomarszczonymi zwłokami. Będę musiał osobiście poinformować o tym Wielojedność gdy tylko nadarzy się okazja.~ */ GOTO 83
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21995 /* ~"Zatem sam mu o tym powiem. Żegnaj."~ */ JOURNAL #21996 /* ~Powiedziałem Soemu, że Milczący Król nie jest już niczym więcej aniżeli pomarszczonymi zwłokami. Będę musiał osobiście poinformować o tym Wielojedność gdy tylko nadarzy się okazja.~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR1500")
GlobalGT("Soego_Exposed","GLOBAL",0)
~ THEN BEGIN 95 // from:
  SAY #21997 /* ~"Ach ty... łotrze!"~ */
  IF ~~ THEN REPLY #21998 /* ~"Co się...?"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #22003 /* ~"Eee... te drzwi prowadzą do moich prywatnych komnat. Proszę, abyś tam nie zaglądał."~ */
  IF ~~ THEN REPLY #22004 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 82.4
  SAY #22005 /* ~"Och! Zaraz pójdę z nim pomówić."~ */
  IF ~~ THEN REPLY #22006 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #22007 /* ~"Nie, jestem w drodze."~ */
  IF ~~ THEN REPLY #22008 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22009 /* ~"Nie, niestety nie. Ale może się pojawić w pobliżu."~ */
  IF ~~ THEN REPLY #22010 /* ~"Ach tak. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 82.3
  SAY #22011 /* ~Soe przerywa na chwilę. "Ach tak." Nagle zaczyna przechodzić przerażającą przemianę...~ */
  IF ~~ THEN REPLY #22012 /* ~"Co się...?"~ */ DO ~ClearAllActions()
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 73.0
  SAY #22014 /* ~"Ech... Twoja pamięć cię zawodzi. Uszkodziłeś mi szyję, to prawda, skręciłeś. Ale żeby złamać? Nic z tych rzeczy."~ */
  IF ~  !Global("Lawful_Soego_1","GLOBAL",1)
~ THEN REPLY #22015 /* ~"Pozwolę sobie mieć inne zdanie w tej materii. Czym ty jesteś, Soe?"~ */ GOTO 106
  IF ~  Global("Lawful_Soego_1","GLOBAL",1)
~ THEN REPLY #22016 /* ~"Pozwolę sobie mieć inne zdanie w tej materii. Czym ty jesteś, Soe?"~ */ GOTO 103
  IF ~~ THEN REPLY #22018 /* ~"Nie chowasz do mnie urazy?"~ */ GOTO 74
  IF ~~ THEN REPLY #22019 /* ~"Powiedziałeś, że jesteś misjonarzem?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #22020 /* ~"A co tutaj robią Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #22022 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22023 /* ~Grabarz uwalnia się ze twojego uścisku z nadnaturalną szybkością. Złośliwie chichocząc i spluwając syczy "Atakować agenta zbiorowej jaźni czaszkoszczurów! Jakaż to głupota z twojej strony!" Nagle zaczyna gwałtowną przemianę...~ */
  IF ~~ THEN REPLY #22024 /* ~"Co się...?"~ */ DO ~SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Fled","GLOBAL",2)
Enemy()
~ JOURNAL #21856 /* ~Znalazłem Soego. Został zarażony likantropią, która przywiodła go do katakumb. Jego umysł nie należał już do niego, a jego poglądy Grabarza zniknęły.~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 101.1
  SAY #22026 /* ~"Śmieszne pytanie! Obudziłeś się na katafalku przedpogrzebowym, w Kostnicy. Sam mi to powiedziałaś. Rzecz jasna, moja rana nie mogła wyglądać gorzej niżeli twoje obrażenia, które sprawiły, że Zbieracze wzięli cię za trupa, czyż nie?"~ */
  IF ~~ THEN REPLY #22027 /* ~"To bliskie prawdy, ale... mniejsza o to."~ */ GOTO 104
  IF ~~ THEN REPLY #22028 /* ~"Mój stan jest... unikalny."~ */ GOTO 105
  IF ~~ THEN REPLY #22029 /* ~"Nie. Coś tutaj jest nie tak, i wkrótce dojdę do tego, co to jest."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.2 105.0 105.1 106.1 107.0
  SAY #22032 /* ~Soe wzrusza ramionami. "Bardzo dobrze."~ */
  IF ~~ THEN REPLY #22033 /* ~"Nie chowasz do mnie urazy za to, co się stało?"~ */ GOTO 74
  IF ~~ THEN REPLY #22034 /* ~"Powiadasz, że jesteś misjonarzem?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #22035 /* ~"Więc co tutaj robią Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #22038 /* ~"Teraz już czas na mnie. Żegnaj."~ */ GOTO 71
END

IF ~~ THEN BEGIN 105 // from: 103.1
  SAY #22039 /* ~Soe uśmiecha się. "Każdy jest unikalny. Każdy, bez wyjątku. Chyba temu nie zaprzeczysz?"~ */
  IF ~~ THEN REPLY #22040 /* ~"To bliskie prawdy, ale... mniejsza o to."~ */ GOTO 104
  IF ~~ THEN REPLY #22041 /* ~"Nie. Coś tutaj jest nie tak, i wkrótce dojdę do tego, co to jest."~ */ GOTO 104
END

IF ~~ THEN BEGIN 106 // from: 101.0
  SAY #22043 /* ~"Czym ja jestem? A cóż to znowu za zapytanie?"~ */
  IF ~~ THEN REPLY #22044 /* ~"Usłyszałeś mnie. Nie jesteś zwykłym Grabarzem... Czym ty jesteś, Soe?"~ */ GOTO 107
  IF ~~ THEN REPLY #22045 /* ~"Mniejsza o to."~ */ GOTO 104
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #22047 /* ~Soe krzywi się z niesmakiem "Naprawdę nie wiem, o co ci chodzi."~ */
  IF ~~ THEN REPLY #22048 /* ~"Nie. Coś tutaj jest nie tak, i wkrótce dojdę do tego, co to jest."~ */ GOTO 104
END

IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5)
GlobalLT("Soego","GLOBAL",3)
!Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 108 // from:
  SAY #22050 /* ~"O, kolejny przybysz ze świata żywych. Większość z was pada ofiarą ghuli. Ale żeby aż tak daleko zapuścić się w katakumby? Proszę, proszę. Miałeś dużo szczęścia, śmiałku."~ */
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #22051 /* ~"Czyś ty nie jest Soe? Emorik wypytywał o ciebie."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ JOURNAL #22052 /* ~Znalazłem Soego. Odkrył grupę nieumarłych strażników, którzy pilnują katakumb. Próbuje ich przekonać by przyjęli Prawdziwą Śmierć.~ */ GOTO 109
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #66173 /* ~"Soe... Emorik pytał o miejsce twojego pobytu."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 82.2 108.0 108.1
  SAY #22053 /* ~"Tak, to ja. Pełnie tutaj obowiązki misjonarza z ramienia Grabarzy."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64617 /* ~"No dobrze. Ale... Sądziłem, że złamałem ci kark..."~ */ GOTO 73
  IF ~  Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64618 /* ~"Dobrze. Ale... Wydawało mi się, że cię *zabiłem*..."~ */ GOTO 73
  IF ~~ THEN REPLY #22054 /* ~"Czy są tutaj też inni Grabarze?"~ */ GOTO 66
  IF ~~ THEN REPLY #50792 /* ~"Gdzie ja jestem?"~ */ GOTO 77
  IF ~~ THEN REPLY #50793 /* ~"Dlaczego jestem tutaj więźniem?~ */ GOTO 78
  IF ~~ THEN REPLY #22056 /* ~"Teraz Czas już na mnie. Żegnaj."~ */ GOTO 71
END

IF ~~ THEN BEGIN 110 // from: 79.0 79.1
  SAY #22057 /* ~"Tak, to ja."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64625 /* ~"Poczekaj chwilę... Czy ja przypadkiem nie złamałem ci karku w Kostnicy?"~ */ GOTO 112
  IF ~  Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64626 /* ~"Poczekaj chwilę... Wydawało mi się, że cię *zabiłem* w Kostnicy..."~ */ GOTO 112
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22058 /* ~"Dobrze. Ale jak można się dostać do Milczącego Króla?"~ */ JOURNAL #21857 /* ~Soe powiedział mi, że nie wie jak się dostać do sali tronowej Milczącego Króla. Będę to jednak musiał uczynić, jeśli zamierzam zabić władcę.~ */ GOTO 80
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22060 /* ~"Dobrze. Bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 111 // from: 94.0
  SAY #25249 /* ~"Owszem, zbiorowa jaźń czaszkoszczurów. Idź do katakumb, na wschód od Łkających Kamieni. Tam znajdziesz drogę."~ */
  IF ~~ THEN REPLY #25250 /* ~"Interesujące. Mam kilka pytań..."~ */ GOTO 83
  IF ~~ THEN REPLY #25251 /* ~"Być może. Póki co, bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 79.2 79.3 110.0 110.1
  SAY #64620 /* ~Soe macha ręką z lekceważeniem. "Ależ to nic! To był dla mnie zupełny drobiazg! Musisz wiedzieć, że spoczywa na mnie likantropiczne błogosławieństwo. Wszystkie rany goją się w mgnieniu oka."~ */
  IF ~~ THEN REPLY #64621 /* ~"Ach tak... Zatem, jak mogę dostać się do Milczącego Króla?"~ */ GOTO 80
  IF ~~ THEN REPLY #64622 /* ~"Dobrze... Zatem bywaj zdrów."~ */ GOTO 71
END

IF ~~ THEN BEGIN 113 // from: 38.1
  SAY #66709 /* ~"Witaj..." Człowiek zwraca ku tobie oblicze i chyli się w lekkim ukłonie. Nagle dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "Jestem Soe. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #66712 /* ~"Chciałbym opuścić Kostnicę. Mógłbyś mi w tym pomóc?"~ */ GOTO 114
  IF ~~ THEN REPLY #66713 /* ~"Mam kilka pytań..."~ */ GOTO 114
  IF ~~ THEN REPLY #66714 /* ~"Po prostu tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #66710 /* ~Ledwo zdążyłeś zacząć wypowiedź, kiedy wargi Soego nagle rozstępują się, odsłaniając rząd brudnych, ostrych zębów. I oto twój rozmówca pochyla się i zaczyna obwąchiwać cię jak szczur.~ */
  IF ~~ THEN REPLY #66715 /* ~"Ech... Czemu, u wszystkich diabłów, tak mnie obwąchujesz?"~ */ GOTO 115
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #66716 /* ~Skręć mu kark, kiedy się ku tobie pochyli.~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #66717 /* ~Skręć mu kark, kiedy się ku tobie pochyli.~ */ GOTO 19
  IF ~~ THEN REPLY #66718 /* ~"Mniejsza o to... Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #66711 /* ~"Twój ubiór... Te szaty. One pachną kimś innym. To nie są twoje szaty." Na ustach Soego wykwita osobliwy uśmiech, a oczy zajmują się niemal dzikim blaskiem. "*Kim* ty jesteś?"~ */
  IF ~~ THEN REPLY #66719 /* ~"E... Ja tylko sobie pożyczyłem te szaty, abym móc opuścić to miejsce bez przeszkód. Obudziłem się w jednej z komnat sekcyjnych na górze."~ */ GOTO 42
  IF ~~ THEN REPLY #66720 /* ~"Masz rację. Te szaty faktycznie nie są moje. A gdybyś zastanawiam się nad tym, jak stałem się właścicielem tego stroju, chętnie ci odpowiem: Nie twoja sprawa."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #66721 /* ~Skręć mu kark, zanim zdąży zawołać po pomoc.~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #66722 /* ~Skręć mu kark, zanim zdąży zawołać po pomoc.~ */ GOTO 19
  IF ~~ THEN REPLY #66723 /* ~"To sprawa bez znaczenia. W każdym bądź razie, czas już na mnie."~ */ GOTO 17
END
