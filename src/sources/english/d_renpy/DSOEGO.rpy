init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'You see a tired-looking man in a faded black robe. His narrow face is extremely pale, and he doesn„t look as if he has been sleeping: his shoulders are slumped, and the flesh sags loosely beneath his bloodshot eyes. He doesn“t appear to notice you… he must mistake you for one of the cadaverous workers.'

    menu:
        '"Greetings."':
            # a0 # r1432
            jump soego_s1

        '"Who are you?"':
            # a1 # r1433
            jump soego_s1

        '"What is this place?"':
            # a2 # r1434
            jump soego_s1

        '"I had some questions…"':
            # a3 # r1435
            jump soego_s1

        'Leave him in peace.':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr 'The Dustman„s head snaps up as you address him. "Par… pardon? Did you just speak to me?"'

    menu:
        '"Yes, I did. I had some questions…"':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '"No. No, I didn„t."':
            # a6 # r1439
            $ soegoLogic.j63982_s1_r1439_action()
            $ soegoLogic.r1439_action()
            jump soego_s2

        'Become deathly silent.' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        'Become deathly silent.' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        'Leave. Quickly.':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    nr '"By the powers!" The Dustman jumps, then stares intently at you. You notice his eyes aren„t bloodshot as much as they have a red tinge to them. "Sirrah, you force an unflattering confession from me: you make a convincing zombie." He bows slightly. "I am Soego. May I ask your business here…" He glances at your scars. "…looking like that?"'

    menu:
        '"It„s none of your concern."':
            # a10 # r1444
            jump soego_s6

        '"I„m not certain what I“m doing here. I woke up on one of the slabs upstairs, and my memory„s… a little foggy."':
            # a11 # r1445
            jump soego_s7

        '"I got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '"I„m trying to get out of here."':
            # a13 # r1447
            jump soego_s13

        '"I needed a change."':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        '"I really don„t have time for this. Farewell."':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr 'The Dustman studies you for a moment, then shakes his head. "More imaginings…" He sighs and rubs his eyes. "These fever spells are getting worse…"'

    menu:
        '"It„s not your imagination. I had some questions…"':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'Snap his neck while he is distracted.' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        'Snap his neck while he is distracted.' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '"I had some questions."':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'Leave quietly.':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr 'The Dustman looks carefully at you, then leans in… his lips peel back, revealing a row of dirty, sharp teeth, and he begins to sniff at you like a rat.'

    menu:
        '"Uh… why in hell„s name are you sniffing me?"':
            # a21 # r1456
            $ soegoLogic.j63982_s4_r1456_action()
            $ soegoLogic.r1456_action()
            jump soego_s2

        '"Look, I had some questions for you…"':
            # a22 # r1457
            $ soegoLogic.j63982_s4_r1457_action()
            $ soegoLogic.r1457_action()
            jump soego_s2

        'Snap his neck when he leans in.' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        'Snap his neck when he leans in.' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        'Leave. Quickly.':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr 'As you are turning to leave, the Dustman gives a slight hiss, then leans in and sniffs at you. "By the powers!" The Dustman step back, his eyes widening. You notice his eyes aren„t bloodshot so much as they have a red tinge to them. "Sirrah, you force an unflattering confession from me: you make a convincing zombie." He bows slightly. "I am Soego. May I ask your business here… looking like that?"'

    menu:
        '"It„s none of your concern."':
            # a26 # r1462
            jump soego_s6

        '"I„m not certain what I“m doing here. I woke up on one of the slabs upstairs, and my memory„s… a little foggy."':
            # a27 # r1463
            jump soego_s7

        '"I„m lost, and I“m looking for the exit. Can you help me?"' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '"I am trying to get out of here."':
            # a29 # r1465
            jump soego_s13

        '"I needed a change."':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '"I really don„t have time for this. Farewell."':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    nr '"Oh, but I„m afraid it *is* my concern." Soego“s eyes gleam red, and the corners of his mouth twitch slightly, as if in anticipation. "Mayhap…" He sneers, displaying a row of sharp, dirty teeth. "Mayhap I should call the guards? Yes… yes, I think I will do that."'

    menu:
        '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        'Snap his neck before he can call out.' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '"Summon them, then. I„d like to meet them."':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    nr '"Really?" The Dustman scrutinizes you. "You *do* look like you„ve been prepared. I don“t know how you would have survived such pain… are you *in* pain? You look it."'

    menu:
        '"How would I have gotten here in the first place?"':
            # a37 # r1475
            jump soego_s54

        '"I don„t have time for this. Farewell."':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr 'Soego nods, and the corner of his mouth twitches. "Why… of course. These halls *can* be confusing to visitors. No harm done, but you are not permitted here in the Mortuary after nine bells - let me open the front gate for you."'

    menu:
        '"Thank you."' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '"Thank you."' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr 'Soego reaches to his belt, fumbles at it for a moment, then hisses. "The key!" His eyes gleam a bright red, and his lips peel back in anger… his expression is almost animalistic. "Someone„s stolen the key!" He turns to you and snarls. "You! You must have done this!"'

    menu:
        'Bluff him: "Uh…wait! Why would I ask you for it if I„d stolen it?"':
            # a41 # r1481
            jump soego_s18

        'Lie: "What are you talking about?! I had nothing to do with it!"':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'Snap his neck before he can call out.' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '"So what if I did? What are you going to do about it?"':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr 'Soego takes a large key from his belt and walks to the front gate. You can„t help but notice his peculiar walk… he hunches forward, as if to keep balance.'

    menu:
        '"Odd walk he„s got."' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        'Wait for him to open the gate.' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr 'Once he reaches the gate, Soego turns the key in the lock. A moment later, a grating sound comes from within the lock chamber… the sound carries throughout the main hall, echoing off the marble floors.'

    menu:
        'Wait for him to return.':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    nr '"Very well. The front gate is now unlocked, but you cannot re-enter."'

    menu:
        '"Can I ask you some questions before I leave?"':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '"Thank you, Soego. I will leave now."':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    nr '"Get out?" Soego frowns. "How did you get in?"'

    menu:
        '"I was here for an interment earlier, paying my respects. I„m ready to leave… but I seem to have gotten turned around. Can you help me find the exit?"' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '"I don„t really know."' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '"I don„t really know."' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '"I woke up on one of the slabs upstairs, and my memory„s… a little foggy."':
            # a54 # r1498
            jump soego_s7

        '"I don„t have time for this. Farewell."':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr 'Soego clicks his tongue. "Most curious." He studies you again. "Is it possible that you are one of the Contracted?"'

    menu:
        '"Uh, „Contracted“?"':
            # a56 # r1501
            jump soego_s23

        '"I really don„t have time for this. Farewell."':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr 'As you are turning to leave, the Dustman stops sniffing you and gives a slight hiss. "By the powers!" The Dustman draws back, his eyes widening. You notice his eyes aren„t bloodshot so much as they have a red tinge to them. "Sirrah, you force an unflattering confession from me: you make a convincing zombie." He bows slightly. "I am Soego. May I ask your business here… looking like that?"'

    menu:
        '"It„s none of your concern."':
            # a58 # r1504
            jump soego_s6

        '"I„m not certain what I“m doing here. I woke up on one of the slabs upstairs, and my memory„s… a little foggy."':
            # a59 # r1505
            jump soego_s7

        '"I„m lost, and I“m looking for the exit. Can you help me?"' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '"I am trying to get out of here."':
            # a61 # r1508
            jump soego_s13

        '"I needed a change."':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '"I really don„t have time for this. Farewell."':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    nr '"I see…" Soego„s eyes gleam red, and the corners of his mouth twitch slightly, as if in anticipation. "Mayhap…" He sneers, displaying a row of sharp, dirty teeth. "Mayhap I should call the guards? Yes… yes, I think I will do that."'

    menu:
        '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        'Snap his neck before he can call out.' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '"Summon them, then. I„d like to meet them."':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr 'As you turn to leave, Soego gives an angry hiss… then suddenly composes himself and raises his hand. "No, no, I„m afraid you can“t leave. Something is amiss here. I think it is best we get this matter straightened out…" The corners of his lips twitch slightly, and his eyes gleam. "…mayhap the guards could help. Yes… mayhap I should call them."'

    menu:
        '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        'Snap his neck before he can call out.' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '"Summon them, then. I„d like to meet them."':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr 'Soego takes a step back, then claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr 'Before he can utter a word, your hands clamp onto his temples, and you twist his head sharply to the left.'

    menu:
        '"Can„t have you alerting your friends…"':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr 'There is a *crack* as his neck snaps… but instead of falling limp, the Dustman gives a strangled cry and rips himself from your grip!'

    menu:
        '"What…?!"' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '"What…?!"' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr 'The Dustman looks as shocked as you; his eyes are wild, and he is making a gurgling noise in his throat… you„re certain you“ve snapped his neck, for his head is twisted at an unnatural angle, but he„s still alive! As you watch, stunned, he claps his hands weakly three times. In response, a great iron bell begins tolling throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr '*Something* must have alerted the Dustman… before you can even lunge for him, he leaps back, his eyes gleaming red and his teeth bared. With a hiss, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    nr '"There are some that have signed a contract allowing the Dustmen to use their bodies once they have died. It is possible that you were caught in an… unusual mix-up. You seem much brighter than our regular zombies."'

    menu:
        '"People sell their bodies after death to you?"':
            # a80 # r4793
            jump soego_s24

        '"Oh. I had some other questions…"':
            # a81 # r4794
            jump soego_s26

        '"I don„t have time for this. Farewell."':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    nr '"Oh, yes. In exchange for a small sum of copper, many are willing to sell a body they will no longer need when they reach the True Death."'

    menu:
        '"What do you do with these bodies?"':
            # a83 # r4797
            jump soego_s25

        '"I… see. Do you mind if I ask you some other questions?"':
            # a84 # r4798
            jump soego_s25

        '"Thanks for the information. Farewell."':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    nr '"The shells perform menial tasks around the Mortuary. They haul bodies, clean floors, assist us in preparing bodies for burial… relatively simple tasks. It is unfortunate, but they are not capable of following any complicated instructions."'

    menu:
        '"Well, „Contracted“ or not, how did I get here if I wasn„t dead?"':
            # a86 # r4801
            jump soego_s54

        '"I… see. Do you mind if I ask you some other questions?"':
            # a87 # r4802
            jump soego_s26

        '"Thanks for the information. Farewell."':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr 'Soego nods. "You may ask your questions."'

    menu:
        '"I„d like to leave. Can you guide me to the exit?"' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '"Can you get me out of here?"' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '"Do you know there„s a corpse up on the second level that“s a human in disguise?"' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '"If I may ask… are you all right? You look tired."':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '"You„re Soego, right? I heard you“re a little odd for a Dustman. That you like rats."' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '"You„re Soego, right? I heard you“re a little odd for a Dustman. That you like rats."' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '"Do you know someone named Pharod?"' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '"I„m missing a journal. Have you seen one?"' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    nr '"Pardon?"'

    menu:
        '"There„s a man disguised as a corpse upstairs. I think he“s spying on the Dustmen."' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '"There„s a man disguised as a corpse upstairs. I think he“s spying on the Dustmen."' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '"Forget it. I had some other questions…"':
            # a101 # r4838
            jump soego_s26

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    nr '"What? Why would anyone…?" Soego„s voice suddenly drops to a hiss and his lips peel back to reveal a row of jagged teeth. "An *Anarchist.*" His eyes gleam a bright red. "An Anarchist. *Here.*" He suddenly seems to remember your presence, and he composes himself. "Thank you for informing me. I will see to it that the guards handle this matter."'

    menu:
        '"No problem. I had some other questions…"':
            # a104 # r4852
            jump soego_s26

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr 'You are about to mention it, when suddenly you stop. You feel a strange prickling sensation as you look at Soego… for some reason, you don„t think you should say anything.'

    menu:
        '"I hear you„re a strange one, Soego. That you like rats."':
            # a107 # r4856
            jump soego_s30

        '"Uh… say, I wanted to ask you something."':
            # a108 # r4857
            jump soego_s26

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '"Never mind. I must take my leave. Farewell."' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr 'Soego falls silent for a moment, studying you. His eyes gleam a bright red, and he gives a soft hiss. "I think you have outstayed your welcome." To your surprise, he takes a step back and claps his hands sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.'

    menu:
        '"What the…? What are you doing?"':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '"All right, then. Prepare to die, Soego."':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr 'Soego manages a weak smile, and the corners of his mouth twitch slightly. "I have recently taken ill… minor fevers, nothing more. Sometimes they make sleep… difficult."'

    menu:
        '"Anything I could do?"':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '"Oh. I had some other questions…"':
            # a114 # r4865
            jump soego_s26

        '"I see. Well, I must take my leave. Farewell."' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '"I see. Well, I must take my leave. Farewell."' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr 'Soego shakes his head. "No, no, thank you for your concern… I will endure." He frowns slightly. "Was there something else you wanted?"'

    menu:
        '"Yes. I had some other questions…"':
            # a117 # r4869
            jump soego_s26

        '"No, I won„t trouble you anymore. Thanks for the information."' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '"No, I won„t trouble you anymore. Thanks for the information."' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    nr '"Pharod? Of course I know him." He frowns, and his eyes gleam red. "A ghoulish man. No respect for the dead, and even less for the living. He is a scavenger. A Collector."'

    menu:
        '"Collector?"':
            # a120 # r4873
            jump soego_s34

        '"Do you know where I could find him?"':
            # a121 # r4874
            jump soego_s36

        '"Oh. I had some other questions…"':
            # a122 # r4875
            jump soego_s26

        '"I see. Perhaps I should take my leave."' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '"I see. Perhaps I should take my leave."' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    nr '"Collectors make their living gathering corpses and bringing them here to the Mortuary. We then make sure the bodies receive a proper burial."'

    menu:
        '"So if a Collector found a body… mine, for example… they might have brought it here and sold it to you?"' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '"So this Collector, Pharod… do you know where I could find him?"':
            # a126 # r4880
            jump soego_s36

        '"Oh. I had some other questions…"':
            # a127 # r4881
            jump soego_s26

        '"I see. Well, I must take my leave. Farewell."' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '"I see. Well, I must take my leave. Farewell."' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    nr '"Yes."'

    menu:
        '"Hmmmm. Suddenly it„s extremely important that I find this Pharod. Do you know where I could find him?"':
            # a130 # r4885
            jump soego_s36

        '"Oh. I had some other questions…"':
            # a131 # r4886
            jump soego_s26

        '"Thanks for the information. Farewell."' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '"Thanks for the information. Farewell."' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    nr '"I know he resides in the Hive, the slums outside the Mortuary, but I do not know exactly where. Some of the other Collectors may know, if they„ll talk to you."'

    menu:
        '"What do Collectors do again?"':
            # a134 # r4890
            jump soego_s34

        '"Oh. I had some other questions…"':
            # a135 # r4891
            jump soego_s26

        '"Thanks for the information. Farewell."' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '"Thanks for the information. Farewell."' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    nr '"A journal?" Soego seems confused. "No, I have not seen one."'

    menu:
        '"Never mind then. I had some other questions…"':
            # a138 # r4895
            jump soego_s26

        '"Thanks anyway. Farewell."' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '"Thanks anyway. Farewell."' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'You see a tired-looking man in a black robe. His narrow face is extremely pale, and he doesn„t look as if he has been sleeping: his shoulders are slumped, and the flesh sags loosely beneath his bloodshot eyes. He looks so lost in thought he doesn“t even notice you.'

    menu:
        '"Greetings…"' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.j63982_s38_r66706_action()
            $ soegoLogic.r66706_action()
            jump soego_s39

        '"Greetings…"' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.j63982_s38_r66707_action()
            $ soegoLogic.r66707_action()
            jump soego_s113

        'Leave him to his thoughts.':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    nr '"Greetings…" The man turns to face you and makes a slight bow. You suddenly notice that his eyes aren„t bloodshot so much as they have a red tinge to them. "I am Soego. How may I…" He suddenly seems to notice your scars, and the corner of his mouth twitches. "I“m sorry, sirrah, are you lost?"'

    menu:
        '"Yes."':
            # a144 # r4905
            jump soego_s40

        '"No."':
            # a145 # r4906
            jump soego_s41

        '"No, I„m not lost. I had some questions…"':
            # a146 # r4907
            jump soego_s41

        '"No. I was merely looking for the exit. Farewell."':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    nr '"Well, then…" The corners of Soego„s mouth twitch again, as if in anticipation. "Let me call the guards to lead you out. Stand for a moment." He looks like he is about to call the guards.'

    menu:
        '"Hold a moment! Please… there„s no need to call the guards. I came in for an interment earlier, and I just got turned around in the halls… Can you please just lead me out?"' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '"No! I„m not lost - I misspoke."':
            # a149 # r4911
            jump soego_s50

        'Snap his neck before he can call out.' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        'Leave. Quickly.':
            # a152 # r4914
            jump soego_s18

        'Wait.':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    nr '"I do not recall admitting you." Soego looks at you suspiciously, and his eyes gleam red in the light of the torches. "May I ask what you are doing here?"'

    menu:
        '"I was here for an interment earlier, paying my respects. I„m ready to leave… but I seem to have gotten turned around. Can you help me find the exit?"' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '"That is none of your concern."':
            # a155 # r4918
            jump soego_s6

        '"I awoke on one of the slabs in your preparation room."':
            # a156 # r4919
            jump soego_s42

        '"I„m here to see someone."':
            # a157 # r4920
            jump soego_s43

        '"I was here for an interment, but there seems to have been a mistake."' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        'Lean in as if to whisper to him, then when he leans in, snap his neck.':
            # a159 # r4922
            jump soego_s51

        'Leave. Quickly.':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr 'He seems surprised. "You… woke up on one of the slabs upstairs?"'

    menu:
        '"Uh, no. I misspoke."':
            # a161 # r4925
            jump soego_s50

        '"Yes. I know this is hard to believe, but it„s the truth: I woke up on one of your slabs upstairs."':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr 'Soego nods. "Who are you here to see? I would be more than happy to direct you."'

    menu:
        '"It is none of your concern."':
            # a163 # r4928
            jump soego_s6

        '"I am here to see Dhall."' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '"I am here to see Deionarra."' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        'Lie: "Uh… Adahn. Does he still work here, or…?"' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'Lie: "Uh… Adahn. Does he still work here, or…?"' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '"Uh, no one. I misspoke."':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    nr '"Dhall? Dhall the Scrivener can be found in the receiving room on the upper floor." The corner of Soego„s mouth twitches briefly. "He is rather busy and his health is failing. Unless you have pressing business, I would not disturb him."'

    menu:
        '"What„s wrong with Dhall?"':
            # a169 # r4935
            jump soego_s46

        '"The receiving room?"':
            # a170 # r4936
            jump soego_s45

        '"Very well. I will keep my visit with him brief. Farewell."':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    nr '"Yes… the receiving room is where the bodies from the city are taken when they are brought here. They are recorded and then prepared for burial."'

    menu:
        '"What„s wrong with Dhall?"':
            # a172 # r4939
            jump soego_s46

        '"Thank you for your directions. I will keep my visit with Dhall brief. Farewell."':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    nr '"Oh, there is nothing wrong with him. Dhall is…" Soego clicks his teeth. "…*old.* His long devotion to cataloging the dead has nearly run its course. Death will no doubt soon follow the wasting sickness he has contracted."'

    menu:
        '"Very well. I will keep my visit with him brief. Farewell."':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    nr '"Deionarra? There is a woman by that name interred in the northwest memorial hall. Is that who you are looking for?"'

    menu:
        '"Yes… can you tell me what happened to her?"':
            # a175 # r4944
            jump soego_s48

        '"Yes. I will go pay my respects now."':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    nr '"I do not know, but she has been here for quite some time. Her father might know what befell her… he visits here from his offices in the Upper Ward frequently. It was his wish that she be placed in the memorial hall here."'

    menu:
        '"Thank you for the directions. I will go pay my respects."':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    nr '"Adahn…" Soego„s eyes narrow, and the red tinge you saw in them before seems more pronounced. "No one of that name resides within the Mortuary halls, living or dead." His mouth twitches, and to your surprise, he sniffs the air for a moment.'

    menu:
        '"Uh… then I must have misspoke."':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr 'The corners of Soego„s mouth twitch again, and his eyes gleam. "Then what is your business here?"'

    menu:
        '"I was here for an interment earlier, paying my respects. I„m ready to leave… but I seem to have gotten turned around. Can you help me find the exit?"' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '"None of your concern."':
            # a180 # r4952
            jump soego_s6

        '"I woke up on one of the slabs in your preparation room."':
            # a181 # r4953
            jump soego_s42

        '"I„m here to see someone."':
            # a182 # r4954
            jump soego_s43

        '"I was here for an interment."' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        'Lean in as if to whisper to him, then when he leans in, snap his neck.':
            # a184 # r4956
            jump soego_s51

        'Run for it.':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr 'Soego frowns as you lean in, and you notice he sniffs the air, as if testing it. His eyes suddenly narrow, and he looks like he is about to call for the guards.'

    menu:
        'Snap his neck before he can call out.' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr 'As you lunge for him, Soego leaps back, his eyes gleaming red and his teeth bared. With a hiss, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    nr '"Who was being interred? Perhaps the services are taking place somewhere else in the Mortuary."'

    menu:
        '"You misunderstand… the interment was ME."':
            # a189 # r4963
            jump soego_s57

        '"Pardon… I misspoke. I don„t know the name of the deceased."':
            # a190 # r4964
            jump soego_s50

        '"The name is Deionarra."' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        'Lie: "The name is… uh, Adahn."' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'Lie: "The name is… uh, Adahn."' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        'Lean in as if to whisper something to him, then snap his neck.':
            # a194 # r4969
            jump soego_s51

        'Run for it.':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    nr '"Well…" Soego squints. He seems confused. "Obviously a mistake has been made. Either you were brought here by blood relatives, other Dustmen, or…" Soego suddenly hisses, as if an unpleasant thought had just occurred to him. "Or one of the *Collectors.*"'

    menu:
        '"Collectors?"':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    nr '"Yes, Collectors… packs of scavengers that bring the bodies of the dead to us. They may have thought you dead…" Soego hisses, and his eyes gleam. "…and they are so copper-blind they wouldn„t have cared to check before delivering you here." Soego studies you. "It is fortunate you awoke… or you may have reached the True Death before your time."'

    menu:
        '"Then there„s been a mistake… and I“d like to leave. Now."':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr 'Soego nods, and the corner of his mouth twitches. "Why… of course, of course. Let me open the front gate for you."'

    menu:
        '"All right."' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '"All right."' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    nr '"You?"'

    menu:
        '"Yes, *me.* I woke up on one of your slabs upstairs."':
            # a200 # r4978
            jump soego_s7

        '"Pardon… I misspoke."':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr 'As you approach, Soego sniffs the air, and he looks up. When he sees you, he frowns. "I unlocked the gate for you. Why are you still here?"'

    menu:
        '"I had some questions for you before I left."':
            # a202 # r4981
            jump soego_s26

        '"I am heading for the gate now. Farewell."':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr 'As you approach, Soego sniffs the air, and he looks up. When he sees you, he bows slightly. "Did you find what you were looking for?"'

    menu:
        '"Yes, thank you. Pardon me, I„ve gotten all turned around in these halls… can you help me find the exit?"' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '"Yes. I want to leave now. Can you take me to the exit?"' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '"Yes, and I am heading for the gate now. Farewell."':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr 'Soego nods, and the corner of his mouth twitches. "Why… of course. These halls *can* be confusing to visitors. Let me open the front gate for you."'

    menu:
        '"Thank you."' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '"Thank you."' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    nr '"This is most odd." Soego„s eyes gleam red, and the corners of his mouth twitch slightly, as if in anticipation. "Mayhap…" He sneers, displaying a row of sharp, dirty teeth. "Mayhap I should call the guards? Yes… yes, I think I will do that."'

    menu:
        '"Hold a moment! I was lost… I just got turned around in the halls here, and I can„t seem to find the exit. Can you help me?"' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '"Stop! Don„t call the guards! I just want to get out of here… can you help me?"' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        'Snap his neck before he can call out.' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        'Snap his neck before he can call out.' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '"Summon them, then. I„d like to meet them."':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr 'Soego nods… and his mouth twitches again. He doesn„t even seem to be aware of it. "Return when you have paid your respects, and I will unlock the front gate for you. It is after nine bells, so you“ll have to leave as soon as you conclude your business."'

    menu:
        '"You know, I could do this another time. Can you let me out now?"':
            # a214 # r4997
            jump soego_s8

        '"Thank you. I will return."':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    nr '"Ah, another member of the living. Most are slain by the ghouls, this far into the catacombs; you are fortunate."'

    menu:
        '"You„re Soego, from the Mortuary. What are you doing here?"' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '"Who are you?"' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '"Where am I?"' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '"Why have I been made a prisoner here?"' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '"Perhaps. Farewell."' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    nr '"I am Soego, factotum of the Dustmen. I am a missionary in these parts." He gives a half-bow.'

    menu:
        '"Missionary?"':
            # a221 # r21662
            jump soego_s65

        '"What are the Dustmen doing here?"' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '"Where am I?"':
            # a223 # r64595
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a224 # r64596
            jump soego_s78

        '"Greetings, and farewell."':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    nr '"Yes, I came to these catacombs after hearing rumors of undead that were *aware* in these parts. I hope to save them."'

    menu:
        '"Save them?"':
            # a226 # r21667
            jump soego_s67

        '"Where am I?"':
            # a227 # r64597
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a228 # r64599
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    nr '"I am the only one. I came to these catacombs after hearing rumors of undead that were *aware* in these parts. I hope to save them."'

    menu:
        '"Save them?"':
            # a230 # r21671
            jump soego_s67

        '"Where am I?"':
            # a231 # r64600
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a232 # r64601
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    nr '"Yes, passion ties them to this false life. I hope I can teach them to forsake these passions and leave this false life behind and reach the True Death."'

    menu:
        '"False life?"':
            # a234 # r21675
            jump soego_s68

        '"True Death?"':
            # a235 # r21676
            jump soego_s69

        '"You want them to die?"':
            # a236 # r21767
            jump soego_s70

        '"Where am I?"':
            # a237 # r64602
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a238 # r64603
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    nr '"These… dead ones… are so close to the True Death… yet they cling to this life. This false life is the lie of existence on this plane."'

    menu:
        '"True Death?"':
            # a240 # r21772
            jump soego_s69

        '"You want them to die?"':
            # a241 # r21774
            jump soego_s70

        '"Where am I?"':
            # a242 # r64604
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a243 # r64605
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    nr '"A complete absence of passion, the True Death is the true life beyond this shadow of existence. It is to this place that these dead must reach to free themselves."'

    menu:
        '"What was that „false life“ you mentioned?"':
            # a245 # r21779
            jump soego_s68

        '"You want them to die?"':
            # a246 # r21780
            jump soego_s70

        '"Where am I?"':
            # a247 # r64606
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a248 # r64607
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    nr '"I wish them to transcend this plane of existence, divorce themselves from passion. It can save them."'

    menu:
        '"What was that „false life“ you mentioned?"':
            # a250 # r21788
            jump soego_s68

        '"You had mentioned the „True Death“?"':
            # a251 # r21790
            jump soego_s69

        '"Where am I?"':
            # a252 # r64608
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a253 # r64609
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    nr '"A moment of your time before you go. Do not attack any of the undead here in the catacombs; they will not harm you so long as you remain peaceful. Should you prove hostile they will defend themselves, and there are… many of them. Lastly, you may return here if you need to rest."'

    menu:
        '"Wait… can I rest now?"' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '"Wait… can we rest now?"' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'Leave.':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    nr '"Your memory serves you well. I am no longer stationed in the Mortuary… instead, I have become a missionary in these parts."'

    menu:
        '"But I thought I„d broken your neck…"' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '"But I thought I„d *killed* you…"' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '"Missionary?"':
            # a260 # r21809
            jump soego_s65

        '"What are the Dustmen doing here?"' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '"Where am I?"':
            # a262 # r64610
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a263 # r64611
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    nr '"The wound you struck was not a mortal one. I recovered quickly… and found that I would like to distance myself from the Mortuary."'

    menu:
        '"Soego, I snapped your neck… not a mortal blow?"' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '"Aren„t you angry?"':
            # a266 # r21816
            jump soego_s74

        '"Hmmm. So… you„d said you“re a missionary?"':
            # a267 # r21817
            jump soego_s65

        '"Fine, then. What are the Dustmen doing here?"' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '"All right… so where am I?"':
            # a269 # r64612
            jump soego_s77

        '"I… see. Why have I been made a prisoner here?"':
            # a270 # r64613
            jump soego_s78

        '"Forget it; that„s all I wished to know. Farewell."':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    nr '"No… should I be? I am somewhat disappointed that it was not my time to leave this place. Nonetheless, you should not return to the Mortuary, for many of my fellow factotums would not be pleased to see you."'

    menu:
        '"You„d said you“re a missionary?"':
            # a272 # r64614
            jump soego_s65

        '"What are the Dustmen doing here?"' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '"Where am I?"':
            # a274 # r64615
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a275 # r64616
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
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
    nr '"You are in the catacombs of the Dead Nations. The guards brought you here."'

    menu:
        '"And who were you?"':
            # a277 # r21840
            jump soego_s64

        '"Why have I been made a prisoner here?"':
            # a278 # r21841
            jump soego_s78

        '"That„s all I wished to know. Farewell."':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    nr '"I do not know. Ask some of the „citizens,“ here."'

    menu:
        '"And who were you?"':
            # a280 # r21847
            jump soego_s64

        '"Where am I?"':
            # a281 # r21848
            jump soego_s77

        '"Perhaps. Farewell."':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    nr '"Ah, someone to aid our cause! I, as an agent of Many-as-One, was told of your coming. We need you to try and find a way into the throne room of the Silent King and kill him. Do this, and Many-as-One will reward you."'

    menu:
        '"Soego… Emoric wanted to know where you were."' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '"Wait: are you Soego? Emoric wanted to know where you were."' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        '"Wait a moment… didn„t I break your neck in the Mortuary?"' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '"Wait a moment… I thought I„d *killed* you at the Mortuary…"' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '"How do I get to the Silent King?"' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '"I see. Farewell, then."' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    nr '"I do not know… I have been here for some time, and I still cannot find a way inside his throne room. Perhaps you will have better luck, unburdened by the hatred and bigotry that is directed toward me."'

    menu:
        '"Hatred and bigotry?"':
            # a289 # r21860
            jump soego_s81

        '"I see. Farewell, then."':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    nr '"My faction views are popular with some, but not all. The most important figureheads of this civilization do not hold them dear."'

    menu:
        '"I see. Farewell, then."':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    nr '"Ah, well met again."'

    menu:
        '"The Silent King is dead, and has been for some time. There *is* no Silent King."' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '"The Silent King is dead, and has been for some time. There *is* no Silent King."' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        '"Are you Soego? Emoric wanted to know where you were."' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '"I was in your chamber, and saw your journal."' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        '"I met a skeleton - in one of the hallways here - that seems on the brink of seeking the True Death."' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '"I need to rest."' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '"We need to rest."' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '"I had some questions…"':
            # a299 # r21924
            jump soego_s83

        '"Just passing by. Farewell."':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    nr '"I will answer what I can."'

    menu:
        '"Tell me about Hargrimm."' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '"Tell me about Acaste."' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '"Tell me about Stale Mary."' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '"Tell me about the Silent King."' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '"What do you know of this „civilization“?"' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '"What do you know of this „civilization“?"' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '"Never mind. Farewell."':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    nr '"Of course. You shall be safe in this chamber while you rest."'

    menu:
        '"Thanks…"':
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
    nr '"A stubborn one, but admirable in his piety and devotion to duty. He is my strongest rival here, and he has kept this civilization together for many years. His passions stem from his piety and devotion to duty… admirable qualities, but misplaced."'

    menu:
        '"I had other questions…"':
            # a309 # r21976
            jump soego_s83

        '"That„s all I wished to know. Farewell."':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    nr '"Acaste is a brute. Only the Silent King keeps her in check, I fear. Should his presence be removed, the ghouls would run rampant through the catacombs."'

    menu:
        '"Tell me about the Silent King."':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '"I had other questions…"':
            # a312 # r21980
            jump soego_s83

        '"That„s all I wished to know. Farewell."':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    nr '"Stale Mary is a good-hearted soul, if slow. I cannot understand much of what she says, but she and the zombies are not prone to violence."'

    menu:
        '"I had other questions…"':
            # a314 # r21983
            jump soego_s83

        '"That„s all I wished to know. Farewell."':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    nr '"I have never seen the Silent King. I wish I could tell you something about him, but I have never seen him. Presumably, his throne room lies beyond the crimson doors, but I cannot gain entrance… Hargrimm, the skeleton priest, will not let me."'

    menu:
        '"Tell me of Hargrimm."':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '"I had other questions…"':
            # a317 # r21987
            jump soego_s83

        '"That„s all I wished to know. Farewell."':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    nr '"They have been here many centuries, I think, taking care of those that have passed away in their halls. Such devotion to duty is no longer necessary… it is almost a crime."'

    menu:
        '"I had other questions…"':
            # a319 # r21990
            jump soego_s83

        '"That„s all I wished to know. Farewell."':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    nr '"They have been here many centuries, I think, taking care of those that have passed away in their halls. Such devotion to duty is no longer necessary… it is almost a crime."'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    nr '"What? Is this true? Ah, Many-as-One would surely reward you for such information…"'

    menu:
        '"Many-as-One?"' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '"Interesting. I had some questions…"' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '"Perhaps. Farewell."' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '"Good. I had some questions…"' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '"I will tell him myself, then. Farewell."' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    nr '"You… bastard!"'

    menu:
        '"Wha-"':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    nr '"Eh… that door leads to my private chambers. Please do not enter the chambers."'

    menu:
        'Leave.':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    nr '"Oh! I will go speak with him, now!"'

    menu:
        '"Farewell."':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    nr '"No, I am on my way."'

    menu:
        '"Farewell."':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    nr '"Sadly, no. It may come around, however."'

    menu:
        '"I see. Farewell."':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr 'Soego pauses for a moment. "I see." He suddenly begins a startling transformation…'

    menu:
        '"What the…?"':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    nr '"Er… your memory does you a disservice. My neck was hurt, surely… sprained. But broken? Hardly."'

    menu:
        '"I beg to differ. What are you, Soego?"' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '"I beg to differ. What are you, Soego?"' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '"Aren„t you angry?"':
            # a334 # r22018
            jump soego_s74

        '"You„d said you“re a missionary?"':
            # a335 # r22019
            jump soego_s65

        '"What are the Dustmen doing here?"' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '"That„s all I wished to know. Farewell."':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr 'He darts out of your grasp with preternatural speed. Sneering and spitting, he hisses "A foolish thing, to attack an agent of the cranium rat hive mind!" He suddenly begins a startling transformation…'

    menu:
        '"What the…?"':
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    nr '"A ridiculous question! You woke on a preparation slab, in the Mortuary… you told me so, yourself. Certainly my wound could not have been worse than those which led Collectors to mistake you for a corpse, no?"'

    menu:
        '"True enough, but… never mind."':
            # a339 # r22027
            jump soego_s104

        '"My condition is… unique."':
            # a340 # r22028
            jump soego_s105

        '"No. Something is wrong here, and I„ll find out what it is soon enough."':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    nr 'He shrugs. "Very well."'

    menu:
        '"Aren„t you angry about what happened?"':
            # a342 # r22033
            jump soego_s74

        '"You„d said you“re a missionary?"':
            # a343 # r22034
            jump soego_s65

        '"So what are the Dustmen doing here?"' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '"I„ll take my leave, now. Farewell."':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr 'He smiles. "Everyone„s unique. Everyone. Surely you won“t deny that?"'

    menu:
        '"True enough, but… never mind."':
            # a346 # r22040
            jump soego_s104

        '"No. Something is wrong here, and I„ll find out what it is soon enough."':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    nr '"What am-? What sort of question is that?"'

    menu:
        '"You heard me. You„re no ordinary Dustman… what *are* you, Soego?"':
            # a348 # r22044
            jump soego_s107

        '"Forget it. Never mind."':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr 'Soego scowls at you. "I don„t know *what* you speak of."'

    menu:
        '"Something is wrong here, and I„ll find out what it is soon enough."':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    nr '"Ah, another member of the living. Most are slain by the ghouls, this far into the catacombs; you are fortunate."'

    menu:
        '"Are you Soego? Emoric wanted to know where you were."' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        '"Soego… Emoric wanted to know where you were."' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    nr '"Yes, I am he. I am doing missionary work for the Dustmen, here."'

    menu:
        '"All right. But… I thought I„d broken your neck…"' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '"Good. But… I thought I„d *killed* you…"' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '"Are there other Dustmen here?"':
            # a355 # r22054
            jump soego_s66

        '"Where am I?"':
            # a356 # r50792
            jump soego_s77

        '"Why have I been made a prisoner here?"':
            # a357 # r50793
            jump soego_s78

        '"I„ll take my leave, now. Farewell."':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    nr '"Yes, I am he."'

    menu:
        '"Wait a moment… didn„t I break your neck in the Mortuary?"' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '"Wait a moment… I thought I„d *killed* you at the Mortuary…"' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '"Good. Now, how do I get to the Silent King?"' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '"Good. Farewell."' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    nr '"Yes, the hive mind of the cranium rats. Go to the catacombs east of Weeping Stone. You shall find the way, there."'

    menu:
        '"Interesting. I had some questions…"':
            # a363 # r25250
            jump soego_s83

        '"Perhaps. Farewell."':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr 'He waves your words away. "Nothing; it was nothing to me. I had already been blessed with lycanthropy; the wounds healed in little time at all."'

    menu:
        '"I… see. So, how do I get to the Silent King?"':
            # a365 # r64621
            jump soego_s80

        '"All right… farewell, then."':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    nr '"Greetings…" The man turns to face you and makes a slight bow. You suddenly notice that his eyes aren„t bloodshot so much as they have a red tinge to them. "I am Soego. How may I help you?"'

    menu:
        '"I would like to leave the Mortuary. Can you help me?"':
            # a367 # r66712
            jump soego_s114

        '"I had some questions…"':
            # a368 # r66713
            jump soego_s114

        '"I was merely passing by. Farewell."':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr 'Halfway through your comment, Soego„s lips suddenly peel back, revealing a row of dirty, sharp teeth, and he leans in, sniffing you.'

    menu:
        '"Uh… why in the hells are you sniffing me?"':
            # a370 # r66715
            jump soego_s115

        'Snap his neck when he leans in.' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        'Snap his neck when he leans in.' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '"Never mind… farewell."':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    nr '"Your clothes… those robes. They smell of another. They are not yours." Soego„s lips seal into a strange smile, and his eyes gleam with an almost feral light. "Who *are* you?"'

    menu:
        '"I… only took these robes so I could leave in peace. I woke up on one of the preparation rooms upstairs."':
            # a374 # r66719
            jump soego_s42

        '"You„re correct. These robes aren“t mine, but who they belong to is not your concern."':
            # a375 # r66720
            jump soego_s6

        'Snap his neck before he can call for help.' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        'Snap his neck before he can call for help.' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '"This is of no matter. I will take my leave now."':
            # a378 # r66723
            jump soego_s17
