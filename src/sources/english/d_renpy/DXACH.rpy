init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    'xach_s0{#xach_s0}'
    # nr 'You see a male corpse with the number "331" chiseled into his skull. His eyes and lips are stitched closed, and there is a gaping hole torn in his throat. He smells *foul.*{#xach_s0_1}'

    menu:
        'xach_s0_r502{#xach_s0_r502}' if xachLogic.r502_condition(): # '"So… seen anything interesting going on?"{#xach_s0_r502}'
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        'xach_s0_r503{#xach_s0_r503}' if xachLogic.r503_condition(): # '"So… seen anything interesting going on?"{#xach_s0_r503}'
            # a1 # r503
            jump xach_s1

        'xach_s0_r1354{#xach_s0_r1354}' if xachLogic.r1354_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#xach_s0_r1354}'
            # a2 # r1354
            jump xach_s1

        'xach_s0_r1355{#xach_s0_r1355}' if xachLogic.r1355_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#xach_s0_r1355}'
            # a3 # r1355
            jump xach_s2

        'xach_s0_r1357{#xach_s0_r1357}': # '"It was great talking to you. Farewell."{#xach_s0_r1357}'
            # a4 # r1357
            jump xach_s1

        'xach_s0_r1358{#xach_s0_r1358}': # 'Leave the corpse in peace.{#xach_s0_r1358}'
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    'xach_s1{#xach_s1}'
    # nr 'The corpse stares ahead silently with its sightless eyes.{#xach_s1_1}'

    menu:
        'xach_s1_r505{#xach_s1_r505}': # '"Farewell, then."{#xach_s1_r505}'
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    'xach_s2{#xach_s2}'
    # nr '"Wh-wh…" The zombie is awkwardly getting his voice back, and he sounds alarmed. "Who„s there?! Answer me!"{#xach_s2_1}'

    menu:
        'xach_s2_r507{#xach_s2_r507}': # '"Can you not see me?"{#xach_s2_r507}'
            # a7 # r507
            jump xach_s3

        'xach_s2_r508{#xach_s2_r508}' if xachLogic.r508_condition(): # 'Improvise: "It is I. Do you not recognize my voice?"{#xach_s2_r508}'
            # a8 # r508
            jump xach_s30

        'xach_s2_r63307{#xach_s2_r63307}' if xachLogic.r63307_condition(): # 'Improvise: "It is I. Do you not recognize my voice?"{#xach_s2_r63307}'
            # a9 # r63307
            jump xach_s30

        'xach_s2_r519{#xach_s2_r519}': # '"Who are you?"{#xach_s2_r519}'
            # a10 # r519
            jump xach_s31

        'xach_s2_r506{#xach_s2_r506}' if xachLogic.r506_condition(): # '"Xachariah?"{#xach_s2_r506}'
            # a11 # r506
            jump xach_s4

        'xach_s2_r520{#xach_s2_r520}': # '"You shall have no answers this day, corpse. Farewell."{#xach_s2_r520}'
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    'xach_s3{#xach_s3}'
    # nr '"Blind I am, in death as I was in life… now answer me. Who are you?"{#xach_s3_1}'

    menu:
        'xach_s3_r510{#xach_s3_r510}' if xachLogic.r510_condition(): # 'Improvise: "It is I. Do you not recognize my voice?"{#xach_s3_r510}'
            # a13 # r510
            jump xach_s30

        'xach_s3_r63308{#xach_s3_r63308}' if xachLogic.r63308_condition(): # 'Improvise: "It is I. Do you not recognize my voice?"{#xach_s3_r63308}'
            # a14 # r63308
            jump xach_s30

        'xach_s3_r511{#xach_s3_r511}': # '"Who are you?"{#xach_s3_r511}'
            # a15 # r511
            jump xach_s31

        'xach_s3_r521{#xach_s3_r521}' if xachLogic.r521_condition(): # '"Xachariah?"{#xach_s3_r521}'
            # a16 # r521
            jump xach_s4

        'xach_s3_r522{#xach_s3_r522}': # '"You shall have no answers this day, corpse. Farewell."{#xach_s3_r522}'
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    'xach_s4{#xach_s4}'
    # nr '"Wha… you!" The zombie seems shocked, but gladdened. "By the Lady„s Gaze…" His tone takes on a sense of wonder. "Aren“t you *dead,* cutter?"{#xach_s4_1}'

    menu:
        'xach_s4_r515{#xach_s4_r515}': # '"Who are you?"{#xach_s4_r515}'
            # a18 # r515
            jump xach_s5

        'xach_s4_r516{#xach_s4_r516}': # '"What are you doing here?"{#xach_s4_r516}'
            # a19 # r516
            jump xach_s47

        'xach_s4_r517{#xach_s4_r517}': # '"What is this place?"{#xach_s4_r517}'
            # a20 # r517
            jump xach_s6

        'xach_s4_r518{#xach_s4_r518}' if xachLogic.r518_condition(): # '"I can„t speak long. I must leave. Farewell."{#xach_s4_r518}'
            # a21 # r518
            jump xach_s41

        'xach_s4_r1394{#xach_s4_r1394}' if xachLogic.r1394_condition(): # '"I can„t speak long. I must leave. Farewell."{#xach_s4_r1394}'
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    'xach_s5{#xach_s5}'
    # nr '"So, it„s hard to peel away this filthy shroudskin an“ see ol„ Xachariah the Fool beneath? It is I, cutter. Blessed be the powers, I thought never to see you again… but you“ve changed too, as far as my ears can tell… have you been making poor choices again?" Xachariah wheezes from his throat hole. "Be you dead, too?"{#xach_s5_1}'

    menu:
        'xach_s5_r685{#xach_s5_r685}': # '"It„s a long tale… but no, I“m not dead."{#xach_s5_r685}'
            # a23 # r685
            jump xach_s46

        'xach_s5_r686{#xach_s5_r686}': # '"What are you doing here?"{#xach_s5_r686}'
            # a24 # r686
            jump xach_s47

        'xach_s5_r687{#xach_s5_r687}': # '"What is this place?"{#xach_s5_r687}'
            # a25 # r687
            jump xach_s6

        'xach_s5_r688{#xach_s5_r688}' if xachLogic.r688_condition(): # '"I have no more time to talk, Xachariah. Farewell."{#xach_s5_r688}'
            # a26 # r688
            jump xach_s41

        'xach_s5_r1393{#xach_s5_r1393}' if xachLogic.r1393_condition(): # '"I have no more time to talk, Xachariah. Farewell."{#xach_s5_r1393}'
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    'xach_s6{#xach_s6}'
    # nr '"In the Mortuary, cutter. Did you not know that?"{#xach_s6_1}'

    menu:
        'xach_s6_r523{#xach_s6_r523}': # '"What led you to this state?"{#xach_s6_r523}'
            # a28 # r523
            jump xach_s8

        'xach_s6_r524{#xach_s6_r524}' if xachLogic.r524_condition(): # '"What can you tell me about the Mortuary?"{#xach_s6_r524}'
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        'xach_s6_r525{#xach_s6_r525}': # '"What can you tell me about my previous life?"{#xach_s6_r525}'
            # a30 # r525
            jump xach_s16

        'xach_s6_r526{#xach_s6_r526}': # '"What can you tell me about my previous companions?"{#xach_s6_r526}'
            # a31 # r526
            jump xach_s23

        'xach_s6_r527{#xach_s6_r527}' if xachLogic.r527_condition(): # '"I must leave. Farewell."{#xach_s6_r527}'
            # a32 # r527
            jump xach_s41

        'xach_s6_r1392{#xach_s6_r1392}' if xachLogic.r1392_condition(): # '"I must leave. Farewell."{#xach_s6_r1392}'
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    'xach_s7{#xach_s7}'
    # nr '"Aye?"{#xach_s7_1}'

    menu:
        'xach_s7_r63484{#xach_s7_r63484}' if xachLogic.r63484_condition(): # '"I wanted to retrieve that object now, Xachariah…"{#xach_s7_r63484}'
            # a34 # r63484
            jump xach_s34

        'xach_s7_r637{#xach_s7_r637}': # '"What led you to this state?"{#xach_s7_r637}'
            # a35 # r637
            jump xach_s8

        'xach_s7_r638{#xach_s7_r638}': # '"What can you tell me about the Mortuary?"{#xach_s7_r638}'
            # a36 # r638
            jump xach_s9

        'xach_s7_r639{#xach_s7_r639}': # '"What can you tell me about my previous life?"{#xach_s7_r639}'
            # a37 # r639
            jump xach_s16

        'xach_s7_r640{#xach_s7_r640}': # '"What can you tell me about my previous companions?"{#xach_s7_r640}'
            # a38 # r640
            jump xach_s23

        'xach_s7_r1391{#xach_s7_r1391}' if xachLogic.r1391_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s7_r1391}'
            # a39 # r1391
            jump xach_dispose

        'xach_s7_r641{#xach_s7_r641}' if xachLogic.r641_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s7_r641}'
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    'xach_s8{#xach_s8}'
    # nr 'His voice drops, as if ashamed. "It„s a hard path following in your footsteps, cutter, and many terrible things did I see. I took to drink, and became half-sodden with the stuff. Once, when I was sodding drunk, I signed my body off to the Dusties. Fate decided ta kick me when I was down, and I died shortly afterward."{#xach_s8_1}'

    menu:
        'xach_s8_r531{#xach_s8_r531}': # '"I had some other questions…"{#xach_s8_r531}'
            # a41 # r531
            jump xach_s7

        'xach_s8_r545{#xach_s8_r545}' if xachLogic.r545_condition(): # '"I„ve heard enough. Farewell."{#xach_s8_r545}'
            # a42 # r545
            jump xach_s41

        'xach_s8_r1390{#xach_s8_r1390}' if xachLogic.r1390_condition(): # '"I„ve heard enough. Farewell."{#xach_s8_r1390}'
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    'xach_s9{#xach_s9}'
    # nr '"A place of the dead run by the Dead… there„s some things not right here, though…"{#xach_s9_1}'

    menu:
        'xach_s9_r534{#xach_s9_r534}': # '"Like what?"{#xach_s9_r534}'
            # a44 # r534
            jump xach_s10

        'xach_s9_r536{#xach_s9_r536}': # '"I had some other questions for you…"{#xach_s9_r536}'
            # a45 # r536
            jump xach_s7

        'xach_s9_r537{#xach_s9_r537}' if xachLogic.r537_condition(): # '"I have no more time to speak with you. Farewell."{#xach_s9_r537}'
            # a46 # r537
            jump xach_s41

        'xach_s9_r1389{#xach_s9_r1389}' if xachLogic.r1389_condition(): # '"I have no more time to speak with you. Farewell."{#xach_s9_r1389}'
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    'xach_s10{#xach_s10}'
    # nr '"I„ll tell you the dark of it: There“s a zombie that pretends to be a zombie, but isn„t. I don“t care much for knowing the reason why, but it„s a strange thing."{#xach_s10_1}'

    menu:
        'xach_s10_r538{#xach_s10_r538}' if xachLogic.r538_condition(): # '"Anything else?"{#xach_s10_r538}'
            # a48 # r538
            jump xach_s11

        'xach_s10_r539{#xach_s10_r539}': # '"Which zombie is it?"{#xach_s10_r539}'
            # a49 # r539
            jump xach_s12

        'xach_s10_r540{#xach_s10_r540}': # '"Interesting. I had some other questions…"{#xach_s10_r540}'
            # a50 # r540
            jump xach_s7

        'xach_s10_r546{#xach_s10_r546}' if xachLogic.r546_condition(): # '"I have no more time to speak with you. Farewell."{#xach_s10_r546}'
            # a51 # r546
            jump xach_s41

        'xach_s10_r1388{#xach_s10_r1388}' if xachLogic.r1388_condition(): # '"I have no more time to speak with you. Farewell."{#xach_s10_r1388}'
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    'xach_s11{#xach_s11}'
    # nr '"Another thing, that old githzerai… the one that keeps the preparation room… Dhall. He„s saved you from cremation a score of times. You“re lucky to have a friend in that one."{#xach_s11_1}'

    menu:
        'xach_s11_r542{#xach_s11_r542}' if xachLogic.r542_condition(): # '"What did Dhall do to save me, exactly?"{#xach_s11_r542}'
            # a53 # r542
            jump xach_s13

        'xach_s11_r543{#xach_s11_r543}': # '"I know. I had some other questions…"{#xach_s11_r543}'
            # a54 # r543
            jump xach_s7

        'xach_s11_r544{#xach_s11_r544}' if xachLogic.r544_condition(): # '"I have no more time to speak with you. Farewell."{#xach_s11_r544}'
            # a55 # r544
            jump xach_s41

        'xach_s11_r1387{#xach_s11_r1387}' if xachLogic.r1387_condition(): # '"I have no more time to speak with you. Farewell."{#xach_s11_r1387}'
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    'xach_s12{#xach_s12}'
    # nr '"Even if my eyes allowed me to see „em, I can“t make sense of numbers. Here„s how you“ll know him, cutter: his voice is wrong for a zombie… he doesn„t respond the same way as the others."{#xach_s12_1}'

    menu:
        'xach_s12_r548{#xach_s12_r548}' if xachLogic.r548_condition(): # '"Anything else strange about the Mortuary you„ve noticed?"{#xach_s12_r548}'
            # a57 # r548
            jump xach_s11

        'xach_s12_r554{#xach_s12_r554}': # '"Hmmm. Interesting. I had some other questions…"{#xach_s12_r554}'
            # a58 # r554
            jump xach_s7

        'xach_s12_r549{#xach_s12_r549}' if xachLogic.r549_condition(): # '"I„ll go look for this zombie. Farewell."{#xach_s12_r549}'
            # a59 # r549
            jump xach_s41

        'xach_s12_r1386{#xach_s12_r1386}' if xachLogic.r1386_condition(): # '"I„ll go look for this zombie. Farewell."{#xach_s12_r1386}'
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    'xach_s13{#xach_s13}'
    # nr '"He just postponed your cremation until you popped up off the slab. Not certain why, really."{#xach_s13_1}'

    menu:
        'xach_s13_r552{#xach_s13_r552}': # '"Interesting. I had some other questions…"{#xach_s13_r552}'
            # a61 # r552
            jump xach_s7

        'xach_s13_r553{#xach_s13_r553}' if xachLogic.r553_condition(): # '"I have to go. Farewell."{#xach_s13_r553}'
            # a62 # r553
            jump xach_s41

        'xach_s13_r1385{#xach_s13_r1385}' if xachLogic.r1385_condition(): # '"I have to go. Farewell."{#xach_s13_r1385}'
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    'xach_s14{#xach_s14}'
    # nr '"He thought it necessary to prevent… to… I… I can„t quite remember why it was necessary."{#xach_s14_1}'

    menu:
        'xach_s14_r557{#xach_s14_r557}': # '"Hmmm. Suspicious… I had some other questions…"{#xach_s14_r557}'
            # a64 # r557
            jump xach_s7

        'xach_s14_r556{#xach_s14_r556}' if xachLogic.r556_condition(): # '"I see. I wonder if it *was* necessary. Dhall and I should discuss this… farewell."{#xach_s14_r556}'
            # a65 # r556
            jump xach_s41

        'xach_s14_r1384{#xach_s14_r1384}' if xachLogic.r1384_condition(): # '"I see. I wonder if it *was* necessary. Dhall and I should discuss this… farewell."{#xach_s14_r1384}'
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    'xach_s15{#xach_s15}'
    # nr 'His voice drops, as if ashamed. "When we split paths, cutter, not much life was left in me. It„s a hard path following in your footsteps, and many terrible things did I see. I took to drink, and became half-sodden with the stuff. When I was sodding drunk, I signed my body off to the Dusties. Fate decided ta kick me when I was down, and I died shortly afterward."{#xach_s15_1}'

    menu:
        'xach_s15_r559{#xach_s15_r559}': # '"I had some other questions…"{#xach_s15_r559}'
            # a67 # r559
            jump xach_s7

        'xach_s15_r560{#xach_s15_r560}' if xachLogic.r560_condition(): # '"I have to go. Farewell."{#xach_s15_r560}'
            # a68 # r560
            jump xach_s41

        'xach_s15_r1383{#xach_s15_r1383}' if xachLogic.r1383_condition(): # '"I have to go. Farewell."{#xach_s15_r1383}'
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    'xach_s16{#xach_s16}'
    # nr '"Why? Have you forgotten yourself?"{#xach_s16_1}'

    menu:
        'xach_s16_r562{#xach_s16_r562}': # '"In a manner of speaking… yes."{#xach_s16_r562}'
            # a70 # r562
            jump xach_s17

        'xach_s16_r563{#xach_s16_r563}': # '"No… I just wanted to see if you were really who you said you were."{#xach_s16_r563}'
            # a71 # r563
            jump xach_s20

        'xach_s16_r564{#xach_s16_r564}': # '"Never mind. I had some other questions…"{#xach_s16_r564}'
            # a72 # r564
            jump xach_s7

        'xach_s16_r565{#xach_s16_r565}' if xachLogic.r565_condition(): # '"I have to go. Farewell."{#xach_s16_r565}'
            # a73 # r565
            jump xach_s41

        'xach_s16_r1382{#xach_s16_r1382}' if xachLogic.r1382_condition(): # '"I have to go. Farewell."{#xach_s16_r1382}'
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    'xach_s17{#xach_s17}'
    # nr '"Well… you were a strange one, always suspicious and watching for something… reckon somebody like you had got enough enemies in yer lifetimes. And there was no denying that anybody who messed with you ended up in the black chapters of the dead-book."{#xach_s17_1}'

    menu:
        'xach_s17_r569{#xach_s17_r569}': # '"Anything else? Any specifics…"{#xach_s17_r569}'
            # a75 # r569
            jump xach_s18

        'xach_s17_r570{#xach_s17_r570}': # '"I had some other questions…"{#xach_s17_r570}'
            # a76 # r570
            jump xach_s7

        'xach_s17_r571{#xach_s17_r571}' if xachLogic.r571_condition(): # '"I must leave. Farewell."{#xach_s17_r571}'
            # a77 # r571
            jump xach_s41

        'xach_s17_r1381{#xach_s17_r1381}' if xachLogic.r1381_condition(): # '"I must leave. Farewell."{#xach_s17_r1381}'
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    'xach_s18{#xach_s18}'
    # nr '"You could be damnably ruthless, too… like when you made me sign that contract, or abandoned that one mewling chit on Avernus. We had a balor of a time, as well. None of us ever even entertained the notion to jump ship on your watch, son."{#xach_s18_1}'

    menu:
        'xach_s18_r572{#xach_s18_r572}': # '"I… see. What else? Anything you could tell me would help."{#xach_s18_r572}'
            # a79 # r572
            jump xach_s19

        'xach_s18_r573{#xach_s18_r573}': # '"Never mind. I had some other questions…"{#xach_s18_r573}'
            # a80 # r573
            jump xach_s7

        'xach_s18_r574{#xach_s18_r574}' if xachLogic.r574_condition(): # '"I must leave. Farewell."{#xach_s18_r574}'
            # a81 # r574
            jump xach_s41

        'xach_s18_r1380{#xach_s18_r1380}' if xachLogic.r1380_condition(): # '"I must leave. Farewell."{#xach_s18_r1380}'
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    'xach_s19{#xach_s19}'
    # nr '"At your core, you looked at what happened to you like taking territory in a war; everything was like a battle to you, and you were the most ruthless bastard I ever near met. Naught else mattered except for solving that goal. Poor Deionarra with her sobbing and pleading with you didn„t sway you none, the gith warning you about your strategies, and poor Xachariah just trying to hold on when we hit the planes. You were tough like you couldn“t die, but we were only human. Now I guess we„re all in the dead-book… or in and out of it, so to speak."{#xach_s19_1}'

    menu:
        'xach_s19_r63234{#xach_s19_r63234}' if xachLogic.r63234_condition(): # '"Anything else?"{#xach_s19_r63234}'
            # a83 # r63234
            jump xach_s32

        'xach_s19_r576{#xach_s19_r576}': # '"Deionarra?"{#xach_s19_r576}'
            # a84 # r576
            jump xach_s26

        'xach_s19_r577{#xach_s19_r577}': # '"The „gith“? Who do you mean?"{#xach_s19_r577}'
            # a85 # r577
            jump xach_s24

        'xach_s19_r578{#xach_s19_r578}': # '"I had some other questions…"{#xach_s19_r578}'
            # a86 # r578
            jump xach_s7

        'xach_s19_r579{#xach_s19_r579}' if xachLogic.r579_condition(): # '"I see… I have to go now. Farewell, Xachariah."{#xach_s19_r579}'
            # a87 # r579
            jump xach_s41

        'xach_s19_r1379{#xach_s19_r1379}' if xachLogic.r1379_condition(): # '"I see… I have to go now. Farewell, Xachariah."{#xach_s19_r1379}'
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    'xach_s20{#xach_s20}'
    # nr '"Well, what is it that I can say to you that„ll prove myself… now, see, not all the memories are there, so: how about this… remember when we were carving that trek through Avernus and we ran across that crew of abishai in that maggot-ridden pit?"{#xach_s20_1}'

    menu:
        'xach_s20_r581{#xach_s20_r581}': # 'Lie: "Yes."{#xach_s20_r581}'
            # a89 # r581
            jump xach_s21

        'xach_s20_r582{#xach_s20_r582}': # '"No."{#xach_s20_r582}'
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    'xach_s21{#xach_s21}'
    # nr '"Well, now, then I„m glad one of us remembers that, because I sure as Balor don“t. Who are you, cutter, and what do you expect to find fishing in the memories of dead men?"{#xach_s21_1}'

    menu:
        'xach_s21_r584{#xach_s21_r584}': # '"I expect to find myself. I truly have forgotten who I am, Xachariah, and I believe you did know me. What can you tell me of my previous life?"{#xach_s21_r584}'
            # a91 # r584
            jump xach_s17

        'xach_s21_r586{#xach_s21_r586}': # '"Forget it. I had some questions."{#xach_s21_r586}'
            # a92 # r586
            jump xach_dispose

        'xach_s21_r587{#xach_s21_r587}' if xachLogic.r587_condition(): # '"Nothing… I have to leave. Farewell, Xachariah."{#xach_s21_r587}'
            # a93 # r587
            jump xach_s41

        'xach_s21_r1378{#xach_s21_r1378}' if xachLogic.r1378_condition(): # '"Nothing… I have to leave. Farewell, Xachariah."{#xach_s21_r1378}'
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    'xach_s22{#xach_s22}'
    # nr '"Hmmm. Well maybe that event didn„t happen the way I “member then. How„s this: “member when Deionarra nearly got herself penned in the dead-book trying to stop you from entering Curst?"{#xach_s22_1}'

    menu:
        'xach_s22_r590{#xach_s22_r590}': # '"No, not really… but that„s fine; I believe you did know me. So can you tell me of my previous life?"{#xach_s22_r590}'
            # a95 # r590
            jump xach_s17

        'xach_s22_r591{#xach_s22_r591}': # '"Never mind… I had some other questions."{#xach_s22_r591}'
            # a96 # r591
            jump xach_s7

        'xach_s22_r592{#xach_s22_r592}' if xachLogic.r592_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s22_r592}'
            # a97 # r592
            jump xach_s41

        'xach_s22_r1377{#xach_s22_r1377}' if xachLogic.r1377_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s22_r1377}'
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    'xach_s23{#xach_s23}'
    # nr '"A motley crew we were… a half-dead man who couldn„t get himself penned in the dead-book if he tried - so ugly all the powers of death wouldn“t take „em - a wailing advocate“s daughter, a gith exile, a bobbing jackal-tongued skull, and a half-sodden blind archer like myself."{#xach_s23_1}'

    menu:
        'xach_s23_r593{#xach_s23_r593}': # '"Gith?"{#xach_s23_r593}'
            # a99 # r593
            jump xach_s24

        'xach_s23_r594{#xach_s23_r594}': # '"Wailing advocate„s daughter?"{#xach_s23_r594}'
            # a100 # r594
            jump xach_s26

        'xach_s23_r595{#xach_s23_r595}': # '"A floating skull?"{#xach_s23_r595}'
            # a101 # r595
            jump xach_s28

        'xach_s23_r596{#xach_s23_r596}': # '"You were a blind archer?"{#xach_s23_r596}'
            # a102 # r596
            jump xach_s49

        'xach_s23_r597{#xach_s23_r597}': # '"Do you know what happened to my journal?"{#xach_s23_r597}'
            # a103 # r597
            jump xach_s29

        'xach_s23_r598{#xach_s23_r598}': # '"Never mind. I had some other questions…"{#xach_s23_r598}'
            # a104 # r598
            jump xach_s7

        'xach_s23_r599{#xach_s23_r599}' if xachLogic.r599_condition(): # '"I have to go. Farewell, Xachariah."{#xach_s23_r599}'
            # a105 # r599
            jump xach_s41

        'xach_s23_r1376{#xach_s23_r1376}' if xachLogic.r1376_condition(): # '"I have to go. Farewell, Xachariah."{#xach_s23_r1376}'
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    'xach_s24{#xach_s24}'
    # nr '"Grim-lookin„ gith… unfriendly and silent, like all their kind. Didn“t trust that gith a lick, I didn„t. See, cutter, them spindly giths care only about two things: keeping out of slavery and killing them squid-headed illithids. Everything else is just lower down the slope, and he didn“t give a damn about any of us other than you."{#xach_s24_1}'

    menu:
        'xach_s24_r601{#xach_s24_r601}' if xachLogic.r601_condition(): # '"Why was that?"{#xach_s24_r601}'
            # a107 # r601
            jump xach_s25

        'xach_s24_r602{#xach_s24_r602}': # '"About some of my other companions…"{#xach_s24_r602}'
            # a108 # r602
            jump xach_s27

        'xach_s24_r603{#xach_s24_r603}': # '"I had some other questions…"{#xach_s24_r603}'
            # a109 # r603
            jump xach_s7

        'xach_s24_r604{#xach_s24_r604}' if xachLogic.r604_condition(): # '"Hmmm. Interesting. Thank you, Xachariah."{#xach_s24_r604}'
            # a110 # r604
            jump xach_s41

        'xach_s24_r1375{#xach_s24_r1375}' if xachLogic.r1375_condition(): # '"Hmmm. Interesting. Thank you, Xachariah."{#xach_s24_r1375}'
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    'xach_s25{#xach_s25}'
    # nr '"One of the darks I never did bring to light, cutter. Perhaps you tell me?"{#xach_s25_1}'

    menu:
        'xach_s25_r606{#xach_s25_r606}': # '"I don„t know myself. I had some other questions…"{#xach_s25_r606}'
            # a112 # r606
            jump xach_s7

        'xach_s25_r607{#xach_s25_r607}' if xachLogic.r607_condition(): # '"Maybe I better find out. Farewell, Xachariah."{#xach_s25_r607}'
            # a113 # r607
            jump xach_s41

        'xach_s25_r1374{#xach_s25_r1374}' if xachLogic.r1374_condition(): # '"Maybe I better find out. Farewell, Xachariah."{#xach_s25_r1374}'
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    'xach_s26{#xach_s26}'
    # nr '"That feisty chit-who-would-be-a-soldier swore she„d follow you to Baator and back, and by the powers, she was so addled by the thought of you without her she did just that. Cared little for me or the gith, and a bare little it was. She was wild with heart poison for you, she was, proof she was barmy. I don“t understand what the womenfolk saw in yer scarred mug, but it set their blood a-boil. She was some rich scut from the Clerk„s Ward, and you needed something from her, and the only price was that she came with you."{#xach_s26_1}'

    menu:
        'xach_s26_r609{#xach_s26_r609}' if xachLogic.r609_condition(): # '"What did I want from her?"{#xach_s26_r609}'
            # a115 # r609
            jump xach_s25

        'xach_s26_r610{#xach_s26_r610}': # '"About some of my other companions…"{#xach_s26_r610}'
            # a116 # r610
            jump xach_s27

        'xach_s26_r614{#xach_s26_r614}': # '"I had some other questions…"{#xach_s26_r614}'
            # a117 # r614
            jump xach_s7

        'xach_s26_r611{#xach_s26_r611}' if xachLogic.r611_condition(): # '"I„ve heard enough. Farewell, Xachariah."{#xach_s26_r611}'
            # a118 # r611
            jump xach_s41

        'xach_s26_r1373{#xach_s26_r1373}' if xachLogic.r1373_condition(): # '"I„ve heard enough. Farewell, Xachariah."{#xach_s26_r1373}'
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    'xach_s27{#xach_s27}'
    # nr '"Aye, which one?"{#xach_s27_1}'

    menu:
        'xach_s27_r613{#xach_s27_r613}': # '"The gith."{#xach_s27_r613}'
            # a120 # r613
            jump xach_s24

        'xach_s27_r615{#xach_s27_r615}': # '"The „wailing advocate“s daughter.„"{#xach_s27_r615}'
            # a121 # r615
            jump xach_s26

        'xach_s27_r616{#xach_s27_r616}': # '"The floating skull."{#xach_s27_r616}'
            # a122 # r616
            jump xach_s28

        'xach_s27_r617{#xach_s27_r617}': # '"You… you were a… blind archer?"{#xach_s27_r617}'
            # a123 # r617
            jump xach_s49

        'xach_s27_r618{#xach_s27_r618}': # '"Never mind. I had some other questions…"{#xach_s27_r618}'
            # a124 # r618
            jump xach_s7

        'xach_s27_r619{#xach_s27_r619}' if xachLogic.r619_condition(): # '"I„ve heard enough. Farewell, Xachariah."{#xach_s27_r619}'
            # a125 # r619
            jump xach_s41

        'xach_s27_r1372{#xach_s27_r1372}' if xachLogic.r1372_condition(): # '"I„ve heard enough. Farewell, Xachariah."{#xach_s27_r1372}'
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    'xach_s28{#xach_s28}'
    # nr '"That filthy-talking skull was hankering for a bruising, so it was! Always smarting off, it was, and making fun of my condition!"{#xach_s28_1}'

    menu:
        'xach_s28_r622{#xach_s28_r622}': # '"About some of my other companions…"{#xach_s28_r622}'
            # a127 # r622
            jump xach_s27

        'xach_s28_r623{#xach_s28_r623}': # '"I had some other questions…"{#xach_s28_r623}'
            # a128 # r623
            jump xach_s7

        'xach_s28_r624{#xach_s28_r624}' if xachLogic.r624_condition(): # '"I„ve heard enough. Farewell, Xachariah."{#xach_s28_r624}'
            # a129 # r624
            jump xach_s41

        'xach_s28_r1371{#xach_s28_r1371}' if xachLogic.r1371_condition(): # '"I„ve heard enough. Farewell, Xachariah."{#xach_s28_r1371}'
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    'xach_s29{#xach_s29}'
    # nr '"That scrapbook that you„d stitched together outta yer own flesh and had more pages than I had years in my life?! Good fortune indeed if you“ve lost that ghoulish book! Always scribbling in it, you were, and it smelled a fright. It was like you were afraid that at any moment someone would take it away… you wrote in it till skin tore from your fingers and I wondered if you were trying to spill out your brain-box through your pen. Sometimes we would hold up for days while you wrote. I hated that infernal book. It seemed to hold you by the heart, and not in a kind way. The last I saw of it, cutter, it was in your possession. If you don„t carry it, I don“t know where on the planes it could be."{#xach_s29_1}'

    menu:
        'xach_s29_r626{#xach_s29_r626}': # '"About those companions of mine…"{#xach_s29_r626}'
            # a131 # r626
            jump xach_s27

        'xach_s29_r627{#xach_s29_r627}': # '"I had some other questions…"{#xach_s29_r627}'
            # a132 # r627
            jump xach_s7

        'xach_s29_r628{#xach_s29_r628}' if xachLogic.r628_condition(): # '"Thanks for the information. Farewell, Xachariah."{#xach_s29_r628}'
            # a133 # r628
            jump xach_s41

        'xach_s29_r1370{#xach_s29_r1370}' if xachLogic.r1370_condition(): # '"Thanks for the information. Farewell, Xachariah."{#xach_s29_r1370}'
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    'xach_s30{#xach_s30}'
    # nr '"It sounds familiar… but if you are who I think you are, then… who…" The zombie becomes silent for a moment. "Who am I?"{#xach_s30_1}'

    menu:
        'xach_s30_r631{#xach_s30_r631}' if xachLogic.r631_condition(): # '"Xachariah?"{#xach_s30_r631}'
            # a135 # r631
            jump xach_s4

        'xach_s30_r632{#xach_s30_r632}' if xachLogic.r632_condition(): # '"Your name is not known to me. I may return if I can find it. Farewell."{#xach_s30_r632}'
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    'xach_s31{#xach_s31}'
    # nr '"I…" The zombie becomes silent. "…my name… has fled me. I… can no longer remember who I am."{#xach_s31_1}'

    menu:
        'xach_s31_r634{#xach_s31_r634}' if xachLogic.r634_condition(): # '"Xachariah?"{#xach_s31_r634}'
            # a137 # r634
            jump xach_s4

        'xach_s31_r635{#xach_s31_r635}' if xachLogic.r635_condition(): # '"I do not know your name. I may return when I have found it. Farewell."{#xach_s31_r635}'
            # a138 # r635
            jump xach_dispose

        'xach_s31_r636{#xach_s31_r636}' if xachLogic.r636_condition(): # '"Farewell."{#xach_s31_r636}'
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    'xach_s32{#xach_s32}'
    # nr '"You left something when you left us, cutter… you left Dak„kon without a master, and the skull without a friend. Me? You stabbed something so deep inside me, it never came out when I was alive. Caused my blood to run cold, it did, that thing sitting like a lump of lead in my chest."{#xach_s32_1}'

    menu:
        'xach_s32_r645{#xach_s32_r645}': # '"What is it?"{#xach_s32_r645}'
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        'xach_s32_r646{#xach_s32_r646}': # '"I had some other questions…"{#xach_s32_r646}'
            # a141 # r646
            jump xach_s7

        'xach_s32_r648{#xach_s32_r648}' if xachLogic.r648_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s32_r648}'
            # a142 # r648
            jump xach_s41

        'xach_s32_r1369{#xach_s32_r1369}' if xachLogic.r1369_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s32_r1369}'
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    'xach_s33{#xach_s33}'
    # nr '"I… I don„t know. But it changed me, somehow. Changed my insides. I was already dying when you put it in me, so I wasn“t too concerned about it at the time."{#xach_s33_1}'

    menu:
        'xach_s33_r649{#xach_s33_r649}': # '"Can I have it back?"{#xach_s33_r649}'
            # a144 # r649
            jump xach_s34

        'xach_s33_r650{#xach_s33_r650}': # '"About my other companions…"{#xach_s33_r650}'
            # a145 # r650
            jump xach_s27

        'xach_s33_r651{#xach_s33_r651}': # '"I had some other questions…"{#xach_s33_r651}'
            # a146 # r651
            jump xach_s7

        'xach_s33_r652{#xach_s33_r652}' if xachLogic.r652_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s33_r652}'
            # a147 # r652
            jump xach_s41

        'xach_s33_r1368{#xach_s33_r1368}' if xachLogic.r1368_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s33_r1368}'
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    'xach_s34{#xach_s34}'
    # nr '"It„s buried pretty deep, but I have an idea of where it is. Without a scalpel and some directions from me, you won“t be able to get it out. You got a scalpel?"{#xach_s34_1}'

    menu:
        'xach_s34_r647{#xach_s34_r647}' if xachLogic.r647_condition(): # '"Yes."{#xach_s34_r647}'
            # a149 # r647
            jump xach_s36

        'xach_s34_r653{#xach_s34_r653}' if xachLogic.r653_condition(): # '"No… but I ought to be able to just tear the stitches."{#xach_s34_r653}'
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    'xach_s35{#xach_s35}'
    # nr '"Well, return when you can snag one, and we can see about prying that pretty outta there."{#xach_s35_1}'

    menu:
        'xach_s35_r655{#xach_s35_r655}': # '"I had some other questions…"{#xach_s35_r655}'
            # a151 # r655
            jump xach_s7

        'xach_s35_r656{#xach_s35_r656}': # '"I„ll go look for one. Farewell, Xachariah."{#xach_s35_r656}'
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    'xach_s36{#xach_s36}'
    # nr '"Then open me up half a hand„s width below the sternum, and feel around for it."{#xach_s36_1}'

    menu:
        'xach_s36_r658{#xach_s36_r658}': # 'Do it.{#xach_s36_r658}'
            # a153 # r658
            jump xach_s37

        'xach_s36_r659{#xach_s36_r659}': # '"Never mind, Xachariah… I had some questions to ask you, instead…"{#xach_s36_r659}'
            # a154 # r659
            jump xach_s7

        'xach_s36_r660{#xach_s36_r660}' if xachLogic.r660_condition(): # '"I can„t now, I must leave. Farewell, Xachariah."{#xach_s36_r660}'
            # a155 # r660
            jump xach_s41

        'xach_s36_r1367{#xach_s36_r1367}' if xachLogic.r1367_condition(): # '"I can„t now, I must leave. Farewell, Xachariah."{#xach_s36_r1367}'
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    'xach_s37{#xach_s37}'
    # nr '"A little more to the left… a little more…" Your hand closes on an object.{#xach_s37_1}'

    menu:
        'xach_s37_r663{#xach_s37_r663}': # 'Pull it out.{#xach_s37_r663}'
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    'xach_s38{#xach_s38}'
    # nr 'You pull out a zombie liver. "By the Lady„s gaze! Apologies, cutter… I thought them Dustmen took all those organs outta us before pulling us out of the dead-book. Give it another go. Maybe it“s to the right."{#xach_s38_1}'

    menu:
        'xach_s38_r664{#xach_s38_r664}': # 'Do it again.{#xach_s38_r664}'
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    'xach_s39{#xach_s39}'
    # nr '"There ya go… now go a little to the right and back… a little more…" You feel something hard and cold, slightly larger than you expected. "I think that„s it. Pull it out."{#xach_s39_1}'

    menu:
        'xach_s39_r666{#xach_s39_r666}': # 'Pull it out.{#xach_s39_r666}'
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    'xach_s40{#xach_s40}'
    # nr 'You are holding a blackened, fist-sized object that is extremely heavy for its size. "That„s it all right. Huh. Bigger than I thought it“d be. Is that… what is that? Looks like… a heart."{#xach_s40_1}'

    menu:
        'xach_s40_r668{#xach_s40_r668}': # '"I think so, yes. Thanks, Xachariah. I had some other questions…"{#xach_s40_r668}'
            # a160 # r668
            jump xach_s7

        'xach_s40_r669{#xach_s40_r669}' if xachLogic.r669_condition(): # '"Looks like it. I must go now. Farewell, Xachariah."{#xach_s40_r669}'
            # a161 # r669
            jump xach_s41

        'xach_s40_r1366{#xach_s40_r1366}' if xachLogic.r1366_condition(): # '"Looks like it. I must go now. Farewell, Xachariah."{#xach_s40_r1366}'
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    'xach_s41{#xach_s41}'
    # nr '"Before you go: I need you to do me a slight favor, cutter."{#xach_s41_1}'

    menu:
        'xach_s41_r672{#xach_s41_r672}': # '"What is it?"{#xach_s41_r672}'
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        'xach_s41_r671{#xach_s41_r671}': # '"I already have enough favors and quests to last me… I have to go, Xachariah. Farewell."{#xach_s41_r671}'
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    'xach_s42{#xach_s42}'
    # nr 'His voice drops, as if ashamed. "I made some mistakes, some damned bad ones to be sure, and one of my biggest was signing that Dustman contract. If I hadn„t been so sodden with bub, I never woulda done it. I regret it, and I was hoping you could set it aright."{#xach_s42_1}'

    menu:
        'xach_s42_r675{#xach_s42_r675}': # '"How?"{#xach_s42_r675}'
            # a165 # r675
            jump xach_s43

        'xach_s42_r676{#xach_s42_r676}': # '"I already have enough favors and quests to last me… I have to go, Xachariah. Farewell."{#xach_s42_r676}'
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    'xach_s43{#xach_s43}'
    # nr '"Way I reckon, this body„s gonna last a long time… and every day“s too long to me. Couldja maybe gut me again, cutter… for old time„s sake? The thought of spending another batch of years here in the Mortuary with these whitefaces is a mighty cold one. Can you see fit to put me back in the dead-book where I belong?"{#xach_s43_1}'

    menu:
        'xach_s43_r679{#xach_s43_r679}': # '"If that is your wish…"{#xach_s43_r679}'
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        'xach_s43_r680{#xach_s43_r680}': # '"Xachariah, I won„t kill you. Again. Farewell."{#xach_s43_r680}'
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    'xach_s44{#xach_s44}'
    # nr 'You gut him, and Xachariah falls to the floor with a heavy thud. There is a faint hiss from the body, and you see the chest heave once, then with a faint rattle, the corpse goes silent.{#xach_s44_1}'

    menu:
        'xach_s44_r681{#xach_s44_r681}': # '"Rest in peace, Xachariah."{#xach_s44_r681}'
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    'xach_s45{#xach_s45}'
    # nr '"Aye, well, never you mind then. No more use am I to you, I suppose."{#xach_s45_1}'

    menu:
        'xach_s45_r684{#xach_s45_r684}': # 'Leave.{#xach_s45_r684}'
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    'xach_s46{#xach_s46}'
    # nr '"Well, cutter, I suppose being dead„s not something one would doubt, though how can you talk to me? Your voice is as clear as a knife…"{#xach_s46_1}'

    menu:
        'xach_s46_r689{#xach_s46_r689}': # '"What are you doing here?"{#xach_s46_r689}'
            # a171 # r689
            jump xach_s47

        'xach_s46_r690{#xach_s46_r690}': # '"I had some questions…"{#xach_s46_r690}'
            # a172 # r690
            jump xach_s7

        'xach_s46_r691{#xach_s46_r691}' if xachLogic.r691_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s46_r691}'
            # a173 # r691
            jump xach_s41

        'xach_s46_r1365{#xach_s46_r1365}' if xachLogic.r1365_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s46_r1365}'
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    'xach_s47{#xach_s47}'
    # nr '"I am a stable hand in the most lifeless place of all. Be it that I could pass beyond the Eternal Boundary and have a Plane to call my home, but much of my soul was squandered, and now I am here."{#xach_s47_1}'

    menu:
        'xach_s47_r693{#xach_s47_r693}': # '"What„s it like being a zombie?"{#xach_s47_r693}'
            # a175 # r693
            jump xach_s48

        'xach_s47_r695{#xach_s47_r695}': # '"I had some questions…"{#xach_s47_r695}'
            # a176 # r695
            jump xach_s7

        'xach_s47_r696{#xach_s47_r696}' if xachLogic.r696_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s47_r696}'
            # a177 # r696
            jump xach_s41

        'xach_s47_r1364{#xach_s47_r1364}' if xachLogic.r1364_condition(): # '"I must leave. Farewell, Xachariah."{#xach_s47_r1364}'
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    'xach_s48{#xach_s48}'
    # nr '"It„s honest work…" The stitching comes undone from Xachariah“s mouth and his lips peel back in what might be a smile. "…I care little for it."{#xach_s48_1}'

    menu:
        'xach_s48_r697{#xach_s48_r697}': # '"I had some other questions…"{#xach_s48_r697}'
            # a179 # r697
            jump xach_s7

        'xach_s48_r698{#xach_s48_r698}' if xachLogic.r698_condition(): # '"Farewell then, Xachariah."{#xach_s48_r698}'
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        'xach_s48_r633{#xach_s48_r633}' if xachLogic.r633_condition(): # '"Farewell then, Xachariah."{#xach_s48_r633}'
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    'xach_s49{#xach_s49}'
    # nr '"That I was. You truly have forgotten, haven„t you? All men see with more than their eyes, cutter… some of them better than others. I sensed the hearts of my foes - *your* foes - and my arrows always struck true. Ah, those were some times…"{#xach_s49_1}'

    menu:
        'xach_s49_r63626{#xach_s49_r63626}': # '"About some of my other companions…"{#xach_s49_r63626}'
            # a182 # r63626
            jump xach_s27

        'xach_s49_r63627{#xach_s49_r63627}': # '"I had some other questions…"{#xach_s49_r63627}'
            # a183 # r63627
            jump xach_s7

        'xach_s49_r63628{#xach_s49_r63628}' if xachLogic.r63628_condition(): # '"Hmmm. Interesting. Thank you, Xachariah."{#xach_s49_r63628}'
            # a184 # r63628
            jump xach_s41

        'xach_s49_r63629{#xach_s49_r63629}' if xachLogic.r63629_condition(): # '"Hmmm. Interesting. Thank you, Xachariah."{#xach_s49_r63629}'
            # a185 # r63629
            jump xach_dispose
