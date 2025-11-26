init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Vidíš unaveně vypadajícího muže ve vybledlých černých šatech. Jeho úzký obličej je velmi bledý a vypadá to, že asi dlouho nespal: ramena má pokleslá a pod nateklýma očima jsou kruhy. Zdá se, že tě nepoznal… musel si tě splést s některým z pracujících dělníků.'

    menu:
        '"Zdravím."':
            # a0 # r1432
            jump soego_s1

        '"Kdo jsi?"':
            # a1 # r1433
            jump soego_s1

        '"Co je tohle za místo?"':
            # a2 # r1434
            jump soego_s1

        '"Měl bych nějaké otázky…"':
            # a3 # r1435
            jump soego_s1

        'Nechej ho na pokoji.':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr 'Spalovač se k tobě otočí, když ho oslovíš. "Par… pardon? To mluvíš se mmnou?"'

    menu:
        '"Jo, mluvil. Měl bych nějaké otázky…"':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '"Ne. Nemluvil."':
            # a6 # r1439
            $ soegoLogic.r1439_action()
            jump soego_s2

        'Zůstaň potichu.' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        'Zůstaň potichu.' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        'Odejdi. Rychle.':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    nr '"U všech Mocností!" Spalovač nejdříve uskočí a pak si tě pozorně prohlíží. Všiml sis, že jeho oči nejsou podlité krví, ale jsou rudě zbarveny. "Sirrah, vysloužila sis ode mne nelichotivé uznání: vytvořila jsi dokonalého zombie." Trochu se uklonil. "Já jsem Soego. Smím se zeptat, co tu hledáš…" Kouká na tvé jizvy. "Vypadáš tak, že?"'

    menu:
        '"To tě nemusí zajímat."':
            # a10 # r1444
            jump soego_s6

        '"Nejsem si jistý co tu vůbec dělám. Probudil jsem se na jedné z těch kamenných desek v hořejším patře a moje paměť je… trošičku zmatená."':
            # a11 # r1445
            jump soego_s7

        '"Trošku sem se tady v těch halách zamotal a vypadá to, že nemůžu najít východ. Můžeš mi pomoci?"' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '"Snažím se odtud dostat pryč."':
            # a13 # r1447
            jump soego_s13

        '"Potřeboval jsem změnu."':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        'Na tohle opravdu nemám čas. Sbohem.':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr 'Spalovač tě chvíli pozoruje a pak potřese hlavou. "Další přeludy…" Nadechne se a promne si oči. "Ty moje horečky se stále zhoršují…"'

    menu:
        '"To není přelud. Měl bych nějaké otázky…"':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'Chyť ho pod krkem, když odvrátil pozornost.' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        'Chyť ho pod krkem, když odvrátil pozornost.' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '"Měl bych nějaké otázky."':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'Tiše odejdi.':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr 'Spalovač se na tebe opatrně podívá, pak se k tobě nakloní… ohrne rty, odkryje tím řadu ostrých, špinavých zubů a začne tě očichávat jakoby byl krysa.'

    menu:
        '"Fuj… proč mě, krucinál, očucháváš?"':
            # a21 # r1456
            $ soegoLogic.r1456_action()
            jump soego_s2

        '"Podívej, měl bych k tobě nějaké otázky…"':
            # a22 # r1457
            $ soegoLogic.r1457_action()
            jump soego_s2

        'Chyť ho pod krkem, když se k tobě naklání.' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        'Chyť ho pod krkem, když se k tobě naklání.' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        'Odejdi. Rychle.':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr 'Když už se chystáš odejít, Spalovač přestane s očicháváním a potichu zašeptá. "U všech Mocností!" Stáhl se zpět a oči se mu rozšířily. Všiml sis, že jeho oči nejsou podlité krví, ale jsou rudě zbarveny. "Sirrah, vysloužila sis ode mne nelichotivé uznání: vytvořila jsi dokonalého zombie." Trochu se uklonil. "Já jsem Soego. Smím se zeptat, co tu hledáš… alespoň to tak vypadá?"'

    menu:
        '"To tě nemusí zajímat."':
            # a26 # r1462
            jump soego_s6

        '"Nejsem si jistý co tu vůbec dělám. Probudil jsem se na jedné z těch kamenných desek v hořejším patře a moje paměť je… trošičku zmatená."':
            # a27 # r1463
            jump soego_s7

        '"Ztratil jsem se a hledám odtud východ. Můžeš mi pomoci?"' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '"Snažím se dostat odtud pryč."':
            # a29 # r1465
            jump soego_s13

        '"Potřeboval jsem změnu."':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '"Opravdu na tohle nemám čas. Sbohem."':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    nr '"Oh, ale obávám se, že to *je* moje věc." Soegovy oči září rudě a koutky úst mu lehce poškubávají, jakoby něco tušil. "Možná…" ušklíbl se a odkryl tím řadu ostrých nečistých zubů. "Možná bych měl zavolat stráže? Ano… ano, myslím, že to udělám."'

    menu:
        '"Počkej chvíli! Ztratil jsem se… trošku sem se tady v těch halách zamotal a vypadá to, že nemůžu najít východ. Můžeš mi pomoci?"' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '"Zastav! Nevolej stráže! Jenom se chci dostat odtud pryč… můžeš mi pomoci?"' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        'Chyť ho pod krkem, než může někoho zavolat.' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        'Chyť ho pod krkem, než může někoho zavolat.' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '"Tak je tedy zavolej. Rád se s nimi setkám."':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    nr '"Opravdu?" Spalovač tě zkoumá. "*Vypadá to* jako by tě už zašívali. Nevím, jak jsi mohl přežít takovou bolest… *bolí* tě to? Vypadá to hrozně."'

    menu:
        '"Jak jsem se sem dostal?"':
            # a37 # r1475
            jump soego_s54

        '"Na tohle fakt nemám čas. Sbohem."':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr 'Soego kývne a koutky úst mu lehce poškubávají.  "Proč… no samozřejmě. Tyto haly *mohou* zmást každého návštěvníka. Sice jsi neuděl nic špatného, ale ty nemáš povolen vstup do Márnice po devátém zvonění zvonu - počkej, hned ti odemknu bránu."'

    menu:
        '"Děkuju."' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '"Děkuju."' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr 'Soego se dotkne svého pásku, nervózně po něm tápe a pak zasyčí. "Klíč!" Jeho oči září jasně rudě a jeho rty se ve vzteku ohrnou… jeho výraz připomíná rozzuřené zvíře. "Někdo mi ukradl klíč!" Obrátí se k tobě a zabručí. "Ty! Tys to musel udělat!"'

    menu:
        'Blafuj: "No… počkej! Proč bych se tě na něj ptal, kdybych ti to ukradl?"':
            # a41 # r1481
            jump soego_s18

        'Lež: "O čem to mluvíš?! Nemám s tím nic společného!"':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'Chyť ho pod krkem, než může někoho zavolat.' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        'Chyť ho pod krkem, než může někoho zavolat.' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '"A co kdybych ho ukradl? Co bys s tím mohl dělat?"':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr 'Soego si bere velký klíč, který má zastrčený za páskem, a odchází směrem ke vstupní bráně. Nemůžeš nic dělat, ale povšiml sis jeho podivné chůze… je nahrbený dopředu, jako kdyby chtěl udržet rovnováhu.'

    menu:
        '"Jak zvláštní chůzi má."' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        'Počkej na něj než odemkne bránu.' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr 'Soego odchází k bráně a strká klíč do zámku. O chvilku později se ze zámku ozve skřípavý zvuk… zvuk se nese celou hlavní halou a mramorovými podlažími pronikla ozvěna.'

    menu:
        'Čekej na něj až se vrátí.':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    nr '"Dobře. Vstupní brána je teď odemčená, ale už se sem nemůžeš vrátit."'

    menu:
        '"Můžu ti položit pár otázek předtím než odejdu?"':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '"Díky Soego. Teď už půjdu."':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    nr '"Dostat se pryč?" Soego se zamračí. "Jak ses dostal dovnitř?"'

    menu:
        '"Byl jsem sem přivezen už dříve, čemuž se dost divím. Jsem připraven odejít… ale vypadá to, že jsem zabloudil. Můžeš mi pomoci najít východ?"' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '"Opravdu nevím."' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '"Opravdu nevím."' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '"Probudil jsem se na jedné z těch kamenných desek v hořejším patře a moje paměť je… trošičku zmatená."':
            # a54 # r1498
            jump soego_s7

        '"Na tohle opravdu nemám čas. Sbohem."':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr 'Soego se podivil. "Velice podivné." Znovu tě studuje. "Je možné, že jsi jeden z těch, co uzavřeli smlouvu?"'

    menu:
        '"Ech, „co uzavřeli smlouvu“?"':
            # a56 # r1501
            jump soego_s23

        '"Na tohle opravdu nemám čas. Sbohem."':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr 'Když už se chystáš odejít, Spalovač přestane s očicháváním a potichu zašeptá. "U všech Mocností!" Stáhl se zpět a oči se mu rozšířily. Všiml sis, že jeho oči nejsou podlité krví, ale jsou rudě zbrarveny. "Sirrah, vysloužila sis ode mne nelichotivé uznání: vytvořila jsi dokonalého zombie." Trochu se uklonil. "Já jsem Soego. Smím se zeptat, co tu hledáš… alespoň to tak vypadá?"'

    menu:
        '"To tě nemusí zajímat."':
            # a58 # r1504
            jump soego_s6

        '"Nejsem si jistý co tu vůbec dělám. Probudil jsem se na jedné z těch kamenných desek v hořejším patře a moje paměť je… trošičku pomatená."':
            # a59 # r1505
            jump soego_s7

        '"Ztratil jsem se a hledám východ. Můžeš mi pomoci?"' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '"Snažím se dostat odtud pryč."':
            # a61 # r1508
            jump soego_s13

        '"Potřeboval jsem změnu."':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '"Na tohle opravdu nemám čas. Sbohem."':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    nr '"Aha…" Soegovy oči září rudě a koutky jeho úst sebou lehce poškubávahjí jako kdyby něco tušil. "Možná…" ušklíbl se a odkryl tím řadu ostrých nečistých zubů. "Možná bych měl zavolat stráže? Ano… ano, myslím, že to udělám."'

    menu:
        '"Počkej chvíli! Ztratil jsem se… zabloudil jsem tady v těch halách a vypadá to, že nemůžu najít východ. Můžeš mi pomoci?"' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '"Zastav! Nevolej stráže! Chci se dostat odtud pryč… můžeš mi pomoci?"' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        'Chyť ho pod krkem než může někoho zavolat.' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        'Chyť ho pod krkem než může někoho zavolat.' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '"Tak je teda zavolej. Rád se s nimi setkám."':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr 'Když už se chystáš odejít, Soego zasyčí… pak se náhle utiší a pozvedne ruku. "Ne, ne. Obávám se, že nemůžeš odejít. Něco tu není v pořádku. Myslím, že bude nejlepší tuhle záležitost vyjasnit…" Koutky úst mu lehce poškubávají a oči se lesknou. "…možná by nám s tím mohli stráže pomoci. Ano… možná bych je měl zavolat."'

    menu:
        '"Počkej chvíli! Ztratil jsem se… zabloudil jsem tady v těch halách a vypadá to, že nemůžu najít východ. Můžeš mi pomoci?"' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '"Zastav! Nevolej stráže! Chci se dostat odtud pryč… můžeš mi pomoci?"' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        'Chyť ho pod krkem než může někoho zavolat.' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        'Chyť ho pod krkem než může někoho zavolat.' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '"Tak je teda zavolej. Rád se s nimi setkám."':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr 'Soego udělal krok zpět a třikrát krátce tlesknul. Krátce nato je Márnicí slyšet zvonění velkého železného zvonu.'

    menu:
        '"Nuže dobrá…"':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr 'Dřív, než stačí cokoliv říci, pevně ho chytíš za spánky a prudce mu trhneš hlavou.'

    menu:
        '"Nemůžu tě nechat varovat tvé přátele…"':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr 'Ozvalo se *křupnutí*, když jsi mu zlomil vaz… ale místo toho, aby padl mrtev k zemi, vydává Spalovač ze sebe přidušené výkřiky a snaží se vytrhnout z tvého sevření!'

    menu:
        '"Co…?!"' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '"Co…?!"' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr 'Spalovač vypadá překvapeně jako ty; oči má divoce otevřené a z hrdla mu vychází bublání… víš jistě, žes mu zlomil vaz, nakonec tomu napovídá i jeho krk, zkroucený v nepřirozeném úhlu. Ale stále je živý! Jak na něj ohromeně zíráš, třikrát za sebou slabě zatleská. Krátce na to ze v halách Márnice začne rozléhat zvonění velkého železného zvonu.'

    menu:
        '"Nuže dobrá…"':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr '*Něco* muselo Spalovače varovat… předtím než ses mohl na něj vrhnout, uskočil dozadu, oči se mu rudě zableskly a vycenil ostré zuby. Se zasyčením krátce třikrát tlesknul. Krátce na to ze v halách Márnice začne rozléhat zvonění velkého železného zvonu.'

    menu:
        '"Nuže dobrá…"':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    nr '"Jsou takoví, kteří podepsali kontrakt, který dovoluje Spalovačům použít po smrti jejich těla. Je možné, že jsi byl zachycen… v drobné administrativní chybičce, někdo to asi popletl. Jsi mnohem bystřejší, než naše zombie."'

    menu:
        '"Lidé vám po smrti prodávají svá těla?"':
            # a80 # r4793
            jump soego_s24

        '"Och. Mám nějaké otázky…"':
            # a81 # r4794
            jump soego_s26

        '"Na tohle nemám čas. Sbohem."':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    nr '"Och, ano. Výměnou za malou sumu v mědi je mnoho osob ochotno prodat své tělo, které nebudou potřebovat, až dosáhnou Pravé Smrti."'

    menu:
        '"Co s těmi těly děláte?"':
            # a83 # r4797
            jump soego_s25

        '"Aha. Nebude ti vadit, jestli se tě na něco zeptám?"':
            # a84 # r4798
            jump soego_s25

        '"Díky za informace. Sbohem."':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    nr '"Provádějí v márnici dělnické práce. Přenášejí těla, čistí podlahy, pomáhají nám v přípravě těl na pohřbení… relativně jednoduché úkoly. Je to nešťastné, ale nejsou schopni poslechnout komplikované instrukce."'

    menu:
        '"No,  „Kontraktovaný“ nebo ne, jak se odtud dostanu, když nejsem mrtvý?"':
            # a86 # r4801
            jump soego_s54

        '"Aha. Nebude ti vadit, jestli se tě na něco zeptám?"':
            # a87 # r4802
            jump soego_s26

        '"Díky za informace. Sbohem."':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr 'Soego přikývl. "Můžeš položit svou otázku."'

    menu:
        '"Rád bych odešel. Můžeš mě navést k východu?"' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '"Můžeš mě odtud dostat?"' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '"Víš o tom, že v druhém patře je mrtvola, která je ve skutečnosti zamaskovaný člověk?"' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '"Jestli se můžu zeptat… jsi v pořádku? Vypadáš unaveně."':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '"Jseš Soego, viď? Slyšel jsem, že jsi na Spalovače trochu divný. Že máš rád krysy."' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '"Jseš Soego, viď? Slyšel jsem, že jsi na Spalovače trochu divný. Že máš rád krysy."' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '"Neznáš někoho jménem Pharod?"' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '"Ztratil jsem deník. Neviděl jsi někde nějaký?"' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    nr '"Pardon?"'

    menu:
        '"O patro výš je jeden muž maskovaný jako mrtvola. Myslím si, že je tady, aby špehoval Spalovače."' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '"O patro výš je jeden muž maskovaný jako mrtvola. Myslím si, že je tady, aby špehoval Spalovače."' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '"Zapomeň na to.  Mám ještě nějaké otázky…"':
            # a101 # r4838
            jump soego_s26

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '"Nevadí. Musím teď jít. Sbohem."' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    nr '"Co? Proč by…?" Soegův hlas náhle přešel do syčení, rty se mu odhrnuly a odhalily řadu křivých zubů. "*Anarchista.*" Oči mu rudě zazářily. "Anarchista. *Tady.*" Najednou si uvědomil tvou přítomnost a ovládl se. "Děkuji ti za informaci. Dohlédnu na to, aby stráže tuto záležitost vyřešily."'

    menu:
        '"Žádný problém. Mám ještě nějaké otázky…"':
            # a104 # r4852
            jump soego_s26

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr 'Už jsi to málem řekl, ale pak ses zarazil. Když se díváš na Soega, máš podivný pocit… z nějakého důvodu jsi přesvědčen, že bys neměl nic říct.'

    menu:
        '"Slyšel jsem, že jsi divný, Soego. Že máš rád krysy."':
            # a107 # r4856
            jump soego_s30

        '"Uh… hele, chtěl jsem se na něco zeptat."':
            # a108 # r4857
            jump soego_s26

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '"To nic. Už musím jít. Sbohem."' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr 'Soego je chvíli zticha a pečlivě si tě prohlíží. Oči mu rudě září a z koutku úst mu vychází tiché syčení. "Myslím, že tvá návštěva je už u konce." Překvapil tě, protože ustoupil a rychle třikrát zatleskal. Jako odpověď se začíná Márnicí rozléhat zvonění ohromného železného zvonu.'

    menu:
        '"Co to…? Co to děláš?"':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '"Tak teda fajn. Připrav se chcípnout, Soego."':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr 'Soegovi se podařilo vykouzlit chabý úsměv, koutky úst se mu cukají. "Nedávno jsem onemocněl… jenom zvýšená teplota, nic vážného. Někdy se mi špatně… spí."'

    menu:
        '"Mohl bych nějak pomoci?"':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '"Oh. Mám ještě nějaké otázky…"':
            # a114 # r4865
            jump soego_s26

        '"Aha. No, já už musím jít. Sbohem."' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '"Aha. No, já už musím jít. Sbohem."' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr 'Soego zavrtěl hlavou. "Ne, ne, ale díky za starost… Vydržím to." Zamračil se. "Chtěl jsi ještě něco?"'

    menu:
        '"Ano. Mám ještě nějaké otázky…"':
            # a117 # r4869
            jump soego_s26

        '"Ne, už tě nebudu zdržovat. Díky za informace."' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '"Ne, už tě nebudu zdržovat. Děkuji za informace.."' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    nr '"Pharod? Samozřejmě že ho znám." Zamračil se a jeho oči rudě zazářily. "Zvrhlý muž. Nemá žádný respekt k mrtvým a k živým toho cítí ještě méně. Je to mrchožrout. Sběrač."'

    menu:
        '"Sběrač?"':
            # a120 # r4873
            jump soego_s34

        '"Nevíš, kde bych ho mohl najít?"':
            # a121 # r4874
            jump soego_s36

        '"Oh. Mám ještě nějaké otázky…"':
            # a122 # r4875
            jump soego_s26

        '"Aha. Možná už bych měl jít."' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '"Aha. Možná už bych měl jít."' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    nr '"Sběrači si vydělávají na živobytí tak, že sbírají mrtvé a nosí je sem do Márnice. My se pak postaráme, že se tělům dostane správného pohřbu."'

    menu:
        '"Takže kdyby Sběrač našel tělo… například moje… tak by ho sem přinesl a prodal vám ho?"' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '"Takže tenhle Sběrač Pharod… nevíš, kde bych ho mohl najít?"':
            # a126 # r4880
            jump soego_s36

        '"Oh. Mám ještě nějaké otázky…"':
            # a127 # r4881
            jump soego_s26

        '"Aha. No, já už musím jít. Sbohem."' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '"Aha. No, já už musím jít. Sbohem."' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    nr '"Ano."'

    menu:
        '"Hmmmm. Najednou je extrémně důležité, abych toho Pharoda našel. Nevíš, kde bych ho měl hledat?"':
            # a130 # r4885
            jump soego_s36

        '"Oh. Mám ještě nějaké otázky…"':
            # a131 # r4886
            jump soego_s26

        '"Díky za informace. Sbohem."' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '"Díky za informace. Sbohem."' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    nr '"Vím, že přebývá v Úlu, ve slumech kolem Márnice, ale nevím kde přesně. Někteří ze Sběračů by to ale vědět mohli, pokud s tebou budou chtít ovšem mluvit."'

    menu:
        '"Co to ti Sběrači dělají?"':
            # a134 # r4890
            jump soego_s34

        '"Oh. Mám ještě nějaké otázky…"':
            # a135 # r4891
            jump soego_s26

        '"Díky za informace. Sbohem."' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '"Díky za informace. Sbohem."' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    nr '"Deník?" Soego se tváří zmateně. "Ne, žádný jsem neviděl."'

    menu:
        '"No tak to nic. Mám ještě nějaké otázky…"':
            # a138 # r4895
            jump soego_s26

        '"Stejně díky. Sbohem."' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '"Stejně díky. Sbohem."' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Vidíš unaveného muže v černém rouchu. Má úzkou a velice bledou tvář a vypadá to, že se asi v poslední době moc nevyspal: má svěšená ramena a pod krvavýma očima váčky. Je ztracený ve svých myšlenkách, vůbec si tě nevšiml.'

    menu:
        '"Zdravím…"' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.r66706_action()
            jump soego_s39

        '"Zdravím…"' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.r66707_action()
            jump soego_s113

        'Zanechej ho o samotě s jeho myšlenkami.':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    nr '"Zdravím…" Muž se k tobě otočil a mírně se uklonil. Najednou sis uvědomil, že nemá oči podlité krví, ale že mu rudě září. "Jsem Soego. Jak ti mohu…" Najednou si všiml tvých jizev a jeho ústa sebou zaškubala. "Omlouvám se, pane, ale ztratil ses?"'

    menu:
        '"Ano."':
            # a144 # r4905
            jump soego_s40

        '"Ne."':
            # a145 # r4906
            jump soego_s41

        '"Ne, neztratil jsem se. Chtěl bych se zeptat…"':
            # a146 # r4907
            jump soego_s41

        '"Ne. Jenom hledám východ. Sbohem."':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    nr '"Tak dobrá tedy…" Koutky Soegových úst sebou zaškubaly, jakoby v nějaké předtuše. "Tak v tom případě zavolám stráže, aby tě odvedly. Počkej chvíli." Opravdu to vypadá, že se chystá volat stráže.'

    menu:
        '"Počkej chvíli! Prosím… Není nutné volat stráže. Přišel jsem na pohřeb a teď jsem se tady nějak zamotal… Můžeš mě prosím tě vyvést ven?"' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '"Ne! Neztratil jsem se, přeřekl jsem se."':
            # a149 # r4911
            jump soego_s50

        'Zlom mu vaz, než stačí zařvat.' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        'Zlom mu vaz, než stačí zařvat.' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        'Odejdi. Rychle.':
            # a152 # r4914
            jump soego_s18

        'Počkej.':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    nr '"Nevzpomínám si, že bych tě přijímal." Soego si tě podezřívavě prohlíží, jeho oči ve světle loučí rudě září. "Mohu se tě zeptat, co tady děláš?"'

    menu:
        '"Přišel jsem sem na pohřeb, vzdát úctu zesnulému. Chystám se odejít… ale nějak jsem se tady zamotal. Můžeš mi poradit, jak se dostanu k východu?"' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '"To není tvoje starost."':
            # a155 # r4918
            jump soego_s6

        '"Probral jsem se na stole ve vaší preparační místnosti."':
            # a156 # r4919
            jump soego_s42

        '"Přišel jsem sem na návštěvu."':
            # a157 # r4920
            jump soego_s43

        '"Přišel jsem na pohřeb, ale asi jsem to popletl."' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        'Nakloň se k němu, jako bys mu chtěl něco zašeptat do ucha a pak mu ve vhodné chvíli zlom vaz.':
            # a159 # r4922
            jump soego_s51

        'Odejdi. Rychle.':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr 'Tváří se překvapeně. "Ty… ses probral na stole v preparační místnosti?"'

    menu:
        '"Uh, ne. Přeřekl jsem se."':
            # a161 # r4925
            jump soego_s50

        '"Ano. Vím, že se tomu dá jenom těžko uvěřit, ale je to pravda. Opravdu jsem se tam probudil."':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr 'Soego přikývl. "Za kým jsi přišel? S potěšením ti ukážu cestu."'

    menu:
        '"Po tom ti nic není."':
            # a163 # r4928
            jump soego_s6

        '"Přišel jsem za Dhallem."' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '"Přišel jsem za Deionarrou."' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        'Lež: "Uh… Adahn. Ještě tady pracuje, nebo…?"' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'Lež: "Uh… Adahn. Ještě tady pracuje, nebo…?"' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '"Uh, za nikým. Přeřekl jsem se."':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    nr '"Dhall? Dhalla najdeš v přijímací místnosti o patro výš." Koutek Soegových úst sebou zaškubal. "Má dost práce a s jeho zdravím to není moc slavné. Pokud to není opravdu nutné, raději ho neobtěžuj."'

    menu:
        '"Co je s Dhallem špatného?"':
            # a169 # r4935
            jump soego_s46

        '"Přijímací místnost?"':
            # a170 # r4936
            jump soego_s45

        '"Dobrá tedy. Budu se snažit, aby byla má návštěva co nejkratší. Sbohem."':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    nr '"Ano… do Přijímací místnosti se přinášejí mrtvoly nalezené ve městě. Jsou tam zapsány a připraveny na pohřeb."'

    menu:
        '"Co je s Dhallem špatného?"':
            # a172 # r4939
            jump soego_s46

        '"Děkuju za informace. Budu se snažit, aby byla má návštěva co nejkratší. Sbohem."':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    nr '"Oh, není s ním nic špatného. Dhall je…" Soego zacvakal zuby. "…*starý.* Jeho nadšení pro katalogizování mrtvých už brzy skončí. Trpí chorobou, po které bude bez pochyby brzy následovat smrt."'

    menu:
        '"Dobrá tedy. Budu se snažit, aby byla má návštěva co nejkratší. Sbohem."':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    nr '"Deionarra? V severozápadní pamětní hale je pohřbena žena tohoto jména. To jí hledáš?"'

    menu:
        '"Ano… můžeš mi říct, co se jí stalo?"':
            # a175 # r4944
            jump soego_s48

        '"Ano. Půjdu jí vzdát úctu."':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    nr '"Nevím, ale už je tady nějaký čas. Její otec by mohl vědět, co jí potkalo… často sem přichází ze své kanceláře v Horní čtvrti. Bylo to jeho přání, aby byla umístěna zde v pamětní hale."'

    menu:
        '"Děkuju za informace. Půjdu jí vzdát úctu."':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    nr '"Adahn…" Soegovy oči se zúžily a rudý nádech, kterého sis všiml již předtím, zesílil. "Nikdo tohoto jména v halách Márnice nepřebývá, ať živý či mrtvý." Jeho ústa sebou zaškubala a pak najednou překvapivě zavětřil.'

    menu:
        '"Uh… tak to jsem se musel přeřeknout."':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr 'Soegovy ústa sebou znovu zaškubala a jeho oči začaly zářit. "Tak co tady tedy pohledáváš?"'

    menu:
        '"Byl jsem tady na pohřbu, vzdát úctu. Chystám se odejít, ale nějak jsem se ztratil. Můžeš mi poradit, jak najdu východ?"' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '"Po tom ti nic není."':
            # a180 # r4952
            jump soego_s6

        '"Probral jsem se na stole ve vaší preparační místnosti."':
            # a181 # r4953
            jump soego_s42

        '"Přišel jsem sem na návštěvu."':
            # a182 # r4954
            jump soego_s43

        '"Přišel jsem sem na pohřeb."' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        'Nakloň se k němu, jako bys mu chtěl něco zašeptat do ucha a pak mu ve vhodné chvíli zlom vaz.':
            # a184 # r4956
            jump soego_s51

        'Zdrhej.':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr 'Soego se zamračil, když ses naklonil. Všiml sis, že zavětřil. Oči se mu náhle zúžily a vypadá to, že začne volat stráže.'

    menu:
        'Zlom mu vaz, než stačí zařvat.' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        'Zlom mu vaz, než stačí zařvat.' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr 'Vrhl ses po něm. Soego uskočil, oči mu rudě září a má vyceněné zuby. Se zasyčením třikrát zatleskal. Jako odpověď se začíná Márnicí rozléhat zvonění ohromného železného zvonu.'

    menu:
        '"Dobrá tedy…"':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    nr '"Koho pohřbívali? Možná, že se obřad odehrává na nějakém jiném místě Márnice."'

    menu:
        '"Nerozuměl jsi mi… to MĚ pohřbívali."':
            # a189 # r4963
            jump soego_s57

        '"Omlouvám se… přeřekl jsem se. Neznám jméno zesnulého."':
            # a190 # r4964
            jump soego_s50

        '"Jmenuje se Deionarra."' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        'Lež: "Jmenuje se… uh, Adahn."' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'Lež: "Jmenuje se… uh, Adahn."' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        'Nakloň se k němu, jako bys mu chtěl něco zašeptat do ucha a pak mu ve vhodné chvíli zlom vaz.':
            # a194 # r4969
            jump soego_s51

        'Zdrhej.':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    nr '"Dobrá…" Soego zašilhal. Vypadá zmateně. "Určitě tady došlo k omylu. Buď tě sem přivedli pokrevní příbuzní, nějaký Spalovač, nebo…" Soego najednou zasyčel, jako by ho napadlo něco nepříjemného. "Nebo jeden ze *Sběračů*."'

    menu:
        '"Sběrači?"':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    nr '"Ano, Sběrači… banda mrchožroutů, kteří sem přinášejí mrtvoly. Možná si mysleli, že jsi mrtvý…" Soego zasyčel a v očích se mu zablesklo. "… a byli tak zaslepení blýskáním měďáků, že je ani nenapadlo ověřit si to, než tě sem přitáhli." Soego si tě prohlíží. "Máš štěstí, že ses probral… jinak by ses možná dočkal Pravé Smrti dřív, než by nastal tvůj čas."'

    menu:
        '"Tak v tom případě došlo k omylu… a já bych rád odešel. Teď."':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr 'Soego přikývl a v koutcích úst mu zacukalo. "Proč… jistě, jistě. Počkej, otevřu ti bránu."'

    menu:
        '"Dobrá."' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '"Dobrá."' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    nr '"Ty?"'

    menu:
        '"Ano, *já*. Probral jsem se na jednom stole nahoře."':
            # a200 # r4978
            jump soego_s7

        '"Omlouvám se… přeřekl jsem se."':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr 'Když ses přiblížil, Soego zavětřil a vzhlédnul. Když tě uviděl, zamračil se. "Odemknul jsem ti bránu. Proč tady ještě pořád jsi?"'

    menu:
        '"Než odejdu, mám pro tebe pár otázek."':
            # a202 # r4981
            jump soego_s26

        '"Právě jsem na cestě k bráně. Sbohem."':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr 'Když ses přiblížil, Soego zavětřil a vzhlédnul. Když tě uviděl, lehce se uklonil. "Našel jsi, cos hledal?"'

    menu:
        '"Ano, děkuji ti. Omlouvám se, ale nějak jsem se zamotal… můžeš mě navést k východu?"' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '"Ano, rád bych teď odešel. Můžeš mě zavést k východu."' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '"Ano a teď už mířím k východu. Sbohem."':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr 'Soego přikývl a koutek úst mu zacukal. "Proč… jistě. Tohle místo může návštěvníky zmást. Pojď, otevřu ti bránu ven."'

    menu:
        '"Děkuju ti."' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '"Děkuju ti."' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    nr '"To je podivné." V Soegovýh očích se rudě zablesklo a koutek jeho úst sebou zaškubal, jakoby v nějaké předtuše. "Možná…" Odfrkl si a odhalil řadu ostrých a špinavých zubů. Možná bych měl zavolat stráže? Ano… ano, myslím, že to udělám."'

    menu:
        '"Počkej chvíli! Ztratil jsem se… nějak jsem se tady zamotal a teď nemůžu najít východ. Můžeš mi pomoct?"' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '"Stop! Nevolej stráže! Já se jenom chci dostat pryč… můžeš mi pomoct?"' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        'Zlom mu vaz, než stačí zařvat.' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        'Zlom mu vaz, než stačí zařvat.' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '"Tak je zavolej. Rád se s nimi seznámím."':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr 'Soego přikývl… a v koutcích úst mu znovu zacukalo. Zřejmě si to ani neuvědomuje. "Vrať se, až vzdáš úctu zesnulému a já ti pak otevřu bránu. Je po devíti zazvoněních, takže budeš muset odejít, jakmile si vyřídíš svou věc."'

    menu:
        '"Víš, vlastně bych to mohl udělat jindy. Můžeš mě pustit ven?"':
            # a214 # r4997
            jump soego_s8

        '"Děkuju ti. Vrátím se."':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    nr '"Hele, další živý člověk. Většinu zabijou ghúlové, takhle daleko v katakombách; měl jsi štěstí."'

    menu:
        '"Ty jsi Soego, z Márnice. Co tady děláš?"' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '"Kdopak jsi?"' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '"Kde to jsem?"' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '"Proč jsem tady uvězněný?"' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '"Snad. Sbohem."' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    nr '"Já jsem Soego, ze Společenství Spalovačů. Jsem tady jako misionář." Uklání se.'

    menu:
        '"Misionář?"':
            # a221 # r21662
            jump soego_s65

        '"Co tady Spalovači dělají?"' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '"Kde jsem?"':
            # a223 # r64595
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a224 # r64596
            jump soego_s78

        '"Nazdar, a sbohem."':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    nr '"Ano, přišel jsem do těchto katakomb poté, co jsem slyšel pověsti o nemrtvých, kteří jsou v těchto končinách. Doufám, že je zachráním."'

    menu:
        '"Zachráníš?"':
            # a226 # r21667
            jump soego_s67

        '"Kde jsem?"':
            # a227 # r64597
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a228 # r64599
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    nr '"Jsem tu sám. Přišel jsem do těchto katakomb poté, co jsem slyšel pověsti o nemrtvých kteří jsou v těchto končinách. Doufám, že je zachráním."'

    menu:
        '"Zachráníš?"':
            # a230 # r21671
            jump soego_s67

        '"Kde jsem?"':
            # a231 # r64600
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a232 # r64601
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    nr '"Ano, vášeň je váže k tomuto falešnému životu. Doufám, že je naučím zapomenout tyto vášně, opustit tento falešný život a dosáhnout Pravé smrti."'

    menu:
        '"Falešný život?"':
            # a234 # r21675
            jump soego_s68

        '"Pravá smrt?"':
            # a235 # r21676
            jump soego_s69

        '"Chceš aby zemřeli?"':
            # a236 # r21767
            jump soego_s70

        '"Kde jsem?"':
            # a237 # r64602
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a238 # r64603
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    nr '"Tito… mrtví… jsou tak blízko Pravé smrti… ale přesto tíhnou k tomuto životu. Tento falešný život je slepá ulička existence v této sféře."'

    menu:
        '"Pravá smrt?"':
            # a240 # r21772
            jump soego_s69

        '"Ty chceš aby zemřeli?"':
            # a241 # r21774
            jump soego_s70

        '"Kde jsem?"':
            # a242 # r64604
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a243 # r64605
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    nr '"Úplná nepřítomnost vášně, pravá smrt je pravý život za tímto stínem bytí. To je to místo, kam se tito mrtví musí dostat, aby se osvobodili."'

    menu:
        '"Co je ten „falešný život,“ o kterém jsi mluvil?"':
            # a245 # r21779
            jump soego_s68

        '"Ty chceš aby zemřeli?"':
            # a246 # r21780
            jump soego_s70

        '"Kde jsem?"':
            # a247 # r64606
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a248 # r64607
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    nr '"Já po nich chci, aby překonali tuto sféru existence a oddělili se od vášní. To je může zachránit."'

    menu:
        '"Co byl ten „falešný život“ o kterém jsi mluvil?"':
            # a250 # r21788
            jump soego_s68

        '"Mluvil jsi o „Pravé smrti?“"':
            # a251 # r21790
            jump soego_s69

        '"Kde jsem?"':
            # a252 # r64608
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a253 # r64609
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    nr '"Ještě trochu tvého času, před tím než půjdeš. Neútoč na žádné nemrtvé tady v katakombách; nezaútočí na tebe, dokud zůstaneš mírumilovný. Když se ukážeš být nepřátelský, tak se budou bránit, a je jich tady… mnoho. Nakonec, můžeš se sem vrátit, když si budeš chtít odpočinout."'

    menu:
        '"Počkej… můžu si teď odpočinout?"' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '"Počkej… můžeme si odpočinout?"' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'Odejdi.':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    nr '"Paměť ti slouží dobře. Já už nejsem zařazen v Márnici… místo toho, jsem se stal misionářem v těchto končinách."'

    menu:
        '"Ale já jsem myslel, že jsem ti zlomil krk…"' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '"Ale já jsem si myslel, že jsem tě *zabil*…"' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '"Misionář?"':
            # a260 # r21809
            jump soego_s65

        '"Co tady Spalovači dělají?"' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '"Kde jsem?"':
            # a262 # r64610
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a263 # r64611
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    nr '"Zranění, které jsi mi způsobil, nebylo smrtelné. Rychle jsem se uzdravil… a zjistil jsem, že bych měl odejít z Márnice."'

    menu:
        '"Soego, zlomil jsem ti vaz… to nebyla smrtelná rána?"' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '"A nenaštvalo tě to?"':
            # a266 # r21816
            jump soego_s74

        '"Hmmm. Takže… povídal jsi, že jsi misionář?"':
            # a267 # r21817
            jump soego_s65

        '"Tak dobře. Co tady spalovači dělají?"' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '"Dobrá… tak kde jsem?"':
            # a269 # r64612
            jump soego_s77

        '"Já… jasně. Proč jsem tu byl uvězněn?"':
            # a270 # r64613
            jump soego_s78

        '"Zapomeň na to; To je všechno. Sbohem."':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    nr '"Ne… mělo by? Jsem poněkud zklamaný, že jsem odtamtud musel odejít. Nicméně, už by ses neměl vracet do Márnice, protože mnoho z mých bližních by tě nerado vidělo."'

    menu:
        '"Říkal si, že jsi misionář?"':
            # a272 # r64614
            jump soego_s65

        '"Co tady Spalovači dělají?"' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '"Kde jsem?"':
            # a274 # r64615
            jump soego_s77

        '"Proč jsem tu byl uvězněn"':
            # a275 # r64616
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    nr 'Null node.'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    nr 'Null node.'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    nr '"Jsi v katakombách Mrtvých národů. Stráže tě sem přivedly."'

    menu:
        '"A kdopak jsi byl ty?"':
            # a277 # r21840
            jump soego_s64

        '"Proč jsem tady uvězněný?"':
            # a278 # r21841
            jump soego_s78

        '"To je všechno. Sbohem."':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    nr '"To já nevím. Zeptej se někoho ze zdejších „občanů“."'

    menu:
        '"A kdopak jsi ty?"':
            # a280 # r21847
            jump soego_s64

        '"Kde to jsem?"':
            # a281 # r21848
            jump soego_s77

        '"Možná. Sbohem."':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    nr '"Á, někdo na pomoc naší věci! Já, jako agent Mnohojednoho, jsem byl informován, že přijdeš. Potřebujeme, abys zkusil najít cestu do trůnního sálu Tichého krále a zabil ho. Udělej to, a Mnohojeden tě dobře odmění."'

    menu:
        '"Soego… Emoric chtěl vědět, kde jsi."' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '"Počkej: ty jsi Soego? Emoric chtěl vědět kde jsi."' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        '"Moment… nezlomil jsem ti vaz v Márnici?"' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '"Počkej… myslel jsem, že jsem tě *zabil* v Márnici…"' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '"Jak se dostanu k Tichému králi?"' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '"Aha. Sbohem."' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    nr '"Já nevím… Už jsem tady nějakou dobu, a stejně nemůžu najít cestu do jeho trůnního sálu. Třeba budeš mít víc štěstí ty, nezatížen záští a fanatismem jako já."'

    menu:
        '"Záští a fanatismem?"':
            # a289 # r21860
            jump soego_s81

        '"Aha. Tak sbohem."':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    nr '"Názory našeho společenství jsou pro některé lidi oblíbené, ale ne pro všechny. Nejdůležitější vůdci této civilizace je nemají příliš v oblibě."'

    menu:
        '"Aha. Sbohem."':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    nr '"Á, vítej zpět."'

    menu:
        '"Tichý král je mrtev, a to už nějaký čas. Tichý král už *není* ."' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '"Tichý král je mrtev, a už nějaký čas byl. *Není* žádný Tichý král."' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        '"Ty jsi Soego? Emoric chtěl vědět kde jsi."' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '"Byl jsem v tvé komnatě a viděl jsem tvůj deník."' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        '"Potkal jsem kostlivce -- v jedné z těchto chodeb -- který se zdál být blízko nalezení Pravé smrti."' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '"Potřebuju si odpočinout."' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '"Potřebuju si odpočinout."' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '"Chtěl bych se na něco zeptat…"':
            # a299 # r21924
            jump soego_s83

        '"Jenom procházím. Sbohem."':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    nr '"Jestli to budu vědět, tak ti odpovím."'

    menu:
        '"Řekni mi něco o Hargrimmovi."' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '"Řekni mi něco o Acaste."' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '"Řekni mi něco o Ošuntělé Mary."' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '"Řekni mi něco o Tichém Králi."' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '"Co víš o téhle „civilizaci?“"' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '"Co víš o téhle „civilizaci?“"' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '"Nevadí. Sbohem."':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    nr '"Samozřejmě. V této místnosti budeš během spánku v bezpečí."'

    menu:
        '"Díky…"':
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    nr 'Null Node.'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    nr 'Null Node.'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    nr 'Null Node.'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    nr '"Tvrdohlavý, ale obdivuhodný ve své zbožnosti a oddanosti povinnostem. Je to můj největší rival tady, a držel tuto civilizaci pohromadě po mnoho let. Jeho vášně pramení z jeho zbožnosti a oddanosti povinnostem… obdivuhodné kvality, ale na špatném místě."'

    menu:
        '"Ještě bych se chtěl zeptat…"':
            # a309 # r21976
            jump soego_s83

        '"To je všechno. Sbohem."':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    nr '"Acaste je hovado. Obávám se, že jenom Tichý král ji drží na uzdě. Kdyby tady nebyl, ghúlové by blbnuli po katakombách"'

    menu:
        '"Řekni mi něco o Tichém Králi."':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '"Ještě bych se chtěl zeptat…"':
            # a312 # r21980
            jump soego_s83

        '"To je všechno. Sbohem."':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    nr '"Ošuntělá Mary je dobrosrdečná duše, když zpomalí. Nerozumím mnohému z toho co povídá, ale ona a zombie nejsou náchylní k násilí."'

    menu:
        '"Ještě bych se chtěl zeptat…"':
            # a314 # r21983
            jump soego_s83

        '"To je všechno. Sbohem."':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    nr '"Já jsem nikdy Tichého Krále neviděl. Myslím, že ti o něm mohu něco říct, ale nikdy jsem ho neviděl na vlastní oči. Pravděpodobně jeho trůnní sál leží za karmínovými dveřmi, ale já tam nemám přístup… Hargrimm, kostliveckej kněz, mě tam nepustí."'

    menu:
        '"Řekni mi něco o Hargrimmovi."':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '"Ještě bych se chtěl zeptat…"':
            # a317 # r21987
            jump soego_s83

        '"To je všechno. Sbohem."':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    nr '"Byli tu po mnoho století, myslím, starali se o ty, kteří pominuli v jejich halách. Taková oddanost k povinnostem není dále třeba… je to téměř zločin."'

    menu:
        '"Ještě bych se chtěl zeptat…"':
            # a319 # r21990
            jump soego_s83

        '"To je všechno. Sbohem."':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    nr '"Byli tu po mnoho století, myslím, starali se o ty, kteří pominuli v jejich halách. Taková oddanost k povinnostem není dále třeba… je to téměř zločin."'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    nr '"Cože? To snad není pravda? Á, Mnohojeden tě za tuhle informaci určitě odmění…"'

    menu:
        '"Mnohojeden?"' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '"Zajímavý. Mám nějaké další otázky…"' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '"Možná. Sbohem."' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '"Dobře. Chtěl bych se na něco zeptat…"' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '"Tak já mu to řeknu sám. Sbohem."' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    nr '"Ty… parchante!"'

    menu:
        '"Co-"':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    nr '"Hé… tyto dveře vedou do soukromých pokojů. Musím vás požádat, abyste tam nechodil."'

    menu:
        'Odejdi.':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    nr '"Oh! Hned si s ním půjdu promluvit!"'

    menu:
        '"Sbohem."':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    nr '"Ne, já zas jdu."'

    menu:
        '"Sbohem."':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    nr '"Bohužel, ne. Může přijít okolo."'

    menu:
        '"Aha. Sbohem."':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr 'Soego se na chvíli odmlčí. "Aha." Náhle začne překvapivá přeměna…'

    menu:
        '"Co t…?"':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    nr '"Éé… tvoje paměť ti prokázala špatnou službu. Můj krk byl poškozen, jistě… vymknutý. Ale zlomený? Těžko."'

    menu:
        '"Já mám jiný názor. Co jsi, Soego?"' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '"Já mám jiný názor. Co jsi, Soego?"' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '"A nejsi naštvanej?"':
            # a334 # r22018
            jump soego_s74

        '"Povídals že jsi misionář?"':
            # a335 # r22019
            jump soego_s65

        '"Co tady spalovači dělají?"' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '"To je všechno. Sbohem."':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr 'Vytrhává se z tvého sevření nadpřirozenou rychlostí. Prskající a plivající, zasyčí "Bláznivá věc, zaútočit na agenta společného vědomí psionických krys!" Náhle začíná překvapivá proměna…'

    menu:
        '"Co…?"':
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    nr '"Legrační otázka! Probudil ses na přípravném stole, v Márnici… sám jsi mi to řekl. Jistě mé zranění nemohlo být horší než ty, diky kterým si tě Sběrači spletli s mrtvolou, ne?"'

    menu:
        '"Máš pravdu, ale… nevadí."':
            # a339 # r22027
            jump soego_s104

        '"Mé schopnosti jsou… unikátní."':
            # a340 # r22028
            jump soego_s105

        '"Ne. Něco je tady špatně, a já dříve nebo později zjistím co."':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    nr 'Krčí rameny. "Výborně."'

    menu:
        '"Nejsi rozzlobený kvůli tomu co se stalo?"':
            # a342 # r22033
            jump soego_s74

        '"Říkal jsi, že jsi misionář?"':
            # a343 # r22034
            jump soego_s65

        '"Tak co tu Spalovači dělají?"' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '"Rozloučím se, hned. Sbohem."':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr 'Usmívá se. "Každý je jedinečný. Každý. Určitě to nebudeš popírat?"'

    menu:
        '"Pravdaže ne, ale… nevadí."':
            # a346 # r22040
            jump soego_s104

        '"Ne. Něco tady je špatně a už brzy přijdu na to, co to je."':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    nr '"Co jsem-? Co je to za otázku?"'

    menu:
        '"Slyšel jsi mě. Ty nejsi žádný řádný Spalovač… co *jsi*, Soego?"':
            # a348 # r22044
            jump soego_s107

        '"Zapomeň na to. Nevadí."':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr 'Soego se na tebe zamračí. "Já nevím, *o čem* to mluvíš."'

    menu:
        '"Něco tady je špatně a už brzy přijdu na to, co to je."':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    nr '"Ah, další člen živých. Většina je zavražděna ghúly, takhle hluboko v katakombách; jsi šťastlivec."'

    menu:
        '"Ty jsi Soego? Emoric potřeboval vědět, kde jsi."' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        '"Soego… Emoric chtěl vědět, kde jsi."' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    nr '"Ano, já jsem on. Dělám tu misionářskou práci pro Spalovače."'

    menu:
        '"Dobrá. Ale… Myslel jsem, že jsem ti zlomil krk…"' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '"Dobře. Ale… Myslel jsem, že jsem tě *zabil*…"' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '"Jsou tu také jiní Spalovači?"':
            # a355 # r22054
            jump soego_s66

        '"Kde jsem?"':
            # a356 # r50792
            jump soego_s77

        '"Proč jsem zde byl uvězněn?"':
            # a357 # r50793
            jump soego_s78

        '"Rozloučím se, hned. Sbohem."':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    nr '"Ano, já jsem on."'

    menu:
        '"Moment… nezlomil jsem ti vaz v Márnici?"' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '"Počkej… myslel jsem, že jsem tě *zabil* v Márnici…"' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '"Dobře. A teď, jak se dostanu k Tichému králi?"' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '"Dobře. Sbohem."' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    nr '"Jasně, společná mysl kraniových krys. Běž do katakomb jižně od Truchlícího kamene. Jistě najdeš cestu."'

    menu:
        '"Zajímavý. Mám nějaké další otázky…"':
            # a363 # r25250
            jump soego_s83

        '"Možná. Sbohem."':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr 'Odvane tvá slova pryč. "Nic; to není nic pro mě. Já už jsem byl obdařen lykantropií; zranění hojivšími se v krátké chvíli."'

    menu:
        '"Já… vím. Tak, jak se dostanu k Tichému králi?"':
            # a365 # r64621
            jump soego_s80

        '"V pořádku… Sbohem, tedy."':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    nr '"Zdravím…" Muž se k tobě otočil a mírně se uklonil. Všiml sis, že jeho oči nejsou podlité krví, jak se ti zdálo na první pohled. Spíše to vypadá, že jsou narudlé od přírody. "Jsem Soego. Jak ti mohu pomoci?"'

    menu:
        '"Chtěl bych opustit Márnici. Můžeš mi pomoct?"':
            # a367 # r66712
            jump soego_s114

        '"Mám pár otázek…"':
            # a368 # r66713
            jump soego_s114

        '"Jenom procházím. Sbohem."':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr 'Během tvé řeči se náhle Soegovy rty shrnuly a odhalily řadu špinavých ostrých zubů. Naklonil se k tobě a očichává tě.'

    menu:
        '"Uh… proč mě ksakru očicháváš?"':
            # a370 # r66715
            jump soego_s115

        'Když se nakloní, zlom mu krk.' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        'Když se nakloní, zlom mu krk.' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '"No tak nic… sbohem."':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    nr '"Tvé oblečení… ta róba. Páchnou někým jiným. Nejsou tvoje." Soego stiskl rty a podivně se usmívá, jeho oči září podivným světlem. "Kdo *jsi*?"'

    menu:
        '"Já… jenom jsem si vzal tu róbu, abych mohl v klidu odejít. Probudil jsem se nahoře v jedné z přípraven."':
            # a374 # r66719
            jump soego_s42

        '"Máš pravdu. Tahle róba není moje, ale to, komu patří, to se tě netýká."':
            # a375 # r66720
            jump soego_s6

        'Zlom mu krk, než stačí zavolat o pomoc.' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        'Zlom mu krk, než stačí zavolat o pomoc.' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '"Na tom nezáleží. Teď už půjdu."':
            # a378 # r66723
            jump soego_s17
