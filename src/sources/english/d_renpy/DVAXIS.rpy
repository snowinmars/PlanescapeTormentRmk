init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    'vaxis_s0{#vaxis_s0}'
    # nr 'The shambling corpse gazes at you with vacant eyes. The number "821" is carved into his forehead, and his lips have been stitched closed. The faint smell of formaldehyde emanates from the body.{#vaxis_s0_1}'

    menu:
        'vaxis_s0_r454{#vaxis_s0_r454}' if vaxisLogic.r454_condition(): # '"So… seen anything interesting going on?"{#vaxis_s0_r454}'
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        'vaxis_s0_r455{#vaxis_s0_r455}' if vaxisLogic.r455_condition(): # '"So… seen anything interesting going on?"{#vaxis_s0_r455}'
            # a1 # r455
            jump vaxis_s5

        'vaxis_s0_r456{#vaxis_s0_r456}' if vaxisLogic.r456_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#vaxis_s0_r456}'
            # a2 # r456
            jump vaxis_s5

        'vaxis_s0_r457{#vaxis_s0_r457}' if vaxisLogic.r457_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#vaxis_s0_r457}'
            # a3 # r457
            jump vaxis_s1

        'vaxis_s0_r458{#vaxis_s0_r458}': # '"It was great talking to you. Farewell."{#vaxis_s0_r458}'
            # a4 # r458
            jump vaxis_s5

        'vaxis_s0_r459{#vaxis_s0_r459}': # 'Leave the corpse in peace.{#vaxis_s0_r459}'
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    'vaxis_s1{#vaxis_s1}'
    # nr 'Oddly enough, your ability does not seem to work on this corpse.{#vaxis_s1_1}'

    menu:
        'vaxis_s1_r461{#vaxis_s1_r461}': # 'Poke it in the eye.{#vaxis_s1_r461}'
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'vaxis_s1_r462{#vaxis_s1_r462}': # 'Leave the corpse in peace.{#vaxis_s1_r462}'
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    'vaxis_s2{#vaxis_s2}'
    # nr 'The corpse gives a muffled yelp as you jab it in the eye, and its hands shoot up to cover its face. It begins mumbling what you take for obscenities under its breath.{#vaxis_s2_1}'

    menu:
        'vaxis_s2_r464{#vaxis_s2_r464}': # '"You„re not a zombie! Who are you?"{#vaxis_s2_r464}'
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        'vaxis_s2_r465{#vaxis_s2_r465}': # '"Why are you disguised as a corpse?"{#vaxis_s2_r465}'
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'vaxis_s2_r466{#vaxis_s2_r466}': # 'Leave. Quickly.{#vaxis_s2_r466}'
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    'vaxis_s3{#vaxis_s3}'
    # nr 'As you turn to leave, the „zombie“ mumbles something… it looks like he„s trying to say something, but it“s difficult with his lips stitched closed. "Hoo YU? Wut yu wunt?"{#vaxis_s3_1}'

    menu:
        'vaxis_s3_r468{#vaxis_s3_r468}' if vaxisLogic.r468_condition(): # '"I„m looking for a way out of here. Can you help me?"{#vaxis_s3_r468}'
            # a11 # r468
            jump vaxis_s7

        'vaxis_s3_r469{#vaxis_s3_r469}': # '"Who are you?"{#vaxis_s3_r469}'
            # a12 # r469
            jump vaxis_s7

        'vaxis_s3_r470{#vaxis_s3_r470}': # '"Tell me who you are, or I„ll call the guards."{#vaxis_s3_r470}'
            # a13 # r470
            jump vaxis_s7

        'vaxis_s3_r472{#vaxis_s3_r472}' if vaxisLogic.r472_condition(): # 'Lie: "Why… I was looking for you."{#vaxis_s3_r472}'
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        'vaxis_s3_r473{#vaxis_s3_r473}': # '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."{#vaxis_s3_r473}'
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        'vaxis_s3_r474{#vaxis_s3_r474}': # '"Sorry to trouble you… whoever you are. Farewell."{#vaxis_s3_r474}'
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    'vaxis_s4{#vaxis_s4}'
    # nr 'As you are turning to leave, the zombie makes a low growl in his throat. "Yoo say nuthin to nuh-whun bout ME. Yoo bee kwi-it. Say NUTHIN t„Duhstees." He puts his finger across lips. "Shhhhhh." He then draws the finger across his throat. "Or I gut yuu in yer sleep. You HEER me?"{#vaxis_s4_1}'

    menu:
        'vaxis_s4_r475{#vaxis_s4_r475}': # '"Did you just THREATEN me? That does it… prepare to die."{#vaxis_s4_r475}'
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'vaxis_s4_r476{#vaxis_s4_r476}': # 'Lie: "I wouldn„t even *think* of telling the Dustmen about you."{#vaxis_s4_r476}'
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'vaxis_s4_r477{#vaxis_s4_r477}': # 'Truth: "I promise I won„t say anything to the Dustmen about you."{#vaxis_s4_r477}'
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        'vaxis_s4_r478{#vaxis_s4_r478}': # '"Whatever. You mind your affairs, and I„ll mind mine."{#vaxis_s4_r478}'
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    'vaxis_s5{#vaxis_s5}'
    # nr 'As you address the zombie, it blinks in surprise. "Eh? Wut?"{#vaxis_s5_1}'

    menu:
        'vaxis_s5_r480{#vaxis_s5_r480}': # '"You„re not a zombie! Who are you?"{#vaxis_s5_r480}'
            # a21 # r480
            $ vaxisLogic.j64513_s5_r480_action()
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        'vaxis_s5_r481{#vaxis_s5_r481}': # '"Why are you disguised as a corpse?"{#vaxis_s5_r481}'
            # a22 # r481
            $ vaxisLogic.j64513_s5_r481_action()
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'vaxis_s5_r482{#vaxis_s5_r482}': # 'Leave. Quickly.{#vaxis_s5_r482}'
            # a23 # r482
            $ vaxisLogic.j64513_s5_r482_action()
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    'vaxis_s6{#vaxis_s6}'
    # nr 'The „zombie“ is trying to respond behind stitched lips; he has a peculiar half-frightened, half-angry expression. "Hoo YU? Wut yu wunt?"{#vaxis_s6_1}'

    menu:
        'vaxis_s6_r484{#vaxis_s6_r484}' if vaxisLogic.r484_condition(): # '"I„m looking for a way out of here. Can you help me?"{#vaxis_s6_r484}'
            # a24 # r484
            jump vaxis_s7

        'vaxis_s6_r485{#vaxis_s6_r485}': # '"Who are you?"{#vaxis_s6_r485}'
            # a25 # r485
            jump vaxis_s7

        'vaxis_s6_r486{#vaxis_s6_r486}': # '"Tell me who you are, or I„ll call the guards."{#vaxis_s6_r486}'
            # a26 # r486
            jump vaxis_s7

        'vaxis_s6_r487{#vaxis_s6_r487}' if vaxisLogic.r487_condition(): # 'Lie: "Why… I was looking for you."{#vaxis_s6_r487}'
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        'vaxis_s6_r488{#vaxis_s6_r488}': # '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."{#vaxis_s6_r488}'
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        'vaxis_s6_r489{#vaxis_s6_r489}': # '"Sorry to trouble you… whoever you are. Farewell."{#vaxis_s6_r489}'
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    'vaxis_s7{#vaxis_s7}'
    # nr 'The zombie doesn„t seem to have heard you. He looks you up and down for a few moments, then frowns. "Wut yu do heer?" His eyes narrow suspiciously. "Yu spy on Duhstees?"{#vaxis_s7_1}'

    menu:
        'vaxis_s7_r491{#vaxis_s7_r491}' if vaxisLogic.r491_condition(): # '"No. I„m trying to escape."{#vaxis_s7_r491}'
            # a30 # r491
            jump vaxis_s12

        'vaxis_s7_r492{#vaxis_s7_r492}' if vaxisLogic.r492_condition(): # '"I„m not a spy. I got sealed in here by accident. Can you help me out?"{#vaxis_s7_r492}'
            # a31 # r492
            jump vaxis_s31

        'vaxis_s7_r493{#vaxis_s7_r493}' if vaxisLogic.r493_condition(): # 'Lie: "Yes, I„m spying on the… Dusties."{#vaxis_s7_r493}'
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'vaxis_s7_r494{#vaxis_s7_r494}' if vaxisLogic.r494_condition(): # 'Lie: "Yes, I„m spying on the… Dusties."{#vaxis_s7_r494}'
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        'vaxis_s7_r495{#vaxis_s7_r495}' if vaxisLogic.r495_condition(): # '"Why don„t you tell me what YOU“RE doing here before I call the guards."{#vaxis_s7_r495}'
            # a34 # r495
            jump vaxis_s21

        'vaxis_s7_r496{#vaxis_s7_r496}' if vaxisLogic.r496_condition(): # '"Why don„t you tell me what YOU“RE doing here before I call the guards."{#vaxis_s7_r496}'
            # a35 # r496
            jump vaxis_s17

        'vaxis_s7_r1306{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition(): # '"Look, I„m the one asking the questions here, *zombie.* Tell me what you“re doing here, or I„ll make that disguise a reality."{#vaxis_s7_r1306}'
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        'vaxis_s7_r1348{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition(): # '"Look, I„m the one asking the questions here, *zombie.* Tell me what you“re doing here, or I„ll make that disguise a reality."{#vaxis_s7_r1348}'
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        'vaxis_s7_r1349{#vaxis_s7_r1349}': # '"I must take my leave. Farewell."{#vaxis_s7_r1349}'
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    'vaxis_s8{#vaxis_s8}'
    # nr 'He studies you more intently. "Yu spy? Yu wit cell?"{#vaxis_s8_1}'

    menu:
        'vaxis_s8_r4671{#vaxis_s8_r4671}': # '"Huh?"{#vaxis_s8_r4671}'
            # a39 # r4671
            jump vaxis_s10

        'vaxis_s8_r1352{#vaxis_s8_r1352}': # '"Cell?"{#vaxis_s8_r1352}'
            # a40 # r1352
            jump vaxis_s10

        'vaxis_s8_r1359{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition(): # 'Lie: "Yes… I„ve been looking for you. I“m glad I finally found you."{#vaxis_s8_r1359}'
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'vaxis_s8_r1360{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition(): # 'Lie: "Yes… but I can„t speak too much about it right now, if you catch my meaning. What“s *your* mission here?"{#vaxis_s8_r1360}'
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'vaxis_s8_r1361{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition(): # 'Lie: "Yes… but I can„t speak too much about it right now. What are you doing here?"{#vaxis_s8_r1361}'
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        'vaxis_s8_r1362{#vaxis_s8_r1362}': # '"Uh, I don„t have time to talk right now… maybe some other time."{#vaxis_s8_r1362}'
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    'vaxis_s9{#vaxis_s9}'
    # nr 'He studies you more intently. "Yu spy? Yu wit cell?"{#vaxis_s9_1}'

    menu:
        'vaxis_s9_r4359{#vaxis_s9_r4359}': # '"Huh?"{#vaxis_s9_r4359}'
            # a45 # r4359
            jump morte_s85  # EXTERN

        'vaxis_s9_r4360{#vaxis_s9_r4360}': # '"Cell?"{#vaxis_s9_r4360}'
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    'vaxis_s10{#vaxis_s10}'
    # nr 'Frowns, then hisses at you. "Yu no spy!" He makes a shooing motion. "Git! Git!"{#vaxis_s10_1}'

    menu:
        'vaxis_s10_r4362{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition(): # '"First, you„ll tell me what you“re doing here, or I„ll call the guards."{#vaxis_s10_r4362}'
            # a47 # r4362
            jump vaxis_s21

        'vaxis_s10_r4363{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition(): # '"First, you„ll tell me what you“re doing here, or I„ll call the guards."{#vaxis_s10_r4363}'
            # a48 # r4363
            jump vaxis_s17

        'vaxis_s10_r4364{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition(): # '"Answer my damn questions, or I„ll make that disguise a reality before you get three paces."{#vaxis_s10_r4364}'
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        'vaxis_s10_r4365{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition(): # '"Answer my damn questions, or I„ll make that disguise a reality before you get three paces."{#vaxis_s10_r4365}'
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        'vaxis_s10_r4367{#vaxis_s10_r4367}': # '"All right, all right… I„m leaving."{#vaxis_s10_r4367}'
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    'vaxis_s11{#vaxis_s11}'
    # nr 'The zombie nods at this, and you think you detect him puffing up a little in pride behind his zombie disguise.{#vaxis_s11_1}'

    menu:
        'vaxis_s11_r4368{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition(): # '"Can you help me escape?"{#vaxis_s11_r4368}'
            # a52 # r4368
            jump vaxis_s12

        'vaxis_s11_r4369{#vaxis_s11_r4369}': # '"So what are you doing here?"{#vaxis_s11_r4369}'
            # a53 # r4369
            jump vaxis_s28

        'vaxis_s11_r4370{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition(): # 'Lie: "So you„re a spy for the Anarchists? Well, I“m spying on the Dusties, too… but I can„t speak too much about it right now, if you catch my meaning. What“s *your* mission here?"{#vaxis_s11_r4370}'
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'vaxis_s11_r4371{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition(): # 'Lie: "So you„re a spy for the Anarchists? I“m spying on the Dusties… but I can„t speak too much about it right now. What are you doing here?"{#vaxis_s11_r4371}'
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        'vaxis_s11_r4372{#vaxis_s11_r4372}': # '"Uh, I don„t have time to talk right now… maybe some other time."{#vaxis_s11_r4372}'
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    'vaxis_s12{#vaxis_s12}'
    # nr 'The zombie seems interested. "Yu in trouble? Wutt yu do?"{#vaxis_s12_1}'

    menu:
        'vaxis_s12_r4374{#vaxis_s12_r4374}': # '"I woke up on one of the slabs upstairs."{#vaxis_s12_r4374}'
            # a57 # r4374
            jump vaxis_s13

        'vaxis_s12_r4375{#vaxis_s12_r4375}': # '"I got… trapped in here somehow. Can you help me out?"{#vaxis_s12_r4375}'
            # a58 # r4375
            jump vaxis_s31

        'vaxis_s12_r4376{#vaxis_s12_r4376}': # '"Maybe I„ll speak of it another time."{#vaxis_s12_r4376}'
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    'vaxis_s13{#vaxis_s13}'
    # nr 'The zombie„s looking at you like you“re crazy. "Yu barmee?"{#vaxis_s13_1}'

    menu:
        'vaxis_s13_r4378{#vaxis_s13_r4378}': # '"Yes, I am barmee. Very barmee."{#vaxis_s13_r4378}'
            # a60 # r4378
            jump vaxis_s14

        'vaxis_s13_r4379{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition(): # '"„Barmee“? What„s that?"{#vaxis_s13_r4379}'
            # a61 # r4379
            jump vaxis_s16

        'vaxis_s13_r4380{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition(): # '"„Barmee“? What„s that?"{#vaxis_s13_r4380}'
            # a62 # r4380
            jump morte_s87  # EXTERN

        'vaxis_s13_r4381{#vaxis_s13_r4381}': # '"I know it„s hard to believe, but I“m not going to lie to you: I woke up from the dead on one of the slabs upstairs."{#vaxis_s13_r4381}'
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        'vaxis_s13_r4382{#vaxis_s13_r4382}': # '"Uh, no… actually, I was trapped in here somehow. Can you help me out?"{#vaxis_s13_r4382}'
            # a64 # r4382
            jump vaxis_s31

        'vaxis_s13_r4383{#vaxis_s13_r4383}': # '"Forget we spoke. I must be taking my leave."{#vaxis_s13_r4383}'
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    'vaxis_s14{#vaxis_s14}'
    # nr 'He looks at you, then hisses and makes a shooing motion. "Yu barmee! Git away frum me!"{#vaxis_s14_1}'

    menu:
        'vaxis_s14_r4385{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition(): # '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."{#vaxis_s14_r4385}'
            # a66 # r4385
            jump vaxis_s21

        'vaxis_s14_r4386{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition(): # '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."{#vaxis_s14_r4386}'
            # a67 # r4386
            jump vaxis_s17

        'vaxis_s14_r4387{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition(): # '"You„ll answer my damn questions first, or I“ll make that disguise a reality."{#vaxis_s14_r4387}'
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        'vaxis_s14_r4388{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition(): # '"You„ll answer my damn questions first, or I“ll make that disguise a reality."{#vaxis_s14_r4388}'
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        'vaxis_s14_r4389{#vaxis_s14_r4389}': # '"All right, all right… farewell."{#vaxis_s14_r4389}'
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    'vaxis_s15{#vaxis_s15}'
    # nr 'The fake zombie is looking at you both suspiciously.{#vaxis_s15_1}'

    menu:
        'vaxis_s15_r4391{#vaxis_s15_r4391}': # '"It„s the truth - I woke up on one of the slabs here."{#vaxis_s15_r4391}'
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        'vaxis_s15_r4392{#vaxis_s15_r4392}': # '"Uh, sorry. Actually, I was trapped in here somehow. Can you help me out?"{#vaxis_s15_r4392}'
            # a72 # r4392
            jump vaxis_s31

        'vaxis_s15_r4393{#vaxis_s15_r4393}': # '"Never mind. I must take my leave now."{#vaxis_s15_r4393}'
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    'vaxis_s16{#vaxis_s16}'
    # nr 'He looks at you, then hisses and makes a shooing motion. "Addle-cuve! Idjit! Git awuh frum me, burk! Guh!"{#vaxis_s16_1}'

    menu:
        'vaxis_s16_r4395{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition(): # '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."{#vaxis_s16_r4395}'
            # a74 # r4395
            jump vaxis_s21

        'vaxis_s16_r4396{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition(): # '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."{#vaxis_s16_r4396}'
            # a75 # r4396
            jump vaxis_s17

        'vaxis_s16_r4397{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition(): # '"You„ll answer my damn questions first, or I“ll make that disguise a reality."{#vaxis_s16_r4397}'
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        'vaxis_s16_r4398{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition(): # '"You„ll answer my damn questions first, or I“ll make that disguise a reality."{#vaxis_s16_r4398}'
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        'vaxis_s16_r4399{#vaxis_s16_r4399}': # '"All right, all right… I„m going."{#vaxis_s16_r4399}'
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    'vaxis_s17{#vaxis_s17}'
    # nr 'He seems frightened for a moment, then studies you and a sneer crawls across his face. "Yu spill th„ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Yu not s“posd be heer. Duhstees kill yu. Me escape."{#vaxis_s17_1}'

    menu:
        'vaxis_s17_r4401{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition(): # '"You won„t escape if I KILL you. Now answer my questions, or I“ll make that disguise a reality."{#vaxis_s17_r4401}'
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        'vaxis_s17_r4402{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition(): # '"You won„t escape if I KILL you. Now answer my questions, or I“ll make that disguise a reality."{#vaxis_s17_r4402}'
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        'vaxis_s17_r4403{#vaxis_s17_r4403}': # '"Burn in hell, then. I„m leaving."{#vaxis_s17_r4403}'
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    'vaxis_s18{#vaxis_s18}'
    # nr 'The zombie„s eyes narrow, and he hisses at you. "Yu TRY n“ put me in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."{#vaxis_s18_1}'

    menu:
        'vaxis_s18_r4405{#vaxis_s18_r4405}': # '"I„ll risk it. Prepare to die."{#vaxis_s18_r4405}'
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        'vaxis_s18_r4406{#vaxis_s18_r4406}': # '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"{#vaxis_s18_r4406}'
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    'vaxis_s19{#vaxis_s19}'
    # nr 'He seems frightened for a moment, then studies your build, and a sneer crawls across his face. "YOO try n„ put ME in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."{#vaxis_s19_1}'

    menu:
        'vaxis_s19_r4408{#vaxis_s19_r4408}': # '"I„ll risk it. Prepare to die."{#vaxis_s19_r4408}'
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        'vaxis_s19_r4409{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition(): # '"What if I expose your disguise to the guards?"{#vaxis_s19_r4409}'
            # a85 # r4409
            jump vaxis_s21

        'vaxis_s19_r4410{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition(): # '"What if I expose your disguise to the guards?"{#vaxis_s19_r4410}'
            # a86 # r4410
            jump vaxis_s20

        'vaxis_s19_r4411{#vaxis_s19_r4411}': # '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"{#vaxis_s19_r4411}'
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    'vaxis_s20{#vaxis_s20}'
    # nr 'The zombie„s eyes narrow, and he hisses at you. "Yu spill th“ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Duhstees kill yu. Me escape."{#vaxis_s20_1}'

    menu:
        'vaxis_s20_r4413{#vaxis_s20_r4413}': # '"That was your last chance, corpse. Prepare to die."{#vaxis_s20_r4413}'
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        'vaxis_s20_r4414{#vaxis_s20_r4414}': # '"Burn in hell, then. I„m leaving. You better watch yourself *zombie.*"{#vaxis_s20_r4414}'
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    'vaxis_s21{#vaxis_s21}'
    # nr 'There must be something in your eye that makes the zombie„s expression crumble. "Nuh-nuh-no! Dun“t cull th„ gards!" He looks frightened. "Muh-muh-me spy un Duhstees, say wut I see. Nuh-Nuthin“ more."{#vaxis_s21_1}'

    menu:
        'vaxis_s21_r4416{#vaxis_s21_r4416}': # '"Spy? For who?"{#vaxis_s21_r4416}'
            # a90 # r4416
            jump vaxis_s23

        'vaxis_s21_r4417{#vaxis_s21_r4417}': # '"What have you seen the Dustmen do?"{#vaxis_s21_r4417}'
            # a91 # r4417
            jump vaxis_s29

        'vaxis_s21_r4418{#vaxis_s21_r4418}': # '"I had some other questions…"{#vaxis_s21_r4418}'
            # a92 # r4418
            jump vaxis_s43

        'vaxis_s21_r4419{#vaxis_s21_r4419}': # '"That„s all I wanted to know. Farewell, *zombie.*"{#vaxis_s21_r4419}'
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    'vaxis_s22{#vaxis_s22}'
    # nr '"Nuh-nuh-no! Dun„t huurt me!" The fact you outweigh the zombie by several pounds of raw muscle seems to influence his decision, and his expression crumbles. "Dunht huurt me! Muh-muh-me spy un Duhstees, say wut I see. Nuh-Nuthin“ more."{#vaxis_s22_1}'

    menu:
        'vaxis_s22_r4421{#vaxis_s22_r4421}': # '"Spy? For who?"{#vaxis_s22_r4421}'
            # a94 # r4421
            jump vaxis_s23

        'vaxis_s22_r4422{#vaxis_s22_r4422}': # '"What have you seen the Dustmen do?"{#vaxis_s22_r4422}'
            # a95 # r4422
            jump vaxis_s29

        'vaxis_s22_r4423{#vaxis_s22_r4423}': # '"I had some other questions…"{#vaxis_s22_r4423}'
            # a96 # r4423
            jump vaxis_s43

        'vaxis_s22_r4424{#vaxis_s22_r4424}': # '"That„s all I wanted to know. Now stay out of my way, *zombie.*"{#vaxis_s22_r4424}'
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    'vaxis_s23{#vaxis_s23}'
    # nr 'The zombie falls into a frightened silence. He seems unwilling to say any more.{#vaxis_s23_1}'

    menu:
        'vaxis_s23_r4426{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition(): # '"C„mon. Who are you watching this place for?"{#vaxis_s23_r4426}'
            # a98 # r4426
            jump vaxis_s70

        'vaxis_s23_r4427{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition(): # '"C„mon. Who are you watching this place for?"{#vaxis_s23_r4427}'
            # a99 # r4427
            jump morte_s89  # EXTERN

        'vaxis_s23_r4428{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition(): # '"It„ll be a LOT less painful for you if you tell me now who you“re spying for."{#vaxis_s23_r4428}'
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        'vaxis_s23_r4429{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition(): # '"It„ll be a LOT less painful for you if you tell me now who you“re spying for."{#vaxis_s23_r4429}'
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        'vaxis_s23_r4430{#vaxis_s23_r4430}': # '"Never mind then. What have you seen the Dustmen do?"{#vaxis_s23_r4430}'
            # a102 # r4430
            jump vaxis_s29

        'vaxis_s23_r4431{#vaxis_s23_r4431}': # '"There was something else I wanted to know…"{#vaxis_s23_r4431}'
            # a103 # r4431
            jump vaxis_s43

        'vaxis_s23_r4432{#vaxis_s23_r4432}': # '"Forget it, then. Farewell, *zombie.*"{#vaxis_s23_r4432}'
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    'vaxis_s24{#vaxis_s24}'
    # nr '"Luukin„ fur me? Why?" He squints at you. "Yu gut muhssage fur me?"{#vaxis_s24_1}'

    menu:
        'vaxis_s24_r4434{#vaxis_s24_r4434}': # 'Lie: "Yes, I have a message for you."{#vaxis_s24_r4434}'
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        'vaxis_s24_r4435{#vaxis_s24_r4435}': # '"Message from who?"{#vaxis_s24_r4435}'
            # a106 # r4435
            jump vaxis_s27

        'vaxis_s24_r4436{#vaxis_s24_r4436}': # '"No, I don„t have a message."{#vaxis_s24_r4436}'
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    'vaxis_s25{#vaxis_s25}'
    # nr 'Hisses angrily. "Then wut yu *want,* burk?!"{#vaxis_s25_1}'

    menu:
        'vaxis_s25_r4438{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition(): # '"I„m looking for a way out of here. Can you help me?"{#vaxis_s25_r4438}'
            # a108 # r4438
            jump vaxis_s31

        'vaxis_s25_r4439{#vaxis_s25_r4439}': # '"I wanted some information…"{#vaxis_s25_r4439}'
            # a109 # r4439
            jump vaxis_s43

        'vaxis_s25_r4440{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition(): # '"Tell me what you„re doing here, or I“ll call the guards."{#vaxis_s25_r4440}'
            # a110 # r4440
            jump vaxis_s21

        'vaxis_s25_r4441{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition(): # '"Tell me what you„re doing here, or I“ll call the guards."{#vaxis_s25_r4441}'
            # a111 # r4441
            jump vaxis_s17

        'vaxis_s25_r4442{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition(): # '"I want you to answer my damn questions, or I„ll make that disguise a reality before you get three paces."{#vaxis_s25_r4442}'
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        'vaxis_s25_r4443{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition(): # '"I want you to answer my damn questions, or I„ll make that disguise a reality before you get three paces."{#vaxis_s25_r4443}'
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        'vaxis_s25_r4444{#vaxis_s25_r4444}': # '"Sorry to trouble you… whoever you are. Farewell."{#vaxis_s25_r4444}'
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    'vaxis_s26{#vaxis_s26}'
    # nr '"Wut muhssage?"{#vaxis_s26_1}'

    menu:
        'vaxis_s26_r4446{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition(): # '"You are to tell me your mission."{#vaxis_s26_r4446}'
            # a115 # r4446
            jump vaxis_s28

        'vaxis_s26_r4447{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition(): # 'Lie: "I have your new orders."{#vaxis_s26_r4447}'
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'vaxis_s26_r4448{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition(): # 'Lie: "I… have your new orders."{#vaxis_s26_r4448}'
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        'vaxis_s26_r4449{#vaxis_s26_r4449}': # '"Sorry, I don„t have a message."{#vaxis_s26_r4449}'
            # a118 # r4449
            jump vaxis_s27

        'vaxis_s26_r4450{#vaxis_s26_r4450}': # '"Never mind. Sorry to trouble you. Farewell."{#vaxis_s26_r4450}'
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    'vaxis_s27{#vaxis_s27}'
    # nr 'His eyes narrow angrily. "Yu NO muhssagerr. Hoo yu?"{#vaxis_s27_1}'

    menu:
        'vaxis_s27_r4452{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition(): # '"I„m looking for a way out of here. Can you help me?"{#vaxis_s27_r4452}'
            # a120 # r4452
            jump vaxis_s31

        'vaxis_s27_r4453{#vaxis_s27_r4453}': # '"I wanted some information…"{#vaxis_s27_r4453}'
            # a121 # r4453
            jump vaxis_s43

        'vaxis_s27_r4454{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition(): # '"Tell me what you„re doing here, or I“ll call the guards."{#vaxis_s27_r4454}'
            # a122 # r4454
            jump vaxis_s21

        'vaxis_s27_r4455{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition(): # '"Tell me what you„re doing here, or I“ll call the guards."{#vaxis_s27_r4455}'
            # a123 # r4455
            jump vaxis_s17

        'vaxis_s27_r4456{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition(): # '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."{#vaxis_s27_r4456}'
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        'vaxis_s27_r4457{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition(): # '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."{#vaxis_s27_r4457}'
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        'vaxis_s27_r4458{#vaxis_s27_r4458}': # '"Sorry to trouble you… whoever you are. Farewell."{#vaxis_s27_r4458}'
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    'vaxis_s28{#vaxis_s28}'
    # nr '"Me spy on Duhstees. Say wut I see. Nuthin„ more."{#vaxis_s28_1}'

    menu:
        'vaxis_s28_r4460{#vaxis_s28_r4460}': # '"What have you seen the Dustmen do?"{#vaxis_s28_r4460}'
            # a127 # r4460
            jump vaxis_s29

        'vaxis_s28_r4461{#vaxis_s28_r4461}': # '"I see. There was something else I wanted to ask you…"{#vaxis_s28_r4461}'
            # a128 # r4461
            jump vaxis_s43

        'vaxis_s28_r4462{#vaxis_s28_r4462}': # '"That„s all I wanted to know. Farewell."{#vaxis_s28_r4462}'
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    'vaxis_s29{#vaxis_s29}'
    # nr '"Nuthin„. They do nuthin“. Can„t find nuthin“. Dead, dead, juhst dead people, Duhstees do *nuthin„.*" Eyes narrow in conviction. "Still I watch."{#vaxis_s29_1}'

    menu:
        'vaxis_s29_r4464{#vaxis_s29_r4464}': # '"I see. There was something else I wanted to ask you…"{#vaxis_s29_r4464}'
            # a130 # r4464
            jump vaxis_s43

        'vaxis_s29_r4465{#vaxis_s29_r4465}': # '"That„s all I wanted to know. Farewell."{#vaxis_s29_r4465}'
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    'vaxis_s30{#vaxis_s30}'
    # nr 'He narrows his eyes, like he„s trying to figure you out. "Wut ordrs?"{#vaxis_s30_1}'

    menu:
        'vaxis_s30_r4467{#vaxis_s30_r4467}': # '"Tell me your mission."{#vaxis_s30_r4467}'
            # a132 # r4467
            jump vaxis_s28

        'vaxis_s30_r4468{#vaxis_s30_r4468}': # '"I need to find an escape route where I may leave unobserved."{#vaxis_s30_r4468}'
            # a133 # r4468
            jump vaxis_s49

        'vaxis_s30_r4469{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition(): # '"I am here to relieve you. Give me all the information you„ve gathered, all your possessions, then leave."{#vaxis_s30_r4469}'
            # a134 # r4469
            $ vaxisLogic.j64517_s30_r4469_action()
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        'vaxis_s30_r4470{#vaxis_s30_r4470}': # '"I am here to help you in any way you need."{#vaxis_s30_r4470}'
            # a135 # r4470
            jump vaxis_s35

        'vaxis_s30_r4471{#vaxis_s30_r4471}': # '"Your orders will have to wait for another time. I will be back."{#vaxis_s30_r4471}'
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    'vaxis_s31{#vaxis_s31}'
    # nr 'He is silent for a moment, then nods slightly, as if in understanding. "Why shud I hulp yu?"{#vaxis_s31_1}'

    menu:
        'vaxis_s31_r4473{#vaxis_s31_r4473}': # '"Because I need your help."{#vaxis_s31_r4473}'
            # a137 # r4473
            jump vaxis_s32

        'vaxis_s31_r4474{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition(): # '"Maybe we could help each other out. What do you want in return?"{#vaxis_s31_r4474}'
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        'vaxis_s31_r4475{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition(): # '"Because I won„t *expose* your little disguise… if you help me."{#vaxis_s31_r4475}'
            # a139 # r4475
            jump vaxis_s33

        'vaxis_s31_r4476{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition(): # '"Because I won„t *expose* your little disguise… if you help me."{#vaxis_s31_r4476}'
            # a140 # r4476
            jump vaxis_s34

        'vaxis_s31_r4477{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition(): # '"You look like someone who„d much rather disguise themselves as a corpse than BE one. That reason enough?"{#vaxis_s31_r4477}'
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        'vaxis_s31_r4478{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition(): # '"You look like someone who„d much rather disguise themselves as a corpse than BE one. That reason enough?"{#vaxis_s31_r4478}'
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        'vaxis_s31_r4479{#vaxis_s31_r4479}': # '"Forget we met. I must take my leave. Farewell."{#vaxis_s31_r4479}'
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    'vaxis_s32{#vaxis_s32}'
    # nr 'The zombie gives a half-sneer. "Everybodee *needs* sumthin„, but nubudy *gives* anything. Yu *give* me sumfin“, *maybee* I help."{#vaxis_s32_1}'

    menu:
        'vaxis_s32_r4481{#vaxis_s32_r4481}': # '"What is it you need?"{#vaxis_s32_r4481}'
            # a144 # r4481
            jump vaxis_s35

        'vaxis_s32_r4482{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition(): # '"How about you help me, and I won„t call the guards?"{#vaxis_s32_r4482}'
            # a145 # r4482
            jump vaxis_s33

        'vaxis_s32_r4483{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition(): # '"How about you help me, and I won„t call the guards?"{#vaxis_s32_r4483}'
            # a146 # r4483
            jump vaxis_s34

        'vaxis_s32_r4484{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition(): # '"You look like someone who„d much rather be breathing than saying no to me. Now… for the last time: How do I get out of this place?"{#vaxis_s32_r4484}'
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        'vaxis_s32_r4485{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition(): # '"You look like someone who„d much rather be breathing than saying no to me. Now… for the last time: How do I get out of this place?"{#vaxis_s32_r4485}'
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        'vaxis_s32_r4486{#vaxis_s32_r4486}': # '"Not interested. Farewell."{#vaxis_s32_r4486}'
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    'vaxis_s33{#vaxis_s33}'
    # nr 'He looks you up and down as if wondering if he can take you, stares at your scars, then decides against it. "Hmmph. Yu kin escape through portalz."{#vaxis_s33_1}'

    menu:
        'vaxis_s33_r4672{#vaxis_s33_r4672}': # '"Portals?"{#vaxis_s33_r4672}'
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    'vaxis_s34{#vaxis_s34}'
    # nr 'He seems frightened for a moment, then studies you and a sneer crawls across his face. "Yu spill th„ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Yu not s“posd be heer. Duhstees kill yu. Me escape."{#vaxis_s34_1}'

    menu:
        'vaxis_s34_r4489{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition(): # '"You won„t escape if I KILL you. Now start talking, or I“ll make that disguise a reality."{#vaxis_s34_r4489}'
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        'vaxis_s34_r4490{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition(): # '"You won„t escape if I KILL you. Now start talking, I“ll make that disguise a reality."{#vaxis_s34_r4490}'
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        'vaxis_s34_r4492{#vaxis_s34_r4492}': # '"Burn in hell, then. I„m leaving."{#vaxis_s34_r4492}'
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    'vaxis_s35{#vaxis_s35}'
    # nr '"Uh need you t„git a *key* fur me. Wunt iron key tuh embulmuh“s rum."{#vaxis_s35_1}'

    menu:
        'vaxis_s35_r4494{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition(): # '"You mean this key?"{#vaxis_s35_r4494}'
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        'vaxis_s35_r4495{#vaxis_s35_r4495}': # '"All right. Where is this key?"{#vaxis_s35_r4495}'
            # a155 # r4495
            jump vaxis_s36

        'vaxis_s35_r4496{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition(): # '"I don„t have time for this. Help me escape, or I“ll call the guards."{#vaxis_s35_r4496}'
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        'vaxis_s35_r4497{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition(): # '"I don„t have time for this. Help me escape, or I“ll call the guards."{#vaxis_s35_r4497}'
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        'vaxis_s35_r4498{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition(): # '"I„m not going to go fetch anything for you. Help me escape, or I“ll snap your neck right here and now."{#vaxis_s35_r4498}'
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        'vaxis_s35_r4499{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition(): # '"I„m not going to go fetch anything for you. Help me escape, or I“ll snap your neck right here and now."{#vaxis_s35_r4499}'
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        'vaxis_s35_r4500{#vaxis_s35_r4500}': # '"No thanks. Maybe some other time."{#vaxis_s35_r4500}'
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    'vaxis_s36{#vaxis_s36}'
    # nr '"A dusstie chit hazzit." He points at his eyes. "She haz yuhllo eyez…" He then makes a motion with his hands that reminds you of a pair of cutting shears. "Bladezz on fingerzz."{#vaxis_s36_1}'

    menu:
        'vaxis_s36_r4502{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition(): # '"We already crossed paths. Here„s the key."{#vaxis_s36_r4502}'
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        'vaxis_s36_r64520{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition(): # '"A Dustman woman… with yellow eyes and blades on her fingers? I already met her in the embalming room. Hold on - I„ll be back with the key shortly."{#vaxis_s36_r64520}'
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        'vaxis_s36_r4503{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition(): # '"A Dustman woman… with yellow eyes and blades on her fingers? All right then. I„ll be back with the key."{#vaxis_s36_r4503}'
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        'vaxis_s36_r4504{#vaxis_s36_r4504}': # '"This Dustman woman sounds really attractive. Are you sure you don„t want me to introduce the two of you?"{#vaxis_s36_r4504}'
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    'vaxis_s37{#vaxis_s37}'
    # nr 'The zombie blinks. He doesn„t seem to have understood you.{#vaxis_s37_1}'

    menu:
        'vaxis_s37_r4506{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition(): # '"That was a joke, see, you„re sup… forget it, I“ll go find your key."{#vaxis_s37_r4506}'
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        'vaxis_s37_r66150{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition(): # '"That was a joke, see, you„re sup… forget it, I“ll go find your key."{#vaxis_s37_r66150}'
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    'vaxis_s38{#vaxis_s38}'
    # nr 'The zombie squints at you. "If yu„re cught, dun“t say nothin„ bout me, or me gut yu in yur sleep."{#vaxis_s38_1}'

    menu:
        'vaxis_s38_r4508{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition(): # '"I„ll get your damned key… but you had best watch your threats, you hear me?"{#vaxis_s38_r4508}'
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        'vaxis_s38_r4509{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition(): # '"I„ll be back."{#vaxis_s38_r4509}'
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        'vaxis_s38_r4510{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition(): # '"I„ll get your damned key… but you had best watch your threats, you hear me?"{#vaxis_s38_r4510}'
            # a169 # r4510
            jump vaxis_dispose

        'vaxis_s38_r4511{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition(): # '"I„ll be back."{#vaxis_s38_r4511}'
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    'vaxis_s39{#vaxis_s39}'
    # nr '"Me gud at duh-guise. Me ulso gut scars. Me wuhr lots of embalming fluid. Me make GUD zumbie." The zombie giggles through stitched lips, then taps his head. "Duhstees stuh-pud."{#vaxis_s39_1}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    'vaxis_s40{#vaxis_s40}'
    # nr '"I wait heer fur yu. Get key." The zombie gives you a stomach-churning smile. "Then I help yu."{#vaxis_s40_1}'

    menu:
        'vaxis_s40_r4515{#vaxis_s40_r4515}': # '"If I can find it, I„ll bring it back."{#vaxis_s40_r4515}'
            # a171 # r4515
            jump vaxis_dispose

        'vaxis_s40_r4516{#vaxis_s40_r4516}': # '"Forget it, then."{#vaxis_s40_r4516}'
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    'vaxis_s41{#vaxis_s41}'
    # nr 'The zombie„s eyes widen, then he holds his hand out and snaps his fingers. "Gife it t“me."{#vaxis_s41_1}'

    menu:
        'vaxis_s41_r4518{#vaxis_s41_r4518}': # '"Hold a moment. There„s something I want first."{#vaxis_s41_r4518}'
            # a173 # r4518
            jump vaxis_dispose

        'vaxis_s41_r4519{#vaxis_s41_r4519}': # '"Here you go."{#vaxis_s41_r4519}'
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    'vaxis_s42{#vaxis_s42}'
    # nr 'The zombie„s eyes widen, and he snatches the key from your hand. He turns it over, nodding all the while. "Gud… gud."{#vaxis_s42_1}'

    menu:
        'vaxis_s42_r4521{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition(): # '"Now… how do I get out of here?"{#vaxis_s42_r4521}'
            # a175 # r4521
            $ vaxisLogic.j64521_s42_r4521_action()
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        'vaxis_s42_r4522{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition(): # '"Now… there was something I wanted to know…"{#vaxis_s42_r4522}'
            # a176 # r4522
            $ vaxisLogic.j64521_s42_r4522_action()
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    'vaxis_s43{#vaxis_s43}'
    # nr '"Wut yu want tuh knuw?"{#vaxis_s43_1}'

    menu:
        'vaxis_s43_r64508{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition(): # '"How can I escape from here?"{#vaxis_s43_r64508}'
            # a177 # r64508
            jump vaxis_s49

        'vaxis_s43_r4524{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition(): # '"How can I escape from here?"{#vaxis_s43_r4524}'
            # a178 # r4524
            jump vaxis_s49

        'vaxis_s43_r4525{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition(): # '"Where was that portal you mentioned again?"{#vaxis_s43_r4525}'
            # a179 # r4525
            jump vaxis_s52

        'vaxis_s43_r4526{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition(): # '"Can you disguise me as a zombie?"{#vaxis_s43_r4526}'
            # a180 # r4526
            jump vaxis_s63

        'vaxis_s43_r4527{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition(): # '"Can you disguise me as a zombie again?"{#vaxis_s43_r4527}'
            # a181 # r4527
            jump vaxis_s63

        'vaxis_s43_r4528{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition(): # '"What are you doing here?"{#vaxis_s43_r4528}'
            # a182 # r4528
            jump vaxis_s28

        'vaxis_s43_r4673{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition(): # '"Do you know someone named Pharod?"{#vaxis_s43_r4673}'
            # a183 # r4673
            jump vaxis_s44

        'vaxis_s43_r4530{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition(): # '"I„m missing a journal. Have you seen it?"{#vaxis_s43_r4530}'
            # a184 # r4530
            jump vaxis_s47

        'vaxis_s43_r4531{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition(): # '"Can you tell me anything about Dhall?"{#vaxis_s43_r4531}'
            # a185 # r4531
            jump vaxis_s53

        'vaxis_s43_r4532{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition(): # '"Can you tell me anything about Deionarra?"{#vaxis_s43_r4532}'
            # a186 # r4532
            jump vaxis_s54

        'vaxis_s43_r4533{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition(): # '"Can you tell me anything about Soego?"{#vaxis_s43_r4533}'
            # a187 # r4533
            jump vaxis_s55

        'vaxis_s43_r4534{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition(): # '"How did you get to look like that?"{#vaxis_s43_r4534}'
            # a188 # r4534
            jump vaxis_s60

        'vaxis_s43_r4535{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition(): # '"How did you get to look like that?"{#vaxis_s43_r4535}'
            # a189 # r4535
            jump vaxis_s39

        'vaxis_s43_r4536{#vaxis_s43_r4536}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s43_r4536}'
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    'vaxis_s44{#vaxis_s44}'
    # nr '"Fuh-AROD?" The zombie frowns briefly in thought. "Me… heer he live in Hive somewhere." He shakes his head. "Not know where." He frowns again. "Dushties vare-ee mad, thay not LIKE Fuh-arod."{#vaxis_s44_1}'

    menu:
        'vaxis_s44_r4538{#vaxis_s44_r4538}': # '"Hive?"{#vaxis_s44_r4538}'
            # a191 # r4538
            jump vaxis_s45

        'vaxis_s44_r4539{#vaxis_s44_r4539}': # '"Why don„t the Dustmen like Pharod?"{#vaxis_s44_r4539}'
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        'vaxis_s44_r4540{#vaxis_s44_r4540}': # '"There was something else I wanted to know…"{#vaxis_s44_r4540}'
            # a193 # r4540
            jump vaxis_s43

        'vaxis_s44_r4541{#vaxis_s44_r4541}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s44_r4541}'
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    'vaxis_s45{#vaxis_s45}'
    # nr '"Slumz ousside this place."{#vaxis_s45_1}'

    menu:
        'vaxis_s45_r4543{#vaxis_s45_r4543}': # '"Why don„t the Dustmen like Pharod?"{#vaxis_s45_r4543}'
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        'vaxis_s45_r4544{#vaxis_s45_r4544}': # '"There was something else I wanted to know…"{#vaxis_s45_r4544}'
            # a196 # r4544
            jump vaxis_s43

        'vaxis_s45_r4545{#vaxis_s45_r4545}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s45_r4545}'
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    'vaxis_s46{#vaxis_s46}'
    # nr '"He„z a Cullector. Bringz deaderz to Mortuaree, sellz “em to Dustmen. Bringz LOT uf deaderz. Dushties not know where he getz deaderz. Think he„z puttin“ berks in dead-book."{#vaxis_s46_1}'

    menu:
        'vaxis_s46_r4547{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition(): # '"Uh… what?"{#vaxis_s46_r4547}'
            # a198 # r4547
            jump vaxis_s48

        'vaxis_s46_r4548{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition(): # '"Uh… what?"{#vaxis_s46_r4548}'
            # a199 # r4548
            jump morte_s91  # EXTERN

        'vaxis_s46_r4549{#vaxis_s46_r4549}': # '"Oh. There was something else I wanted to know…"{#vaxis_s46_r4549}'
            # a200 # r4549
            jump vaxis_s43

        'vaxis_s46_r4550{#vaxis_s46_r4550}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s46_r4550}'
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    'vaxis_s47{#vaxis_s47}'
    # nr '"Do„ kno. Sum berk peel you?"{#vaxis_s47_1}'

    menu:
        'vaxis_s47_r4552{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition(): # '"Uh… what?"{#vaxis_s47_r4552}'
            # a202 # r4552
            jump vaxis_s48

        'vaxis_s47_r4553{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition(): # '"Uh… what?"{#vaxis_s47_r4553}'
            # a203 # r4553
            jump morte_s92  # EXTERN

        'vaxis_s47_r4554{#vaxis_s47_r4554}': # '"Oh. There was something else I wanted to know…"{#vaxis_s47_r4554}'
            # a204 # r4554
            jump vaxis_s43

        'vaxis_s47_r4555{#vaxis_s47_r4555}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s47_r4555}'
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    'vaxis_s48{#vaxis_s48}'
    # nr 'The zombie tries to speak, pauses, tries again, then shrugs. Apparently, he can„t explain it any better.{#vaxis_s48_1}'

    menu:
        'vaxis_s48_r4557{#vaxis_s48_r4557}': # '"Oh. There was something else I wanted to know…"{#vaxis_s48_r4557}'
            # a206 # r4557
            jump vaxis_s43

        'vaxis_s48_r4558{#vaxis_s48_r4558}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s48_r4558}'
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    'vaxis_s49{#vaxis_s49}'
    # nr 'The zombie grunts. "Yu kin escape through portalz." He waves his hands. "Phoof."{#vaxis_s49_1}'

    menu:
        'vaxis_s49_r4560{#vaxis_s49_r4560}': # '"Portals? What portals?"{#vaxis_s49_r4560}'
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    'vaxis_s50{#vaxis_s50}'
    # nr '"Portalz…" The zombie waves around the area. "Portalz evereewheer."{#vaxis_s50_1}'

    menu:
        'vaxis_s50_r4564{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition(): # '"Can you show me one of these portals?"{#vaxis_s50_r4564}'
            # a209 # r4564
            jump vaxis_s31

        'vaxis_s50_r64509{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition(): # '"Can you show me one of these portals?"{#vaxis_s50_r64509}'
            # a210 # r64509
            jump vaxis_s51

        'vaxis_s50_r64510{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition(): # '"Can you show me one of these portals?"{#vaxis_s50_r64510}'
            # a211 # r64510
            jump vaxis_s51

        'vaxis_s50_r64511{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition(): # '"Can you show me one of these portals?"{#vaxis_s50_r64511}'
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    'vaxis_s51{#vaxis_s51}'
    # nr 'The zombie nods. "Yu wunt out, go tuh arch on firzzt fluur, nurthwezzt ruum… Yuh need fungur-bone, shape of crook…" He holds up his index finger and bends it into a crook. "When yuh have key, guh to arch, jump ta sucret cryp and ken escape frum here. Secret escape route." He nods eagerly. "Yuh can REST there."{#vaxis_s51_1}'

    menu:
        'vaxis_s51_r64527{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition(): # '"Crooked finger bone? Where am I going to find one of those?"{#vaxis_s51_r64527}'
            # a213 # r64527
            $ vaxisLogic.j64528_s51_r64527_action()
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        'vaxis_s51_r4568{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition(): # '"I had some other questions…"{#vaxis_s51_r4568}'
            # a214 # r4568
            $ vaxisLogic.j64529_s51_r4568_action()
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        'vaxis_s51_r4569{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition(): # '"An arch on the first floor, northwest room? All right, I„ll go check it out."{#vaxis_s51_r4569}'
            # a215 # r4569
            $ vaxisLogic.j64529_s51_r4569_action()
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    'vaxis_s52{#vaxis_s52}'
    # nr '"Lissen! R„member!" The zombie sounds angry. "Arch, firzzzt fluur, nurthwezzt ruum…" He holds up his index finger and bends it. "Yuh need finger bone, bent. Yuh guh ta sucret cryp. Escape route. Yuh ken REST there."{#vaxis_s52_1}'

    menu:
        'vaxis_s52_r4571{#vaxis_s52_r4571}': # '"There was something else I wanted to know…"{#vaxis_s52_r4571}'
            # a216 # r4571
            jump vaxis_s43

        'vaxis_s52_r4572{#vaxis_s52_r4572}': # '"Arch, first floor, northwest room, opens with a crooked finger bone? All right, I got it this time."{#vaxis_s52_r4572}'
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    'vaxis_s53{#vaxis_s53}'
    # nr '"Scribe." Shrugs. "Old. Yellow."{#vaxis_s53_1}'

    menu:
        'vaxis_s53_r4574{#vaxis_s53_r4574}': # '"There„s nothing more to be said, I suppose. I wanted to know something else…"{#vaxis_s53_r4574}'
            # a218 # r4574
            jump vaxis_s43

        'vaxis_s53_r4575{#vaxis_s53_r4575}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s53_r4575}'
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    'vaxis_s54{#vaxis_s54}'
    # nr '"Hunh?" Frowns. "Hoo shee?"{#vaxis_s54_1}'

    menu:
        'vaxis_s54_r4577{#vaxis_s54_r4577}': # '"Forget it. I wanted to know something else…"{#vaxis_s54_r4577}'
            # a220 # r4577
            jump vaxis_s43

        'vaxis_s54_r4578{#vaxis_s54_r4578}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s54_r4578}'
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    'vaxis_s55{#vaxis_s55}'
    # nr '"Guide. He at Mortuary frunt door. Wut yu wunt wi„ him?"{#vaxis_s55_1}'

    menu:
        'vaxis_s55_r4580{#vaxis_s55_r4580}': # '"What do you know about him?"{#vaxis_s55_r4580}'
            # a222 # r4580
            $ vaxisLogic.j64530_s55_r4580_action()
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        'vaxis_s55_r4581{#vaxis_s55_r4581}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s55_r4581}'
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    'vaxis_s56{#vaxis_s56}'
    # nr '"Actz strange, not Duhstie, not Anarchizt, eyez changed…" Shrugs. "Likez ratz. Strange."{#vaxis_s56_1}'

    menu:
        'vaxis_s56_r4583{#vaxis_s56_r4583}': # '"Good thing he„s the only strange one around here. There“s something else I wanted to know…"{#vaxis_s56_r4583}'
            # a224 # r4583
            jump vaxis_s43

        'vaxis_s56_r4584{#vaxis_s56_r4584}': # '"Never mind. I may have some questions later. Don„t go anywhere."{#vaxis_s56_r4584}'
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    'vaxis_s57{#vaxis_s57}'
    # nr 'You see the false zombie. You„re amazed at the man“s disguise… his breathing is so subdued, you can barely see it.{#vaxis_s57_1}'

    menu:
        'vaxis_s57_r4586{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition(): # '"Greetings."{#vaxis_s57_r4586}'
            # a226 # r4586
            jump vaxis_s58

        'vaxis_s57_r4587{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition(): # '"Greetings."{#vaxis_s57_r4587}'
            # a227 # r4587
            jump vaxis_s58

        'vaxis_s57_r4588{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition(): # '"Greetings."{#vaxis_s57_r4588}'
            # a228 # r4588
            jump vaxis_s59

        'vaxis_s57_r4589{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition(): # '"Greetings."{#vaxis_s57_r4589}'
            # a229 # r4589
            jump vaxis_s58

        'vaxis_s57_r4590{#vaxis_s57_r4590}': # 'Leave him alone.{#vaxis_s57_r4590}'
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    'vaxis_s58{#vaxis_s58}'
    # nr 'The zombie quickly glances around to see if anyone is watching, then turns to face you. "Wut?"{#vaxis_s58_1}'

    menu:
        'vaxis_s58_r4592{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition(): # '"Here„s that embalming room key you wanted."{#vaxis_s58_r4592}'
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        'vaxis_s58_r4593{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition(): # '"Here„s that embalming room key you wanted."{#vaxis_s58_r4593}'
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        'vaxis_s58_r4594{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition(): # '"Where is that key you mentioned again?"{#vaxis_s58_r4594}'
            # a233 # r4594
            jump vaxis_s36

        'vaxis_s58_r4595{#vaxis_s58_r4595}': # '"I had some questions for you…"{#vaxis_s58_r4595}'
            # a234 # r4595
            jump vaxis_s43

        'vaxis_s58_r4596{#vaxis_s58_r4596}': # '"Never mind."{#vaxis_s58_r4596}'
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    'vaxis_s59{#vaxis_s59}'
    # nr 'The zombie glances around to see if anyone is watching, then makes a shooing motion and hisses at you. "Guh „way! Git!"{#vaxis_s59_1}'

    menu:
        'vaxis_s59_r4598{#vaxis_s59_r4598}': # '"No. I had some questions for you, first…"{#vaxis_s59_r4598}'
            # a236 # r4598
            jump vaxis_s43

        'vaxis_s59_r4599{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition(): # '"Never mind then."{#vaxis_s59_r4599}'
            # a237 # r4599
            jump vaxis_s4

        'vaxis_s59_r4600{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition(): # '"Never mind then."{#vaxis_s59_r4600}'
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    'vaxis_s60{#vaxis_s60}'
    # nr '"Me gud at duh-guise. Me ulso gut scars. Me wuhr lots of embalming fluid. Me make GUD zumbie." The zombie giggles through stitched lips, then taps his head. "Duhstees stuh-pud."{#vaxis_s60_1}'

    menu:
        'vaxis_s60_r4602{#vaxis_s60_r4602}': # '"Yeah, they„re the stupid ones all right."{#vaxis_s60_r4602}'
            # a239 # r4602
            jump vaxis_s61

        'vaxis_s60_r4603{#vaxis_s60_r4603}': # '"Doesn„t that hurt?"{#vaxis_s60_r4603}'
            # a240 # r4603
            jump vaxis_s62

        'vaxis_s60_r4604{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition(): # '"That disguise is pretty good. Say… can you disguise me as a zombie, too?"{#vaxis_s60_r4604}'
            # a241 # r4604
            jump vaxis_s63

        'vaxis_s60_r4605{#vaxis_s60_r4605}': # '"There was something else I wanted to know…"{#vaxis_s60_r4605}'
            # a242 # r4605
            jump vaxis_s43

        'vaxis_s60_r4606{#vaxis_s60_r4606}': # '"I have to leave. Farewell."{#vaxis_s60_r4606}'
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    'vaxis_s61{#vaxis_s61}'
    # nr 'The sarcasm is evidently lost on the zombie, who nods eagerly. "Stuh-pud Duhstees. Me make GUD zumbie."{#vaxis_s61_1}'

    menu:
        'vaxis_s61_r4608{#vaxis_s61_r4608}': # '"Doesn„t that hurt?"{#vaxis_s61_r4608}'
            # a244 # r4608
            jump vaxis_s62

        'vaxis_s61_r4609{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition(): # '"That disguise is pretty good. Can you disguise me as a zombie?"{#vaxis_s61_r4609}'
            # a245 # r4609
            jump vaxis_s63

        'vaxis_s61_r4610{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition(): # '"There was something else I wanted to know…"{#vaxis_s61_r4610}'
            # a246 # r4610
            jump vaxis_s64

        'vaxis_s61_r4611{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition(): # '"I have to leave. Farewell."{#vaxis_s61_r4611}'
            # a247 # r4611
            jump vaxis_s64

        'vaxis_s61_r4612{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition(): # '"There was something else I wanted to know…"{#vaxis_s61_r4612}'
            # a248 # r4612
            jump vaxis_s43

        'vaxis_s61_r4613{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition(): # '"I have to leave. Farewell."{#vaxis_s61_r4613}'
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    'vaxis_s62{#vaxis_s62}'
    # nr 'He looks at your scars. "I ask yu same question. Me, it not hurt much." Claps his chest. "Me TUFF."{#vaxis_s62_1}'

    menu:
        'vaxis_s62_r4615{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition(): # '"That disguise is pretty good. Can you disguise me as a zombie?"{#vaxis_s62_r4615}'
            # a250 # r4615
            jump vaxis_s63

        'vaxis_s62_r4616{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition(): # '"There was something else I wanted to know…"{#vaxis_s62_r4616}'
            # a251 # r4616
            jump vaxis_s64

        'vaxis_s62_r4617{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition(): # '"I have to leave. Farewell."{#vaxis_s62_r4617}'
            # a252 # r4617
            jump vaxis_s64

        'vaxis_s62_r4618{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition(): # '"There was something else I wanted to know…"{#vaxis_s62_r4618}'
            # a253 # r4618
            jump vaxis_s43

        'vaxis_s62_r4674{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition(): # '"I have to leave. Farewell."{#vaxis_s62_r4674}'
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    'vaxis_s63{#vaxis_s63}'
    # nr 'He looks you up and down for a few moments, mumbling to himself, then nods. "U-huh. Me need jar uf embalming flew-id." Points at the scars on your chest. "N„ some needle and thread."{#vaxis_s63_1}'

    menu:
        'vaxis_s63_r4620{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition(): # '"Here you go."{#vaxis_s63_r4620}'
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        'vaxis_s63_r4621{#vaxis_s63_r4621}': # '"I„ll think about it. I had some other questions…"{#vaxis_s63_r4621}'
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        'vaxis_s63_r4622{#vaxis_s63_r4622}': # '"No thanks. Maybe some other time… farewell."{#vaxis_s63_r4622}'
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        'vaxis_s63_r4623{#vaxis_s63_r4623}': # '"Some embalming fluid and some thread? I„ll go see if I can find some."{#vaxis_s63_r4623}'
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    'vaxis_s64{#vaxis_s64}'
    # nr 'He looks you up and down with a strange expression. "U be GUD zumbie. I cud make u a zumbie? GUD dis-gize."{#vaxis_s64_1}'

    menu:
        'vaxis_s64_r4625{#vaxis_s64_r4625}': # '"Thanks anyway. I had some other questions for you…"{#vaxis_s64_r4625}'
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        'vaxis_s64_r4626{#vaxis_s64_r4626}': # '"Sure. Can you do it?"{#vaxis_s64_r4626}'
            # a260 # r4626
            jump vaxis_s63

        'vaxis_s64_r4627{#vaxis_s64_r4627}': # '"Why not? I already feel like one of the walking dead."{#vaxis_s64_r4627}'
            # a261 # r4627
            jump vaxis_s63

        'vaxis_s64_r4628{#vaxis_s64_r4628}': # '"No… no… that„s all right. Farewell."{#vaxis_s64_r4628}'
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    'vaxis_s65{#vaxis_s65}'
    # nr 'The zombie takes the items from you, then sets to work…{#vaxis_s65_1}'

    menu:
        'vaxis_s65_r4630{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition(): # 'Try to hold still.{#vaxis_s65_r4630}'
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'vaxis_s65_r4631{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition(): # 'Try to hold still.{#vaxis_s65_r4631}'
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'vaxis_s65_r4632{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition(): # 'Try to hold still.{#vaxis_s65_r4632}'
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'vaxis_s65_r64533{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition(): # 'Try to hold still.{#vaxis_s65_r64533}'
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    'vaxis_s66{#vaxis_s66}'
    # nr 'The zombie liberally applies the embalming fluid to your body, then stitches up several of your scars. Working from your feet upwards, he stitches up your scars, then finishes off the disguise by stitching up your lips.{#vaxis_s66_1}'

    menu:
        'vaxis_s66_r4634{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition(): # '"Mmm-hmmph-mmm… Fanks."{#vaxis_s66_r4634}'
            # a267 # r4634
            jump vaxis_s67

        'vaxis_s66_r4635{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition(): # '"Mmm-hmmph-mmm… Fanks."{#vaxis_s66_r4635}'
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        'vaxis_s66_r4636{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition(): # '"Mmm-hmmph-mmm… Fanks."{#vaxis_s66_r4636}'
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    'vaxis_s67{#vaxis_s67}'
    # nr 'The zombie holds up his hand. "Curful! Talk pulls stitches out, ruin diz-gize. Zumbie no talk. Yoo got to talk? Talk slow, curful."  ^NNOTE: Take heed that no one expects zombies to talk. If you speak to someone as a zombie, you run the risk of exposing your disguise.^-{#vaxis_s67_1}'

    menu:
        'vaxis_s67_r4638{#vaxis_s67_r4638}': # '"Mmph… mmm. I… understand."{#vaxis_s67_r4638}'
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    'vaxis_s68{#vaxis_s68}'
    # nr 'The zombie frowns. "Diz-gize wun„t last long… um-balming fluid dry up, stitchez fall out." He shrugs. "Prob-lee not last ousside Mortuaree. Uhnd no running! Yoo run, yoo ruin whole diz-gize."  ^NNOTE: Equipping weapons and/or running will instantly nullify your zombie disguise. If you find a new weapon, hold off on equipping it until you no longer wish to be disguised. If you have Always Run on, be sure to switch it off if you want to maintain the disguise when you finish speaking to Vaxis.^-{#vaxis_s68_1}'

    menu:
        'vaxis_s68_r4640{#vaxis_s68_r4640}': # 'Nod again, leave.{#vaxis_s68_r4640}'
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    'vaxis_s69{#vaxis_s69}'
    # nr 'The „zombie“ frowns. "Yu look familer. Me see yoo beefor?"{#vaxis_s69_1}'

    menu:
        'vaxis_s69_r4642{#vaxis_s69_r4642}': # '"Maybe. Where have you seen me?"{#vaxis_s69_r4642}'
            # a272 # r4642
            jump vaxis_dispose

        'vaxis_s69_r4643{#vaxis_s69_r4643}': # 'X.{#vaxis_s69_r4643}'
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    'vaxis_s70{#vaxis_s70}'
    # nr 'To your surprise, the zombie turns away from you… he is starting to glance around fearfully.{#vaxis_s70_1}'

    menu:
        'vaxis_s70_r4645{#vaxis_s70_r4645}': # '"You won„t talk? Then get ready to start screaming."{#vaxis_s70_r4645}'
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        'vaxis_s70_r4646{#vaxis_s70_r4646}': # '"Never mind then. What have you seen the Dustmen do?"{#vaxis_s70_r4646}'
            # a275 # r4646
            jump vaxis_s29

        'vaxis_s70_r4647{#vaxis_s70_r4647}': # '"There was something else I wanted to know…"{#vaxis_s70_r4647}'
            # a276 # r4647
            jump vaxis_s43

        'vaxis_s70_r4648{#vaxis_s70_r4648}': # '"Forget it, then. Farewell, *zombie.*"{#vaxis_s70_r4648}'
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    'vaxis_s71{#vaxis_s71}'
    # nr 'The zombie is watching you both fearfully. He is still silent… but something in his expression tells you Morte„s guess was right on the mark.{#vaxis_s71_1}'

    menu:
        'vaxis_s71_r4650{#vaxis_s71_r4650}': # '"The Anarchists, huh? That who you„re watching this place for?"{#vaxis_s71_r4650}'
            # a278 # r4650
            jump vaxis_s70

        'vaxis_s71_r4651{#vaxis_s71_r4651}': # '"It„ll be a LOT less painful for you if you tell me now why the Anarchists want you to spy on this place."{#vaxis_s71_r4651}'
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        'vaxis_s71_r4652{#vaxis_s71_r4652}': # '"Never mind then. What have you seen the Dustmen do?"{#vaxis_s71_r4652}'
            # a280 # r4652
            jump vaxis_s29

        'vaxis_s71_r4653{#vaxis_s71_r4653}': # '"There was something else I wanted to know…"{#vaxis_s71_r4653}'
            # a281 # r4653
            jump vaxis_s43

        'vaxis_s71_r4654{#vaxis_s71_r4654}': # '"Forget it, then. Farewell, *zombie.*"{#vaxis_s71_r4654}'
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    'vaxis_s72{#vaxis_s72}'
    # nr 'The zombie looks disappointed, but he shrugs and begins to fish deeply into his stained tunic. "Beehn quiet, Duhsties beehn quiet, nuthin„ new since lahst rehport." After a few moments, he hands you some items, then grunts. "Heer." Judging by the smell, they must have been hidden so as to avoid turning up if he was searched. "Me leeve in shurt while."{#vaxis_s72_1}'

    menu:
        'vaxis_s72_r4656{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition(): # '"Leave? How?"{#vaxis_s72_r4656}'
            # a283 # r4656
            jump vaxis_s51

        'vaxis_s72_r64532{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition(): # '"Very well. Farewell, Vaxis."{#vaxis_s72_r64532}'
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    'vaxis_s73{#vaxis_s73}'
    # nr 'The zombie grunts. "Portal„s an arch - fizzzt floor, nurthwest ruhm, needs skel-tun finger bone tuh open." He nods. "Guud luhk."{#vaxis_s73_1}'

    menu:
        'vaxis_s73_r4659{#vaxis_s73_r4659}': # '"Uh… all right."{#vaxis_s73_r4659}'
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    'vaxis_s74{#vaxis_s74}'
    # nr 'The zombie„s eyes narrow, and he hisses at you. "Yu TRY n“ put me in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."{#vaxis_s74_1}'

    menu:
        'vaxis_s74_r4661{#vaxis_s74_r4661}': # '"That was your last chance. Prepare to die."{#vaxis_s74_r4661}'
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        'vaxis_s74_r4662{#vaxis_s74_r4662}': # '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie!*"{#vaxis_s74_r4662}'
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    'vaxis_s75{#vaxis_s75}'
    # nr 'He seems frightened for a moment, then studies your build, and a sneer crawls across his face. "YOO try n„ put ME in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."{#vaxis_s75_1}'

    menu:
        'vaxis_s75_r4664{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition(): # '"How about I expose your disguise to the guards?"{#vaxis_s75_r4664}'
            # a288 # r4664
            jump vaxis_s33

        'vaxis_s75_r4665{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition(): # '"How about I expose your disguise to the guards?"{#vaxis_s75_r4665}'
            # a289 # r4665
            jump vaxis_s76

        'vaxis_s75_r4666{#vaxis_s75_r4666}': # '"I„ll risk it. Prepare to die."{#vaxis_s75_r4666}'
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        'vaxis_s75_r4667{#vaxis_s75_r4667}': # '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"{#vaxis_s75_r4667}'
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    'vaxis_s76{#vaxis_s76}'
    # nr 'The zombie„s eyes narrow, and he hisses at you. "Yu spill th“ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Duhstees kill yu. Me escape."{#vaxis_s76_1}'

    menu:
        'vaxis_s76_r4669{#vaxis_s76_r4669}': # '"That was your last chance, corpse. Prepare to die."{#vaxis_s76_r4669}'
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        'vaxis_s76_r4670{#vaxis_s76_r4670}': # '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"{#vaxis_s76_r4670}'
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    'vaxis_s77{#vaxis_s77}'
    # nr 'He shrugs. "Mhust be one „round sumwhere… look in storage roomz on upper floor. Maybe there."{#vaxis_s77_1}'

    menu:
        'vaxis_s77_r64524{#vaxis_s77_r64524}': # '"All right. I had some other questions…"{#vaxis_s77_r64524}'
            # a294 # r64524
            jump vaxis_s43

        'vaxis_s77_r64525{#vaxis_s77_r64525}': # '"Very well. I„ll check upstairs for this crooked finger bone, then head to the first floor, to one of the arches in the northwest room. Got it."{#vaxis_s77_r64525}'
            # a295 # r64525
            jump vaxis_dispose
