init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'The shambling corpse gazes at you with vacant eyes. The number "821" is carved into his forehead, and his lips have been stitched closed. The faint smell of formaldehyde emanates from the body.'

    menu:
        '"So… seen anything interesting going on?"' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"So… seen anything interesting going on?"' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Use your Stories-Bones-Tell ability on the corpse.' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"It was great talking to you. Farewell."':
            # a4 # r458
            jump vaxis_s5

        'Leave the corpse in peace.':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Oddly enough, your ability does not seem to work on this corpse.'

    menu:
        'Poke it in the eye.':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Leave the corpse in peace.':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'The corpse gives a muffled yelp as you jab it in the eye, and its hands shoot up to cover its face. It begins mumbling what you take for obscenities under its breath.'

    menu:
        '"You„re not a zombie! Who are you?"':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Why are you disguised as a corpse?"':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Leave. Quickly.':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'As you turn to leave, the „zombie“ mumbles something… it looks like he„s trying to say something, but it“s difficult with his lips stitched closed. "Hoo YU? Wut yu wunt?"'

    menu:
        '"I„m looking for a way out of here. Can you help me?"' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Who are you?"':
            # a12 # r469
            jump vaxis_s7

        '"Tell me who you are, or I„ll call the guards."':
            # a13 # r470
            jump vaxis_s7

        'Lie: "Why… I was looking for you."' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Sorry to trouble you… whoever you are. Farewell."':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'As you are turning to leave, the zombie makes a low growl in his throat. "Yoo say nuthin to nuh-whun bout ME. Yoo bee kwi-it. Say NUTHIN t„Duhstees." He puts his finger across lips. "Shhhhhh." He then draws the finger across his throat. "Or I gut yuu in yer sleep. You HEER me?"'

    menu:
        '"Did you just THREATEN me? That does it… prepare to die."':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Lie: "I wouldn„t even *think* of telling the Dustmen about you."':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Truth: "I promise I won„t say anything to the Dustmen about you."':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Whatever. You mind your affairs, and I„ll mind mine."':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'As you address the zombie, it blinks in surprise. "Eh? Wut?"'

    menu:
        '"You„re not a zombie! Who are you?"':
            # a21 # r480
            $ vaxisLogic.j64513_s5_r480_action()
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Why are you disguised as a corpse?"':
            # a22 # r481
            $ vaxisLogic.j64513_s5_r481_action()
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Leave. Quickly.':
            # a23 # r482
            $ vaxisLogic.j64513_s5_r482_action()
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr 'The „zombie“ is trying to respond behind stitched lips; he has a peculiar half-frightened, half-angry expression. "Hoo YU? Wut yu wunt?"'

    menu:
        '"I„m looking for a way out of here. Can you help me?"' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Who are you?"':
            # a25 # r485
            jump vaxis_s7

        '"Tell me who you are, or I„ll call the guards."':
            # a26 # r486
            jump vaxis_s7

        'Lie: "Why… I was looking for you."' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Sorry to trouble you… whoever you are. Farewell."':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'The zombie doesn„t seem to have heard you. He looks you up and down for a few moments, then frowns. "Wut yu do heer?" His eyes narrow suspiciously. "Yu spy on Duhstees?"'

    menu:
        '"No. I„m trying to escape."' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"I„m not a spy. I got sealed in here by accident. Can you help me out?"' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Lie: "Yes, I„m spying on the… Dusties."' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Lie: "Yes, I„m spying on the… Dusties."' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Why don„t you tell me what YOU“RE doing here before I call the guards."' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Why don„t you tell me what YOU“RE doing here before I call the guards."' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Look, I„m the one asking the questions here, *zombie.* Tell me what you“re doing here, or I„ll make that disguise a reality."' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Look, I„m the one asking the questions here, *zombie.* Tell me what you“re doing here, or I„ll make that disguise a reality."' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"I must take my leave. Farewell."':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'He studies you more intently. "Yu spy? Yu wit cell?"'

    menu:
        '"Huh?"':
            # a39 # r4671
            jump vaxis_s10

        '"Cell?"':
            # a40 # r1352
            jump vaxis_s10

        'Lie: "Yes… I„ve been looking for you. I“m glad I finally found you."' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Lie: "Yes… but I can„t speak too much about it right now, if you catch my meaning. What“s *your* mission here?"' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Lie: "Yes… but I can„t speak too much about it right now. What are you doing here?"' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"Uh, I don„t have time to talk right now… maybe some other time."':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'He studies you more intently. "Yu spy? Yu wit cell?"'

    menu:
        '"Huh?"':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Cell?"':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Frowns, then hisses at you. "Yu no spy!" He makes a shooing motion. "Git! Git!"'

    menu:
        '"First, you„ll tell me what you“re doing here, or I„ll call the guards."' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"First, you„ll tell me what you“re doing here, or I„ll call the guards."' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Answer my damn questions, or I„ll make that disguise a reality before you get three paces."' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Answer my damn questions, or I„ll make that disguise a reality before you get three paces."' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"All right, all right… I„m leaving."':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'The zombie nods at this, and you think you detect him puffing up a little in pride behind his zombie disguise.'

    menu:
        '"Can you help me escape?"' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"So what are you doing here?"':
            # a53 # r4369
            jump vaxis_s28

        'Lie: "So you„re a spy for the Anarchists? Well, I“m spying on the Dusties, too… but I can„t speak too much about it right now, if you catch my meaning. What“s *your* mission here?"' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Lie: "So you„re a spy for the Anarchists? I“m spying on the Dusties… but I can„t speak too much about it right now. What are you doing here?"' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Uh, I don„t have time to talk right now… maybe some other time."':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'The zombie seems interested. "Yu in trouble? Wutt yu do?"'

    menu:
        '"I woke up on one of the slabs upstairs."':
            # a57 # r4374
            jump vaxis_s13

        '"I got… trapped in here somehow. Can you help me out?"':
            # a58 # r4375
            jump vaxis_s31

        '"Maybe I„ll speak of it another time."':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'The zombie„s looking at you like you“re crazy. "Yu barmee?"'

    menu:
        '"Yes, I am barmee. Very barmee."':
            # a60 # r4378
            jump vaxis_s14

        '"„Barmee“? What„s that?"' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Barmee“? What„s that?"' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"I know it„s hard to believe, but I“m not going to lie to you: I woke up from the dead on one of the slabs upstairs."':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Uh, no… actually, I was trapped in here somehow. Can you help me out?"':
            # a64 # r4382
            jump vaxis_s31

        '"Forget we spoke. I must be taking my leave."':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'He looks at you, then hisses and makes a shooing motion. "Yu barmee! Git away frum me!"'

    menu:
        '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"You„ll answer my damn questions first, or I“ll make that disguise a reality."' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"You„ll answer my damn questions first, or I“ll make that disguise a reality."' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"All right, all right… farewell."':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'The fake zombie is looking at you both suspiciously.'

    menu:
        '"It„s the truth - I woke up on one of the slabs here."':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Uh, sorry. Actually, I was trapped in here somehow. Can you help me out?"':
            # a72 # r4392
            jump vaxis_s31

        '"Never mind. I must take my leave now."':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'He looks at you, then hisses and makes a shooing motion. "Addle-cuve! Idjit! Git awuh frum me, burk! Guh!"'

    menu:
        '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"I„m not going anywhere. Tell me what you“re doing here, or I„ll call the guards."' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"You„ll answer my damn questions first, or I“ll make that disguise a reality."' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"You„ll answer my damn questions first, or I“ll make that disguise a reality."' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"All right, all right… I„m going."':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'He seems frightened for a moment, then studies you and a sneer crawls across his face. "Yu spill th„ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Yu not s“posd be heer. Duhstees kill yu. Me escape."'

    menu:
        '"You won„t escape if I KILL you. Now answer my questions, or I“ll make that disguise a reality."' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"You won„t escape if I KILL you. Now answer my questions, or I“ll make that disguise a reality."' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Burn in hell, then. I„m leaving."':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'The zombie„s eyes narrow, and he hisses at you. "Yu TRY n“ put me in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."'

    menu:
        '"I„ll risk it. Prepare to die."':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'He seems frightened for a moment, then studies your build, and a sneer crawls across his face. "YOO try n„ put ME in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."'

    menu:
        '"I„ll risk it. Prepare to die."':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"What if I expose your disguise to the guards?"' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"What if I expose your disguise to the guards?"' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'The zombie„s eyes narrow, and he hisses at you. "Yu spill th“ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Duhstees kill yu. Me escape."'

    menu:
        '"That was your last chance, corpse. Prepare to die."':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Burn in hell, then. I„m leaving. You better watch yourself *zombie.*"':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'There must be something in your eye that makes the zombie„s expression crumble. "Nuh-nuh-no! Dun“t cull th„ gards!" He looks frightened. "Muh-muh-me spy un Duhstees, say wut I see. Nuh-Nuthin“ more."'

    menu:
        '"Spy? For who?"':
            # a90 # r4416
            jump vaxis_s23

        '"What have you seen the Dustmen do?"':
            # a91 # r4417
            jump vaxis_s29

        '"I had some other questions…"':
            # a92 # r4418
            jump vaxis_s43

        '"That„s all I wanted to know. Farewell, *zombie.*"':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Nuh-nuh-no! Dun„t huurt me!" The fact you outweigh the zombie by several pounds of raw muscle seems to influence his decision, and his expression crumbles. "Dunht huurt me! Muh-muh-me spy un Duhstees, say wut I see. Nuh-Nuthin“ more."'

    menu:
        '"Spy? For who?"':
            # a94 # r4421
            jump vaxis_s23

        '"What have you seen the Dustmen do?"':
            # a95 # r4422
            jump vaxis_s29

        '"I had some other questions…"':
            # a96 # r4423
            jump vaxis_s43

        '"That„s all I wanted to know. Now stay out of my way, *zombie.*"':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'The zombie falls into a frightened silence. He seems unwilling to say any more.'

    menu:
        '"C„mon. Who are you watching this place for?"' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"C„mon. Who are you watching this place for?"' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"It„ll be a LOT less painful for you if you tell me now who you“re spying for."' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"It„ll be a LOT less painful for you if you tell me now who you“re spying for."' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Never mind then. What have you seen the Dustmen do?"':
            # a102 # r4430
            jump vaxis_s29

        '"There was something else I wanted to know…"':
            # a103 # r4431
            jump vaxis_s43

        '"Forget it, then. Farewell, *zombie.*"':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Luukin„ fur me? Why?" He squints at you. "Yu gut muhssage fur me?"'

    menu:
        'Lie: "Yes, I have a message for you."':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Message from who?"':
            # a106 # r4435
            jump vaxis_s27

        '"No, I don„t have a message."':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Hisses angrily. "Then wut yu *want,* burk?!"'

    menu:
        '"I„m looking for a way out of here. Can you help me?"' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"I wanted some information…"':
            # a109 # r4439
            jump vaxis_s43

        '"Tell me what you„re doing here, or I“ll call the guards."' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Tell me what you„re doing here, or I“ll call the guards."' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"I want you to answer my damn questions, or I„ll make that disguise a reality before you get three paces."' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"I want you to answer my damn questions, or I„ll make that disguise a reality before you get three paces."' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Sorry to trouble you… whoever you are. Farewell."':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Wut muhssage?"'

    menu:
        '"You are to tell me your mission."' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Lie: "I have your new orders."' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Lie: "I… have your new orders."' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Sorry, I don„t have a message."':
            # a118 # r4449
            jump vaxis_s27

        '"Never mind. Sorry to trouble you. Farewell."':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'His eyes narrow angrily. "Yu NO muhssagerr. Hoo yu?"'

    menu:
        '"I„m looking for a way out of here. Can you help me?"' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"I wanted some information…"':
            # a121 # r4453
            jump vaxis_s43

        '"Tell me what you„re doing here, or I“ll call the guards."' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Tell me what you„re doing here, or I“ll call the guards."' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"I„m asking the questions here, *zombie.* Tell me who you are, or I“ll make that disguise a reality."' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Sorry to trouble you… whoever you are. Farewell."':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Me spy on Duhstees. Say wut I see. Nuthin„ more."'

    menu:
        '"What have you seen the Dustmen do?"':
            # a127 # r4460
            jump vaxis_s29

        '"I see. There was something else I wanted to ask you…"':
            # a128 # r4461
            jump vaxis_s43

        '"That„s all I wanted to know. Farewell."':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Nuthin„. They do nuthin“. Can„t find nuthin“. Dead, dead, juhst dead people, Duhstees do *nuthin„.*" Eyes narrow in conviction. "Still I watch."'

    menu:
        '"I see. There was something else I wanted to ask you…"':
            # a130 # r4464
            jump vaxis_s43

        '"That„s all I wanted to know. Farewell."':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'He narrows his eyes, like he„s trying to figure you out. "Wut ordrs?"'

    menu:
        '"Tell me your mission."':
            # a132 # r4467
            jump vaxis_s28

        '"I need to find an escape route where I may leave unobserved."':
            # a133 # r4468
            jump vaxis_s49

        '"I am here to relieve you. Give me all the information you„ve gathered, all your possessions, then leave."' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.j64517_s30_r4469_action()
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"I am here to help you in any way you need."':
            # a135 # r4470
            jump vaxis_s35

        '"Your orders will have to wait for another time. I will be back."':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'He is silent for a moment, then nods slightly, as if in understanding. "Why shud I hulp yu?"'

    menu:
        '"Because I need your help."':
            # a137 # r4473
            jump vaxis_s32

        '"Maybe we could help each other out. What do you want in return?"' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Because I won„t *expose* your little disguise… if you help me."' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Because I won„t *expose* your little disguise… if you help me."' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"You look like someone who„d much rather disguise themselves as a corpse than BE one. That reason enough?"' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"You look like someone who„d much rather disguise themselves as a corpse than BE one. That reason enough?"' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Forget we met. I must take my leave. Farewell."':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'The zombie gives a half-sneer. "Everybodee *needs* sumthin„, but nubudy *gives* anything. Yu *give* me sumfin“, *maybee* I help."'

    menu:
        '"What is it you need?"':
            # a144 # r4481
            jump vaxis_s35

        '"How about you help me, and I won„t call the guards?"' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"How about you help me, and I won„t call the guards?"' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"You look like someone who„d much rather be breathing than saying no to me. Now… for the last time: How do I get out of this place?"' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"You look like someone who„d much rather be breathing than saying no to me. Now… for the last time: How do I get out of this place?"' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Not interested. Farewell."':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'He looks you up and down as if wondering if he can take you, stares at your scars, then decides against it. "Hmmph. Yu kin escape through portalz."'

    menu:
        '"Portals?"':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'He seems frightened for a moment, then studies you and a sneer crawls across his face. "Yu spill th„ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Yu not s“posd be heer. Duhstees kill yu. Me escape."'

    menu:
        '"You won„t escape if I KILL you. Now start talking, or I“ll make that disguise a reality."' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"You won„t escape if I KILL you. Now start talking, I“ll make that disguise a reality."' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Burn in hell, then. I„m leaving."':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Uh need you t„git a *key* fur me. Wunt iron key tuh embulmuh“s rum."'

    menu:
        '"You mean this key?"' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"All right. Where is this key?"':
            # a155 # r4495
            jump vaxis_s36

        '"I don„t have time for this. Help me escape, or I“ll call the guards."' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"I don„t have time for this. Help me escape, or I“ll call the guards."' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"I„m not going to go fetch anything for you. Help me escape, or I“ll snap your neck right here and now."' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"I„m not going to go fetch anything for you. Help me escape, or I“ll snap your neck right here and now."' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"No thanks. Maybe some other time."':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"A dusstie chit hazzit." He points at his eyes. "She haz yuhllo eyez…" He then makes a motion with his hands that reminds you of a pair of cutting shears. "Bladezz on fingerzz."'

    menu:
        '"We already crossed paths. Here„s the key."' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"A Dustman woman… with yellow eyes and blades on her fingers? I already met her in the embalming room. Hold on - I„ll be back with the key shortly."' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"A Dustman woman… with yellow eyes and blades on her fingers? All right then. I„ll be back with the key."' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"This Dustman woman sounds really attractive. Are you sure you don„t want me to introduce the two of you?"':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'The zombie blinks. He doesn„t seem to have understood you.'

    menu:
        '"That was a joke, see, you„re sup… forget it, I“ll go find your key."' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"That was a joke, see, you„re sup… forget it, I“ll go find your key."' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'The zombie squints at you. "If yu„re cught, dun“t say nothin„ bout me, or me gut yu in yur sleep."'

    menu:
        '"I„ll get your damned key… but you had best watch your threats, you hear me?"' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"I„ll be back."' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"I„ll get your damned key… but you had best watch your threats, you hear me?"' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"I„ll be back."' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Me gud at duh-guise. Me ulso gut scars. Me wuhr lots of embalming fluid. Me make GUD zumbie." The zombie giggles through stitched lips, then taps his head. "Duhstees stuh-pud."'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"I wait heer fur yu. Get key." The zombie gives you a stomach-churning smile. "Then I help yu."'

    menu:
        '"If I can find it, I„ll bring it back."':
            # a171 # r4515
            jump vaxis_dispose

        '"Forget it, then."':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'The zombie„s eyes widen, then he holds his hand out and snaps his fingers. "Gife it t“me."'

    menu:
        '"Hold a moment. There„s something I want first."':
            # a173 # r4518
            jump vaxis_dispose

        '"Here you go."':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'The zombie„s eyes widen, and he snatches the key from your hand. He turns it over, nodding all the while. "Gud… gud."'

    menu:
        '"Now… how do I get out of here?"' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.j64521_s42_r4521_action()
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Now… there was something I wanted to know…"' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.j64521_s42_r4522_action()
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Wut yu want tuh knuw?"'

    menu:
        '"How can I escape from here?"' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"How can I escape from here?"' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Where was that portal you mentioned again?"' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"Can you disguise me as a zombie?"' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Can you disguise me as a zombie again?"' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"What are you doing here?"' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Do you know someone named Pharod?"' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"I„m missing a journal. Have you seen it?"' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Can you tell me anything about Dhall?"' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Can you tell me anything about Deionarra?"' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Can you tell me anything about Soego?"' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"How did you get to look like that?"' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"How did you get to look like that?"' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"Fuh-AROD?" The zombie frowns briefly in thought. "Me… heer he live in Hive somewhere." He shakes his head. "Not know where." He frowns again. "Dushties vare-ee mad, thay not LIKE Fuh-arod."'

    menu:
        '"Hive?"':
            # a191 # r4538
            jump vaxis_s45

        '"Why don„t the Dustmen like Pharod?"':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"There was something else I wanted to know…"':
            # a193 # r4540
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Slumz ousside this place."'

    menu:
        '"Why don„t the Dustmen like Pharod?"':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"There was something else I wanted to know…"':
            # a196 # r4544
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"He„z a Cullector. Bringz deaderz to Mortuaree, sellz “em to Dustmen. Bringz LOT uf deaderz. Dushties not know where he getz deaderz. Think he„z puttin“ berks in dead-book."'

    menu:
        '"Uh… what?"' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Uh… what?"' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Oh. There was something else I wanted to know…"':
            # a200 # r4549
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Do„ kno. Sum berk peel you?"'

    menu:
        '"Uh… what?"' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Uh… what?"' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Oh. There was something else I wanted to know…"':
            # a204 # r4554
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'The zombie tries to speak, pauses, tries again, then shrugs. Apparently, he can„t explain it any better.'

    menu:
        '"Oh. There was something else I wanted to know…"':
            # a206 # r4557
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'The zombie grunts. "Yu kin escape through portalz." He waves his hands. "Phoof."'

    menu:
        '"Portals? What portals?"':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Portalz…" The zombie waves around the area. "Portalz evereewheer."'

    menu:
        '"Can you show me one of these portals?"' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Can you show me one of these portals?"' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Can you show me one of these portals?"' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Can you show me one of these portals?"' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'The zombie nods. "Yu wunt out, go tuh arch on firzzt fluur, nurthwezzt ruum… Yuh need fungur-bone, shape of crook…" He holds up his index finger and bends it into a crook. "When yuh have key, guh to arch, jump ta sucret cryp and ken escape frum here. Secret escape route." He nods eagerly. "Yuh can REST there."'

    menu:
        '"Crooked finger bone? Where am I going to find one of those?"' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.j64528_s51_r64527_action()
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"I had some other questions…"' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.j64529_s51_r4568_action()
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"An arch on the first floor, northwest room? All right, I„ll go check it out."' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.j64529_s51_r4569_action()
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Lissen! R„member!" The zombie sounds angry. "Arch, firzzzt fluur, nurthwezzt ruum…" He holds up his index finger and bends it. "Yuh need finger bone, bent. Yuh guh ta sucret cryp. Escape route. Yuh ken REST there."'

    menu:
        '"There was something else I wanted to know…"':
            # a216 # r4571
            jump vaxis_s43

        '"Arch, first floor, northwest room, opens with a crooked finger bone? All right, I got it this time."':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Scribe." Shrugs. "Old. Yellow."'

    menu:
        '"There„s nothing more to be said, I suppose. I wanted to know something else…"':
            # a218 # r4574
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Hunh?" Frowns. "Hoo shee?"'

    menu:
        '"Forget it. I wanted to know something else…"':
            # a220 # r4577
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Guide. He at Mortuary frunt door. Wut yu wunt wi„ him?"'

    menu:
        '"What do you know about him?"':
            # a222 # r4580
            $ vaxisLogic.j64530_s55_r4580_action()
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Actz strange, not Duhstie, not Anarchizt, eyez changed…" Shrugs. "Likez ratz. Strange."'

    menu:
        '"Good thing he„s the only strange one around here. There“s something else I wanted to know…"':
            # a224 # r4583
            jump vaxis_s43

        '"Never mind. I may have some questions later. Don„t go anywhere."':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'You see the false zombie. You„re amazed at the man“s disguise… his breathing is so subdued, you can barely see it.'

    menu:
        '"Greetings."' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Greetings."' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Greetings."' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Greetings."' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Leave him alone.':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'The zombie quickly glances around to see if anyone is watching, then turns to face you. "Wut?"'

    menu:
        '"Here„s that embalming room key you wanted."' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Here„s that embalming room key you wanted."' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"Where is that key you mentioned again?"' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"I had some questions for you…"':
            # a234 # r4595
            jump vaxis_s43

        '"Never mind."':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'The zombie glances around to see if anyone is watching, then makes a shooing motion and hisses at you. "Guh „way! Git!"'

    menu:
        '"No. I had some questions for you, first…"':
            # a236 # r4598
            jump vaxis_s43

        '"Never mind then."' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"Never mind then."' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Me gud at duh-guise. Me ulso gut scars. Me wuhr lots of embalming fluid. Me make GUD zumbie." The zombie giggles through stitched lips, then taps his head. "Duhstees stuh-pud."'

    menu:
        '"Yeah, they„re the stupid ones all right."':
            # a239 # r4602
            jump vaxis_s61

        '"Doesn„t that hurt?"':
            # a240 # r4603
            jump vaxis_s62

        '"That disguise is pretty good. Say… can you disguise me as a zombie, too?"' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"There was something else I wanted to know…"':
            # a242 # r4605
            jump vaxis_s43

        '"I have to leave. Farewell."':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'The sarcasm is evidently lost on the zombie, who nods eagerly. "Stuh-pud Duhstees. Me make GUD zumbie."'

    menu:
        '"Doesn„t that hurt?"':
            # a244 # r4608
            jump vaxis_s62

        '"That disguise is pretty good. Can you disguise me as a zombie?"' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"There was something else I wanted to know…"' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"I have to leave. Farewell."' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"There was something else I wanted to know…"' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"I have to leave. Farewell."' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'He looks at your scars. "I ask yu same question. Me, it not hurt much." Claps his chest. "Me TUFF."'

    menu:
        '"That disguise is pretty good. Can you disguise me as a zombie?"' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"There was something else I wanted to know…"' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"I have to leave. Farewell."' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"There was something else I wanted to know…"' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"I have to leave. Farewell."' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'He looks you up and down for a few moments, mumbling to himself, then nods. "U-huh. Me need jar uf embalming flew-id." Points at the scars on your chest. "N„ some needle and thread."'

    menu:
        '"Here you go."' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"I„ll think about it. I had some other questions…"':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"No thanks. Maybe some other time… farewell."':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"Some embalming fluid and some thread? I„ll go see if I can find some."':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'He looks you up and down with a strange expression. "U be GUD zumbie. I cud make u a zumbie? GUD dis-gize."'

    menu:
        '"Thanks anyway. I had some other questions for you…"':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Sure. Can you do it?"':
            # a260 # r4626
            jump vaxis_s63

        '"Why not? I already feel like one of the walking dead."':
            # a261 # r4627
            jump vaxis_s63

        '"No… no… that„s all right. Farewell."':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'The zombie takes the items from you, then sets to work…'

    menu:
        'Try to hold still.' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Try to hold still.' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Try to hold still.' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Try to hold still.' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'The zombie liberally applies the embalming fluid to your body, then stitches up several of your scars. Working from your feet upwards, he stitches up your scars, then finishes off the disguise by stitching up your lips.'

    menu:
        '"Mmm-hmmph-mmm… Fanks."' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Fanks."' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Fanks."' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'The zombie holds up his hand. "Curful! Talk pulls stitches out, ruin diz-gize. Zumbie no talk. Yoo got to talk? Talk slow, curful."  ^NNOTE: Take heed that no one expects zombies to talk. If you speak to someone as a zombie, you run the risk of exposing your disguise.^-'

    menu:
        '"Mmph… mmm. I… understand."':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'The zombie frowns. "Diz-gize wun„t last long… um-balming fluid dry up, stitchez fall out." He shrugs. "Prob-lee not last ousside Mortuaree. Uhnd no running! Yoo run, yoo ruin whole diz-gize."  ^NNOTE: Equipping weapons and/or running will instantly nullify your zombie disguise. If you find a new weapon, hold off on equipping it until you no longer wish to be disguised. If you have Always Run on, be sure to switch it off if you want to maintain the disguise when you finish speaking to Vaxis.^-'

    menu:
        'Nod again, leave.':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr 'The „zombie“ frowns. "Yu look familer. Me see yoo beefor?"'

    menu:
        '"Maybe. Where have you seen me?"':
            # a272 # r4642
            jump vaxis_dispose

        'X.':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'To your surprise, the zombie turns away from you… he is starting to glance around fearfully.'

    menu:
        '"You won„t talk? Then get ready to start screaming."':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Never mind then. What have you seen the Dustmen do?"':
            # a275 # r4646
            jump vaxis_s29

        '"There was something else I wanted to know…"':
            # a276 # r4647
            jump vaxis_s43

        '"Forget it, then. Farewell, *zombie.*"':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'The zombie is watching you both fearfully. He is still silent… but something in his expression tells you Morte„s guess was right on the mark.'

    menu:
        '"The Anarchists, huh? That who you„re watching this place for?"':
            # a278 # r4650
            jump vaxis_s70

        '"It„ll be a LOT less painful for you if you tell me now why the Anarchists want you to spy on this place."':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Never mind then. What have you seen the Dustmen do?"':
            # a280 # r4652
            jump vaxis_s29

        '"There was something else I wanted to know…"':
            # a281 # r4653
            jump vaxis_s43

        '"Forget it, then. Farewell, *zombie.*"':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'The zombie looks disappointed, but he shrugs and begins to fish deeply into his stained tunic. "Beehn quiet, Duhsties beehn quiet, nuthin„ new since lahst rehport." After a few moments, he hands you some items, then grunts. "Heer." Judging by the smell, they must have been hidden so as to avoid turning up if he was searched. "Me leeve in shurt while."'

    menu:
        '"Leave? How?"' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Very well. Farewell, Vaxis."' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'The zombie grunts. "Portal„s an arch - fizzzt floor, nurthwest ruhm, needs skel-tun finger bone tuh open." He nods. "Guud luhk."'

    menu:
        '"Uh… all right."':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'The zombie„s eyes narrow, and he hisses at you. "Yu TRY n“ put me in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."'

    menu:
        '"That was your last chance. Prepare to die."':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie!*"':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'He seems frightened for a moment, then studies your build, and a sneer crawls across his face. "YOO try n„ put ME in dead-book? I have frens hid heer, yu got *nubudy.* Yu tuch me, my frends kill YU."'

    menu:
        '"How about I expose your disguise to the guards?"' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"How about I expose your disguise to the guards?"' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"I„ll risk it. Prepare to die."':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'The zombie„s eyes narrow, and he hisses at you. "Yu spill th“ dark on me, me spill dark on *yu.* I have friends hid heer, yu got *nubudy.* Duhstees kill yu. Me escape."'

    menu:
        '"That was your last chance, corpse. Prepare to die."':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Burn in hell, then. I„m leaving. You better watch yourself… *zombie.*"':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'He shrugs. "Mhust be one „round sumwhere… look in storage roomz on upper floor. Maybe there."'

    menu:
        '"All right. I had some other questions…"':
            # a294 # r64524
            jump vaxis_s43

        '"Very well. I„ll check upstairs for this crooked finger bone, then head to the first floor, to one of the arches in the northwest room. Got it."':
            # a295 # r64525
            jump vaxis_dispose
