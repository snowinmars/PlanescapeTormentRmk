init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Twoim oczom ukazuje się człowiek odziany w spłowiałe czarne szaty. Jego sylwetka i ruchy świadczą o głębokim znużeniu. Wygląda, jakby nigdy nie zaznał snu. Plecy ma zgarbione, ramiona ciężko pochylone ku sobie. Szczupła twarz tchnie niesamowitą bladością, a spod podkrążonych, nabiegłych krwią oczu zwisają fałdy powiek. Zdaje się, że w ogóle cię nie zauważył. A może bierze cię za któregoś z tutejszych, makabrycznych robotników?{#soego_s0_}'

    menu:
        '"Witaj!"{#soego_s0_r1432}':
            # a0 # r1432
            jump soego_s1

        '"Kim jesteś?"{#soego_s0_r1433}':
            # a1 # r1433
            jump soego_s1

        '"Co to za miejsce?"{#soego_s0_r1434}':
            # a2 # r1434
            jump soego_s1

        '"Mam kilka pytań…"{#soego_s0_r1435}':
            # a3 # r1435
            jump soego_s1

        'Zostaw go w spokoju.{#soego_s0_r1436}':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr 'Kiedy twoje słowa docierają doń, Grabarz gwałtownym ruchem obraca głowę. "Wy… wybaczcie, panie… Do mnie te słowa?"{#soego_s1_}'

    menu:
        '"Tak, to prawda. Mam kilka pytań."{#soego_s1_r1438}':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '"Nie, to nieprawda."{#soego_s1_r1439}':
            # a6 # r1439
            $ soegoLogic.r1439_action()
            jump soego_s2

        'Milcz jak grób.{#soego_s1_r1440}' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        'Milcz jak grób.{#soego_s1_r1441}' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        'Odejdź. Jak najszybciej.{#soego_s1_r1442}':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    nr '"Na Wszelkie Moce!" Grabarz drży na całym ciele, a zaraz potem wbija w ciebie bystre spojrzenie. Teraz dopiero dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "O panie! Twe słowa zmuszają mnie, niegodnego, do haniebnego wyznania: wedle wszelkiego prawdopodobieństwa wydajesz mi się być zombie." Pochyla się w lekkim ukłonie "Jam jest zaś Soe. A czyli wolno mi spytać - twej obecności tutaj… jakiż cel przyświeca?…" Jego bystre spojrzenie omiata twoje blizny… "O ile w ogóle przyświeca…"{#soego_s2_}'

    menu:
        '"To nie twój interes."{#soego_s2_r1444}':
            # a10 # r1444
            jump soego_s6

        '"Właściwie to nie wiem, co tutaj robię. Obudziłem się na jednym z katafalków na górze i moja pamięć jest… nieco zamglona."{#soego_s2_r1445}':
            # a11 # r1445
            jump soego_s7

        '"Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi pomóc?"{#soego_s2_r1446}' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '"Próbuję się stąd wydostać."{#soego_s2_r1447}':
            # a13 # r1447
            jump soego_s13

        '"Potrzeba mi było odmiany."{#soego_s2_r1448}':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s2_r4999}':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr 'Grabarz wpatruje się w ciebie przez chwilę, a potem z dezaprobatą kręci głową. "Trzeba więcej obrazów mentalnych…" Wzdycha ciężko i przeciera powieki. "Te czary przeciwgorączkowe są coraz gorsze…"{#soego_s3_}'

    menu:
        '"Nie, nie wydawało ci się. Mam kilka pytań…"{#soego_s3_r1450}':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'Skręć jego kark, korzystając z jego roztargnienia.{#soego_s3_r1451}' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        'Skręć jego kark, korzystając z jego roztargnienia.{#soego_s3_r1452}' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '"Mam kilka pytań."{#soego_s3_r1453}':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'Odejdź w spokoju.{#soego_s3_r1454}':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr 'Grabarz patrzy na ciebie ze skupieniem, potem zaś pochyla się… jego wargi rozstępują się, odsłaniając rząd brudnych, ostrych zębów i oto twój rozmówca zaczyna obwąchiwać cię jak szczur.{#soego_s4_}'

    menu:
        '"Uch… Dlaczegóż, u stu diabłów, obwąchujesz mnie?"{#soego_s4_r1456}':
            # a21 # r1456
            $ soegoLogic.r1456_action()
            jump soego_s2

        '"Posłuchaj, chciałbym cię o coś spytać.."{#soego_s4_r1457}':
            # a22 # r1457
            $ soegoLogic.r1457_action()
            jump soego_s2

        'Skręć mu kark, kiedy się ku tobie pochyli.{#soego_s4_r1458}' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        'Skręć mu kark, kiedy się ku tobie pochyli.{#soego_s4_r1459}' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        'Odejdź. Jak najszybciej.{#soego_s4_r1460}':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr 'Kiedy zbierasz się do odejścia, Grabarz wydaje ciche syknięcie, potem zaś pochyla się ku tobie i węszy przez chwilę. "Na Wszelkie Moce!" - wykrzykuje. Cofa się, a jego oczy rozszerzają się ze zdumienia. Teraz dopiero dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "O panie! Twe słowa zmuszają mnie, niegodnego, do haniebnego wyznania: wedle wszelkiego prawdopodobieństwa wydajesz mi się być zombie." Pochyla się w lekkim ukłonie "Jam jest zaś Soe. A czyli wolno mi spytać - twej obecności tutaj… jakiż cel przyświeca?… O ile w ogóle przyświeca…"{#soego_s5_}'

    menu:
        '"To nie twój interes."{#soego_s5_r1462}':
            # a26 # r1462
            jump soego_s6

        '"Właściwie to nie wiem, co tutaj robię. Obudziłem się na jednym z katafalków na górze i moja pamięć jest… nieco zamglona."{#soego_s5_r1463}':
            # a27 # r1463
            jump soego_s7

        '"Zabłądziłem i szukam wyjścia. Czy zechcesz mi pomóc?"{#soego_s5_r1464}' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '"Próbuję się stąd wydostać."{#soego_s5_r1465}':
            # a29 # r1465
            jump soego_s13

        '"Potrzeba mi było odmiany."{#soego_s5_r1466}':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s5_r1467}':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    nr '"Oj, obawiam się, że to jednak *jest* moja sprawa." Oczy Soego rozbłyskują czerwienią, a kąciki jego ust poczynają nieznacznie drżeć, jak gdyby w oczekiwaniu. "Zatem…" Na jego twarz wstępuje złośliwy uśmieszek, w którym odsłania rząd ostrych, brudnych zębów. "Zatem może powinienem zawołać straże…? O tak, sądzę, że tak właśnie uczynię."{#soego_s6_}'

    menu:
        '"Poczekaj! Zgubiłem się… Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi pomóc?"{#soego_s6_r1469}' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy zechcesz mi pomóc?"{#soego_s6_r1470}' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s6_r1471}' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s6_r1472}' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"{#soego_s6_r1473}':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    nr '"Doprawdy?" Grabarz studiuje twoją postać w zamyśleniu. "Faktycznie wyglądasz, jakbyś przeszedł przygotowanie do pochówku. Sam nie wiem, jakżeś w ogóle mógł przeżyć tak ogromne boleści… Czy cierpisz? Czy czujesz bóle? Wyglądasz na takiego."{#soego_s7_}'

    menu:
        '"Po pierwsze chciałbym wiedzieć, jakim cudem się tutaj w ogóle znalazłem.{#soego_s7_r1475}':
            # a37 # r1475
            jump soego_s54

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s7_r1476}':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr 'Soe kiwa głową, a kąciki jego ust poczynają nieznacznie drżeć. "Dobrze, już dobrze, nie denerwuj się. Zaraz cię stąd wypuszczę. Cóż, naturalnie, te pomieszczenia mogą budzić mieszane uczucia u gości. Bez obrazy, ale po dziewiątym dzwonie obcym nie wolno przebywać w Kostnicy. Pozwolisz, że otworzę ci frontową bramę."{#soego_s8_}'

    menu:
        '"Dziękuję."{#soego_s8_r1478}' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '"Dziękuję."{#soego_s8_r1479}' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr 'Soe sięga do swego pasa, obłapuje go nerwowo przez chwilę, a potem syka. "Klucz!". Oczy Grabarza rozbłyskują czerwienią, a wargi wykrzywiają się w grymasie wściekłości… Wygląda teraz nieomal jak zwierzę. "Ktoś ukradł mój klucz!". Obraca się ku tobie i warczy "To ty! To ty to uczyniłeś!"{#soego_s9_}'

    menu:
        'Blef: "Och poczekaj! Gdybym faktycznie skradł twój klucz, po cóż bym miał o niego pytać?"{#soego_s9_r1481}':
            # a41 # r1481
            jump soego_s18

        'Kłamstwo: "Nie wiem, o co ci chodzi. Nie mam z tym nic wspólnego."{#soego_s9_r1482}':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s9_r1483}' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s9_r1484}' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '"A jeżeli nawet to prawda, to co z tego? Cóż mi uczynisz?"{#soego_s9_r1485}':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr 'Soe zdejmuje ze swojego pasa pokaźnych rozmiarów klucz i podąża ku frontowej bramie. Jego chód jest nad wyraz osobliwy. Grabarz posuwa się naprzód w chwiejnej, przygarbionej pozycji, jakby w obawie przed utratą równowagi.{#soego_s10_}'

    menu:
        '"Dziwny ma facet chód. Nie ma co…"{#soego_s10_r1487}' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        'Poczekaj, aż otworzy ci bramę.{#soego_s10_r1488}' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr 'Znalazłszy się w pobliżu bramy, Soe wkłada klucz w zamek i przekręca go. W chwilę później, z wnętrza komory zamka wydobywa się przeraźliwy zgrzyt i zwielokrotniony echem odbitym się od marmurowych posadzek wypełnia całe pomieszczenie jękliwym łoskotem.{#soego_s11_}'

    menu:
        'Poczekaj, aż wróci.{#soego_s11_r1490}':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    nr '"Dobrze więc. Oto i frontowa brama stoi przed tobą otworem. Pamiętaj wszakże, że nie będziesz miał już więcej wstępu do tego przybytku."{#soego_s12_}'

    menu:
        '"Czy mogę jeszcze o coś spytać, zanim odejdę?"{#soego_s12_r1492}':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '"Dzięki, Soe. Teraz już czas na mnie."{#soego_s12_r1493}':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    nr '"Chcesz się stąd wydostać?" Soe marszczy brwi w zastanowieniu. "Najpierw zdradź mi, jakżeś się tu dostał?"{#soego_s13_}'

    menu:
        '"Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy pomożesz mi znaleźć wyjście?"{#soego_s13_r1495}' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '"Naprawdę nie wiem."{#soego_s13_r1496}' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '"Naprawdę nie wiem."{#soego_s13_r1497}' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '"Obudziłem się na jednym z katafalków na górze i moja pamięć jest… nieco zamglona."{#soego_s13_r1498}':
            # a54 # r1498
            jump soego_s7

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s13_r1499}':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr 'Soe cmoka ze zdziwienia. "Wielce osobliwe." Znów ogląda cię w skupieniu. "Czyż możliwe, abyś był jednym z Zakontraktowanych?"{#soego_s14_}'

    menu:
        '"Hmm… „Zakontraktowanych“…?{#soego_s14_r1501}':
            # a56 # r1501
            jump soego_s23

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s14_r1502}':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr 'Kiedy zbierasz się do odejścia, Grabarz przestaje cię obwąchiwać i wydaje ciche syknięcie. "Na Wszelkie Moce!" - wykrzykuje. Cofa się, a jego oczy rozszerzają się ze zdumienia. Teraz dopiero dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "O panie! Twe słowa zmuszają mnie, niegodnego, do haniebnego wyznania: wedle wszelkiego prawdopodobieństwa wydajesz mi się być zombie." Pochyla się w lekkim ukłonie "Jam jest zaś Soe. A czyli wolno mi spytać - twej obecności tutaj… jakiż cel przyświeca?"{#soego_s15_}'

    menu:
        '"Nie twoja sprawa."{#soego_s15_r1504}':
            # a58 # r1504
            jump soego_s6

        '"Właściwie to nie wiem, co tutaj robię. Obudziłem się na jednym z katafalków na górze i moja pamięć jest… nieco zamglona."{#soego_s15_r1505}':
            # a59 # r1505
            jump soego_s7

        '"Zgubiłem się i szukam wyjścia. Czy zechcesz mi pomóc?{#soego_s15_r1506}' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '"Próbuję się stąd wydostać."{#soego_s15_r1508}':
            # a61 # r1508
            jump soego_s13

        '"Potrzeba mi było odmiany."{#soego_s15_r1509}':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s15_r1510}':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    nr '"Ach tak…" Oczy Soego rozbłyskują czerwienią, a kąciki jego ust poczynają nieznacznie drżeć, jak gdyby w oczekiwaniu. "Zatem…" Na jego twarz wstępuje złośliwy uśmieszek, w którym odsłania rząd ostrych, brudnych zębów. "Zatem może powinienem zawołać straże…? O tak, sądzę, że tak właśnie uczynię."{#soego_s16_}'

    menu:
        '"Poczekaj! Zgubiłem się… Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi pomóc?"{#soego_s16_r1512}' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy zechcesz mi w tym pomóc?"{#soego_s16_r1513}' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s16_r1514}' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s16_r1515}' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"{#soego_s16_r1516}':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr 'Kiedy zbierasz się do odejścia, z ust Soego wydobywa się wściekły syk… Potem jednak zaraz Grabarz opanowuje się i wznosi dłoń. "Nie, nie… Obawiam się, że nie możesz tak po prostu odejść. Coś tutaj nie gra. Myślę, że najlepiej będzie, jeżeli sobie tę sprawę zaraz wyjaśnimy… Kąciki jego ust poczynają nieznacznie drżeć a oczy zajmują się blaskiem. "Zatem może straże coś na to poradzą… Tak… Chyba powinienem wezwać straże."{#soego_s17_}'

    menu:
        '"Poczekaj! Zgubiłem się… Błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz mi w tym pomóc?"{#soego_s17_r1518}' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy zechcesz mi w tym pomóc?"{#soego_s17_r1520}' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s17_r1521}' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s17_r1522}' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"{#soego_s17_r1523}':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr 'Soe cofa się, a potem zaś trzykrotnie klaszcze w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.{#soego_s18_}'

    menu:
        '"No dobrze…"{#soego_s18_r1525}':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr 'Zanim Grabarz jest w stanie wydać z siebie jeden choćby dźwięk, twoje dłonie zaciskają się na jego skroniach i z wielką siłą wykręcają jego głowę.{#soego_s19_}'

    menu:
        '"Nie musisz zaraz wzywać swoich towarzyszy…"{#soego_s19_r1528}':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr 'Rozlega się krótki chrzest łamanego karku… Ale Grabarz, zamiast bezwładnie runąć na posadzkę, wydaje z siebie zduszony krzyk i wydziera się z uścisku twoich rąk!{#soego_s20_}'

    menu:
        '"A cóż to..?!"{#soego_s20_r1530}' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '"A cóż to..?!"{#soego_s20_r1531}' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr 'Grabarz wygląda na równie przerażonego jak ty: jego oczy połyskują dziko, a z gardła wydobywa się głuche rzężenie… Mógłbyś przysiąc, że przed chwilą skręciłeś mu kark, bo jego głowa wystaje pod nienaturalnym kątem, ale Soe jest cały czas żywy! Patrzysz w oniemieniu, jak Grabarz o przetrąconym karku klaszcze trzykrotnie osłabłymi dłońmi. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.{#soego_s21_}'

    menu:
        '"No dobrze…"{#soego_s21_r1533}':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr 'Coś musiało zaalarmować Grabarza… Zanim zdążyłeś rzucić się na niego, cofnął się ze szkarłatnym błyskiem w oczach i odsłonił zęby. Teraz zaś syknąwszy, trzykrotnie donośnie klasnął w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.{#soego_s22_}'

    menu:
        '"No dobrze…"{#soego_s22_r1535}':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    nr '"Zakontraktowani to ci, którzy spisali umowę, w której pośmiertnie powierzyli swoje ciała Grabarzom. Wygląda na to, że tobie przydarzyło się coś w rodzaju niezwykłego stanu zawieszenia między życiem a śmiercią. Wyglądasz zresztą znacznie lepiej niżeli zwykły zombie."{#soego_s23_}'

    menu:
        '"Ludzie sprzedają wam pośmiertnie swoje ciała?"{#soego_s23_r4793}':
            # a80 # r4793
            jump soego_s24

        '"Och. Mam jeszcze kilka pytań…"{#soego_s23_r4794}':
            # a81 # r4794
            jump soego_s26

        '"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."{#soego_s23_r4795}':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    nr '"O tak, w zamian za garść miedziaków, niejeden chętnie sprzeda swoje ciało. Szczególnie, że z chwilą spotkania Prawdziwej Śmierci, nie będzie mu ono do niczego potrzebne."{#soego_s24_}'

    menu:
        '"Co robicie z tymi ciałami?"{#soego_s24_r4797}':
            # a83 # r4797
            jump soego_s25

        '"Ro… rozumiem. Czy zechciałbyś odpowiedzieć na kilka innych pytań?"{#soego_s24_r4798}':
            # a84 # r4798
            jump soego_s25

        '"Dzięki za wszystkie informacje. Bywaj zdrów."{#soego_s24_r4799}':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    nr '"Żywe trupy pełnią tutaj w Kostnicy obowiązki służących. Przenoszą zwłoki, czyszczą posadzki, uczestniczą w przygotowaniu zmarłych do pochówku… Spoczywają na nich generalnie najprostsze powinności. Niestety, nie są w stanie wywiązywać się z bardziej skomplikowanych rozkazów."{#soego_s25_}'

    menu:
        '"No cóż, Zakontraktowany, czy też nie, jakimż cudem się tutaj znalazłem, skoro nie jestem martwy?"{#soego_s25_r4801}':
            # a86 # r4801
            jump soego_s54

        '"Ro… rozumiem. Czy zechciałbyś odpowiedzieć na kilka innych pytań?"{#soego_s25_r4802}':
            # a87 # r4802
            jump soego_s26

        '"Dziękuję za wszystkie informacje. Żegnaj."{#soego_s25_r4803}':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr 'Soe kiwa głową. "Tak, możesz zadać swoje pytania."{#soego_s26_}'

    menu:
        '"Teraz już czas na mnie. Czy zechcesz wskazać mi drogę do wyjścia?"{#soego_s26_r4805}' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '"Czy możesz mnie stąd wyprowadzić?"{#soego_s26_r4806}' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '"Czy wiesz, że na drugim poziomie jest człowiek, który udaje trupa?"{#soego_s26_r4807}' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '"Jeśli wolno mi spytać… Dobrze się czujesz? Wyglądasz na bardzo wyczerpanego."{#soego_s26_r4809}':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '"Tyś jest Soe, prawda? Doszły mnie słuchy, że jesteś nieco dziwny, jak na Grabarza. Mówiono mi, że lubisz szczury."{#soego_s26_r4810}' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '"Tyś jest Soe, prawda? Doszły mnie słuchy, że jesteś nieco dziwny, jak na Grabarza. Mówiono mi, że lubisz szczury."{#soego_s26_r4811}' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '"Czy znasz kogoś o imieniu Farod?"{#soego_s26_r4832}' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '"Szukam dziennika. Czy nie widziałeś go?"{#soego_s26_r4833}' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s26_r4834}' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s26_r4835}' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    nr '"Co proszę?"{#soego_s27_}'

    menu:
        '"Na górze jest człowiek udający trupa. Myślę, że ma on za zadanie szpiegować Grabarzy."{#soego_s27_r4836}' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '"Na górze jest człowiek udający trupa. Myślę, że ma on za zadanie szpiegować Grabarzy."{#soego_s27_r4837}' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '"Zapomnij o tym. Mam kilka innych pytań."{#soego_s27_r4838}':
            # a101 # r4838
            jump soego_s26

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s27_r4839}' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '"Mniejsza o to. Czas już na mnie. Żegnaj!"{#soego_s27_r916}' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    nr '"Co? Czemu miałby ktokolwiek…?" Głos Soego przeistacza się nagle w syk. Wargi Grabarza cofają się i odsłaniają rząd poszczerbionych zębów. "Anarchista!" Oczy Soego zajmują się szkarłatnym blaskiem. "Anarchista! Tutaj!". Coś sprawia, że wnet wraca mu świadomość twojej obecności i opanowuje się prędko. "Dzięki za informacje. Zadbam o to, aby straże zajęły się tą sprawą."{#soego_s28_}'

    menu:
        '"Nie ma problemu. Mam kilka innych pytań."{#soego_s28_r4852}':
            # a104 # r4852
            jump soego_s26

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s28_r4853}' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s28_r4854}' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr 'Masz zamiar mu o tym napomknąć, kiedy nagle coś cię przed tym powstrzymuje. Kiedy zerkasz na Soego, twoje ciało przeszywa dziwny dreszcz… Z niejasnych ci bliżej powodów, dochodzisz do wniosku, że najlepiej będzie, jeżeli w ogóle nie będziesz się odzywał.{#soego_s29_}'

    menu:
        '"Doszły mnie słuchy, że jesteś dziwakiem, Soe. Mówiono mi, że lubisz szczury."{#soego_s29_r4856}':
            # a107 # r4856
            jump soego_s30

        '"Więc… powiedzmy, że chcę cię o coś zapytać."{#soego_s29_r4857}':
            # a108 # r4857
            jump soego_s26

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s29_r4858}' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '"Mniejsza o to. Czas już na mnie. Żegnaj."{#soego_s29_r4859}' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr 'Soe milknie na chwilę, lustrując bez słowa twoją postać. Jego oczy zajmują się szkarłatnym blaskiem, a z gardła wydobywa się stłumiony syk. "Sądzę, że nadużyłeś już mojej uprzejmości." Ku twojemu zdziwieniu Grabarz cofa się i trzykrotnie donośnie klaszcze w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.{#soego_s30_}'

    menu:
        '"Coż to u diaska? Cóż ty wyczyniasz?"{#soego_s30_r4861}':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '"Dobrze więc. Przygotuj się na śmierć, Soe."{#soego_s30_r4862}':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr 'Soe zdobywa się na lekki uśmiech, a kąciki jego ust drżą nieznacznie "Ostatnio trochę niedomagałem… Niewielkie gorączki. Nic poważnego. Czasem tylko utrudniają sen."{#soego_s31_}'

    menu:
        '"Mogę ci jakoś pomóc?"{#soego_s31_r4864}':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '"Och. Mam jeszcze kilka pytań…"{#soego_s31_r4865}':
            # a114 # r4865
            jump soego_s26

        '"Rozumiem. No cóż… Czas już na mnie. Żegnaj."{#soego_s31_r4866}' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '"Rozumiem. No cóż… Czas już na mnie. Żegnaj."{#soego_s31_r4867}' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr 'Soe kręci głową. "Nie, nie, wielkie dzięki za troskę… Dam sobie radę." Grabarz lekko marszczy brwi. "Może masz jeszcze jakieś inne pytania?"{#soego_s32_}'

    menu:
        '"Tak, mam jeszcze kilka innych pytań"{#soego_s32_r4869}':
            # a117 # r4869
            jump soego_s26

        '"Nie, nie będę ci więcej przeszkadzać. Dzięki za informacje."{#soego_s32_r4870}' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '"Nie, nie będę ci więcej przeszkadzać. Dzięki za informacje."{#soego_s32_r4871}' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    nr '"Farod? Naturalnie, że go znam." Marszczy brwi, a jego oczy zajmują się szkarłatnym blaskiem. "Diabelski człowiek. Za grosz w nim szacunku dla zmarłych, a jeszcze mniej dla żyjących. To padlinożerca. Zbieracz."{#soego_s33_}'

    menu:
        '"Zbieracz?"{#soego_s33_r4873}':
            # a120 # r4873
            jump soego_s34

        '"Czy wiesz, gdzie mogę go znaleźć?"{#soego_s33_r4874}':
            # a121 # r4874
            jump soego_s36

        '"Och. Mam jeszcze kilka pytań…"{#soego_s33_r4875}':
            # a122 # r4875
            jump soego_s26

        '"Rozumiem. Chyba czas na mnie."{#soego_s33_r4876}' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '"Rozumiem. Chyba czas na mnie."{#soego_s33_r4877}' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    nr '"Tak, Zbieracze zarabiają na życie zbierając zwłoki i przywożąc je tutaj - do Kostnicy. My zaś dbamy o to, aby ciała te znalazły godny pochówek."{#soego_s34_}'

    menu:
        '"Więc, gdyby Zbieracz natknął się na zwłoki… moje, na przykład… wówczas przywiózłby je tutaj, żeby je wam sprzedać?"{#soego_s34_r4879}' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '"A wracając do tego Faroda… Czy wiesz, gdzie mogę go znaleźć?"{#soego_s34_r4880}':
            # a126 # r4880
            jump soego_s36

        '"Och. Mam jeszcze kilka pytań…"{#soego_s34_r4881}':
            # a127 # r4881
            jump soego_s26

        '"Rozumiem. No cóż… Czas już na mnie. Żegnaj."{#soego_s34_r4882}' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '"Rozumiem. No cóż… Czas już na mnie. Żegnaj."{#soego_s34_r4883}' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    nr '"Tak."{#soego_s35_}'

    menu:
        '"Hmm… Tak się akurat składa, że bardzo mi zależy na odnalezieniu tego Faroda. Czy wiesz, gdzie mogę go znaleźć?{#soego_s35_r4885}':
            # a130 # r4885
            jump soego_s36

        '"Och. Mam jeszcze kilka pytań…"{#soego_s35_r4886}':
            # a131 # r4886
            jump soego_s26

        '"Dzięki za informacje. Bywaj zdrów."{#soego_s35_r4887}' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '"Dzięki za informacje. Bywaj zdrów."{#soego_s35_r4888}' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    nr '"Wiem, że Farod mieszka w Ulu, w slumsach sąsiadujących z Kostnicą, ale nie znam jego dokładnego adresu. Może mogliby ci w tym pomóc inni Zbieracze, jeżeli byś zechciał ich o to zagadnąć."{#soego_s36_}'

    menu:
        '"Powiedz mi jeszcze raz, czym się w końcu zajmują ci Zbieracze?"{#soego_s36_r4890}':
            # a134 # r4890
            jump soego_s34

        '"Och. Mam jeszcze kilka pytań…"{#soego_s36_r4891}':
            # a135 # r4891
            jump soego_s26

        '"Dzięki za informacje. Bywaj zdrów."{#soego_s36_r4892}' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '"Dzięki za informacje. Bywaj zdrów."{#soego_s36_r4893}' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    nr '"Dziennika?" Twoje słowa wprawiły Soego w zakłopotanie. "Nie, nie widziałem niczego takiego."{#soego_s37_}'

    menu:
        '"Zatem mniejsza o to. Mam jeszcze kilka innych pytań…"{#soego_s37_r4895}':
            # a138 # r4895
            jump soego_s26

        '"Mimo wszystko dziękuję. Bywaj zdrów."{#soego_s37_r4896}' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '"Mimo wszystko dziękuję. Bywaj zdrów."{#soego_s37_r4897}' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Twoim oczom ukazuje się człowiek odziany w spłowiałe czarne szaty. Jego sylwetka i ruchy świadczą o głębokim znużeniu. Wygląda, jakby nigdy nie zaznał snu. Plecy ma zgarbione, ramiona ciężko pochylone ku sobie. Szczupła twarz tchnie niesamowitą bladością, a spod podkrążonych, nabiegłych krwią oczu zwisają fałdy powiek. Przybysz wydaje się być zatopiony w rozmyślaniach, że chyba w ogóle nie zauważył twojej obecności.{#soego_s38_}'

    menu:
        '"Witaj…"{#soego_s38_r66706}' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.r66706_action()
            jump soego_s39

        '"Witaj…"{#soego_s38_r66707}' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.r66707_action()
            jump soego_s113

        'Pozostaw go jego rozmyślaniom.{#soego_s38_r66708}':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    nr '"Witaj…" Człowiek zwraca ku tobie oblicze i chyli się w lekkim ukłonie. Nagle dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "Jam jest Soe. W czym mogę…" Soe nagle zauważa twoje blizny i kąciki jego ust poczynają nieznacznie drżeć. "Przepraszam, panie, nie poznałem… Czy zgubiłeś się?"{#soego_s39_}'

    menu:
        '"Tak."{#soego_s39_r4905}':
            # a144 # r4905
            jump soego_s40

        '"Nie."{#soego_s39_r4906}':
            # a145 # r4906
            jump soego_s41

        '"Nie, nie zgubiłem się. Mam kilka pytań…"{#soego_s39_r4907}':
            # a146 # r4907
            jump soego_s41

        '"Nie. Po prostu szukam wyjścia. Żegnaj."{#soego_s39_r4908}':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    nr '"Dobrze więc…" Kąciki jego Soego poczynają znowu nieznacznie drżeć, jak gdyby w oczekiwaniu. "Pozwól, niechaj wezwę straże, aby cię stąd wyprowadziły." Wygląda na to, że zaraz zawoła straże.{#soego_s40_}'

    menu:
        '"Powstrzymaj się! Proszę… Nie ma potrzeby wzywać straży. Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy zechcesz wskazać mi drogę do wyjścia?"{#soego_s40_r4910}' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '"Nie. Nie zabłądziłem - Przejęzyczyłem się."{#soego_s40_r4911}':
            # a149 # r4911
            jump soego_s50

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s40_r4912}' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s40_r4913}' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        'Odejdź. Jak najszybciej.{#soego_s40_r4914}':
            # a152 # r4914
            jump soego_s18

        'Poczekaj.{#soego_s40_r4915}':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    nr '"Nie przypominam sobie, abym cię tutaj wpuszczał." Soe spogląda nie ciebie podejrzliwie, a jego oczy w blasku pochodni zdają się płonąć szkarłatem. "Czy wolno mi spytać, czego tutaj szukasz?{#soego_s41_}'

    menu:
        '"Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy zechcesz wskazać mi drogę do wyjścia?"{#soego_s41_r4917}' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '"To nie twoja sprawa."{#soego_s41_r4918}':
            # a155 # r4918
            jump soego_s6

        '"Obudziłem się na jednym ze stołów w sali przygotowawczej."{#soego_s41_r4919}':
            # a156 # r4919
            jump soego_s42

        '"Mam się tutaj z kimś zobaczyć."{#soego_s41_r4920}':
            # a157 # r4920
            jump soego_s43

        '"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."{#soego_s41_r4921}' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        'Pochyl się ku niemu, niby chcąc szepnąć mu coś na ucho, a kiedy skłoni się ku tobie, skręć mu kark.{#soego_s41_r4922}':
            # a159 # r4922
            jump soego_s51

        'Odejdź. Jak najszybciej.{#soego_s41_r4923}':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr 'Soe wydaje się zdumiony. "Twierdzisz, że… że obudziłeś, na którymś z katafalków na górze?"{#soego_s42_}'

    menu:
        '"Nie. Przejęzyczyłem się."{#soego_s42_r4925}':
            # a161 # r4925
            jump soego_s50

        '"Tak. Wiem, że trudno w to uwierzyć, ale to prawda, obudziłem się na jednym z katafalków na górze."{#soego_s42_r4926}':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr 'Soe kiwa głową. "Z kim chcesz się tutaj spotkać? Powiedz tylko, a z ogromną przyjemnością wskażę ci drogę."{#soego_s43_}'

    menu:
        '"Nie twoja sprawa."{#soego_s43_r4928}':
            # a163 # r4928
            jump soego_s6

        '"Mam się zobaczyć z Dhallem."{#soego_s43_r4929}' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '"Mam się zobaczyć z Deionarrą"{#soego_s43_r4930}' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        'Kłamstwo: "Uch… z Adahnem. Nadal tu pracuje, czy…?"{#soego_s43_r4931}' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'Kłamstwo: "Uch… z Adahnem. Nadal tu pracuje, czy…?"{#soego_s43_r4932}' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '"Uch, z nikim. Przejęzyczyłem się."{#soego_s43_r4933}':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    nr '"Z Dhallem? Skrybę Dhalla znajdziesz w komnacie odbiorczej na wyższym piętrze." Kąciki ust Soego poczynają nieznacznie drżeć, "Dhall jest wszakże osobą wielce zajętą, a poza tym jego zdrowie coraz częściej odmawia mu posłuszeństwa. Jeśli nie przyszedłeś ze sprawą nie cierpiącą zwłoki, nie radziłbym ci przeszkadzać mu w pracy."{#soego_s44_}'

    menu:
        '"Co dolega Dhallowi?"{#soego_s44_r4935}':
            # a169 # r4935
            jump soego_s46

        '"W komnacie odbiorczej?"{#soego_s44_r4936}':
            # a170 # r4936
            jump soego_s45

        '"Bardzo dobrze. Nie zabawię u niego zbyt długo. Bywaj zdrów."{#soego_s44_r4937}':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    nr '"Tak… komnata odbiorcza to pomieszczenie, gdzie gromadzone są zwłoki przywożone z miasta. Tam się je spisuje i przygotowuje do pochówku."{#soego_s45_}'

    menu:
        '"Co dolega Dhallowi?"{#soego_s45_r4939}':
            # a172 # r4939
            jump soego_s46

        '"Dzięki za twoje instrukcje. Nie zabawię u niego zbyt długo. Bywaj zdrów."{#soego_s45_r4940}':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    nr '"O, nie. Nic mu nie dolega. Dhall jest po prostu…" Soe szczęka zębami. "…stary. Jego długa służba pełna poświęcenie sprawom ewidencjonowania zmarłych ma się już ku końcowi. Już wkrótce śmierć przyjdzie śladem wyniszczającej choroby czasu, która go toczy."{#soego_s46_}'

    menu:
        '"Bardzo dobrze. Nie zabawię u niego zbyt długo. Bywaj zdrów."{#soego_s46_r4942}':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    nr '"Deionarra? Kobieta o tym imieniu rzeczywiście spoczywa w północno-zachodniej sali pamięci. Czy to właśnie jej poszukujesz?"{#soego_s47_}'

    menu:
        '"Tak… Czy mógłbyś mi powiedzieć, co jej się przydarzyło?{#soego_s47_r4944}':
            # a175 # r4944
            jump soego_s48

        '"Tak. Teraz odejdę, aby oddać należny szacunek zmarłym."{#soego_s47_r4945}':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    nr '"Trudno mi powiedzieć, ale wiem, że jej szczątki spoczywają tutaj od dłuższego czasu. Jej ojciec na pewno będzie wiedział, co jej się przytrafiło… Schodzi tutaj tu często ze Wyższych Dzielnic. To wolą ojca Deionarry było, aby jego córka spoczęła w tej sali pamięci."{#soego_s48_}'

    menu:
        '"Dzięki za twoje instrukcje. Teraz odejdę, aby oddać należny szacunek zmarłym."{#soego_s48_r4947}':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    nr '"Adahn…" Oczy Soego zwężają się, a czerwony barwnik, który wcześniej w nich dostrzegłeś staje się jeszcze bardziej wyrazisty. "Nikt o takim imieniu nie zamieszkuje w komnatach Kostnicy, żywy czy też martwy." Kąciki ust twojego rozmówcy poczynają nieznacznie drżeć, i Grabarz, ku twojemu zdziwieniu, przez chwilę wciąga nozdrzami powietrze, jak węszące zwierzę.{#soego_s49_}'

    menu:
        '"Hm… Wobec tego musiałem się przejęzyczyć."{#soego_s49_r4949}':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr 'Kąciki ust Soego znowu drżą a oczy rozbłyskują. "Więc, czego tutaj szukasz?"{#soego_s50_}'

    menu:
        '"Przyszedłem tu już wcześniej na ceremonię pochówku i oddawałem szacunek zmarłym. Teraz zaś chcę już odejść, ale błąkam się w tych pomieszczeniach. Czy zechcesz mi wskazać drogę do wyjścia?"{#soego_s50_r4951}' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '"Nie twoja sprawa."{#soego_s50_r4952}':
            # a180 # r4952
            jump soego_s6

        '"Obudziłem się na jednym ze stołów w sali przygotowawczej."{#soego_s50_r4953}':
            # a181 # r4953
            jump soego_s42

        '"Mam się tutaj z kimś zobaczyć."{#soego_s50_r4954}':
            # a182 # r4954
            jump soego_s43

        '"Przybyłem tu na ceremonię pochówku."{#soego_s50_r4955}' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        'Pochyl się ku niemu, niby chcąc szepnąć mu coś na ucho, a kiedy skłoni się ku tobie, skręć mu kark.{#soego_s50_r4956}':
            # a184 # r4956
            jump soego_s51

        'Uciekaj.{#soego_s50_r5028}':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr 'Soe marszczy brwi, kiedy się doń zbliżasz, a wtedy zauważasz, że Grabarz wciąga nozdrzami powietrze, jakby coś w nim badał. Jego oczy nagle zwężają się i wygląda na to, że zaraz zawoła straże.{#soego_s51_}'

    menu:
        'Skręć mu kark, zanim zdąży zawołać.{#soego_s51_r4958}' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s51_r4959}' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr 'Kiedy próbujesz rzucić się na niego, Soe cofa się ze szkarłatnym błyskiem w oczach i odsłania zęby. Wydobywszy z siebie stłumiony syk, trzykrotnie donośnie klaszcze w dłonie. W odpowiedzi całą Kostnicę napełnia grzmot wielkiego żelaznego dzwonu.{#soego_s52_}'

    menu:
        '"No dobrze…"{#soego_s52_r4961}':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    nr '"Kto miał zostać pochowany? Być może posługi te odbywają się w innym miejscu Kostnicy."{#soego_s53_}'

    menu:
        '"Źle mnie zrozumiałeś… To JA miałem być pochowany."{#soego_s53_r4963}':
            # a189 # r4963
            jump soego_s57

        '"Wybacz… Przejęzyczyłem się. Nie znam imienia zmarłego."{#soego_s53_r4964}':
            # a190 # r4964
            jump soego_s50

        '"To imię to Deionarra."{#soego_s53_r4965}' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        'Kłamstwo: "To imię to… hm… Adahn."{#soego_s53_r4967}' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'Kłamstwo: "To imię to… uch, Adahn."{#soego_s53_r4968}' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        'Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.{#soego_s53_r4969}':
            # a194 # r4969
            jump soego_s51

        'Uciekaj.{#soego_s53_r4970}':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    nr '"Hm…" Soe spogląda przez zmrużone oczy. Twoje słowa wprawiły go w zakłopotanie. "Naturalnie doszło do pomyłki. Przywieźli cię tutaj albo twoi krewniacy, albo inni Grabarze, albo też…" Soe syczy gwałtownie, jakby przez jego umysł przebiegła wyjątkowo odrażająca myśl. "Albo też któryś ze Zbieraczy."{#soego_s54_}'

    menu:
        '"Ze Zbieraczy?"{#soego_s54_r4971}':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    nr '"Tak, Zbieracze… Bandy padlinożerców, którzy przywożą do nas ciała zmarłych. Pewnie sądzili, że jesteś martwy…" Soe syczy, a jego oczy rozbłyskują ponuro "…A Zbieracze to istoty tak oślepione nikczemnym blaskiem miedziaków, że nikomu z nich nie chciało się nawet sprawdzić przed przywiezieniem cię tutaj, czy jesteś całkiem martwy." Soe w zadumie studiuje twoją postać. "To duże szczęście, że się tutaj ocknąłeś. Inaczej spotkałbyś Prawdziwą Śmierć wcześniej, niżeli ci to było sądzone."{#soego_s55_}'

    menu:
        '"Wobec tego faktycznie doszło do grubego nieporozumienia. Dlatego chcę już opuścić to miejsce. Jak najszybciej."{#soego_s55_r4973}':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr 'Soe kiwa głową, a kąciki jego ust poczynają nieznacznie drżeć. "Ależ oczywiście, oczywiście. Pozwolisz, że otworzę ci frontową bramę."{#soego_s56_}'

    menu:
        '"W porządku."{#soego_s56_r4975}' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '"W porządku."{#soego_s56_r4976}' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    nr '"Ty?"{#soego_s57_}'

    menu:
        '"Tak, ja. Obudziłem się na jednym z twoich katafalków na górze."{#soego_s57_r4978}':
            # a200 # r4978
            jump soego_s7

        '"Przepraszam… Przejęzyczyłem się."{#soego_s57_r4979}':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr 'Kiedy się przybliżasz, Soe pociąga nozdrzami powietrze i podnosi oczy. Kiedy dostrzega cię, marszczy brwi w poirytowaniu. "Przecie otworzyłem ci bramę! Co tutaj jeszcze robisz?"{#soego_s58_}'

    menu:
        '"Chcę o coś spytać przed odejściem."{#soego_s58_r4981}':
            # a202 # r4981
            jump soego_s26

        '"Kieruję się teraz ku bramie. Żegnaj."{#soego_s58_r4982}':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr 'Kiedy się przybliżasz, Soe chłonie nozdrzami powietrze i podnosi oczy. Kiedy dostrzega cię, pochyla się nieznacznie "Czyż znalazłeś, to czego szukałeś?"{#soego_s59_}'

    menu:
        '"Tak, dziękuję. Wybacz, błąkam się w tych pomieszczeniach… Czy zechcesz wskazać mi drogę do wyjścia?"{#soego_s59_r4984}' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '"Tak, chcę teraz odejść. Czy zechcesz wskazać mi drogę do wyjścia?"{#soego_s59_r4985}' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '"Kieruję się teraz ku bramie. Żegnaj."{#soego_s59_r4986}':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr 'Soe kiwa głową, kąciki jego ust poczynają nieznacznie drżeć. "Cóż, naturalnie, te wnętrza mogą budzić mieszane uczucia u gości. Pozwolisz, że otworzę ci frontową bramę."{#soego_s60_}'

    menu:
        '"Dziękuję."{#soego_s60_r4988}' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '"Dziękuję."{#soego_s60_r4989}' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    nr '"To nad wyraz osobliwe." Oczy Soego rozbłyskują czerwienią, a kąciki jego ust poczynają nieznacznie drżeć, jak gdyby w oczekiwaniu. "Zatem…" Na jego twarz wstępuje złośliwy uśmieszek, w którym odsłania rząd ostrych, brudnych zębów. "Zatem może powinienem zawołać straże…? O tak, sądzę, że tak właśnie uczynię."{#soego_s61_}'

    menu:
        '"Poczekaj. Zgubiłem się tutaj… Po prostu błąkam się w tych pomieszczeniach i nie mogę znaleźć wyjścia. Czy zechcesz wskazać mi drogę do wyjścia?"{#soego_s61_r4991}' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '"Poczekaj. Nie wołaj straży. Chcę się tylko stąd wydostać. Czy możesz mi w tym pomóc?"{#soego_s61_r4992}' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s61_r4993}' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        'Skręć mu kark, zanim zdąży zawołać.{#soego_s61_r4994}' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '"Wezwij ich, nie krępuj się. Poznam ich z prawdziwą przyjemnością"{#soego_s61_r4995}':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr 'Soe kiwa głową, a jego usta znowu poczynają drżeć. Zapewne nie jest nawet tego świadom. "Tedy wracaj do świata żywych, jak tylko oddasz szacunek swym zmarłym. Otworzę ci frontową bramę. Jest już po dziewiątym dzwonie, więc powinieneś opuścić to miejsce zaraz po tym, jak załatwisz tutaj swoje sprawy."{#soego_s62_}'

    menu:
        '"Wiesz co, może innym razem? A teraz już wypuścisz mnie?"{#soego_s62_r4997}':
            # a214 # r4997
            jump soego_s8

        '"Dziękuję. Nie omieszkam tu powrócić."{#soego_s62_r4998}':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    nr '"O, kolejny przybysz ze świata żywych. Większość z was pada ofiarą ghuli. Ale żeby aż tak daleko zapuścić się w katakumby? Proszę, proszę. Miałeś dużo szczęścia, śmiałku."{#soego_s63_}'

    menu:
        '"Tyś jest Soe, człowiek z Kostnicy. Co robisz w tych okolicach?"{#soego_s63_r21655}' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '"Kim jesteś?"{#soego_s63_r21656}' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '"Gdzie ja jestem?"{#soego_s63_r21657}' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s63_r21658}' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '"Być może. Żegnaj."{#soego_s63_r21660}' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    nr '"Jam jest Soe, faktotum Grabarzy. Jestem misjonarzem w tych okolicach." Oddaje ci lekki ukłon.{#soego_s64_}'

    menu:
        '"Misjonarzem?"{#soego_s64_r21662}':
            # a221 # r21662
            jump soego_s65

        '"A co tutaj robią Grabarze?"{#soego_s64_r21663}' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '"Gdzie ja jestem?"{#soego_s64_r64595}':
            # a223 # r64595
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s64_r64596}':
            # a224 # r64596
            jump soego_s78

        '"Witaj i żegnaj."{#soego_s64_r21665}':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    nr '"Tak, przybyłem do tych katakumb, kiedy doszły mnie pogłoski o nieumarłych, którzy zachowali świadomość swego żywota i błąkają się w tych okolicach. Moja rola to próbować ich ocalić."{#soego_s65_}'

    menu:
        '"Ocalić?"{#soego_s65_r21667}':
            # a226 # r21667
            jump soego_s67

        '"Gdzie ja jestem?"{#soego_s65_r64597}':
            # a227 # r64597
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s65_r64599}':
            # a228 # r64599
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s65_r21669}':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    nr '"Działam w pojedynkę. Przybyłem do tych katakumb, kiedy doszły mnie pogłoski o nieumarłych, którzy zachowali świadomość swego żywota i błąkają się w tych okolicach Moja rola to próbować ich ocalić."{#soego_s66_}'

    menu:
        '"Ocalić?"{#soego_s66_r21671}':
            # a230 # r21671
            jump soego_s67

        '"Gdzie ja jestem?"{#soego_s66_r64600}':
            # a231 # r64600
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s66_r64601}':
            # a232 # r64601
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s66_r21673}':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    nr '"Tak, zgubne żądze przywiązują ich do tego fałszywego żywota. Ja zaś chcę nauczyć ich sztuki poświęcenia tych namiętności i odrzucenia fałszywego bytu dla chwały spotkania z Prawdziwą Śmiercią."{#soego_s67_}'

    menu:
        '"Fałszywego żywota?"{#soego_s67_r21675}':
            # a234 # r21675
            jump soego_s68

        '"Prawdziwą Śmiercią?"{#soego_s67_r21676}':
            # a235 # r21676
            jump soego_s69

        '"A więc pragniesz, aby oni umarli?"{#soego_s67_r21767}':
            # a236 # r21767
            jump soego_s70

        '"Gdzie ja jestem?"{#soego_s67_r64602}':
            # a237 # r64602
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s67_r64603}':
            # a238 # r64603
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s67_r21770}':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    nr '"Ci… martwi… Są tak bliscy Prawdziwej Śmierci… Wszelako wciąż kurczowo trzymają się śladów życia. Ten kłamliwy byt skrywa wielką prawdę o istnieniu w tej sferze."{#soego_s68_}'

    menu:
        '"Prawdziwej Śmierć?"{#soego_s68_r21772}':
            # a240 # r21772
            jump soego_s69

        '"A więc pragniesz, aby oni umarli?"{#soego_s68_r21774}':
            # a241 # r21774
            jump soego_s70

        '"Gdzie ja jestem?"{#soego_s68_r64604}':
            # a242 # r64604
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s68_r64605}':
            # a243 # r64605
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s68_r21776}':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    nr '"To kompletne oczyszczenie ze wszelkich żądz. Prawdziwa Śmierć to prawdziwe życie, poza tym cieniem egzystencji. Ci martwi muszą ku niej sięgnąć, by się uwolnić."{#soego_s69_}'

    menu:
        '"Co rozumiesz przez „fałszywy żywot“, o którym wspomniałeś?"{#soego_s69_r21779}':
            # a245 # r21779
            jump soego_s68

        '"A więc pragniesz, aby oni umarli?"{#soego_s69_r21780}':
            # a246 # r21780
            jump soego_s70

        '"Gdzie ja jestem?"{#soego_s69_r64606}':
            # a247 # r64606
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s69_r64607}':
            # a248 # r64607
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s69_r21784}':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    nr '"Moim zadaniem jest pomóc im w wyjściu poza sferę doczesnej egzystencji i w wyrzeczeniu się wszelkich żądz. To może ich ocalić."{#soego_s70_}'

    menu:
        '"Co rozumiesz przez „fałszywy żywot“, o którym wspomniałeś?"{#soego_s70_r21788}':
            # a250 # r21788
            jump soego_s68

        '"Mówiłeś coś o „Prawdziwej Śmierci“?"{#soego_s70_r21790}':
            # a251 # r21790
            jump soego_s69

        '"Gdzie ja jestem?"{#soego_s70_r64608}':
            # a252 # r64608
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s70_r64609}':
            # a253 # r64609
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s70_r21794}':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    nr '"Poświęć mi jeszcze krótką chwilę, zanim odejdziesz. Nie próbuj atakować żadnego z nieumarłych, jakiego napotkasz w tych katakumbach. Przekonałem ich, by aby ani tobie, ani żadnemu z twoich towarzyszy nie uczynili żadnej krzywdy, tak więc paktu tego nie próbuj łamać i nie nastawaj na ich życie. Wiedz, że oni potrafią się obronić i jest ich… niemało. Na koniec możesz wrócić tutaj, jeżeli przyjdzie ci ochota na odpoczynek."{#soego_s71_}'

    menu:
        '"Poczekaj… Czy mogę teraz odpocząć?"{#soego_s71_r21800}' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '"Poczekaj… Czy możemy teraz odpocząć?"{#soego_s71_r64569}' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'Odejdź.{#soego_s71_r64570}':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    nr '"Twoja pamięć cię nie zawodzi. Ja już wszakże nie stacjonuję w Kostnicy. Jestem w tych okolicach misjonarzem."{#soego_s72_}'

    menu:
        '"Ale wydawało mi się, że złamałem ci kark…"{#soego_s72_r64547}' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '"Ale zdawało mi się, że cię *zabiłem*…"{#soego_s72_r21808}' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '"Misjonarzem?"{#soego_s72_r21809}':
            # a260 # r21809
            jump soego_s65

        '"A co tutaj robią Grabarze?"{#soego_s72_r21811}' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '"Gdzie ja jestem?"{#soego_s72_r64610}':
            # a262 # r64610
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s72_r64611}':
            # a263 # r64611
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s72_r21813}':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    nr '"Rana, jaką mi zadałeś, nie należała do śmiertelnych. Szybko wróciłem do sił… I stwierdziłem, że chciałbym oddalić się od Kostnicy."{#soego_s73_}'

    menu:
        '"Soe. Złamałem ci kark… to nie był cios śmiertelny?"{#soego_s73_r21815}' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '"Nie chowasz do mnie urazy?"{#soego_s73_r21816}':
            # a266 # r21816
            jump soego_s74

        '"Hmm. Więc powiadasz, że jesteś misjonarzem?"{#soego_s73_r21817}':
            # a267 # r21817
            jump soego_s65

        '"Dobrze zatem. Czego więc szukają tutaj Grabarze?"{#soego_s73_r21818}' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '"No dobrze… Więc gdzie ja jestem?"{#soego_s73_r64612}':
            # a269 # r64612
            jump soego_s77

        '"Ach tak. Ale dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s73_r64613}':
            # a270 # r64613
            jump soego_s78

        '"Zapomnij o tym. To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s73_r21820}':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    nr '"Nie… a czy powinienem? Jestem nieco rozczarowany, że nie było mi dane opuścić tego miejsca. Tak czy siak, nie radziłbym ci wracać do Kostnicy, albowiem wielu moich towarzyszy - faktotumów nie byłoby zachwyconych twoim widokiem."{#soego_s74_}'

    menu:
        '"Powiadasz, że jesteś misjonarzem?"{#soego_s74_r64614}':
            # a272 # r64614
            jump soego_s65

        '"A co tutaj robią Grabarze?"{#soego_s74_r21823}' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '"Gdzie ja jestem?"{#soego_s74_r64615}':
            # a274 # r64615
            jump soego_s77

        '"Dlaczego uczyniono ze mnie tutaj więźnia?"{#soego_s74_r64616}':
            # a275 # r64616
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s74_r21825}':
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    nr '.{#soego_s75_}'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    nr '.{#soego_s76_}'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    nr '"Znajdujesz w katakumbach Ziem Umarłych. Przyprowadziły cię tutaj straże."{#soego_s77_}'

    menu:
        '"Kim jesteś?"{#soego_s77_r21840}':
            # a277 # r21840
            jump soego_s64

        '"Dlaczego jestem tutaj więźniem?"{#soego_s77_r21841}':
            # a278 # r21841
            jump soego_s78

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s77_r21843}':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    nr '"Nie wiem. Spytaj któregoś z obywateli."{#soego_s78_}'

    menu:
        '"Kim jesteś?"{#soego_s78_r21847}':
            # a280 # r21847
            jump soego_s64

        '"Gdzie ja jestem?"{#soego_s78_r21848}':
            # a281 # r21848
            jump soego_s77

        '"Być może. Póki co, bywaj zdrów."{#soego_s78_r21850}':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    nr '"O, zdaje się, że mamy nowego sprzymierzeńca! Ja, pełniący zaszczytną funkcję agenta Wielojedności, miałem informacje o twoim przybyciu. Chcemy, abyś spróbował odszukać drogę do sali tronowej Milczącego Króla, a uczyniwszy to, zakradł się i zgładził monarchę. Jeżeli ci się to uda, Jego Wielojedność nie omieszka cię wynagrodzić."{#soego_s79_}'

    menu:
        '"Soe… Emorik pytał o miejsce twojego pobytu."{#soego_s79_r66181}' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '"Poczekaj? Czyś ty nie jest Soe? Emorik wypytywał o ciebie."{#soego_s79_r21852}' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        '"Poczekaj chwilę… Czy ja przypadkiem nie złamałem ci karku w Kostnicy?"{#soego_s79_r64623}' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '"Poczekaj chwilę… Wydawało mi się, że cię *zabiłem* w Kostnicy…"{#soego_s79_r64624}' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '"Jak mogę trafić do Milczącego Króla?"{#soego_s79_r21853}' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '"Ach tak. W takim razie żegnaj."{#soego_s79_r21854}' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    nr '"Nie wiem. Mieszkam w tych okolicach już od pewnego czasu, ale wciąż nie potrafię znaleźć drogi do jego sali tronowej. Może ty będziesz miał więcej szczęścia, bowiem nie dźwigasz brzemienia nienawiści i dewocji, o jakie mnie się posądza."{#soego_s80_}'

    menu:
        '"Brzemienia nienawiści i dewocji?"{#soego_s80_r21860}':
            # a289 # r21860
            jump soego_s81

        '"Ach tak. W takim razie żegnaj."{#soego_s80_r21862}':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    nr '"Poglądy mojej frakcji bywają popularne, choć nie wszystkie z nich, i nie pośród wszystkich. Większość poważniejszych osobistości tej cywilizacji nie podpisuje się pod nimi."{#soego_s81_}'

    menu:
        '"Ach tak. W takim razie żegnaj."{#soego_s81_r21870}':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    nr '"Och, witaj ponownie."{#soego_s82_}'

    menu:
        '"Milczący Król nie żyje i to już od pewnego czasu. Nie ma już Milczącego Króla."{#soego_s82_r24206}' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '"Milczący Król nie żyje i to już od pewnego czasu. Nie ma już Milczącego Króla."{#soego_s82_r21915}' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        '"Czyś ty nie jest Soe? Emorik wypytywał o ciebie."{#soego_s82_r21914}' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '"Byłem w twojej komnacie i przeglądałem twój pamiętnik."{#soego_s82_r21916}' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        '"W jednej z sal tutaj widziałem kościotrupa. Sprawiał wrażenie kogoś, kto jest o krok od spotkania z Prawdziwą Śmiercią."{#soego_s82_r21917}' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '"Muszę odpocząć."{#soego_s82_r21920}' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '"Musimy odpocząć."{#soego_s82_r21922}' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '"Mam kilka pytań…"{#soego_s82_r21924}':
            # a299 # r21924
            jump soego_s83

        '"Akurat przechodziłem tędy. Bywaj zdrów."{#soego_s82_r21925}':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    nr '"O ile tylko będę mógł, odpowiem na wszystkie pytania."{#soego_s83_}'

    menu:
        '"Opowiedz mi o Hargrimmie."{#soego_s83_r21944}' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '"Opowiedz mi o Akaście."{#soego_s83_r21945}' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '"Opowiedz mi o Czerstwej Mary."{#soego_s83_r21946}' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '"Opowiedz mi o Milczącym Królu."{#soego_s83_r21947}' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '"Co możesz mi powiedzieć o tej, jak to ująłeś, „cywilizacji“?"{#soego_s83_r21948}' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '"Co możesz mi powiedzieć o tej, jak to ująłeś, „cywilizacji“?"{#soego_s83_r21949}' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '"Mniejsza o to. Żegnaj."{#soego_s83_r21951}':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    nr '"Oczywiście. Możesz odpocząć w tej komnacie. Będziesz bezpieczny."{#soego_s84_}'

    menu:
        '"Dzięki…"{#soego_s84_r21956}':
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    nr '.{#soego_s85_}'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    nr '.{#soego_s86_}'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    nr '.{#soego_s87_}'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    nr '"Wielki uparciuch, ale godny podziwu w swojej pobożności i poświęceniu obowiązkom. To mój główny rywal. To on utrzymywał tę cywilizację w ryzach przez wiele lat. Jego namiętności biorą swoje źródło z pobożności i bezgranicznym oddaniu służbie… Wartości godne uszanowania, chociaż niewłaściwie ulokowane."{#soego_s88_}'

    menu:
        '"Mam kilka innych pytań."{#soego_s88_r21976}':
            # a309 # r21976
            jump soego_s83

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s88_r21977}':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    nr '"Akasta to brutalna istota. Chyba tylko Milczący Król ma nad nią władzę. Gdyby więc usunąć monarchę, ghule wezmą w swoje dzikie władanie całe katakumby."{#soego_s89_}'

    menu:
        '"Opowiedz mi o Milczącym Królu."{#soego_s89_r21979}':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '"Mam kilka innych pytań.."{#soego_s89_r21980}':
            # a312 # r21980
            jump soego_s83

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s89_r21981}':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    nr '"Czerstwa Mary to stworzenie o dobrym sercu, choć wielce powolne. Niewiele można pojąć z tego, co Mary rzecze, ale i ona, i inne zombie, dalecy są od gwałtowności."{#soego_s90_}'

    menu:
        '"Mam kilka innych pytań.."{#soego_s90_r21983}':
            # a314 # r21983
            jump soego_s83

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s90_r21984}':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    nr '"Nigdy w życiu nie widziałem Milczącego Władcy. Bardzo chciałbym móc powiedzieć ci coś o nim, ale naprawdę nigdy go nie spotkałem. Jego sala tronowa przypuszczalnie znajduje się gdzieś za karmazynowymi wrotami, lecz ja nie mam poza nie wstępu… Hargrimm, kapłan-szkielet, nie zezwala mi na to."{#soego_s91_}'

    menu:
        '"Opowiedz mi o Hargrimmie."{#soego_s91_r21986}':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '"Mam kilka innych pytań…"{#soego_s91_r21987}':
            # a317 # r21987
            jump soego_s83

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s91_r21988}':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    nr '"Są tutaj od wielu stuleci, zajmując się tymi, którzy zmarli w ich komnatach. Ale tak bezgraniczne oddanie służbie nie jest już konieczne… To niemal zbrodnia."{#soego_s92_}'

    menu:
        '"Mam kilka innych pytań.."{#soego_s92_r21990}':
            # a319 # r21990
            jump soego_s83

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s92_r21991}':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    nr '"Są tutaj od wielu stuleci, zajmując tymi, którzy zmarli w ich komnatach. Ale tak bezgraniczne oddanie służbie nie jest już konieczne… To niemal zbrodnia."{#soego_s93_}'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    nr '"Co? Czy to prawda? Och, jeśli tak jest, bądź pewien, że Wielojedność nagrodzi cię za takie nowiny."{#soego_s94_}'

    menu:
        '"Wielojedność?"{#soego_s94_r25248}' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '"Interesujące. Mam kilka pytań…"{#soego_s94_r25252}' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '"Być może. Póki co, bywaj zdrów."{#soego_s94_r25253}' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '"Dobrze. Mam kilka pytań."{#soego_s94_r21994}' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '"Zatem sam mu o tym powiem. Żegnaj."{#soego_s94_r21995}' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    nr '"Ach ty… łotrze!"{#soego_s95_}'

    menu:
        '"Co się…?"{#soego_s95_r21998}':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    nr '"Eee… te drzwi prowadzą do moich prywatnych komnat. Proszę, abyś tam nie zaglądał."{#soego_s96_}'

    menu:
        'Odejdź.{#soego_s96_r22004}':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    nr '"Och! Zaraz pójdę z nim pomówić."{#soego_s97_}'

    menu:
        '"Żegnaj."{#soego_s97_r22006}':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    nr '"Nie, jestem w drodze."{#soego_s98_}'

    menu:
        '"Żegnaj."{#soego_s98_r22008}':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    nr '"Nie, niestety nie. Ale może się pojawić w pobliżu."{#soego_s99_}'

    menu:
        '"Ach tak. Bywaj zdrów."{#soego_s99_r22010}':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr 'Soe przerywa na chwilę. "Ach tak." Nagle zaczyna przechodzić przerażającą przemianę…{#soego_s100_}'

    menu:
        '"Co się…?"{#soego_s100_r22012}':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    nr '"Ech… Twoja pamięć cię zawodzi. Uszkodziłeś mi szyję, to prawda, skręciłeś. Ale żeby złamać? Nic z tych rzeczy."{#soego_s101_}'

    menu:
        '"Pozwolę sobie mieć inne zdanie w tej materii. Czym ty jesteś, Soe?"{#soego_s101_r22015}' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '"Pozwolę sobie mieć inne zdanie w tej materii. Czym ty jesteś, Soe?"{#soego_s101_r22016}' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '"Nie chowasz do mnie urazy?"{#soego_s101_r22018}':
            # a334 # r22018
            jump soego_s74

        '"Powiedziałeś, że jesteś misjonarzem?"{#soego_s101_r22019}':
            # a335 # r22019
            jump soego_s65

        '"A co tutaj robią Grabarze?"{#soego_s101_r22020}' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."{#soego_s101_r22022}':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr 'Grabarz uwalnia się ze twojego uścisku z nadnaturalną szybkością. Złośliwie chichocząc i spluwając syczy "Atakować agenta zbiorowej jaźni czaszkoszczurów! Jakaż to głupota z twojej strony!" Nagle zaczyna gwałtowną przemianę…{#soego_s102_}'

    menu:
        '"Co się…?"{#soego_s102_r22024}':
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    nr '"Śmieszne pytanie! Obudziłeś się na katafalku przedpogrzebowym, w Kostnicy. Sam mi to powiedziałaś. Rzecz jasna, moja rana nie mogła wyglądać gorzej niżeli twoje obrażenia, które sprawiły, że Zbieracze wzięli cię za trupa, czyż nie?"{#soego_s103_}'

    menu:
        '"To bliskie prawdy, ale… mniejsza o to."{#soego_s103_r22027}':
            # a339 # r22027
            jump soego_s104

        '"Mój stan jest… unikalny."{#soego_s103_r22028}':
            # a340 # r22028
            jump soego_s105

        '"Nie. Coś tutaj jest nie tak, i wkrótce dojdę do tego, co to jest."{#soego_s103_r22029}':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    nr 'Soe wzrusza ramionami. "Bardzo dobrze."{#soego_s104_}'

    menu:
        '"Nie chowasz do mnie urazy za to, co się stało?"{#soego_s104_r22033}':
            # a342 # r22033
            jump soego_s74

        '"Powiadasz, że jesteś misjonarzem?"{#soego_s104_r22034}':
            # a343 # r22034
            jump soego_s65

        '"Więc co tutaj robią Grabarze?"{#soego_s104_r22035}' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '"Teraz już czas na mnie. Żegnaj."{#soego_s104_r22038}':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr 'Soe uśmiecha się. "Każdy jest unikalny. Każdy, bez wyjątku. Chyba temu nie zaprzeczysz?"{#soego_s105_}'

    menu:
        '"To bliskie prawdy, ale… mniejsza o to."{#soego_s105_r22040}':
            # a346 # r22040
            jump soego_s104

        '"Nie. Coś tutaj jest nie tak, i wkrótce dojdę do tego, co to jest."{#soego_s105_r22041}':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    nr '"Czym ja jestem? A cóż to znowu za zapytanie?"{#soego_s106_}'

    menu:
        '"Usłyszałeś mnie. Nie jesteś zwykłym Grabarzem… Czym ty jesteś, Soe?"{#soego_s106_r22044}':
            # a348 # r22044
            jump soego_s107

        '"Mniejsza o to."{#soego_s106_r22045}':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr 'Soe krzywi się z niesmakiem "Naprawdę nie wiem, o co ci chodzi."{#soego_s107_}'

    menu:
        '"Nie. Coś tutaj jest nie tak, i wkrótce dojdę do tego, co to jest."{#soego_s107_r22048}':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    nr '"O, kolejny przybysz ze świata żywych. Większość z was pada ofiarą ghuli. Ale żeby aż tak daleko zapuścić się w katakumby? Proszę, proszę. Miałeś dużo szczęścia, śmiałku."{#soego_s108_}'

    menu:
        '"Czyś ty nie jest Soe? Emorik wypytywał o ciebie."{#soego_s108_r22051}' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        '"Soe… Emorik pytał o miejsce twojego pobytu."{#soego_s108_r66173}' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    nr '"Tak, to ja. Pełnie tutaj obowiązki misjonarza z ramienia Grabarzy."{#soego_s109_}'

    menu:
        '"No dobrze. Ale… Sądziłem, że złamałem ci kark…"{#soego_s109_r64617}' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '"Dobrze. Ale… Wydawało mi się, że cię *zabiłem*…"{#soego_s109_r64618}' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '"Czy są tutaj też inni Grabarze?"{#soego_s109_r22054}':
            # a355 # r22054
            jump soego_s66

        '"Gdzie ja jestem?"{#soego_s109_r50792}':
            # a356 # r50792
            jump soego_s77

        '"Dlaczego jestem tutaj więźniem?{#soego_s109_r50793}':
            # a357 # r50793
            jump soego_s78

        '"Teraz Czas już na mnie. Żegnaj."{#soego_s109_r22056}':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    nr '"Tak, to ja."{#soego_s110_}'

    menu:
        '"Poczekaj chwilę… Czy ja przypadkiem nie złamałem ci karku w Kostnicy?"{#soego_s110_r64625}' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '"Poczekaj chwilę… Wydawało mi się, że cię *zabiłem* w Kostnicy…"{#soego_s110_r64626}' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '"Dobrze. Ale jak można się dostać do Milczącego Króla?"{#soego_s110_r22058}' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '"Dobrze. Bywaj zdrów."{#soego_s110_r22060}' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    nr '"Owszem, zbiorowa jaźń czaszkoszczurów. Idź do katakumb, na wschód od Łkających Kamieni. Tam znajdziesz drogę."{#soego_s111_}'

    menu:
        '"Interesujące. Mam kilka pytań…"{#soego_s111_r25250}':
            # a363 # r25250
            jump soego_s83

        '"Być może. Póki co, bywaj zdrów."{#soego_s111_r25251}':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr 'Soe macha ręką z lekceważeniem. "Ależ to nic! To był dla mnie zupełny drobiazg! Musisz wiedzieć, że spoczywa na mnie likantropiczne błogosławieństwo. Wszystkie rany goją się w mgnieniu oka."{#soego_s112_}'

    menu:
        '"Ach tak… Zatem, jak mogę dostać się do Milczącego Króla?"{#soego_s112_r64621}':
            # a365 # r64621
            jump soego_s80

        '"Dobrze… Zatem bywaj zdrów."{#soego_s112_r64622}':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    nr '"Witaj…" Człowiek zwraca ku tobie oblicze i chyli się w lekkim ukłonie. Nagle dostrzegasz, że krwawy odcień jego źrenic, to nie tyle rezultat wyczerpania, co intensywnego czerwonego barwnika do oczu. "Jestem Soe. W czym mogę ci pomóc?"{#soego_s113_}'

    menu:
        '"Chciałbym opuścić Kostnicę. Mógłbyś mi w tym pomóc?"{#soego_s113_r66712}':
            # a367 # r66712
            jump soego_s114

        '"Mam kilka pytań…"{#soego_s113_r66713}':
            # a368 # r66713
            jump soego_s114

        '"Po prostu tędy przechodziłem. Żegnaj."{#soego_s113_r66714}':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr 'Ledwo zdążyłeś zacząć wypowiedź, kiedy wargi Soego nagle rozstępują się, odsłaniając rząd brudnych, ostrych zębów. I oto twój rozmówca pochyla się i zaczyna obwąchiwać cię jak szczur.{#soego_s114_}'

    menu:
        '"Ech… Czemu, u wszystkich diabłów, tak mnie obwąchujesz?"{#soego_s114_r66715}':
            # a370 # r66715
            jump soego_s115

        'Skręć mu kark, kiedy się ku tobie pochyli.{#soego_s114_r66716}' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        'Skręć mu kark, kiedy się ku tobie pochyli.{#soego_s114_r66717}' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '"Mniejsza o to… Żegnaj."{#soego_s114_r66718}':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    nr '"Twój ubiór… Te szaty. One pachną kimś innym. To nie są twoje szaty." Na ustach Soego wykwita osobliwy uśmiech, a oczy zajmują się niemal dzikim blaskiem. "*Kim* ty jesteś?"{#soego_s115_}'

    menu:
        '"E… Ja tylko sobie pożyczyłem te szaty, abym móc opuścić to miejsce bez przeszkód. Obudziłem się w jednej z komnat sekcyjnych na górze."{#soego_s115_r66719}':
            # a374 # r66719
            jump soego_s42

        '"Masz rację. Te szaty faktycznie nie są moje. A gdybyś zastanawiam się nad tym, jak stałem się właścicielem tego stroju, chętnie ci odpowiem: Nie twoja sprawa."{#soego_s115_r66720}':
            # a375 # r66720
            jump soego_s6

        'Skręć mu kark, zanim zdąży zawołać po pomoc.{#soego_s115_r66721}' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        'Skręć mu kark, zanim zdąży zawołać po pomoc.{#soego_s115_r66722}' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '"To sprawa bez znaczenia. W każdym bądź razie, czas już na mnie."{#soego_s115_r66723}':
            # a378 # r66723
            jump soego_s17
