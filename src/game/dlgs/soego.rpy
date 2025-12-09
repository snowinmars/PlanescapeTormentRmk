init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    "soego_s0{#soego_s0}"
    # nr 'You see a tired-looking man in a faded black robe. His narrow face is extremely pale, and he doesn„t look as if he has been sleeping: his shoulders are slumped, and the flesh sags loosely beneath his bloodshot eyes. He doesn“t appear to notice you… he must mistake you for one of the cadaverous workers.{#soego_s0_1}'

    menu:
        'soego_s0_r1432{#soego_s0_r1432}': # '"Greetings."{#soego_s0_r1432}'
            # a0 # r1432
            jump soego_s1

        'soego_s0_r1433{#soego_s0_r1433}': # '"Who are you?"{#soego_s0_r1433}'
            # a1 # r1433
            jump soego_s1

        'soego_s0_r1434{#soego_s0_r1434}': # '"What is this place?"{#soego_s0_r1434}'
            # a2 # r1434
            jump soego_s1

        'soego_s0_r1435{#soego_s0_r1435}': # '"I had some questions…"{#soego_s0_r1435}'
            # a3 # r1435
            jump soego_s1

        'soego_s0_r1436{#soego_s0_r1436}': # 'Leave him in peace.{#soego_s0_r1436}'
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    "soego_s1{#soego_s1}"
    # nr 'The Dustman„s head snaps up as you address him. "Par… pardon? Did you just speak to me?"{#soego_s1_1}'

    menu:
        'soego_s1_r1438{#soego_s1_r1438}': # '"Yes, I did. I had some questions…"{#soego_s1_r1438}'
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        'soego_s1_r1439{#soego_s1_r1439}': # '"No. No, I didn„t."{#soego_s1_r1439}'
            # a6 # r1439
            $ soegoLogic.j63982_s1_r1439_action()
            $ soegoLogic.r1439_action()
            jump soego_s2

        'soego_s1_r1440{#soego_s1_r1440}' if soegoLogic.r1440_condition(): # 'Become deathly silent.{#soego_s1_r1440}'
            # a7 # r1440
            jump soego_s3

        'soego_s1_r1441{#soego_s1_r1441}' if soegoLogic.r1441_condition(): # 'Become deathly silent.{#soego_s1_r1441}'
            # a8 # r1441
            jump soego_s4

        'soego_s1_r1442{#soego_s1_r1442}': # 'Leave. Quickly.{#soego_s1_r1442}'
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    "soego_s2{#soego_s2_1}"
    $ soegoLogic.set_know_soego_name()
    "soego_s2{#soego_s2_2}"
    # nr '"By the powers!" The Dustman jumps, then stares intently at you. You notice his eyes aren„t bloodshot as much as they have a red tinge to them. "Sirrah, you force an unflattering confession from me: you make a convincing zombie." He bows slightly. "I am Soego. May I ask your business here…" He glances at your scars. "…looking like that?"{#soego_s2_1}'

    menu:
        'soego_s2_r1444{#soego_s2_r1444}': # '"It„s none of your concern."{#soego_s2_r1444}'
            # a10 # r1444
            jump soego_s6

        'soego_s2_r1445{#soego_s2_r1445}': # '"I„m not certain what I“m doing here. I woke up on one of the slabs upstairs, and my memory„s… a little foggy."{#soego_s2_r1445}'
            # a11 # r1445
            jump soego_s7

        'soego_s2_r1446{#soego_s2_r1446}' if soegoLogic.r1446_condition(): # '"I got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"{#soego_s2_r1446}'
            # a12 # r1446
            jump soego_s8

        'soego_s2_r1447{#soego_s2_r1447}': # '"I„m trying to get out of here."{#soego_s2_r1447}'
            # a13 # r1447
            jump soego_s13

        'soego_s2_r1448{#soego_s2_r1448}': # '"I needed a change."{#soego_s2_r1448}'
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        'soego_s2_r4999{#soego_s2_r4999}': # '"I really don„t have time for this. Farewell."{#soego_s2_r4999}'
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    "soego_s3{#soego_s3}"
    # nr 'The Dustman studies you for a moment, then shakes his head. "More imaginings…" He sighs and rubs his eyes. "These fever spells are getting worse…"{#soego_s3_1}'

    menu:
        'soego_s3_r1450{#soego_s3_r1450}': # '"It„s not your imagination. I had some questions…"{#soego_s3_r1450}'
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'soego_s3_r1451{#soego_s3_r1451}' if soegoLogic.r1451_condition(): # 'Snap his neck while he is distracted.{#soego_s3_r1451}'
            # a17 # r1451
            jump soego_s19

        'soego_s3_r1452{#soego_s3_r1452}' if soegoLogic.r1452_condition(): # 'Snap his neck while he is distracted.{#soego_s3_r1452}'
            # a18 # r1452
            jump soego_s22

        'soego_s3_r1453{#soego_s3_r1453}': # '"I had some questions."{#soego_s3_r1453}'
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'soego_s3_r1454{#soego_s3_r1454}': # 'Leave quietly.{#soego_s3_r1454}'
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    "soego_s4{#soego_s4}"
    # nr 'The Dustman looks carefully at you, then leans in… his lips peel back, revealing a row of dirty, sharp teeth, and he begins to sniff at you like a rat.{#soego_s4_1}'

    menu:
        'soego_s4_r1456{#soego_s4_r1456}': # '"Uh… why in hell„s name are you sniffing me?"{#soego_s4_r1456}'
            # a21 # r1456
            $ soegoLogic.j63982_s4_r1456_action()
            $ soegoLogic.r1456_action()
            jump soego_s2

        'soego_s4_r1457{#soego_s4_r1457}': # '"Look, I had some questions for you…"{#soego_s4_r1457}'
            # a22 # r1457
            $ soegoLogic.j63982_s4_r1457_action()
            $ soegoLogic.r1457_action()
            jump soego_s2

        'soego_s4_r1458{#soego_s4_r1458}' if soegoLogic.r1458_condition(): # 'Snap his neck when he leans in.{#soego_s4_r1458}'
            # a23 # r1458
            jump soego_s19

        'soego_s4_r1459{#soego_s4_r1459}' if soegoLogic.r1459_condition(): # 'Snap his neck when he leans in.{#soego_s4_r1459}'
            # a24 # r1459
            jump soego_s22

        'soego_s4_r1460{#soego_s4_r1460}': # 'Leave. Quickly.{#soego_s4_r1460}'
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    "soego_s5{#soego_s5_1}"
    $ soegoLogic.set_know_soego_name()

    "soego_s5{#soego_s5_2}"
    # nr 'As you are turning to leave, the Dustman gives a slight hiss, then leans in and sniffs at you. "By the powers!" The Dustman step back, his eyes widening. You notice his eyes aren„t bloodshot so much as they have a red tinge to them. "Sirrah, you force an unflattering confession from me: you make a convincing zombie." He bows slightly. "I am Soego. May I ask your business here… looking like that?"{#soego_s5_1}'

    menu:
        'soego_s5_r1462{#soego_s5_r1462}': # '"It„s none of your concern."{#soego_s5_r1462}'
            # a26 # r1462
            jump soego_s6

        'soego_s5_r1463{#soego_s5_r1463}': # '"I„m not certain what I“m doing here. I woke up on one of the slabs upstairs, and my memory„s… a little foggy."{#soego_s5_r1463}'
            # a27 # r1463
            jump soego_s7

        'soego_s5_r1464{#soego_s5_r1464}' if soegoLogic.r1464_condition(): # '"I„m lost, and I“m looking for the exit. Can you help me?"{#soego_s5_r1464}'
            # a28 # r1464
            jump soego_s8

        'soego_s5_r1465{#soego_s5_r1465}': # '"I am trying to get out of here."{#soego_s5_r1465}'
            # a29 # r1465
            jump soego_s13

        'soego_s5_r1466{#soego_s5_r1466}': # '"I needed a change."{#soego_s5_r1466}'
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        'soego_s5_r1467{#soego_s5_r1467}': # '"I really don„t have time for this. Farewell."{#soego_s5_r1467}'
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    "soego_s6{#soego_s6}"
    # nr '"Oh, but I„m afraid it *is* my concern." Soego“s eyes gleam red, and the corners of his mouth twitch slightly, as if in anticipation. "Mayhap…" He sneers, displaying a row of sharp, dirty teeth. "Mayhap I should call the guards? Yes… yes, I think I will do that."{#soego_s6_1}'

    menu:
        'soego_s6_r1469{#soego_s6_r1469}' if soegoLogic.r1469_condition(): # '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"{#soego_s6_r1469}'
            # a32 # r1469
            jump soego_s8

        'soego_s6_r1470{#soego_s6_r1470}' if soegoLogic.r1470_condition(): # '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"{#soego_s6_r1470}'
            # a33 # r1470
            jump soego_s13

        'soego_s6_r1471{#soego_s6_r1471}' if soegoLogic.r1471_condition(): # 'Snap his neck before he can call out.{#soego_s6_r1471}'
            # a34 # r1471
            jump soego_s19

        'soego_s6_r1472{#soego_s6_r1472}' if soegoLogic.r1472_condition(): # 'Snap his neck before he can call out.{#soego_s6_r1472}'
            # a35 # r1472
            jump soego_s22

        'soego_s6_r1473{#soego_s6_r1473}': # '"Summon them, then. I„d like to meet them."{#soego_s6_r1473}'
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    "soego_s7{#soego_s7}"
    # nr '"Really?" The Dustman scrutinizes you. "You *do* look like you„ve been prepared. I don“t know how you would have survived such pain… are you *in* pain? You look it."{#soego_s7_1}'

    menu:
        'soego_s7_r1475{#soego_s7_r1475}': # '"How would I have gotten here in the first place?"{#soego_s7_r1475}'
            # a37 # r1475
            jump soego_s54

        'soego_s7_r1476{#soego_s7_r1476}': # '"I don„t have time for this. Farewell."{#soego_s7_r1476}'
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    "soego_s8{#soego_s8}"
    # nr 'Soego nods, and the corner of his mouth twitches. "Why… of course. These halls *can* be confusing to visitors. No harm done, but you are not permitted here in the Mortuary after nine bells - let me open the front gate for you."{#soego_s8_1}'

    menu:
        'soego_s8_r1478{#soego_s8_r1478}' if soegoLogic.r1478_condition(): # '"Thank you."{#soego_s8_r1478}'
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        'soego_s8_r1479{#soego_s8_r1479}' if soegoLogic.r1479_condition(): # '"Thank you."{#soego_s8_r1479}'
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    "soego_s9{#soego_s9}"
    # nr 'Soego reaches to his belt, fumbles at it for a moment, then hisses. "The key!" His eyes gleam a bright red, and his lips peel back in anger… his expression is almost animalistic. "Someone„s stolen the key!" He turns to you and snarls. "You! You must have done this!"{#soego_s9_1}'

    menu:
        'soego_s9_r1481{#soego_s9_r1481}': # 'Bluff him: "Uh…wait! Why would I ask you for it if I„d stolen it?"{#soego_s9_r1481}'
            # a41 # r1481
            jump soego_s18

        'soego_s9_r1482{#soego_s9_r1482}': # 'Lie: "What are you talking about?! I had nothing to do with it!"{#soego_s9_r1482}'
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'soego_s9_r1483{#soego_s9_r1483}' if soegoLogic.r1483_condition(): # 'Snap his neck before he can call out.{#soego_s9_r1483}'
            # a43 # r1483
            jump soego_s19

        'soego_s9_r1484{#soego_s9_r1484}' if soegoLogic.r1484_condition(): # 'Snap his neck before he can call out.{#soego_s9_r1484}'
            # a44 # r1484
            jump soego_s22

        'soego_s9_r1485{#soego_s9_r1485}': # '"So what if I did? What are you going to do about it?"{#soego_s9_r1485}'
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    "soego_s10{#soego_s10}"
    # nr 'Soego takes a large key from his belt and walks to the front gate. You can„t help but notice his peculiar walk… he hunches forward, as if to keep balance.{#soego_s10_1}'

    menu:
        'soego_s10_r1487{#soego_s10_r1487}' if soegoLogic.r1487_condition(): # '"Odd walk he„s got."{#soego_s10_r1487}'
            # a46 # r1487
            jump morte_s101  # EXTERN

        'soego_s10_r1488{#soego_s10_r1488}' if soegoLogic.r1488_condition(): # 'Wait for him to open the gate.{#soego_s10_r1488}'
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    "soego_s11{#soego_s11}"
    # nr 'Once he reaches the gate, Soego turns the key in the lock. A moment later, a grating sound comes from within the lock chamber… the sound carries throughout the main hall, echoing off the marble floors.{#soego_s11_1}'

    menu:
        'soego_s11_r1490{#soego_s11_r1490}': # 'Wait for him to return.{#soego_s11_r1490}'
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    "soego_s12{#soego_s12}"
    # nr '"Very well. The front gate is now unlocked, but you cannot re-enter."{#soego_s12_1}'

    menu:
        'soego_s12_r1492{#soego_s12_r1492}': # '"Can I ask you some questions before I leave?"{#soego_s12_r1492}'
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        'soego_s12_r1493{#soego_s12_r1493}': # '"Thank you, Soego. I will leave now."{#soego_s12_r1493}'
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    "soego_s13{#soego_s13}"
    # nr '"Get out?" Soego frowns. "How did you get in?"{#soego_s13_1}'

    menu:
        'soego_s13_r1495{#soego_s13_r1495}' if soegoLogic.r1495_condition(): # '"I was here for an interment earlier, paying my respects. I„m ready to leave… but I seem to have gotten turned around. Can you help me find the exit?"{#soego_s13_r1495}'
            # a51 # r1495
            jump soego_s8

        'soego_s13_r1496{#soego_s13_r1496}' if soegoLogic.r1496_condition(): # '"I don„t really know."{#soego_s13_r1496}'
            # a52 # r1496
            jump soego_s14

        'soego_s13_r1497{#soego_s13_r1497}' if soegoLogic.r1497_condition(): # '"I don„t really know."{#soego_s13_r1497}'
            # a53 # r1497
            jump soego_s61

        'soego_s13_r1498{#soego_s13_r1498}': # '"I woke up on one of the slabs upstairs, and my memory„s… a little foggy."{#soego_s13_r1498}'
            # a54 # r1498
            jump soego_s7

        'soego_s13_r1499{#soego_s13_r1499}': # '"I don„t have time for this. Farewell."{#soego_s13_r1499}'
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    "soego_s14{#soego_s14}"
    # nr 'Soego clicks his tongue. "Most curious." He studies you again. "Is it possible that you are one of the Contracted?"{#soego_s14_1}'

    menu:
        'soego_s14_r1501{#soego_s14_r1501}': # '"Uh, „Contracted“?"{#soego_s14_r1501}'
            # a56 # r1501
            jump soego_s23

        'soego_s14_r1502{#soego_s14_r1502}': # '"I really don„t have time for this. Farewell."{#soego_s14_r1502}'
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    "soego_s15{#soego_s15_1}"
    $ soegoLogic.set_know_soego_name()
    "soego_s15{#soego_s15_2}"

    # nr 'As you are turning to leave, the Dustman stops sniffing you and gives a slight hiss. "By the powers!" The Dustman draws back, his eyes widening. You notice his eyes aren„t bloodshot so much as they have a red tinge to them. "Sirrah, you force an unflattering confession from me: you make a convincing zombie." He bows slightly. "I am Soego. May I ask your business here… looking like that?"{#soego_s15_1}'

    menu:
        'soego_s15_r1504{#soego_s15_r1504}': # '"It„s none of your concern."{#soego_s15_r1504}'
            # a58 # r1504
            jump soego_s6

        'soego_s15_r1505{#soego_s15_r1505}': # '"I„m not certain what I“m doing here. I woke up on one of the slabs upstairs, and my memory„s… a little foggy."{#soego_s15_r1505}'
            # a59 # r1505
            jump soego_s7

        'soego_s15_r1506{#soego_s15_r1506}' if soegoLogic.r1506_condition(): # '"I„m lost, and I“m looking for the exit. Can you help me?"{#soego_s15_r1506}'
            # a60 # r1506
            jump soego_s8

        'soego_s15_r1508{#soego_s15_r1508}': # '"I am trying to get out of here."{#soego_s15_r1508}'
            # a61 # r1508
            jump soego_s13

        'soego_s15_r1509{#soego_s15_r1509}': # '"I needed a change."{#soego_s15_r1509}'
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        'soego_s15_r1510{#soego_s15_r1510}': # '"I really don„t have time for this. Farewell."{#soego_s15_r1510}'
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    "soego_s16{#soego_s16}"
    # nr '"I see…" Soego„s eyes gleam red, and the corners of his mouth twitch slightly, as if in anticipation. "Mayhap…" He sneers, displaying a row of sharp, dirty teeth. "Mayhap I should call the guards? Yes… yes, I think I will do that."{#soego_s16_1}'

    menu:
        'soego_s16_r1512{#soego_s16_r1512}' if soegoLogic.r1512_condition(): # '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"{#soego_s16_r1512}'
            # a64 # r1512
            jump soego_s8

        'soego_s16_r1513{#soego_s16_r1513}' if soegoLogic.r1513_condition(): # '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"{#soego_s16_r1513}'
            # a65 # r1513
            jump soego_s13

        'soego_s16_r1514{#soego_s16_r1514}' if soegoLogic.r1514_condition(): # 'Snap his neck before he can call out.{#soego_s16_r1514}'
            # a66 # r1514
            jump soego_s19

        'soego_s16_r1515{#soego_s16_r1515}' if soegoLogic.r1515_condition(): # 'Snap his neck before he can call out.{#soego_s16_r1515}'
            # a67 # r1515
            jump soego_s22

        'soego_s16_r1516{#soego_s16_r1516}': # '"Summon them, then. I„d like to meet them."{#soego_s16_r1516}'
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    "soego_s17{#soego_s17}"
    # nr 'As you turn to leave, Soego gives an angry hiss… then suddenly composes himself and raises his hand. "No, no, I„m afraid you can“t leave. Something is amiss here. I think it is best we get this matter straightened out…" The corners of his lips twitch slightly, and his eyes gleam. "…mayhap the guards could help. Yes… mayhap I should call them."{#soego_s17_1}'

    menu:
        'soego_s17_r1518{#soego_s17_r1518}' if soegoLogic.r1518_condition(): # '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"{#soego_s17_r1518}'
            # a69 # r1518
            jump soego_s8

        'soego_s17_r1520{#soego_s17_r1520}' if soegoLogic.r1520_condition(): # '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"{#soego_s17_r1520}'
            # a70 # r1520
            jump soego_s13

        'soego_s17_r1521{#soego_s17_r1521}' if soegoLogic.r1521_condition(): # 'Snap his neck before he can call out.{#soego_s17_r1521}'
            # a71 # r1521
            jump soego_s19

        'soego_s17_r1522{#soego_s17_r1522}' if soegoLogic.r1522_condition(): # 'Snap his neck before he can call out.{#soego_s17_r1522}'
            # a72 # r1522
            jump soego_s22

        'soego_s17_r1523{#soego_s17_r1523}': # '"Summon them, then. I„d like to meet them."{#soego_s17_r1523}'
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    "soego_s18{#soego_s18}"
    # nr 'Soego takes a step back, then claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#soego_s18_1}'

    menu:
        'soego_s18_r1525{#soego_s18_r1525}': # '"All right then…"{#soego_s18_r1525}'
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    "soego_s19{#soego_s19}"
    # nr 'Before he can utter a word, your hands clamp onto his temples, and you twist his head sharply to the left.{#soego_s19_1}'

    menu:
        'soego_s19_r1528{#soego_s19_r1528}': # '"Can„t have you alerting your friends…"{#soego_s19_r1528}'
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    "soego_s20{#soego_s20}"
    # nr 'There is a *crack* as his neck snaps… but instead of falling limp, the Dustman gives a strangled cry and rips himself from your grip!{#soego_s20_1}'

    menu:
        'soego_s20_r1530{#soego_s20_r1530}' if soegoLogic.r1530_condition(): # '"What…?!"{#soego_s20_r1530}'
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        'soego_s20_r1531{#soego_s20_r1531}' if soegoLogic.r1531_condition(): # '"What…?!"{#soego_s20_r1531}'
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    "soego_s21{#soego_s21}"
    # nr 'The Dustman looks as shocked as you; his eyes are wild, and he is making a gurgling noise in his throat… you„re certain you“ve snapped his neck, for his head is twisted at an unnatural angle, but he„s still alive! As you watch, stunned, he claps his hands weakly three times. In response, a great iron bell begins tolling throughout the Mortuary.{#soego_s21_1}'

    menu:
        'soego_s21_r1533{#soego_s21_r1533}': # '"All right then…"{#soego_s21_r1533}'
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    "soego_s22{#soego_s22}"
    # nr '*Something* must have alerted the Dustman… before you can even lunge for him, he leaps back, his eyes gleaming red and his teeth bared. With a hiss, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#soego_s22_1}'

    menu:
        'soego_s22_r1535{#soego_s22_r1535}': # '"All right then…"{#soego_s22_r1535}'
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    "soego_s23{#soego_s23}"
    # nr '"There are some that have signed a contract allowing the Dustmen to use their bodies once they have died. It is possible that you were caught in an… unusual mix-up. You seem much brighter than our regular zombies."{#soego_s23_1}'

    menu:
        'soego_s23_r4793{#soego_s23_r4793}': # '"People sell their bodies after death to you?"{#soego_s23_r4793}'
            # a80 # r4793
            jump soego_s24

        'soego_s23_r4794{#soego_s23_r4794}': # '"Oh. I had some other questions…"{#soego_s23_r4794}'
            # a81 # r4794
            jump soego_s26

        'soego_s23_r4795{#soego_s23_r4795}': # '"I don„t have time for this. Farewell."{#soego_s23_r4795}'
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    "soego_s24{#soego_s24}"
    # nr '"Oh, yes. In exchange for a small sum of copper, many are willing to sell a body they will no longer need when they reach the True Death."{#soego_s24_1}'

    menu:
        'soego_s24_r4797{#soego_s24_r4797}': # '"What do you do with these bodies?"{#soego_s24_r4797}'
            # a83 # r4797
            jump soego_s25

        'soego_s24_r4798{#soego_s24_r4798}': # '"I… see. Do you mind if I ask you some other questions?"{#soego_s24_r4798}'
            # a84 # r4798
            jump soego_s25

        'soego_s24_r4799{#soego_s24_r4799}': # '"Thanks for the information. Farewell."{#soego_s24_r4799}'
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    "soego_s25{#soego_s25}"
    # nr '"The shells perform menial tasks around the Mortuary. They haul bodies, clean floors, assist us in preparing bodies for burial… relatively simple tasks. It is unfortunate, but they are not capable of following any complicated instructions."{#soego_s25_1}'

    menu:
        'soego_s25_r4801{#soego_s25_r4801}': # '"Well, „Contracted“ or not, how did I get here if I wasn„t dead?"{#soego_s25_r4801}'
            # a86 # r4801
            jump soego_s54

        'soego_s25_r4802{#soego_s25_r4802}': # '"I… see. Do you mind if I ask you some other questions?"{#soego_s25_r4802}'
            # a87 # r4802
            jump soego_s26

        'soego_s25_r4803{#soego_s25_r4803}': # '"Thanks for the information. Farewell."{#soego_s25_r4803}'
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    "soego_s26{#soego_s26}"
    # nr 'Soego nods. "You may ask your questions."{#soego_s26_1}'

    menu:
        'soego_s26_r4805{#soego_s26_r4805}' if soegoLogic.r4805_condition(): # '"I„d like to leave. Can you guide me to the exit?"{#soego_s26_r4805}'
            # a89 # r4805
            jump soego_s8

        'soego_s26_r4806{#soego_s26_r4806}' if soegoLogic.r4806_condition(): # '"Can you get me out of here?"{#soego_s26_r4806}'
            # a90 # r4806
            jump soego_s13

        'soego_s26_r4807{#soego_s26_r4807}' if soegoLogic.r4807_condition(): # '"Do you know there„s a corpse up on the second level that“s a human in disguise?"{#soego_s26_r4807}'
            # a91 # r4807
            jump soego_s27

        'soego_s26_r4809{#soego_s26_r4809}': # '"If I may ask… are you all right? You look tired."{#soego_s26_r4809}'
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        'soego_s26_r4810{#soego_s26_r4810}' if soegoLogic.r4810_condition(): # '"You„re Soego, right? I heard you“re a little odd for a Dustman. That you like rats."{#soego_s26_r4810}'
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        'soego_s26_r4811{#soego_s26_r4811}' if soegoLogic.r4811_condition(): # '"You„re Soego, right? I heard you“re a little odd for a Dustman. That you like rats."{#soego_s26_r4811}'
            # a94 # r4811
            jump soego_s29

        'soego_s26_r4832{#soego_s26_r4832}' if soegoLogic.r4832_condition(): # '"Do you know someone named Pharod?"{#soego_s26_r4832}'
            # a95 # r4832
            jump soego_s33

        'soego_s26_r4833{#soego_s26_r4833}' if soegoLogic.r4833_condition(): # '"I„m missing a journal. Have you seen one?"{#soego_s26_r4833}'
            # a96 # r4833
            jump soego_s37

        'soego_s26_r4834{#soego_s26_r4834}' if soegoLogic.r4834_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s26_r4834}'
            # a97 # r4834
            jump soego_dispose

        'soego_s26_r4835{#soego_s26_r4835}' if soegoLogic.r4835_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s26_r4835}'
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    "soego_s27{#soego_s27}"
    # nr '"Pardon?"{#soego_s27_1}'

    menu:
        'soego_s27_r4836{#soego_s27_r4836}' if soegoLogic.r4836_condition(): # '"There„s a man disguised as a corpse upstairs. I think he“s spying on the Dustmen."{#soego_s27_r4836}'
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        'soego_s27_r4837{#soego_s27_r4837}' if soegoLogic.r4837_condition(): # '"There„s a man disguised as a corpse upstairs. I think he“s spying on the Dustmen."{#soego_s27_r4837}'
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        'soego_s27_r4838{#soego_s27_r4838}': # '"Forget it. I had some other questions…"{#soego_s27_r4838}'
            # a101 # r4838
            jump soego_s26

        'soego_s27_r4839{#soego_s27_r4839}' if soegoLogic.r4839_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s27_r4839}'
            # a102 # r4839
            jump soego_dispose

        'soego_s27_r916{#soego_s27_r916}' if soegoLogic.r916_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s27_r916}'
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    "soego_s28{#soego_s28}"
    # nr '"What? Why would anyone…?" Soego„s voice suddenly drops to a hiss and his lips peel back to reveal a row of jagged teeth. "An *Anarchist.*" His eyes gleam a bright red. "An Anarchist. *Here.*" He suddenly seems to remember your presence, and he composes himself. "Thank you for informing me. I will see to it that the guards handle this matter."{#soego_s28_1}'

    menu:
        'soego_s28_r4852{#soego_s28_r4852}': # '"No problem. I had some other questions…"{#soego_s28_r4852}'
            # a104 # r4852
            jump soego_s26

        'soego_s28_r4853{#soego_s28_r4853}' if soegoLogic.r4853_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s28_r4853}'
            # a105 # r4853
            jump soego_dispose

        'soego_s28_r4854{#soego_s28_r4854}' if soegoLogic.r4854_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s28_r4854}'
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    "soego_s29{#soego_s29}"
    # nr 'You are about to mention it, when suddenly you stop. You feel a strange prickling sensation as you look at Soego… for some reason, you don„t think you should say anything.{#soego_s29_1}'

    menu:
        'soego_s29_r4856{#soego_s29_r4856}': # '"I hear you„re a strange one, Soego. That you like rats."{#soego_s29_r4856}'
            # a107 # r4856
            jump soego_s30

        'soego_s29_r4857{#soego_s29_r4857}': # '"Uh… say, I wanted to ask you something."{#soego_s29_r4857}'
            # a108 # r4857
            jump soego_s26

        'soego_s29_r4858{#soego_s29_r4858}' if soegoLogic.r4858_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s29_r4858}'
            # a109 # r4858
            jump soego_dispose

        'soego_s29_r4859{#soego_s29_r4859}' if soegoLogic.r4859_condition(): # '"Never mind. I must take my leave. Farewell."{#soego_s29_r4859}'
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    "soego_s30{#soego_s30}"
    # nr 'Soego falls silent for a moment, studying you. His eyes gleam a bright red, and he gives a soft hiss. "I think you have outstayed your welcome." To your surprise, he takes a step back and claps his hands sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#soego_s30_1}'

    menu:
        'soego_s30_r4861{#soego_s30_r4861}': # '"What the…? What are you doing?"{#soego_s30_r4861}'
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        'soego_s30_r4862{#soego_s30_r4862}': # '"All right, then. Prepare to die, Soego."{#soego_s30_r4862}'
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    "soego_s31{#soego_s31}"
    # nr 'Soego manages a weak smile, and the corners of his mouth twitch slightly. "I have recently taken ill… minor fevers, nothing more. Sometimes they make sleep… difficult."{#soego_s31_1}'

    menu:
        'soego_s31_r4864{#soego_s31_r4864}': # '"Anything I could do?"{#soego_s31_r4864}'
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        'soego_s31_r4865{#soego_s31_r4865}': # '"Oh. I had some other questions…"{#soego_s31_r4865}'
            # a114 # r4865
            jump soego_s26

        'soego_s31_r4866{#soego_s31_r4866}' if soegoLogic.r4866_condition(): # '"I see. Well, I must take my leave. Farewell."{#soego_s31_r4866}'
            # a115 # r4866
            jump soego_dispose

        'soego_s31_r4867{#soego_s31_r4867}' if soegoLogic.r4867_condition(): # '"I see. Well, I must take my leave. Farewell."{#soego_s31_r4867}'
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    "soego_s32{#soego_s32}"
    # nr 'Soego shakes his head. "No, no, thank you for your concern… I will endure." He frowns slightly. "Was there something else you wanted?"{#soego_s32_1}'

    menu:
        'soego_s32_r4869{#soego_s32_r4869}': # '"Yes. I had some other questions…"{#soego_s32_r4869}'
            # a117 # r4869
            jump soego_s26

        'soego_s32_r4870{#soego_s32_r4870}' if soegoLogic.r4870_condition(): # '"No, I won„t trouble you anymore. Thanks for the information."{#soego_s32_r4870}'
            # a118 # r4870
            jump soego_dispose

        'soego_s32_r4871{#soego_s32_r4871}' if soegoLogic.r4871_condition(): # '"No, I won„t trouble you anymore. Thanks for the information."{#soego_s32_r4871}'
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    "soego_s33{#soego_s33}"
    # nr '"Pharod? Of course I know him." He frowns, and his eyes gleam red. "A ghoulish man. No respect for the dead, and even less for the living. He is a scavenger. A Collector."{#soego_s33_1}'

    menu:
        'soego_s33_r4873{#soego_s33_r4873}': # '"Collector?"{#soego_s33_r4873}'
            # a120 # r4873
            jump soego_s34

        'soego_s33_r4874{#soego_s33_r4874}': # '"Do you know where I could find him?"{#soego_s33_r4874}'
            # a121 # r4874
            jump soego_s36

        'soego_s33_r4875{#soego_s33_r4875}': # '"Oh. I had some other questions…"{#soego_s33_r4875}'
            # a122 # r4875
            jump soego_s26

        'soego_s33_r4876{#soego_s33_r4876}' if soegoLogic.r4876_condition(): # '"I see. Perhaps I should take my leave."{#soego_s33_r4876}'
            # a123 # r4876
            jump soego_dispose

        'soego_s33_r4877{#soego_s33_r4877}' if soegoLogic.r4877_condition(): # '"I see. Perhaps I should take my leave."{#soego_s33_r4877}'
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    "soego_s34{#soego_s34}"
    # nr '"Collectors make their living gathering corpses and bringing them here to the Mortuary. We then make sure the bodies receive a proper burial."{#soego_s34_1}'

    menu:
        'soego_s34_r4879{#soego_s34_r4879}' if soegoLogic.r4879_condition(): # '"So if a Collector found a body… mine, for example… they might have brought it here and sold it to you?"{#soego_s34_r4879}'
            # a125 # r4879
            jump soego_s35

        'soego_s34_r4880{#soego_s34_r4880}': # '"So this Collector, Pharod… do you know where I could find him?"{#soego_s34_r4880}'
            # a126 # r4880
            jump soego_s36

        'soego_s34_r4881{#soego_s34_r4881}': # '"Oh. I had some other questions…"{#soego_s34_r4881}'
            # a127 # r4881
            jump soego_s26

        'soego_s34_r4882{#soego_s34_r4882}' if soegoLogic.r4882_condition(): # '"I see. Well, I must take my leave. Farewell."{#soego_s34_r4882}'
            # a128 # r4882
            jump soego_dispose

        'soego_s34_r4883{#soego_s34_r4883}' if soegoLogic.r4883_condition(): # '"I see. Well, I must take my leave. Farewell."{#soego_s34_r4883}'
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    "soego_s35{#soego_s35}"
    # nr '"Yes."{#soego_s35_1}'

    menu:
        'soego_s35_r4885{#soego_s35_r4885}': # '"Hmmmm. Suddenly it„s extremely important that I find this Pharod. Do you know where I could find him?"{#soego_s35_r4885}'
            # a130 # r4885
            jump soego_s36

        'soego_s35_r4886{#soego_s35_r4886}': # '"Oh. I had some other questions…"{#soego_s35_r4886}'
            # a131 # r4886
            jump soego_s26

        'soego_s35_r4887{#soego_s35_r4887}' if soegoLogic.r4887_condition(): # '"Thanks for the information. Farewell."{#soego_s35_r4887}'
            # a132 # r4887
            jump soego_dispose

        'soego_s35_r4888{#soego_s35_r4888}' if soegoLogic.r4888_condition(): # '"Thanks for the information. Farewell."{#soego_s35_r4888}'
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    "soego_s36{#soego_s36}"
    # nr '"I know he resides in the Hive, the slums outside the Mortuary, but I do not know exactly where. Some of the other Collectors may know, if they„ll talk to you."{#soego_s36_1}'

    menu:
        'soego_s36_r4890{#soego_s36_r4890}': # '"What do Collectors do again?"{#soego_s36_r4890}'
            # a134 # r4890
            jump soego_s34

        'soego_s36_r4891{#soego_s36_r4891}': # '"Oh. I had some other questions…"{#soego_s36_r4891}'
            # a135 # r4891
            jump soego_s26

        'soego_s36_r4892{#soego_s36_r4892}' if soegoLogic.r4892_condition(): # '"Thanks for the information. Farewell."{#soego_s36_r4892}'
            # a136 # r4892
            jump soego_dispose

        'soego_s36_r4893{#soego_s36_r4893}' if soegoLogic.r4893_condition(): # '"Thanks for the information. Farewell."{#soego_s36_r4893}'
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    "soego_s37{#soego_s37}"
    # nr '"A journal?" Soego seems confused. "No, I have not seen one."{#soego_s37_1}'

    menu:
        'soego_s37_r4895{#soego_s37_r4895}': # '"Never mind then. I had some other questions…"{#soego_s37_r4895}'
            # a138 # r4895
            jump soego_s26

        'soego_s37_r4896{#soego_s37_r4896}' if soegoLogic.r4896_condition(): # '"Thanks anyway. Farewell."{#soego_s37_r4896}'
            # a139 # r4896
            jump soego_dispose

        'soego_s37_r4897{#soego_s37_r4897}' if soegoLogic.r4897_condition(): # '"Thanks anyway. Farewell."{#soego_s37_r4897}'
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    "soego_s38{#soego_s38}"
    # nr 'You see a tired-looking man in a black robe. His narrow face is extremely pale, and he doesn„t look as if he has been sleeping: his shoulders are slumped, and the flesh sags loosely beneath his bloodshot eyes. He looks so lost in thought he doesn“t even notice you.{#soego_s38_1}'

    menu:
        'soego_s38_r66706{#soego_s38_r66706}' if soegoLogic.r66706_condition(): # '"Greetings…"{#soego_s38_r66706}'
            # a141 # r66706
            $ soegoLogic.j63982_s38_r66706_action()
            $ soegoLogic.r66706_action()
            jump soego_s39

        'soego_s38_r66707{#soego_s38_r66707}' if soegoLogic.r66707_condition(): # '"Greetings…"{#soego_s38_r66707}'
            # a142 # r66707
            $ soegoLogic.j63982_s38_r66707_action()
            $ soegoLogic.r66707_action()
            jump soego_s113

        'soego_s38_r66708{#soego_s38_r66708}': # 'Leave him to his thoughts.{#soego_s38_r66708}'
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    "soego_s39{#soego_s39}"
    # nr '"Greetings…" The man turns to face you and makes a slight bow. You suddenly notice that his eyes aren„t bloodshot so much as they have a red tinge to them. "I am Soego. How may I…" He suddenly seems to notice your scars, and the corner of his mouth twitches. "I“m sorry, sirrah, are you lost?"{#soego_s39_1}'

    menu:
        'soego_s39_r4905{#soego_s39_r4905}': # '"Yes."{#soego_s39_r4905}'
            # a144 # r4905
            jump soego_s40

        'soego_s39_r4906{#soego_s39_r4906}': # '"No."{#soego_s39_r4906}'
            # a145 # r4906
            jump soego_s41

        'soego_s39_r4907{#soego_s39_r4907}': # '"No, I„m not lost. I had some questions…"{#soego_s39_r4907}'
            # a146 # r4907
            jump soego_s41

        'soego_s39_r4908{#soego_s39_r4908}': # '"No. I was merely looking for the exit. Farewell."{#soego_s39_r4908}'
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    "soego_s40{#soego_s40}"
    # nr '"Well, then…" The corners of Soego„s mouth twitch again, as if in anticipation. "Let me call the guards to lead you out. Stand for a moment." He looks like he is about to call the guards.{#soego_s40_1}'

    menu:
        'soego_s40_r4910{#soego_s40_r4910}' if soegoLogic.r4910_condition(): # '"Hold a moment! Please… there„s no need to call the guards. I came in for an interment earlier, and I just got turned around in the halls… Can you please just lead me out?"{#soego_s40_r4910}'
            # a148 # r4910
            jump soego_s8

        'soego_s40_r4911{#soego_s40_r4911}': # '"No! I„m not lost - I misspoke."{#soego_s40_r4911}'
            # a149 # r4911
            jump soego_s50

        'soego_s40_r4912{#soego_s40_r4912}' if soegoLogic.r4912_condition(): # 'Snap his neck before he can call out.{#soego_s40_r4912}'
            # a150 # r4912
            jump soego_s19

        'soego_s40_r4913{#soego_s40_r4913}' if soegoLogic.r4913_condition(): # 'Snap his neck before he can call out.{#soego_s40_r4913}'
            # a151 # r4913
            jump soego_s22

        'soego_s40_r4914{#soego_s40_r4914}': # 'Leave. Quickly.{#soego_s40_r4914}'
            # a152 # r4914
            jump soego_s18

        'soego_s40_r4915{#soego_s40_r4915}': # 'Wait.{#soego_s40_r4915}'
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    "soego_s41{#soego_s41}"
    # nr '"I do not recall admitting you." Soego looks at you suspiciously, and his eyes gleam red in the light of the torches. "May I ask what you are doing here?"{#soego_s41_1}'

    menu:
        'soego_s41_r4917{#soego_s41_r4917}' if soegoLogic.r4917_condition(): # '"I was here for an interment earlier, paying my respects. I„m ready to leave… but I seem to have gotten turned around. Can you help me find the exit?"{#soego_s41_r4917}'
            # a154 # r4917
            jump soego_s8

        'soego_s41_r4918{#soego_s41_r4918}': # '"That is none of your concern."{#soego_s41_r4918}'
            # a155 # r4918
            jump soego_s6

        'soego_s41_r4919{#soego_s41_r4919}': # '"I awoke on one of the slabs in your preparation room."{#soego_s41_r4919}'
            # a156 # r4919
            jump soego_s42

        'soego_s41_r4920{#soego_s41_r4920}': # '"I„m here to see someone."{#soego_s41_r4920}'
            # a157 # r4920
            jump soego_s43

        'soego_s41_r4921{#soego_s41_r4921}' if soegoLogic.r4921_condition(): # '"I was here for an interment, but there seems to have been a mistake."{#soego_s41_r4921}'
            # a158 # r4921
            jump soego_s53

        'soego_s41_r4922{#soego_s41_r4922}': # 'Lean in as if to whisper to him, then when he leans in, snap his neck.{#soego_s41_r4922}'
            # a159 # r4922
            jump soego_s51

        'soego_s41_r4923{#soego_s41_r4923}': # 'Leave. Quickly.{#soego_s41_r4923}'
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    "soego_s42{#soego_s42}"
    # nr 'He seems surprised. "You… woke up on one of the slabs upstairs?"{#soego_s42_1}'

    menu:
        'soego_s42_r4925{#soego_s42_r4925}': # '"Uh, no. I misspoke."{#soego_s42_r4925}'
            # a161 # r4925
            jump soego_s50

        'soego_s42_r4926{#soego_s42_r4926}': # '"Yes. I know this is hard to believe, but it„s the truth: I woke up on one of your slabs upstairs."{#soego_s42_r4926}'
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    "soego_s43{#soego_s43}"
    # nr 'Soego nods. "Who are you here to see? I would be more than happy to direct you."{#soego_s43_1}'

    menu:
        'soego_s43_r4928{#soego_s43_r4928}': # '"It is none of your concern."{#soego_s43_r4928}'
            # a163 # r4928
            jump soego_s6

        'soego_s43_r4929{#soego_s43_r4929}' if soegoLogic.r4929_condition(): # '"I am here to see Dhall."{#soego_s43_r4929}'
            # a164 # r4929
            jump soego_s44

        'soego_s43_r4930{#soego_s43_r4930}' if soegoLogic.r4930_condition(): # '"I am here to see Deionarra."{#soego_s43_r4930}'
            # a165 # r4930
            jump soego_s47

        'soego_s43_r4931{#soego_s43_r4931}' if soegoLogic.r4931_condition(): # 'Lie: "Uh… Adahn. Does he still work here, or…?"{#soego_s43_r4931}'
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'soego_s43_r4932{#soego_s43_r4932}' if soegoLogic.r4932_condition(): # 'Lie: "Uh… Adahn. Does he still work here, or…?"{#soego_s43_r4932}'
            # a167 # r4932
            jump soego_s49

        'soego_s43_r4933{#soego_s43_r4933}': # '"Uh, no one. I misspoke."{#soego_s43_r4933}'
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    "soego_s44{#soego_s44}"
    # nr '"Dhall? Dhall the Scrivener can be found in the receiving room on the upper floor." The corner of Soego„s mouth twitches briefly. "He is rather busy and his health is failing. Unless you have pressing business, I would not disturb him."{#soego_s44_1}'

    menu:
        'soego_s44_r4935{#soego_s44_r4935}': # '"What„s wrong with Dhall?"{#soego_s44_r4935}'
            # a169 # r4935
            jump soego_s46

        'soego_s44_r4936{#soego_s44_r4936}': # '"The receiving room?"{#soego_s44_r4936}'
            # a170 # r4936
            jump soego_s45

        'soego_s44_r4937{#soego_s44_r4937}': # '"Very well. I will keep my visit with him brief. Farewell."{#soego_s44_r4937}'
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    "soego_s45{#soego_s45}"
    # nr '"Yes… the receiving room is where the bodies from the city are taken when they are brought here. They are recorded and then prepared for burial."{#soego_s45_1}'

    menu:
        'soego_s45_r4939{#soego_s45_r4939}': # '"What„s wrong with Dhall?"{#soego_s45_r4939}'
            # a172 # r4939
            jump soego_s46

        'soego_s45_r4940{#soego_s45_r4940}': # '"Thank you for your directions. I will keep my visit with Dhall brief. Farewell."{#soego_s45_r4940}'
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    "soego_s46{#soego_s46}"
    # nr '"Oh, there is nothing wrong with him. Dhall is…" Soego clicks his teeth. "…*old.* His long devotion to cataloging the dead has nearly run its course. Death will no doubt soon follow the wasting sickness he has contracted."{#soego_s46_1}'

    menu:
        'soego_s46_r4942{#soego_s46_r4942}': # '"Very well. I will keep my visit with him brief. Farewell."{#soego_s46_r4942}'
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    "soego_s47{#soego_s47}"
    # nr '"Deionarra? There is a woman by that name interred in the northwest memorial hall. Is that who you are looking for?"{#soego_s47_1}'

    menu:
        'soego_s47_r4944{#soego_s47_r4944}': # '"Yes… can you tell me what happened to her?"{#soego_s47_r4944}'
            # a175 # r4944
            jump soego_s48

        'soego_s47_r4945{#soego_s47_r4945}': # '"Yes. I will go pay my respects now."{#soego_s47_r4945}'
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    "soego_s48{#soego_s48}"
    # nr '"I do not know, but she has been here for quite some time. Her father might know what befell her… he visits here from his offices in the Upper Ward frequently. It was his wish that she be placed in the memorial hall here."{#soego_s48_1}'

    menu:
        'soego_s48_r4947{#soego_s48_r4947}': # '"Thank you for the directions. I will go pay my respects."{#soego_s48_r4947}'
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    "soego_s49{#soego_s49}"
    # nr '"Adahn…" Soego„s eyes narrow, and the red tinge you saw in them before seems more pronounced. "No one of that name resides within the Mortuary halls, living or dead." His mouth twitches, and to your surprise, he sniffs the air for a moment.{#soego_s49_1}'

    menu:
        'soego_s49_r4949{#soego_s49_r4949}': # '"Uh… then I must have misspoke."{#soego_s49_r4949}'
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    "soego_s50{#soego_s50}"
    # nr 'The corners of Soego„s mouth twitch again, and his eyes gleam. "Then what is your business here?"{#soego_s50_1}'

    menu:
        'soego_s50_r4951{#soego_s50_r4951}' if soegoLogic.r4951_condition(): # '"I was here for an interment earlier, paying my respects. I„m ready to leave… but I seem to have gotten turned around. Can you help me find the exit?"{#soego_s50_r4951}'
            # a179 # r4951
            jump soego_s8

        'soego_s50_r4952{#soego_s50_r4952}': # '"None of your concern."{#soego_s50_r4952}'
            # a180 # r4952
            jump soego_s6

        'soego_s50_r4953{#soego_s50_r4953}': # '"I woke up on one of the slabs in your preparation room."{#soego_s50_r4953}'
            # a181 # r4953
            jump soego_s42

        'soego_s50_r4954{#soego_s50_r4954}': # '"I„m here to see someone."{#soego_s50_r4954}'
            # a182 # r4954
            jump soego_s43

        'soego_s50_r4955{#soego_s50_r4955}' if soegoLogic.r4955_condition(): # '"I was here for an interment."{#soego_s50_r4955}'
            # a183 # r4955
            jump soego_s53

        'soego_s50_r4956{#soego_s50_r4956}': # 'Lean in as if to whisper to him, then when he leans in, snap his neck.{#soego_s50_r4956}'
            # a184 # r4956
            jump soego_s51

        'soego_s50_r5028{#soego_s50_r5028}': # 'Run for it.{#soego_s50_r5028}'
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    "soego_s51{#soego_s51}"
    # nr 'Soego frowns as you lean in, and you notice he sniffs the air, as if testing it. His eyes suddenly narrow, and he looks like he is about to call for the guards.{#soego_s51_1}'

    menu:
        'soego_s51_r4958{#soego_s51_r4958}' if soegoLogic.r4958_condition(): # 'Snap his neck before he can call out.{#soego_s51_r4958}'
            # a186 # r4958
            jump soego_s19

        'soego_s51_r4959{#soego_s51_r4959}' if soegoLogic.r4959_condition(): # 'Snap his neck before he can call out.{#soego_s51_r4959}'
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    "soego_s52{#soego_s52}"
    # nr 'As you lunge for him, Soego leaps back, his eyes gleaming red and his teeth bared. With a hiss, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#soego_s52_1}'

    menu:
        'soego_s52_r4961{#soego_s52_r4961}': # '"All right then…"{#soego_s52_r4961}'
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    "soego_s53{#soego_s53}"
    # nr '"Who was being interred? Perhaps the services are taking place somewhere else in the Mortuary."{#soego_s53_1}'

    menu:
        'soego_s53_r4963{#soego_s53_r4963}': # '"You misunderstand… the interment was ME."{#soego_s53_r4963}'
            # a189 # r4963
            jump soego_s57

        'soego_s53_r4964{#soego_s53_r4964}': # '"Pardon… I misspoke. I don„t know the name of the deceased."{#soego_s53_r4964}'
            # a190 # r4964
            jump soego_s50

        'soego_s53_r4965{#soego_s53_r4965}' if soegoLogic.r4965_condition(): # '"The name is Deionarra."{#soego_s53_r4965}'
            # a191 # r4965
            jump soego_s47

        'soego_s53_r4967{#soego_s53_r4967}' if soegoLogic.r4967_condition(): # 'Lie: "The name is… uh, Adahn."{#soego_s53_r4967}'
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'soego_s53_r4968{#soego_s53_r4968}' if soegoLogic.r4968_condition(): # 'Lie: "The name is… uh, Adahn."{#soego_s53_r4968}'
            # a193 # r4968
            jump soego_s49

        'soego_s53_r4969{#soego_s53_r4969}': # 'Lean in as if to whisper something to him, then snap his neck.{#soego_s53_r4969}'
            # a194 # r4969
            jump soego_s51

        'soego_s53_r4970{#soego_s53_r4970}': # 'Run for it.{#soego_s53_r4970}'
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    "soego_s54{#soego_s54}"
    # nr '"Well…" Soego squints. He seems confused. "Obviously a mistake has been made. Either you were brought here by blood relatives, other Dustmen, or…" Soego suddenly hisses, as if an unpleasant thought had just occurred to him. "Or one of the *Collectors.*"{#soego_s54_1}'

    menu:
        'soego_s54_r4971{#soego_s54_r4971}': # '"Collectors?"{#soego_s54_r4971}'
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    "soego_s55{#soego_s55}"
    # nr '"Yes, Collectors… packs of scavengers that bring the bodies of the dead to us. They may have thought you dead…" Soego hisses, and his eyes gleam. "…and they are so copper-blind they wouldn„t have cared to check before delivering you here." Soego studies you. "It is fortunate you awoke… or you may have reached the True Death before your time."{#soego_s55_1}'

    menu:
        'soego_s55_r4973{#soego_s55_r4973}': # '"Then there„s been a mistake… and I“d like to leave. Now."{#soego_s55_r4973}'
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    "soego_s56{#soego_s56}"
    # nr 'Soego nods, and the corner of his mouth twitches. "Why… of course, of course. Let me open the front gate for you."{#soego_s56_1}'

    menu:
        'soego_s56_r4975{#soego_s56_r4975}' if soegoLogic.r4975_condition(): # '"All right."{#soego_s56_r4975}'
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        'soego_s56_r4976{#soego_s56_r4976}' if soegoLogic.r4976_condition(): # '"All right."{#soego_s56_r4976}'
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    "soego_s57{#soego_s57}"
    # nr '"You?"{#soego_s57_1}'

    menu:
        'soego_s57_r4978{#soego_s57_r4978}': # '"Yes, *me.* I woke up on one of your slabs upstairs."{#soego_s57_r4978}'
            # a200 # r4978
            jump soego_s7

        'soego_s57_r4979{#soego_s57_r4979}': # '"Pardon… I misspoke."{#soego_s57_r4979}'
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    "soego_s58{#soego_s58}"
    # nr 'As you approach, Soego sniffs the air, and he looks up. When he sees you, he frowns. "I unlocked the gate for you. Why are you still here?"{#soego_s58_1}'

    menu:
        'soego_s58_r4981{#soego_s58_r4981}': # '"I had some questions for you before I left."{#soego_s58_r4981}'
            # a202 # r4981
            jump soego_s26

        'soego_s58_r4982{#soego_s58_r4982}': # '"I am heading for the gate now. Farewell."{#soego_s58_r4982}'
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    "soego_s59{#soego_s59}"
    # nr 'As you approach, Soego sniffs the air, and he looks up. When he sees you, he bows slightly. "Did you find what you were looking for?"{#soego_s59_1}'

    menu:
        'soego_s59_r4984{#soego_s59_r4984}' if soegoLogic.r4984_condition(): # '"Yes, thank you. Pardon me, I„ve gotten all turned around in these halls… can you help me find the exit?"{#soego_s59_r4984}'
            # a204 # r4984
            jump soego_s60

        'soego_s59_r4985{#soego_s59_r4985}' if soegoLogic.r4985_condition(): # '"Yes. I want to leave now. Can you take me to the exit?"{#soego_s59_r4985}'
            # a205 # r4985
            jump soego_s56

        'soego_s59_r4986{#soego_s59_r4986}': # '"Yes, and I am heading for the gate now. Farewell."{#soego_s59_r4986}'
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    "soego_s60{#soego_s60}"
    # nr 'Soego nods, and the corner of his mouth twitches. "Why… of course. These halls *can* be confusing to visitors. Let me open the front gate for you."{#soego_s60_1}'

    menu:
        'soego_s60_r4988{#soego_s60_r4988}' if soegoLogic.r4988_condition(): # '"Thank you."{#soego_s60_r4988}'
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        'soego_s60_r4989{#soego_s60_r4989}' if soegoLogic.r4989_condition(): # '"Thank you."{#soego_s60_r4989}'
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    "soego_s61{#soego_s61}"
    # nr '"This is most odd." Soego„s eyes gleam red, and the corners of his mouth twitch slightly, as if in anticipation. "Mayhap…" He sneers, displaying a row of sharp, dirty teeth. "Mayhap I should call the guards? Yes… yes, I think I will do that."{#soego_s61_1}'

    menu:
        'soego_s61_r4991{#soego_s61_r4991}' if soegoLogic.r4991_condition(): # '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"{#soego_s61_r4991}'
            # a209 # r4991
            jump soego_s8

        'soego_s61_r4992{#soego_s61_r4992}' if soegoLogic.r4992_condition(): # '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"{#soego_s61_r4992}'
            # a210 # r4992
            jump soego_s13

        'soego_s61_r4993{#soego_s61_r4993}' if soegoLogic.r4993_condition(): # 'Snap his neck before he can call out.{#soego_s61_r4993}'
            # a211 # r4993
            jump soego_s19

        'soego_s61_r4994{#soego_s61_r4994}' if soegoLogic.r4994_condition(): # 'Snap his neck before he can call out.{#soego_s61_r4994}'
            # a212 # r4994
            jump soego_s22

        'soego_s61_r4995{#soego_s61_r4995}': # '"Summon them, then. I„d like to meet them."{#soego_s61_r4995}'
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    "soego_s62{#soego_s62}"
    # nr 'Soego nods… and his mouth twitches again. He doesn„t even seem to be aware of it. "Return when you have paid your respects, and I will unlock the front gate for you. It is after nine bells, so you“ll have to leave as soon as you conclude your business."{#soego_s62_1}'

    menu:
        'soego_s62_r4997{#soego_s62_r4997}': # '"You know, I could do this another time. Can you let me out now?"{#soego_s62_r4997}'
            # a214 # r4997
            jump soego_s8

        'soego_s62_r4998{#soego_s62_r4998}': # '"Thank you. I will return."{#soego_s62_r4998}'
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    "soego_s63{#soego_s63}"
    # nr '"Ah, another member of the living. Most are slain by the ghouls, this far into the catacombs; you are fortunate."{#soego_s63_1}'

    menu:
        'soego_s63_r21655{#soego_s63_r21655}' if soegoLogic.r21655_condition(): # '"You„re Soego, from the Mortuary. What are you doing here?"{#soego_s63_r21655}'
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        'soego_s63_r21656{#soego_s63_r21656}' if soegoLogic.r21656_condition(): # '"Who are you?"{#soego_s63_r21656}'
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        'soego_s63_r21657{#soego_s63_r21657}' if soegoLogic.r21657_condition(): # '"Where am I?"{#soego_s63_r21657}'
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        'soego_s63_r21658{#soego_s63_r21658}' if soegoLogic.r21658_condition(): # '"Why have I been made a prisoner here?"{#soego_s63_r21658}'
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        'soego_s63_r21660{#soego_s63_r21660}' if soegoLogic.r21660_condition(): # '"Perhaps. Farewell."{#soego_s63_r21660}'
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    "soego_s64{#soego_s64}"
    # nr '"I am Soego, factotum of the Dustmen. I am a missionary in these parts." He gives a half-bow.{#soego_s64_1}'

    menu:
        'soego_s64_r21662{#soego_s64_r21662}': # '"Missionary?"{#soego_s64_r21662}'
            # a221 # r21662
            jump soego_s65

        'soego_s64_r21663{#soego_s64_r21663}' if soegoLogic.r21663_condition(): # '"What are the Dustmen doing here?"{#soego_s64_r21663}'
            # a222 # r21663
            jump soego_s66

        'soego_s64_r64595{#soego_s64_r64595}': # '"Where am I?"{#soego_s64_r64595}'
            # a223 # r64595
            jump soego_s77

        'soego_s64_r64596{#soego_s64_r64596}': # '"Why have I been made a prisoner here?"{#soego_s64_r64596}'
            # a224 # r64596
            jump soego_s78

        'soego_s64_r21665{#soego_s64_r21665}': # '"Greetings, and farewell."{#soego_s64_r21665}'
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    "soego_s65{#soego_s65}"
    # nr '"Yes, I came to these catacombs after hearing rumors of undead that were *aware* in these parts. I hope to save them."{#soego_s65_1}'

    menu:
        'soego_s65_r21667{#soego_s65_r21667}': # '"Save them?"{#soego_s65_r21667}'
            # a226 # r21667
            jump soego_s67

        'soego_s65_r64597{#soego_s65_r64597}': # '"Where am I?"{#soego_s65_r64597}'
            # a227 # r64597
            jump soego_s77

        'soego_s65_r64599{#soego_s65_r64599}': # '"Why have I been made a prisoner here?"{#soego_s65_r64599}'
            # a228 # r64599
            jump soego_s78

        'soego_s65_r21669{#soego_s65_r21669}': # '"That„s all I wished to know. Farewell."{#soego_s65_r21669}'
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    "soego_s66{#soego_s66}"
    # nr '"I am the only one. I came to these catacombs after hearing rumors of undead that were *aware* in these parts. I hope to save them."{#soego_s66_1}'

    menu:
        'soego_s66_r21671{#soego_s66_r21671}': # '"Save them?"{#soego_s66_r21671}'
            # a230 # r21671
            jump soego_s67

        'soego_s66_r64600{#soego_s66_r64600}': # '"Where am I?"{#soego_s66_r64600}'
            # a231 # r64600
            jump soego_s77

        'soego_s66_r64601{#soego_s66_r64601}': # '"Why have I been made a prisoner here?"{#soego_s66_r64601}'
            # a232 # r64601
            jump soego_s78

        'soego_s66_r21673{#soego_s66_r21673}': # '"That„s all I wished to know. Farewell."{#soego_s66_r21673}'
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    "soego_s67{#soego_s67}"
    # nr '"Yes, passion ties them to this false life. I hope I can teach them to forsake these passions and leave this false life behind and reach the True Death."{#soego_s67_1}'

    menu:
        'soego_s67_r21675{#soego_s67_r21675}': # '"False life?"{#soego_s67_r21675}'
            # a234 # r21675
            jump soego_s68

        'soego_s67_r21676{#soego_s67_r21676}': # '"True Death?"{#soego_s67_r21676}'
            # a235 # r21676
            jump soego_s69

        'soego_s67_r21767{#soego_s67_r21767}': # '"You want them to die?"{#soego_s67_r21767}'
            # a236 # r21767
            jump soego_s70

        'soego_s67_r64602{#soego_s67_r64602}': # '"Where am I?"{#soego_s67_r64602}'
            # a237 # r64602
            jump soego_s77

        'soego_s67_r64603{#soego_s67_r64603}': # '"Why have I been made a prisoner here?"{#soego_s67_r64603}'
            # a238 # r64603
            jump soego_s78

        'soego_s67_r21770{#soego_s67_r21770}': # '"That„s all I wished to know. Farewell."{#soego_s67_r21770}'
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    "soego_s68{#soego_s68}"
    # nr '"These… dead ones… are so close to the True Death… yet they cling to this life. This false life is the lie of existence on this plane."{#soego_s68_1}'

    menu:
        'soego_s68_r21772{#soego_s68_r21772}': # '"True Death?"{#soego_s68_r21772}'
            # a240 # r21772
            jump soego_s69

        'soego_s68_r21774{#soego_s68_r21774}': # '"You want them to die?"{#soego_s68_r21774}'
            # a241 # r21774
            jump soego_s70

        'soego_s68_r64604{#soego_s68_r64604}': # '"Where am I?"{#soego_s68_r64604}'
            # a242 # r64604
            jump soego_s77

        'soego_s68_r64605{#soego_s68_r64605}': # '"Why have I been made a prisoner here?"{#soego_s68_r64605}'
            # a243 # r64605
            jump soego_s78

        'soego_s68_r21776{#soego_s68_r21776}': # '"That„s all I wished to know. Farewell."{#soego_s68_r21776}'
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    "soego_s69{#soego_s69}"
    # nr '"A complete absence of passion, the True Death is the true life beyond this shadow of existence. It is to this place that these dead must reach to free themselves."{#soego_s69_1}'

    menu:
        'soego_s69_r21779{#soego_s69_r21779}': # '"What was that „false life“ you mentioned?"{#soego_s69_r21779}'
            # a245 # r21779
            jump soego_s68

        'soego_s69_r21780{#soego_s69_r21780}': # '"You want them to die?"{#soego_s69_r21780}'
            # a246 # r21780
            jump soego_s70

        'soego_s69_r64606{#soego_s69_r64606}': # '"Where am I?"{#soego_s69_r64606}'
            # a247 # r64606
            jump soego_s77

        'soego_s69_r64607{#soego_s69_r64607}': # '"Why have I been made a prisoner here?"{#soego_s69_r64607}'
            # a248 # r64607
            jump soego_s78

        'soego_s69_r21784{#soego_s69_r21784}': # '"That„s all I wished to know. Farewell."{#soego_s69_r21784}'
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    "soego_s70{#soego_s70}"
    # nr '"I wish them to transcend this plane of existence, divorce themselves from passion. It can save them."{#soego_s70_1}'

    menu:
        'soego_s70_r21788{#soego_s70_r21788}': # '"What was that „false life“ you mentioned?"{#soego_s70_r21788}'
            # a250 # r21788
            jump soego_s68

        'soego_s70_r21790{#soego_s70_r21790}': # '"You had mentioned the „True Death“?"{#soego_s70_r21790}'
            # a251 # r21790
            jump soego_s69

        'soego_s70_r64608{#soego_s70_r64608}': # '"Where am I?"{#soego_s70_r64608}'
            # a252 # r64608
            jump soego_s77

        'soego_s70_r64609{#soego_s70_r64609}': # '"Why have I been made a prisoner here?"{#soego_s70_r64609}'
            # a253 # r64609
            jump soego_s78

        'soego_s70_r21794{#soego_s70_r21794}': # '"That„s all I wished to know. Farewell."{#soego_s70_r21794}'
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    "soego_s71{#soego_s71}"
    # nr '"A moment of your time before you go. Do not attack any of the undead here in the catacombs; they will not harm you so long as you remain peaceful. Should you prove hostile they will defend themselves, and there are… many of them. Lastly, you may return here if you need to rest."{#soego_s71_1}'

    menu:
        'soego_s71_r21800{#soego_s71_r21800}' if soegoLogic.r21800_condition(): # '"Wait… can I rest now?"{#soego_s71_r21800}'
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        'soego_s71_r64569{#soego_s71_r64569}' if soegoLogic.r64569_condition(): # '"Wait… can we rest now?"{#soego_s71_r64569}'
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'soego_s71_r64570{#soego_s71_r64570}': # 'Leave.{#soego_s71_r64570}'
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    "soego_s72{#soego_s72}"
    # nr '"Your memory serves you well. I am no longer stationed in the Mortuary… instead, I have become a missionary in these parts."{#soego_s72_1}'

    menu:
        'soego_s72_r64547{#soego_s72_r64547}' if soegoLogic.r64547_condition(): # '"But I thought I„d broken your neck…"{#soego_s72_r64547}'
            # a258 # r64547
            jump soego_s73

        'soego_s72_r21808{#soego_s72_r21808}' if soegoLogic.r21808_condition(): # '"But I thought I„d *killed* you…"{#soego_s72_r21808}'
            # a259 # r21808
            jump soego_s73

        'soego_s72_r21809{#soego_s72_r21809}': # '"Missionary?"{#soego_s72_r21809}'
            # a260 # r21809
            jump soego_s65

        'soego_s72_r21811{#soego_s72_r21811}' if soegoLogic.r21811_condition(): # '"What are the Dustmen doing here?"{#soego_s72_r21811}'
            # a261 # r21811
            jump soego_s66

        'soego_s72_r64610{#soego_s72_r64610}': # '"Where am I?"{#soego_s72_r64610}'
            # a262 # r64610
            jump soego_s77

        'soego_s72_r64611{#soego_s72_r64611}': # '"Why have I been made a prisoner here?"{#soego_s72_r64611}'
            # a263 # r64611
            jump soego_s78

        'soego_s72_r21813{#soego_s72_r21813}': # '"That„s all I wished to know. Farewell."{#soego_s72_r21813}'
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    "soego_s73{#soego_s73}"
    # nr '"The wound you struck was not a mortal one. I recovered quickly… and found that I would like to distance myself from the Mortuary."{#soego_s73_1}'

    menu:
        'soego_s73_r21815{#soego_s73_r21815}' if soegoLogic.r21815_condition(): # '"Soego, I snapped your neck… not a mortal blow?"{#soego_s73_r21815}'
            # a265 # r21815
            jump soego_s101

        'soego_s73_r21816{#soego_s73_r21816}': # '"Aren„t you angry?"{#soego_s73_r21816}'
            # a266 # r21816
            jump soego_s74

        'soego_s73_r21817{#soego_s73_r21817}': # '"Hmmm. So… you„d said you“re a missionary?"{#soego_s73_r21817}'
            # a267 # r21817
            jump soego_s65

        'soego_s73_r21818{#soego_s73_r21818}' if soegoLogic.r21818_condition(): # '"Fine, then. What are the Dustmen doing here?"{#soego_s73_r21818}'
            # a268 # r21818
            jump soego_s66

        'soego_s73_r64612{#soego_s73_r64612}': # '"All right… so where am I?"{#soego_s73_r64612}'
            # a269 # r64612
            jump soego_s77

        'soego_s73_r64613{#soego_s73_r64613}': # '"I… see. Why have I been made a prisoner here?"{#soego_s73_r64613}'
            # a270 # r64613
            jump soego_s78

        'soego_s73_r21820{#soego_s73_r21820}': # '"Forget it; that„s all I wished to know. Farewell."{#soego_s73_r21820}'
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    "soego_s74{#soego_s74}"
    # nr '"No… should I be? I am somewhat disappointed that it was not my time to leave this place. Nonetheless, you should not return to the Mortuary, for many of my fellow factotums would not be pleased to see you."{#soego_s74_1}'

    menu:
        'soego_s74_r64614{#soego_s74_r64614}': # '"You„d said you“re a missionary?"{#soego_s74_r64614}'
            # a272 # r64614
            jump soego_s65

        'soego_s74_r21823{#soego_s74_r21823}' if soegoLogic.r21823_condition(): # '"What are the Dustmen doing here?"{#soego_s74_r21823}'
            # a273 # r21823
            jump soego_s66

        'soego_s74_r64615{#soego_s74_r64615}': # '"Where am I?"{#soego_s74_r64615}'
            # a274 # r64615
            jump soego_s77

        'soego_s74_r64616{#soego_s74_r64616}': # '"Why have I been made a prisoner here?"{#soego_s74_r64616}'
            # a275 # r64616
            jump soego_s78

        'soego_s74_r21825{#soego_s74_r21825}': # '"That„s all I wished to know. Farewell."{#soego_s74_r21825}'
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    "soego_s75{#soego_s75}"
    # nr 'Null node.{#soego_s75_1}'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    "soego_s76{#soego_s76}"
    # nr 'Null node.{#soego_s76_1}'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    "soego_s77{#soego_s77}"
    # nr '"You are in the catacombs of the Dead Nations. The guards brought you here."{#soego_s77_1}'

    menu:
        'soego_s77_r21840{#soego_s77_r21840}': # '"And who were you?"{#soego_s77_r21840}'
            # a277 # r21840
            jump soego_s64

        'soego_s77_r21841{#soego_s77_r21841}': # '"Why have I been made a prisoner here?"{#soego_s77_r21841}'
            # a278 # r21841
            jump soego_s78

        'soego_s77_r21843{#soego_s77_r21843}': # '"That„s all I wished to know. Farewell."{#soego_s77_r21843}'
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    "soego_s78{#soego_s78}"
    # nr '"I do not know. Ask some of the „citizens,“ here."{#soego_s78_1}'

    menu:
        'soego_s78_r21847{#soego_s78_r21847}': # '"And who were you?"{#soego_s78_r21847}'
            # a280 # r21847
            jump soego_s64

        'soego_s78_r21848{#soego_s78_r21848}': # '"Where am I?"{#soego_s78_r21848}'
            # a281 # r21848
            jump soego_s77

        'soego_s78_r21850{#soego_s78_r21850}': # '"Perhaps. Farewell."{#soego_s78_r21850}'
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    "soego_s79{#soego_s79}"
    # nr '"Ah, someone to aid our cause! I, as an agent of Many-as-One, was told of your coming. We need you to try and find a way into the throne room of the Silent King and kill him. Do this, and Many-as-One will reward you."{#soego_s79_1}'

    menu:
        'soego_s79_r66181{#soego_s79_r66181}' if soegoLogic.r66181_condition(): # '"Soego… Emoric wanted to know where you were."{#soego_s79_r66181}'
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        'soego_s79_r21852{#soego_s79_r21852}' if soegoLogic.r21852_condition(): # '"Wait: are you Soego? Emoric wanted to know where you were."{#soego_s79_r21852}'
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        'soego_s79_r64623{#soego_s79_r64623}' if soegoLogic.r64623_condition(): # '"Wait a moment… didn„t I break your neck in the Mortuary?"{#soego_s79_r64623}'
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        'soego_s79_r64624{#soego_s79_r64624}' if soegoLogic.r64624_condition(): # '"Wait a moment… I thought I„d *killed* you at the Mortuary…"{#soego_s79_r64624}'
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        'soego_s79_r21853{#soego_s79_r21853}' if soegoLogic.r21853_condition(): # '"How do I get to the Silent King?"{#soego_s79_r21853}'
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        'soego_s79_r21854{#soego_s79_r21854}' if soegoLogic.r21854_condition(): # '"I see. Farewell, then."{#soego_s79_r21854}'
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    "soego_s80{#soego_s80}"
    # nr '"I do not know… I have been here for some time, and I still cannot find a way inside his throne room. Perhaps you will have better luck, unburdened by the hatred and bigotry that is directed toward me."{#soego_s80_1}'

    menu:
        'soego_s80_r21860{#soego_s80_r21860}': # '"Hatred and bigotry?"{#soego_s80_r21860}'
            # a289 # r21860
            jump soego_s81

        'soego_s80_r21862{#soego_s80_r21862}': # '"I see. Farewell, then."{#soego_s80_r21862}'
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    "soego_s81{#soego_s81}"
    # nr '"My faction views are popular with some, but not all. The most important figureheads of this civilization do not hold them dear."{#soego_s81_1}'

    menu:
        'soego_s81_r21870{#soego_s81_r21870}': # '"I see. Farewell, then."{#soego_s81_r21870}'
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    "soego_s82{#soego_s82}"
    # nr '"Ah, well met again."{#soego_s82_1}'

    menu:
        'soego_s82_r24206{#soego_s82_r24206}' if soegoLogic.r24206_condition(): # '"The Silent King is dead, and has been for some time. There *is* no Silent King."{#soego_s82_r24206}'
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        'soego_s82_r21915{#soego_s82_r21915}' if soegoLogic.r21915_condition(): # '"The Silent King is dead, and has been for some time. There *is* no Silent King."{#soego_s82_r21915}'
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        'soego_s82_r21914{#soego_s82_r21914}' if soegoLogic.r21914_condition(): # '"Are you Soego? Emoric wanted to know where you were."{#soego_s82_r21914}'
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        'soego_s82_r21916{#soego_s82_r21916}' if soegoLogic.r21916_condition(): # '"I was in your chamber, and saw your journal."{#soego_s82_r21916}'
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        'soego_s82_r21917{#soego_s82_r21917}' if soegoLogic.r21917_condition(): # '"I met a skeleton - in one of the hallways here - that seems on the brink of seeking the True Death."{#soego_s82_r21917}'
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        'soego_s82_r21920{#soego_s82_r21920}' if soegoLogic.r21920_condition(): # '"I need to rest."{#soego_s82_r21920}'
            # a297 # r21920
            jump soego_s84

        'soego_s82_r21922{#soego_s82_r21922}' if soegoLogic.r21922_condition(): # '"We need to rest."{#soego_s82_r21922}'
            # a298 # r21922
            jump soego_s84

        'soego_s82_r21924{#soego_s82_r21924}': # '"I had some questions…"{#soego_s82_r21924}'
            # a299 # r21924
            jump soego_s83

        'soego_s82_r21925{#soego_s82_r21925}': # '"Just passing by. Farewell."{#soego_s82_r21925}'
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    "soego_s83{#soego_s83}"
    # nr '"I will answer what I can."{#soego_s83_1}'

    menu:
        'soego_s83_r21944{#soego_s83_r21944}' if soegoLogic.r21944_condition(): # '"Tell me about Hargrimm."{#soego_s83_r21944}'
            # a301 # r21944
            jump soego_s88

        'soego_s83_r21945{#soego_s83_r21945}' if soegoLogic.r21945_condition(): # '"Tell me about Acaste."{#soego_s83_r21945}'
            # a302 # r21945
            jump soego_s89

        'soego_s83_r21946{#soego_s83_r21946}' if soegoLogic.r21946_condition(): # '"Tell me about Stale Mary."{#soego_s83_r21946}'
            # a303 # r21946
            jump soego_s90

        'soego_s83_r21947{#soego_s83_r21947}' if soegoLogic.r21947_condition(): # '"Tell me about the Silent King."{#soego_s83_r21947}'
            # a304 # r21947
            jump soego_s91

        'soego_s83_r21948{#soego_s83_r21948}' if soegoLogic.r21948_condition(): # '"What do you know of this „civilization“?"{#soego_s83_r21948}'
            # a305 # r21948
            jump soego_s92

        'soego_s83_r21949{#soego_s83_r21949}' if soegoLogic.r21949_condition(): # '"What do you know of this „civilization“?"{#soego_s83_r21949}'
            # a306 # r21949
            jump soego_s93

        'soego_s83_r21951{#soego_s83_r21951}': # '"Never mind. Farewell."{#soego_s83_r21951}'
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    "soego_s84{#soego_s84}"
    # nr '"Of course. You shall be safe in this chamber while you rest."{#soego_s84_1}'

    menu:
        'soego_s84_r21956{#soego_s84_r21956}': # '"Thanks…"{#soego_s84_r21956}'
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    "soego_s85{#soego_s85}"
    # nr 'Null Node.{#soego_s85_1}'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    "soego_s86{#soego_s86}"
    # nr 'Null Node.{#soego_s86_1}'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    "soego_s87{#soego_s87}"
    # nr 'Null Node.{#soego_s87_1}'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    "soego_s88{#soego_s88}"
    # nr '"A stubborn one, but admirable in his piety and devotion to duty. He is my strongest rival here, and he has kept this civilization together for many years. His passions stem from his piety and devotion to duty… admirable qualities, but misplaced."{#soego_s88_1}'

    menu:
        'soego_s88_r21976{#soego_s88_r21976}': # '"I had other questions…"{#soego_s88_r21976}'
            # a309 # r21976
            jump soego_s83

        'soego_s88_r21977{#soego_s88_r21977}': # '"That„s all I wished to know. Farewell."{#soego_s88_r21977}'
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    "soego_s89{#soego_s89}"
    # nr '"Acaste is a brute. Only the Silent King keeps her in check, I fear. Should his presence be removed, the ghouls would run rampant through the catacombs."{#soego_s89_1}'

    menu:
        'soego_s89_r21979{#soego_s89_r21979}': # '"Tell me about the Silent King."{#soego_s89_r21979}'
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        'soego_s89_r21980{#soego_s89_r21980}': # '"I had other questions…"{#soego_s89_r21980}'
            # a312 # r21980
            jump soego_s83

        'soego_s89_r21981{#soego_s89_r21981}': # '"That„s all I wished to know. Farewell."{#soego_s89_r21981}'
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    "soego_s90{#soego_s90}"
    # nr '"Stale Mary is a good-hearted soul, if slow. I cannot understand much of what she says, but she and the zombies are not prone to violence."{#soego_s90_1}'

    menu:
        'soego_s90_r21983{#soego_s90_r21983}': # '"I had other questions…"{#soego_s90_r21983}'
            # a314 # r21983
            jump soego_s83

        'soego_s90_r21984{#soego_s90_r21984}': # '"That„s all I wished to know. Farewell."{#soego_s90_r21984}'
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    "soego_s91{#soego_s91}"
    # nr '"I have never seen the Silent King. I wish I could tell you something about him, but I have never seen him. Presumably, his throne room lies beyond the crimson doors, but I cannot gain entrance… Hargrimm, the skeleton priest, will not let me."{#soego_s91_1}'

    menu:
        'soego_s91_r21986{#soego_s91_r21986}': # '"Tell me of Hargrimm."{#soego_s91_r21986}'
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        'soego_s91_r21987{#soego_s91_r21987}': # '"I had other questions…"{#soego_s91_r21987}'
            # a317 # r21987
            jump soego_s83

        'soego_s91_r21988{#soego_s91_r21988}': # '"That„s all I wished to know. Farewell."{#soego_s91_r21988}'
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    "soego_s92{#soego_s92}"
    # nr '"They have been here many centuries, I think, taking care of those that have passed away in their halls. Such devotion to duty is no longer necessary… it is almost a crime."{#soego_s92_1}'

    menu:
        'soego_s92_r21990{#soego_s92_r21990}': # '"I had other questions…"{#soego_s92_r21990}'
            # a319 # r21990
            jump soego_s83

        'soego_s92_r21991{#soego_s92_r21991}': # '"That„s all I wished to know. Farewell."{#soego_s92_r21991}'
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    "soego_s93{#soego_s93}"
    # nr '"They have been here many centuries, I think, taking care of those that have passed away in their halls. Such devotion to duty is no longer necessary… it is almost a crime."{#soego_s93_1}'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    "soego_s94{#soego_s94}"
    # nr '"What? Is this true? Ah, Many-as-One would surely reward you for such information…"{#soego_s94_1}'

    menu:
        'soego_s94_r25248{#soego_s94_r25248}' if soegoLogic.r25248_condition(): # '"Many-as-One?"{#soego_s94_r25248}'
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        'soego_s94_r25252{#soego_s94_r25252}' if soegoLogic.r25252_condition(): # '"Interesting. I had some questions…"{#soego_s94_r25252}'
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        'soego_s94_r25253{#soego_s94_r25253}' if soegoLogic.r25253_condition(): # '"Perhaps. Farewell."{#soego_s94_r25253}'
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        'soego_s94_r21994{#soego_s94_r21994}' if soegoLogic.r21994_condition(): # '"Good. I had some questions…"{#soego_s94_r21994}'
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        'soego_s94_r21995{#soego_s94_r21995}' if soegoLogic.r21995_condition(): # '"I will tell him myself, then. Farewell."{#soego_s94_r21995}'
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    "soego_s95{#soego_s95}"
    # nr '"You… bastard!"{#soego_s95_1}'

    menu:
        'soego_s95_r21998{#soego_s95_r21998}': # '"Wha-"{#soego_s95_r21998}'
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    "soego_s96{#soego_s96}"
    # nr '"Eh… that door leads to my private chambers. Please do not enter the chambers."{#soego_s96_1}'

    menu:
        'soego_s96_r22004{#soego_s96_r22004}': # 'Leave.{#soego_s96_r22004}'
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    "soego_s97{#soego_s97}"
    # nr '"Oh! I will go speak with him, now!"{#soego_s97_1}'

    menu:
        'soego_s97_r22006{#soego_s97_r22006}': # '"Farewell."{#soego_s97_r22006}'
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    "soego_s98{#soego_s98}"
    # nr '"No, I am on my way."{#soego_s98_1}'

    menu:
        'soego_s98_r22008{#soego_s98_r22008}': # '"Farewell."{#soego_s98_r22008}'
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    "soego_s99{#soego_s99}"
    # nr '"Sadly, no. It may come around, however."{#soego_s99_1}'

    menu:
        'soego_s99_r22010{#soego_s99_r22010}': # '"I see. Farewell."{#soego_s99_r22010}'
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    "soego_s100{#soego_s100}"
    # nr 'Soego pauses for a moment. "I see." He suddenly begins a startling transformation…{#soego_s100_1}'

    menu:
        'soego_s100_r22012{#soego_s100_r22012}': # '"What the…?"{#soego_s100_r22012}'
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    "soego_s101{#soego_s101}"
    # nr '"Er… your memory does you a disservice. My neck was hurt, surely… sprained. But broken? Hardly."{#soego_s101_1}'

    menu:
        'soego_s101_r22015{#soego_s101_r22015}' if soegoLogic.r22015_condition(): # '"I beg to differ. What are you, Soego?"{#soego_s101_r22015}'
            # a332 # r22015
            jump soego_s106

        'soego_s101_r22016{#soego_s101_r22016}' if soegoLogic.r22016_condition(): # '"I beg to differ. What are you, Soego?"{#soego_s101_r22016}'
            # a333 # r22016
            jump soego_s103

        'soego_s101_r22018{#soego_s101_r22018}': # '"Aren„t you angry?"{#soego_s101_r22018}'
            # a334 # r22018
            jump soego_s74

        'soego_s101_r22019{#soego_s101_r22019}': # '"You„d said you“re a missionary?"{#soego_s101_r22019}'
            # a335 # r22019
            jump soego_s65

        'soego_s101_r22020{#soego_s101_r22020}' if soegoLogic.r22020_condition(): # '"What are the Dustmen doing here?"{#soego_s101_r22020}'
            # a336 # r22020
            jump soego_s66

        'soego_s101_r22022{#soego_s101_r22022}': # '"That„s all I wished to know. Farewell."{#soego_s101_r22022}'
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    "soego_s102{#soego_s102}"
    # nr 'He darts out of your grasp with preternatural speed. Sneering and spitting, he hisses "A foolish thing, to attack an agent of the cranium rat hive mind!" He suddenly begins a startling transformation…{#soego_s102_1}'

    menu:
        'soego_s102_r22024{#soego_s102_r22024}': # '"What the…?"{#soego_s102_r22024}'
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    "soego_s103{#soego_s103}"
    # nr '"A ridiculous question! You woke on a preparation slab, in the Mortuary… you told me so, yourself. Certainly my wound could not have been worse than those which led Collectors to mistake you for a corpse, no?"{#soego_s103_1}'

    menu:
        'soego_s103_r22027{#soego_s103_r22027}': # '"True enough, but… never mind."{#soego_s103_r22027}'
            # a339 # r22027
            jump soego_s104

        'soego_s103_r22028{#soego_s103_r22028}': # '"My condition is… unique."{#soego_s103_r22028}'
            # a340 # r22028
            jump soego_s105

        'soego_s103_r22029{#soego_s103_r22029}': # '"No. Something is wrong here, and I„ll find out what it is soon enough."{#soego_s103_r22029}'
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    "soego_s104{#soego_s104}"
    # nr 'He shrugs. "Very well."{#soego_s104_1}'

    menu:
        'soego_s104_r22033{#soego_s104_r22033}': # '"Aren„t you angry about what happened?"{#soego_s104_r22033}'
            # a342 # r22033
            jump soego_s74

        'soego_s104_r22034{#soego_s104_r22034}': # '"You„d said you“re a missionary?"{#soego_s104_r22034}'
            # a343 # r22034
            jump soego_s65

        'soego_s104_r22035{#soego_s104_r22035}' if soegoLogic.r22035_condition(): # '"So what are the Dustmen doing here?"{#soego_s104_r22035}'
            # a344 # r22035
            jump soego_s66

        'soego_s104_r22038{#soego_s104_r22038}': # '"I„ll take my leave, now. Farewell."{#soego_s104_r22038}'
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    "soego_s105{#soego_s105}"
    # nr 'He smiles. "Everyone„s unique. Everyone. Surely you won“t deny that?"{#soego_s105_1}'

    menu:
        'soego_s105_r22040{#soego_s105_r22040}': # '"True enough, but… never mind."{#soego_s105_r22040}'
            # a346 # r22040
            jump soego_s104

        'soego_s105_r22041{#soego_s105_r22041}': # '"No. Something is wrong here, and I„ll find out what it is soon enough."{#soego_s105_r22041}'
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    "soego_s106{#soego_s106}"
    # nr '"What am-? What sort of question is that?"{#soego_s106_1}'

    menu:
        'soego_s106_r22044{#soego_s106_r22044}': # '"You heard me. You„re no ordinary Dustman… what *are* you, Soego?"{#soego_s106_r22044}'
            # a348 # r22044
            jump soego_s107

        'soego_s106_r22045{#soego_s106_r22045}': # '"Forget it. Never mind."{#soego_s106_r22045}'
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    "soego_s107{#soego_s107}"
    # nr 'Soego scowls at you. "I don„t know *what* you speak of."{#soego_s107_1}'

    menu:
        'soego_s107_r22048{#soego_s107_r22048}': # '"Something is wrong here, and I„ll find out what it is soon enough."{#soego_s107_r22048}'
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    "soego_s108{#soego_s108}"
    # nr '"Ah, another member of the living. Most are slain by the ghouls, this far into the catacombs; you are fortunate."{#soego_s108_1}'

    menu:
        'soego_s108_r22051{#soego_s108_r22051}' if soegoLogic.r22051_condition(): # '"Are you Soego? Emoric wanted to know where you were."{#soego_s108_r22051}'
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        'soego_s108_r66173{#soego_s108_r66173}' if soegoLogic.r66173_condition(): # '"Soego… Emoric wanted to know where you were."{#soego_s108_r66173}'
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    "soego_s109{#soego_s109}"
    # nr '"Yes, I am he. I am doing missionary work for the Dustmen, here."{#soego_s109_1}'

    menu:
        'soego_s109_r64617{#soego_s109_r64617}' if soegoLogic.r64617_condition(): # '"All right. But… I thought I„d broken your neck…"{#soego_s109_r64617}'
            # a353 # r64617
            jump soego_s73

        'soego_s109_r64618{#soego_s109_r64618}' if soegoLogic.r64618_condition(): # '"Good. But… I thought I„d *killed* you…"{#soego_s109_r64618}'
            # a354 # r64618
            jump soego_s73

        'soego_s109_r22054{#soego_s109_r22054}': # '"Are there other Dustmen here?"{#soego_s109_r22054}'
            # a355 # r22054
            jump soego_s66

        'soego_s109_r50792{#soego_s109_r50792}': # '"Where am I?"{#soego_s109_r50792}'
            # a356 # r50792
            jump soego_s77

        'soego_s109_r50793{#soego_s109_r50793}': # '"Why have I been made a prisoner here?"{#soego_s109_r50793}'
            # a357 # r50793
            jump soego_s78

        'soego_s109_r22056{#soego_s109_r22056}': # '"I„ll take my leave, now. Farewell."{#soego_s109_r22056}'
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    "soego_s110{#soego_s110}"
    # nr '"Yes, I am he."{#soego_s110_1}'

    menu:
        'soego_s110_r64625{#soego_s110_r64625}' if soegoLogic.r64625_condition(): # '"Wait a moment… didn„t I break your neck in the Mortuary?"{#soego_s110_r64625}'
            # a359 # r64625
            jump soego_s112

        'soego_s110_r64626{#soego_s110_r64626}' if soegoLogic.r64626_condition(): # '"Wait a moment… I thought I„d *killed* you at the Mortuary…"{#soego_s110_r64626}'
            # a360 # r64626
            jump soego_s112

        'soego_s110_r22058{#soego_s110_r22058}' if soegoLogic.r22058_condition(): # '"Good. Now, how do I get to the Silent King?"{#soego_s110_r22058}'
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        'soego_s110_r22060{#soego_s110_r22060}' if soegoLogic.r22060_condition(): # '"Good. Farewell."{#soego_s110_r22060}'
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    "soego_s111{#soego_s111}"
    # nr '"Yes, the hive mind of the cranium rats. Go to the catacombs east of Weeping Stone. You shall find the way, there."{#soego_s111_1}'

    menu:
        'soego_s111_r25250{#soego_s111_r25250}': # '"Interesting. I had some questions…"{#soego_s111_r25250}'
            # a363 # r25250
            jump soego_s83

        'soego_s111_r25251{#soego_s111_r25251}': # '"Perhaps. Farewell."{#soego_s111_r25251}'
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    "soego_s112{#soego_s112}"
    # nr 'He waves your words away. "Nothing; it was nothing to me. I had already been blessed with lycanthropy; the wounds healed in little time at all."{#soego_s112_1}'

    menu:
        'soego_s112_r64621{#soego_s112_r64621}': # '"I… see. So, how do I get to the Silent King?"{#soego_s112_r64621}'
            # a365 # r64621
            jump soego_s80

        'soego_s112_r64622{#soego_s112_r64622}': # '"All right… farewell, then."{#soego_s112_r64622}'
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    "soego_s113{#soego_s113}"
    # nr '"Greetings…" The man turns to face you and makes a slight bow. You suddenly notice that his eyes aren„t bloodshot so much as they have a red tinge to them. "I am Soego. How may I help you?"{#soego_s113_1}'

    menu:
        'soego_s113_r66712{#soego_s113_r66712}': # '"I would like to leave the Mortuary. Can you help me?"{#soego_s113_r66712}'
            # a367 # r66712
            jump soego_s114

        'soego_s113_r66713{#soego_s113_r66713}': # '"I had some questions…"{#soego_s113_r66713}'
            # a368 # r66713
            jump soego_s114

        'soego_s113_r66714{#soego_s113_r66714}': # '"I was merely passing by. Farewell."{#soego_s113_r66714}'
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    "soego_s114{#soego_s114}"
    # nr 'Halfway through your comment, Soego„s lips suddenly peel back, revealing a row of dirty, sharp teeth, and he leans in, sniffing you.{#soego_s114_1}'

    menu:
        'soego_s114_r66715{#soego_s114_r66715}': # '"Uh… why in the hells are you sniffing me?"{#soego_s114_r66715}'
            # a370 # r66715
            jump soego_s115

        'soego_s114_r66716{#soego_s114_r66716}' if soegoLogic.r66716_condition(): # 'Snap his neck when he leans in.{#soego_s114_r66716}'
            # a371 # r66716
            jump soego_s22

        'soego_s114_r66717{#soego_s114_r66717}' if soegoLogic.r66717_condition(): # 'Snap his neck when he leans in.{#soego_s114_r66717}'
            # a372 # r66717
            jump soego_s19

        'soego_s114_r66718{#soego_s114_r66718}': # '"Never mind… farewell."{#soego_s114_r66718}'
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    "soego_s115{#soego_s115}"
    # nr '"Your clothes… those robes. They smell of another. They are not yours." Soego„s lips seal into a strange smile, and his eyes gleam with an almost feral light. "Who *are* you?"{#soego_s115_1}'

    menu:
        'soego_s115_r66719{#soego_s115_r66719}': # '"I… only took these robes so I could leave in peace. I woke up on one of the preparation rooms upstairs."{#soego_s115_r66719}'
            # a374 # r66719
            jump soego_s42

        'soego_s115_r66720{#soego_s115_r66720}': # '"You„re correct. These robes aren“t mine, but who they belong to is not your concern."{#soego_s115_r66720}'
            # a375 # r66720
            jump soego_s6

        'soego_s115_r66721{#soego_s115_r66721}' if soegoLogic.r66721_condition(): # 'Snap his neck before he can call for help.{#soego_s115_r66721}'
            # a376 # r66721
            jump soego_s22

        'soego_s115_r66722{#soego_s115_r66722}' if soegoLogic.r66722_condition(): # 'Snap his neck before he can call for help.{#soego_s115_r66722}'
            # a377 # r66722
            jump soego_s19

        'soego_s115_r66723{#soego_s115_r66723}': # '"This is of no matter. I will take my leave now."{#soego_s115_r66723}'
            # a378 # r66723
            jump soego_s17
