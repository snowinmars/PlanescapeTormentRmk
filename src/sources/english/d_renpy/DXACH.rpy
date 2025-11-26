init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    nr 'You see a male corpse with the number "331" chiseled into his skull. His eyes and lips are stitched closed, and there is a gaping hole torn in his throat. He smells *foul.*'

    menu:
        '"So… seen anything interesting going on?"' if xachLogic.r502_condition():
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        '"So… seen anything interesting going on?"' if xachLogic.r503_condition():
            # a1 # r503
            jump xach_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if xachLogic.r1354_condition():
            # a2 # r1354
            jump xach_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if xachLogic.r1355_condition():
            # a3 # r1355
            jump xach_s2

        '"It was great talking to you. Farewell."':
            # a4 # r1357
            jump xach_s1

        'Leave the corpse in peace.':
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    nr 'The corpse stares ahead silently with its sightless eyes.'

    menu:
        '"Farewell, then."':
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    nr '"Wh-wh…" The zombie is awkwardly getting his voice back, and he sounds alarmed. "Who„s there?! Answer me!"'

    menu:
        '"Can you not see me?"':
            # a7 # r507
            jump xach_s3

        'Improvise: "It is I. Do you not recognize my voice?"' if xachLogic.r508_condition():
            # a8 # r508
            jump xach_s30

        'Improvise: "It is I. Do you not recognize my voice?"' if xachLogic.r63307_condition():
            # a9 # r63307
            jump xach_s30

        '"Who are you?"':
            # a10 # r519
            jump xach_s31

        '"Xachariah?"' if xachLogic.r506_condition():
            # a11 # r506
            jump xach_s4

        '"You shall have no answers this day, corpse. Farewell."':
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    nr '"Blind I am, in death as I was in life… now answer me. Who are you?"'

    menu:
        'Improvise: "It is I. Do you not recognize my voice?"' if xachLogic.r510_condition():
            # a13 # r510
            jump xach_s30

        'Improvise: "It is I. Do you not recognize my voice?"' if xachLogic.r63308_condition():
            # a14 # r63308
            jump xach_s30

        '"Who are you?"':
            # a15 # r511
            jump xach_s31

        '"Xachariah?"' if xachLogic.r521_condition():
            # a16 # r521
            jump xach_s4

        '"You shall have no answers this day, corpse. Farewell."':
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    nr '"Wha… you!" The zombie seems shocked, but gladdened. "By the Lady„s Gaze…" His tone takes on a sense of wonder. "Aren“t you *dead,* cutter?"'

    menu:
        '"Who are you?"':
            # a18 # r515
            jump xach_s5

        '"What are you doing here?"':
            # a19 # r516
            jump xach_s47

        '"What is this place?"':
            # a20 # r517
            jump xach_s6

        '"I can„t speak long. I must leave. Farewell."' if xachLogic.r518_condition():
            # a21 # r518
            jump xach_s41

        '"I can„t speak long. I must leave. Farewell."' if xachLogic.r1394_condition():
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    nr '"So, it„s hard to peel away this filthy shroudskin an“ see ol„ Xachariah the Fool beneath? It is I, cutter. Blessed be the powers, I thought never to see you again… but you“ve changed too, as far as my ears can tell… have you been making poor choices again?" Xachariah wheezes from his throat hole. "Be you dead, too?"'

    menu:
        '"It„s a long tale… but no, I“m not dead."':
            # a23 # r685
            jump xach_s46

        '"What are you doing here?"':
            # a24 # r686
            jump xach_s47

        '"What is this place?"':
            # a25 # r687
            jump xach_s6

        '"I have no more time to talk, Xachariah. Farewell."' if xachLogic.r688_condition():
            # a26 # r688
            jump xach_s41

        '"I have no more time to talk, Xachariah. Farewell."' if xachLogic.r1393_condition():
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    nr '"In the Mortuary, cutter. Did you not know that?"'

    menu:
        '"What led you to this state?"':
            # a28 # r523
            jump xach_s8

        '"What can you tell me about the Mortuary?"' if xachLogic.r524_condition():
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        '"What can you tell me about my previous life?"':
            # a30 # r525
            jump xach_s16

        '"What can you tell me about my previous companions?"':
            # a31 # r526
            jump xach_s23

        '"I must leave. Farewell."' if xachLogic.r527_condition():
            # a32 # r527
            jump xach_s41

        '"I must leave. Farewell."' if xachLogic.r1392_condition():
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    nr '"Aye?"'

    menu:
        '"I wanted to retrieve that object now, Xachariah…"' if xachLogic.r63484_condition():
            # a34 # r63484
            jump xach_s34

        '"What led you to this state?"':
            # a35 # r637
            jump xach_s8

        '"What can you tell me about the Mortuary?"':
            # a36 # r638
            jump xach_s9

        '"What can you tell me about my previous life?"':
            # a37 # r639
            jump xach_s16

        '"What can you tell me about my previous companions?"':
            # a38 # r640
            jump xach_s23

        '"I must leave. Farewell, Xachariah."' if xachLogic.r1391_condition():
            # a39 # r1391
            jump xach_dispose

        '"I must leave. Farewell, Xachariah."' if xachLogic.r641_condition():
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    nr 'His voice drops, as if ashamed. "It„s a hard path following in your footsteps, cutter, and many terrible things did I see. I took to drink, and became half-sodden with the stuff. Once, when I was sodding drunk, I signed my body off to the Dusties. Fate decided ta kick me when I was down, and I died shortly afterward."'

    menu:
        '"I had some other questions…"':
            # a41 # r531
            jump xach_s7

        '"I„ve heard enough. Farewell."' if xachLogic.r545_condition():
            # a42 # r545
            jump xach_s41

        '"I„ve heard enough. Farewell."' if xachLogic.r1390_condition():
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    nr '"A place of the dead run by the Dead… there„s some things not right here, though…"'

    menu:
        '"Like what?"':
            # a44 # r534
            jump xach_s10

        '"I had some other questions for you…"':
            # a45 # r536
            jump xach_s7

        '"I have no more time to speak with you. Farewell."' if xachLogic.r537_condition():
            # a46 # r537
            jump xach_s41

        '"I have no more time to speak with you. Farewell."' if xachLogic.r1389_condition():
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    nr '"I„ll tell you the dark of it: There“s a zombie that pretends to be a zombie, but isn„t. I don“t care much for knowing the reason why, but it„s a strange thing."'

    menu:
        '"Anything else?"' if xachLogic.r538_condition():
            # a48 # r538
            jump xach_s11

        '"Which zombie is it?"':
            # a49 # r539
            jump xach_s12

        '"Interesting. I had some other questions…"':
            # a50 # r540
            jump xach_s7

        '"I have no more time to speak with you. Farewell."' if xachLogic.r546_condition():
            # a51 # r546
            jump xach_s41

        '"I have no more time to speak with you. Farewell."' if xachLogic.r1388_condition():
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    nr '"Another thing, that old githzerai… the one that keeps the preparation room… Dhall. He„s saved you from cremation a score of times. You“re lucky to have a friend in that one."'

    menu:
        '"What did Dhall do to save me, exactly?"' if xachLogic.r542_condition():
            # a53 # r542
            jump xach_s13

        '"I know. I had some other questions…"':
            # a54 # r543
            jump xach_s7

        '"I have no more time to speak with you. Farewell."' if xachLogic.r544_condition():
            # a55 # r544
            jump xach_s41

        '"I have no more time to speak with you. Farewell."' if xachLogic.r1387_condition():
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    nr '"Even if my eyes allowed me to see „em, I can“t make sense of numbers. Here„s how you“ll know him, cutter: his voice is wrong for a zombie… he doesn„t respond the same way as the others."'

    menu:
        '"Anything else strange about the Mortuary you„ve noticed?"' if xachLogic.r548_condition():
            # a57 # r548
            jump xach_s11

        '"Hmmm. Interesting. I had some other questions…"':
            # a58 # r554
            jump xach_s7

        '"I„ll go look for this zombie. Farewell."' if xachLogic.r549_condition():
            # a59 # r549
            jump xach_s41

        '"I„ll go look for this zombie. Farewell."' if xachLogic.r1386_condition():
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    nr '"He just postponed your cremation until you popped up off the slab. Not certain why, really."'

    menu:
        '"Interesting. I had some other questions…"':
            # a61 # r552
            jump xach_s7

        '"I have to go. Farewell."' if xachLogic.r553_condition():
            # a62 # r553
            jump xach_s41

        '"I have to go. Farewell."' if xachLogic.r1385_condition():
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    nr '"He thought it necessary to prevent… to… I… I can„t quite remember why it was necessary."'

    menu:
        '"Hmmm. Suspicious… I had some other questions…"':
            # a64 # r557
            jump xach_s7

        '"I see. I wonder if it *was* necessary. Dhall and I should discuss this… farewell."' if xachLogic.r556_condition():
            # a65 # r556
            jump xach_s41

        '"I see. I wonder if it *was* necessary. Dhall and I should discuss this… farewell."' if xachLogic.r1384_condition():
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    nr 'His voice drops, as if ashamed. "When we split paths, cutter, not much life was left in me. It„s a hard path following in your footsteps, and many terrible things did I see. I took to drink, and became half-sodden with the stuff. When I was sodding drunk, I signed my body off to the Dusties. Fate decided ta kick me when I was down, and I died shortly afterward."'

    menu:
        '"I had some other questions…"':
            # a67 # r559
            jump xach_s7

        '"I have to go. Farewell."' if xachLogic.r560_condition():
            # a68 # r560
            jump xach_s41

        '"I have to go. Farewell."' if xachLogic.r1383_condition():
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    nr '"Why? Have you forgotten yourself?"'

    menu:
        '"In a manner of speaking… yes."':
            # a70 # r562
            jump xach_s17

        '"No… I just wanted to see if you were really who you said you were."':
            # a71 # r563
            jump xach_s20

        '"Never mind. I had some other questions…"':
            # a72 # r564
            jump xach_s7

        '"I have to go. Farewell."' if xachLogic.r565_condition():
            # a73 # r565
            jump xach_s41

        '"I have to go. Farewell."' if xachLogic.r1382_condition():
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    nr '"Well… you were a strange one, always suspicious and watching for something… reckon somebody like you had got enough enemies in yer lifetimes. And there was no denying that anybody who messed with you ended up in the black chapters of the dead-book."'

    menu:
        '"Anything else? Any specifics…"':
            # a75 # r569
            jump xach_s18

        '"I had some other questions…"':
            # a76 # r570
            jump xach_s7

        '"I must leave. Farewell."' if xachLogic.r571_condition():
            # a77 # r571
            jump xach_s41

        '"I must leave. Farewell."' if xachLogic.r1381_condition():
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    nr '"You could be damnably ruthless, too… like when you made me sign that contract, or abandoned that one mewling chit on Avernus. We had a balor of a time, as well. None of us ever even entertained the notion to jump ship on your watch, son."'

    menu:
        '"I… see. What else? Anything you could tell me would help."':
            # a79 # r572
            jump xach_s19

        '"Never mind. I had some other questions…"':
            # a80 # r573
            jump xach_s7

        '"I must leave. Farewell."' if xachLogic.r574_condition():
            # a81 # r574
            jump xach_s41

        '"I must leave. Farewell."' if xachLogic.r1380_condition():
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    nr '"At your core, you looked at what happened to you like taking territory in a war; everything was like a battle to you, and you were the most ruthless bastard I ever near met. Naught else mattered except for solving that goal. Poor Deionarra with her sobbing and pleading with you didn„t sway you none, the gith warning you about your strategies, and poor Xachariah just trying to hold on when we hit the planes. You were tough like you couldn“t die, but we were only human. Now I guess we„re all in the dead-book… or in and out of it, so to speak."'

    menu:
        '"Anything else?"' if xachLogic.r63234_condition():
            # a83 # r63234
            jump xach_s32

        '"Deionarra?"':
            # a84 # r576
            jump xach_s26

        '"The „gith“? Who do you mean?"':
            # a85 # r577
            jump xach_s24

        '"I had some other questions…"':
            # a86 # r578
            jump xach_s7

        '"I see… I have to go now. Farewell, Xachariah."' if xachLogic.r579_condition():
            # a87 # r579
            jump xach_s41

        '"I see… I have to go now. Farewell, Xachariah."' if xachLogic.r1379_condition():
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    nr '"Well, what is it that I can say to you that„ll prove myself… now, see, not all the memories are there, so: how about this… remember when we were carving that trek through Avernus and we ran across that crew of abishai in that maggot-ridden pit?"'

    menu:
        'Lie: "Yes."':
            # a89 # r581
            jump xach_s21

        '"No."':
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    nr '"Well, now, then I„m glad one of us remembers that, because I sure as Balor don“t. Who are you, cutter, and what do you expect to find fishing in the memories of dead men?"'

    menu:
        '"I expect to find myself. I truly have forgotten who I am, Xachariah, and I believe you did know me. What can you tell me of my previous life?"':
            # a91 # r584
            jump xach_s17

        '"Forget it. I had some questions."':
            # a92 # r586
            jump xach_dispose

        '"Nothing… I have to leave. Farewell, Xachariah."' if xachLogic.r587_condition():
            # a93 # r587
            jump xach_s41

        '"Nothing… I have to leave. Farewell, Xachariah."' if xachLogic.r1378_condition():
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    nr '"Hmmm. Well maybe that event didn„t happen the way I “member then. How„s this: “member when Deionarra nearly got herself penned in the dead-book trying to stop you from entering Curst?"'

    menu:
        '"No, not really… but that„s fine; I believe you did know me. So can you tell me of my previous life?"':
            # a95 # r590
            jump xach_s17

        '"Never mind… I had some other questions."':
            # a96 # r591
            jump xach_s7

        '"I must leave. Farewell, Xachariah."' if xachLogic.r592_condition():
            # a97 # r592
            jump xach_s41

        '"I must leave. Farewell, Xachariah."' if xachLogic.r1377_condition():
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    nr '"A motley crew we were… a half-dead man who couldn„t get himself penned in the dead-book if he tried - so ugly all the powers of death wouldn“t take „em - a wailing advocate“s daughter, a gith exile, a bobbing jackal-tongued skull, and a half-sodden blind archer like myself."'

    menu:
        '"Gith?"':
            # a99 # r593
            jump xach_s24

        '"Wailing advocate„s daughter?"':
            # a100 # r594
            jump xach_s26

        '"A floating skull?"':
            # a101 # r595
            jump xach_s28

        '"You were a blind archer?"':
            # a102 # r596
            jump xach_s49

        '"Do you know what happened to my journal?"':
            # a103 # r597
            jump xach_s29

        '"Never mind. I had some other questions…"':
            # a104 # r598
            jump xach_s7

        '"I have to go. Farewell, Xachariah."' if xachLogic.r599_condition():
            # a105 # r599
            jump xach_s41

        '"I have to go. Farewell, Xachariah."' if xachLogic.r1376_condition():
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    nr '"Grim-lookin„ gith… unfriendly and silent, like all their kind. Didn“t trust that gith a lick, I didn„t. See, cutter, them spindly giths care only about two things: keeping out of slavery and killing them squid-headed illithids. Everything else is just lower down the slope, and he didn“t give a damn about any of us other than you."'

    menu:
        '"Why was that?"' if xachLogic.r601_condition():
            # a107 # r601
            jump xach_s25

        '"About some of my other companions…"':
            # a108 # r602
            jump xach_s27

        '"I had some other questions…"':
            # a109 # r603
            jump xach_s7

        '"Hmmm. Interesting. Thank you, Xachariah."' if xachLogic.r604_condition():
            # a110 # r604
            jump xach_s41

        '"Hmmm. Interesting. Thank you, Xachariah."' if xachLogic.r1375_condition():
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    nr '"One of the darks I never did bring to light, cutter. Perhaps you tell me?"'

    menu:
        '"I don„t know myself. I had some other questions…"':
            # a112 # r606
            jump xach_s7

        '"Maybe I better find out. Farewell, Xachariah."' if xachLogic.r607_condition():
            # a113 # r607
            jump xach_s41

        '"Maybe I better find out. Farewell, Xachariah."' if xachLogic.r1374_condition():
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    nr '"That feisty chit-who-would-be-a-soldier swore she„d follow you to Baator and back, and by the powers, she was so addled by the thought of you without her she did just that. Cared little for me or the gith, and a bare little it was. She was wild with heart poison for you, she was, proof she was barmy. I don“t understand what the womenfolk saw in yer scarred mug, but it set their blood a-boil. She was some rich scut from the Clerk„s Ward, and you needed something from her, and the only price was that she came with you."'

    menu:
        '"What did I want from her?"' if xachLogic.r609_condition():
            # a115 # r609
            jump xach_s25

        '"About some of my other companions…"':
            # a116 # r610
            jump xach_s27

        '"I had some other questions…"':
            # a117 # r614
            jump xach_s7

        '"I„ve heard enough. Farewell, Xachariah."' if xachLogic.r611_condition():
            # a118 # r611
            jump xach_s41

        '"I„ve heard enough. Farewell, Xachariah."' if xachLogic.r1373_condition():
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    nr '"Aye, which one?"'

    menu:
        '"The gith."':
            # a120 # r613
            jump xach_s24

        '"The „wailing advocate“s daughter.„"':
            # a121 # r615
            jump xach_s26

        '"The floating skull."':
            # a122 # r616
            jump xach_s28

        '"You… you were a… blind archer?"':
            # a123 # r617
            jump xach_s49

        '"Never mind. I had some other questions…"':
            # a124 # r618
            jump xach_s7

        '"I„ve heard enough. Farewell, Xachariah."' if xachLogic.r619_condition():
            # a125 # r619
            jump xach_s41

        '"I„ve heard enough. Farewell, Xachariah."' if xachLogic.r1372_condition():
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    nr '"That filthy-talking skull was hankering for a bruising, so it was! Always smarting off, it was, and making fun of my condition!"'

    menu:
        '"About some of my other companions…"':
            # a127 # r622
            jump xach_s27

        '"I had some other questions…"':
            # a128 # r623
            jump xach_s7

        '"I„ve heard enough. Farewell, Xachariah."' if xachLogic.r624_condition():
            # a129 # r624
            jump xach_s41

        '"I„ve heard enough. Farewell, Xachariah."' if xachLogic.r1371_condition():
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    nr '"That scrapbook that you„d stitched together outta yer own flesh and had more pages than I had years in my life?! Good fortune indeed if you“ve lost that ghoulish book! Always scribbling in it, you were, and it smelled a fright. It was like you were afraid that at any moment someone would take it away… you wrote in it till skin tore from your fingers and I wondered if you were trying to spill out your brain-box through your pen. Sometimes we would hold up for days while you wrote. I hated that infernal book. It seemed to hold you by the heart, and not in a kind way. The last I saw of it, cutter, it was in your possession. If you don„t carry it, I don“t know where on the planes it could be."'

    menu:
        '"About those companions of mine…"':
            # a131 # r626
            jump xach_s27

        '"I had some other questions…"':
            # a132 # r627
            jump xach_s7

        '"Thanks for the information. Farewell, Xachariah."' if xachLogic.r628_condition():
            # a133 # r628
            jump xach_s41

        '"Thanks for the information. Farewell, Xachariah."' if xachLogic.r1370_condition():
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    nr '"It sounds familiar… but if you are who I think you are, then… who…" The zombie becomes silent for a moment. "Who am I?"'

    menu:
        '"Xachariah?"' if xachLogic.r631_condition():
            # a135 # r631
            jump xach_s4

        '"Your name is not known to me. I may return if I can find it. Farewell."' if xachLogic.r632_condition():
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    nr '"I…" The zombie becomes silent. "…my name… has fled me. I… can no longer remember who I am."'

    menu:
        '"Xachariah?"' if xachLogic.r634_condition():
            # a137 # r634
            jump xach_s4

        '"I do not know your name. I may return when I have found it. Farewell."' if xachLogic.r635_condition():
            # a138 # r635
            jump xach_dispose

        '"Farewell."' if xachLogic.r636_condition():
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    nr '"You left something when you left us, cutter… you left Dak„kon without a master, and the skull without a friend. Me? You stabbed something so deep inside me, it never came out when I was alive. Caused my blood to run cold, it did, that thing sitting like a lump of lead in my chest."'

    menu:
        '"What is it?"':
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        '"I had some other questions…"':
            # a141 # r646
            jump xach_s7

        '"I must leave. Farewell, Xachariah."' if xachLogic.r648_condition():
            # a142 # r648
            jump xach_s41

        '"I must leave. Farewell, Xachariah."' if xachLogic.r1369_condition():
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    nr '"I… I don„t know. But it changed me, somehow. Changed my insides. I was already dying when you put it in me, so I wasn“t too concerned about it at the time."'

    menu:
        '"Can I have it back?"':
            # a144 # r649
            jump xach_s34

        '"About my other companions…"':
            # a145 # r650
            jump xach_s27

        '"I had some other questions…"':
            # a146 # r651
            jump xach_s7

        '"I must leave. Farewell, Xachariah."' if xachLogic.r652_condition():
            # a147 # r652
            jump xach_s41

        '"I must leave. Farewell, Xachariah."' if xachLogic.r1368_condition():
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    nr '"It„s buried pretty deep, but I have an idea of where it is. Without a scalpel and some directions from me, you won“t be able to get it out. You got a scalpel?"'

    menu:
        '"Yes."' if xachLogic.r647_condition():
            # a149 # r647
            jump xach_s36

        '"No… but I ought to be able to just tear the stitches."' if xachLogic.r653_condition():
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    nr '"Well, return when you can snag one, and we can see about prying that pretty outta there."'

    menu:
        '"I had some other questions…"':
            # a151 # r655
            jump xach_s7

        '"I„ll go look for one. Farewell, Xachariah."':
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    nr '"Then open me up half a hand„s width below the sternum, and feel around for it."'

    menu:
        'Do it.':
            # a153 # r658
            jump xach_s37

        '"Never mind, Xachariah… I had some questions to ask you, instead…"':
            # a154 # r659
            jump xach_s7

        '"I can„t now, I must leave. Farewell, Xachariah."' if xachLogic.r660_condition():
            # a155 # r660
            jump xach_s41

        '"I can„t now, I must leave. Farewell, Xachariah."' if xachLogic.r1367_condition():
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    nr '"A little more to the left… a little more…" Your hand closes on an object.'

    menu:
        'Pull it out.':
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    nr 'You pull out a zombie liver. "By the Lady„s gaze! Apologies, cutter… I thought them Dustmen took all those organs outta us before pulling us out of the dead-book. Give it another go. Maybe it“s to the right."'

    menu:
        'Do it again.':
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    nr '"There ya go… now go a little to the right and back… a little more…" You feel something hard and cold, slightly larger than you expected. "I think that„s it. Pull it out."'

    menu:
        'Pull it out.':
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    nr 'You are holding a blackened, fist-sized object that is extremely heavy for its size. "That„s it all right. Huh. Bigger than I thought it“d be. Is that… what is that? Looks like… a heart."'

    menu:
        '"I think so, yes. Thanks, Xachariah. I had some other questions…"':
            # a160 # r668
            jump xach_s7

        '"Looks like it. I must go now. Farewell, Xachariah."' if xachLogic.r669_condition():
            # a161 # r669
            jump xach_s41

        '"Looks like it. I must go now. Farewell, Xachariah."' if xachLogic.r1366_condition():
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    nr '"Before you go: I need you to do me a slight favor, cutter."'

    menu:
        '"What is it?"':
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        '"I already have enough favors and quests to last me… I have to go, Xachariah. Farewell."':
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    nr 'His voice drops, as if ashamed. "I made some mistakes, some damned bad ones to be sure, and one of my biggest was signing that Dustman contract. If I hadn„t been so sodden with bub, I never woulda done it. I regret it, and I was hoping you could set it aright."'

    menu:
        '"How?"':
            # a165 # r675
            jump xach_s43

        '"I already have enough favors and quests to last me… I have to go, Xachariah. Farewell."':
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    nr '"Way I reckon, this body„s gonna last a long time… and every day“s too long to me. Couldja maybe gut me again, cutter… for old time„s sake? The thought of spending another batch of years here in the Mortuary with these whitefaces is a mighty cold one. Can you see fit to put me back in the dead-book where I belong?"'

    menu:
        '"If that is your wish…"':
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        '"Xachariah, I won„t kill you. Again. Farewell."':
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    nr 'You gut him, and Xachariah falls to the floor with a heavy thud. There is a faint hiss from the body, and you see the chest heave once, then with a faint rattle, the corpse goes silent.'

    menu:
        '"Rest in peace, Xachariah."':
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    nr '"Aye, well, never you mind then. No more use am I to you, I suppose."'

    menu:
        'Leave.':
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    nr '"Well, cutter, I suppose being dead„s not something one would doubt, though how can you talk to me? Your voice is as clear as a knife…"'

    menu:
        '"What are you doing here?"':
            # a171 # r689
            jump xach_s47

        '"I had some questions…"':
            # a172 # r690
            jump xach_s7

        '"I must leave. Farewell, Xachariah."' if xachLogic.r691_condition():
            # a173 # r691
            jump xach_s41

        '"I must leave. Farewell, Xachariah."' if xachLogic.r1365_condition():
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    nr '"I am a stable hand in the most lifeless place of all. Be it that I could pass beyond the Eternal Boundary and have a Plane to call my home, but much of my soul was squandered, and now I am here."'

    menu:
        '"What„s it like being a zombie?"':
            # a175 # r693
            jump xach_s48

        '"I had some questions…"':
            # a176 # r695
            jump xach_s7

        '"I must leave. Farewell, Xachariah."' if xachLogic.r696_condition():
            # a177 # r696
            jump xach_s41

        '"I must leave. Farewell, Xachariah."' if xachLogic.r1364_condition():
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    nr '"It„s honest work…" The stitching comes undone from Xachariah“s mouth and his lips peel back in what might be a smile. "…I care little for it."'

    menu:
        '"I had some other questions…"':
            # a179 # r697
            jump xach_s7

        '"Farewell then, Xachariah."' if xachLogic.r698_condition():
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        '"Farewell then, Xachariah."' if xachLogic.r633_condition():
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    nr '"That I was. You truly have forgotten, haven„t you? All men see with more than their eyes, cutter… some of them better than others. I sensed the hearts of my foes - *your* foes - and my arrows always struck true. Ah, those were some times…"'

    menu:
        '"About some of my other companions…"':
            # a182 # r63626
            jump xach_s27

        '"I had some other questions…"':
            # a183 # r63627
            jump xach_s7

        '"Hmmm. Interesting. Thank you, Xachariah."' if xachLogic.r63628_condition():
            # a184 # r63628
            jump xach_s41

        '"Hmmm. Interesting. Thank you, Xachariah."' if xachLogic.r63629_condition():
            # a185 # r63629
            jump xach_dispose
