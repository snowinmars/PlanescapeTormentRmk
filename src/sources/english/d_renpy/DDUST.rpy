init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'The Dustman does not appear to notice you. He must mistake you for one of the cadaverous workers.'

    menu:
        '"Greetings."':
            # a0 # r302
            jump dust_s1

        '"Who are you?"':
            # a1 # r303
            jump dust_s1

        '"What is this place?"':
            # a2 # r304
            jump dust_s1

        '"I had some questions…"':
            # a3 # r305
            jump dust_s1

        'Leave him in peace.':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr 'The Dustman jumps, then snaps his head around to stare at you. He looks shocked - your disguise must be quite good.'

    menu:
        'Take advantage of his surprise and snap his neck before he can call out.':
            # a5 # r310
            jump dust_s41

        '"I had some questions…"':
            # a6 # r312
            jump dust_s2

        'Leave. Quickly.':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'The Dustman takes a step back, then claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.'

    menu:
        '"Greetings."':
            # a9 # r315
            jump dust_s4

        '"Who are you?"':
            # a10 # r316
            jump dust_s4

        '"What is this place?"':
            # a11 # r317
            jump dust_s4

        '"I had some questions…"':
            # a12 # r319
            jump dust_s4

        'Leave him in peace.':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'The Dustman slowly lifts his head and turns toward you. "Are you lost?"'

    menu:
        '"Yes."':
            # a14 # r322
            jump dust_s5

        '"No."':
            # a15 # r323
            jump dust_s6

        '"No, I„m not lost. I had some questions…"':
            # a16 # r324
            jump dust_s6

        '"Farewell."':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"I will summon a guard to direct you out. Hold a moment."'

    menu:
        'Snap his neck before he can call out.' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        'Snap his neck before he can call out.' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        'Leave. Quickly.':
            # a20 # r329
            jump dust_s2

        'Wait.':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"If you are not lost, what is your business here?"'

    menu:
        '"That is none of your concern."':
            # a22 # r331
            jump dust_s7

        '"I awoke on one of the slabs in your preparation room."':
            # a23 # r332
            jump dust_s8

        '"I„m here to see someone."':
            # a24 # r333
            jump dust_s9

        '"I was here for an interment, but there seems to have been a mistake."' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        'Leave. Quickly.':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"I„m afraid that it is my concern. Mayhap the guards can loosen your tongue." The Dustman takes a step back; he looks like he is about to summon the guards.'

    menu:
        'Snap his neck before he can call out.' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        'Snap his neck before he can call out.' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"Summon them, then. I„d like to meet them."':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"Do you speak in jest? Perhaps you would like to share it with the guards." The Dustman takes a step back; he looks like he is about to summon the guards.'

    menu:
        'Snap his neck before he can call out.' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        'Snap his neck before he can call out.' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"Summon them, then. I„d like to meet them."':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"Who are you here to see?"'

    menu:
        '"It is none of your concern."':
            # a33 # r3922
            jump dust_s7

        '"I am here to see Dhall."' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"I am here to see Dhall."' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"I am here to see Deionarra."' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"I am here to see Deionarra."' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"I am here to see Soego."' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"I am here to see Soego."' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        'Lie: "Uh… Adahn. Does he still work here, or…?"' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Lie: "Uh… Adahn. Does he still work here, or…?"' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"Uh, no one. I misspoke."':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"Dhall is in the receiving room on this floor. I must warn you… Dhall is quite busy with his duties and is not in the best of health. Unless you have pressing business, I would not disturb him."'

    menu:
        '"Very well. Thanks for the information."':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"Dhall is most likely in the receiving room on the second floor. He is quite busy and not in the best of health. Unless you have pressing business, I would not disturb him."'

    menu:
        '"Very well. Thanks for the information."':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"Deionarra? I know there is a woman interred in the memorial hall on the first floor. Could that be she?"'

    menu:
        '"Most likely. Thank you."':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"Deionarra? I know there is a woman interred in the northwest memorial hall. Could that be she?"'

    menu:
        '"Most likely. Thank you."':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"I believe Soego is by the front gate on the first floor. He is acting as a guide during the anti-peak hours."'

    menu:
        '"Very well. Thank you."':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"I believe Soego is by the front gate. He is acting as a guide during the anti-peak hours."'

    menu:
        '"Very well. Thank you."':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"Who was being interred? Perhaps the services are taking place somewhere else in the Mortuary."'

    menu:
        '"You misunderstand… the mistaken interment was ME."':
            # a49 # r359
            jump dust_s8

        '"That could be. Where are these other services taking place?"':
            # a50 # r360
            jump dust_s17

        '"Can you show me the way out?"':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"Several interment chambers line the perimeter of the Mortuary. They follow the curve of the wall on the first and second floors. Do you know the name of the deceased?"'

    menu:
        '"No."':
            # a52 # r363
            jump dust_s18

        '"Yes."':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"Then you should check with one of the guides at the front gate. They can assist you."'

    menu:
        '"Very well. Thank you."':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr 'The Dustman waits.'

    menu:
        '"Pardon… I misspoke. I don„t know the name of the deceased."':
            # a55 # r369
            jump dust_s20

        '"The name is Deionarra."' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        'Lie: "The name is… uh, Adahn."' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'Lie: "The name is… uh, Adahn."' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        'Lean in as if to whisper something to him, then snap his neck.' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        'Lean in as if to whisper something to him, then snap his neck.' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        'Run for it.':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"I see. Now, what is your business here?"'

    menu:
        '"None of your concern."':
            # a62 # r375
            jump dust_s7

        '"I woke up on one of the slabs in your preparation room."':
            # a63 # r376
            jump dust_s8

        '"I„m here to see someone."':
            # a64 # r377
            jump dust_s9

        '"I was here for an interment, but there seems to have been a mistake."' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        'Run for it.':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"That name is not familiar to me. Check with one of the guides at the front gate… they may be able to direct you better than I."'

    menu:
        '"Very well. I will do that. Farewell."':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.'

    menu:
        '"Greetings."':
            # a68 # r295
            jump dust_s23

        'Leave him in peace.':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr 'He slowly turns, and his eyes flicker to your robes. "Greetings, fellow initiate."'

    menu:
        '"Who are you?"':
            # a70 # r383
            jump dust_s24

        '"What is this place?"':
            # a71 # r384
            jump dust_s25

        '"I had some questions…"':
            # a72 # r391
            jump dust_s26

        'Leave him in peace.':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"That is as much my question as yours. Your face is unknown to me. Who are you?"'

    menu:
        'Lie: "The name is… uh, Adahn."' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'Lie: "The name is… uh, Adahn."' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"My name is not your concern. I must take my leave. Farewell."' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"My name is not your concern. I must take my leave. Farewell."' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"This is the Mortuary…" The Dustman looks at you for a moment, as if digesting what you„ve just said. "What did you say your name was again?"'

    menu:
        'Lie: "The name is… uh, Adahn."' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'Lie: "The name is… uh, Adahn."' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"My name is not your concern. I must take my leave. Farewell."' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"My name is not your concern. I must take my leave. Farewell."' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'The Dustman waits patiently for you to continue.'

    menu:
        '"Can you direct me out of here?"':
            # a82 # r401
            jump dust_s27

        '"Do you know someone named Pharod?"':
            # a83 # r402
            jump dust_s28

        '"I„m missing a journal. Have you seen it?"':
            # a84 # r403
            jump dust_s39

        '"Never mind. Sorry to trouble you."':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"You may simply leave by the front gate. It is on the first floor."'

    menu:
        '"I had some other questions…"':
            # a86 # r406
            jump dust_s26

        '"Thank you. Farewell."':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"That name…" The Dustman pauses for a moment. "That name *sounds* familiar… I seem to recall a Collector by that name. Dhall the Scrivener might know of him."'

    menu:
        '"Collector?"':
            # a88 # r409
            jump dust_s29

        '"Dhall?"':
            # a89 # r410
            jump dust_s30

        '"I had some other questions…"':
            # a90 # r411
            jump dust_s26

        '"Thank you for your time. Farewell."':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"Collectors… they gather those who have died on the streets of Sigil and bring them to the Mortuary…" The Dustman pauses, then frowns. "You are not from around here. Who are you?"'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"I„m… new here. I“m… trying to get my bearings."' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"Dhall is one of the most revered of our faction. I can think of none who have meditated more on the nature of the True Death nor one more deserving of it than he. He has much wisdom to impart. If you do not know him, I suggest you speak to him at your earliest opportunity. He will not linger much longer in the shadow of this existence."'

    menu:
        '"*He will not linger long in the shadow of this existence?*"':
            # a96 # r415
            jump dust_s31

        '"Where can I find Dhall?"' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"Where can I find Dhall?"' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"I had some other questions…"':
            # a99 # r418
            jump dust_s26

        '"Thank you for the information. I will speak to him."':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr 'Nods. "Dhall is ill. He is old, even by githzerai standards. Death will no doubt follow the wasting sickness he has contracted. He is fortunate, indeed."'

    menu:
        '"Githzerai standards?"':
            # a101 # r420
            jump dust_s34

        '"What is a *githzerai?*"':
            # a102 # r421
            jump dust_s35

        '"Fortunate?"':
            # a103 # r422
            jump dust_s36

        '"I see. I had some other questions…"':
            # a104 # r423
            jump dust_s26

        '"Thank you for your time. I must take my leave."':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"Dhall is in the receiving room in the northwest corner of this floor. I must warn you… Dhall is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."'

    menu:
        '"Is Dhall ill?"':
            # a106 # r428
            jump dust_s31

        '"Thank you for your time. I must take my leave. Farewell."':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"Dhall is most likely in the receiving room on the second floor. I would not take too much of his time, as he is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."'

    menu:
        '"Is Dhall ill?"':
            # a108 # r430
            jump dust_s31

        '"Thanks for your time. I must take my leave of you. Farewell."':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"Yes, the githzerai have a much longer lifespan than humans."'

    menu:
        '"What is a *githzerai?*"':
            # a110 # r433
            jump dust_s35

        '"How is Dhall„s death fortunate? Is he not well-liked?"':
            # a111 # r437
            jump dust_s36

        '"Oh. I had some other questions…"':
            # a112 # r438
            jump dust_s26

        '"Thank you for your time. Farewell."':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"The githzerai are…" The Dustman pauses, then frowns, staring at you intently. "You are not from around here. Who are you?"'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"I„m… new here. I“m… trying to get my bearings."' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"He is fortunate in that he will achieve the True Death. No longer must he dwell within the shadow of this existence."'

    menu:
        '"And… that„s a good thing?"':
            # a118 # r441
            jump dust_s37

        '"I see. Very fortunate, indeed. I had some other questions…"':
            # a119 # r442
            jump dust_s26

        '"I see. Well, I must take my leave of you. Farewell."':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr 'The Dustman nods. "Yes." He frowns, then studies you intently. "You are not from around here. Who are you?"'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"I„m… new here. I“m… trying to get my bearings."' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"You are not one of us, are you? What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? Guards! Guards!"'

    menu:
        '"Dammit!"':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"Shhhh! I can„t answer you over all that shouting!"' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"Shhhh! I can„t answer you over all that shouting!"' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"A journal? I have not seen one."'

    menu:
        '"I had some other questions…"':
            # a128 # r451
            jump dust_s26

        '"I must take my leave. Farewell."':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.'

    menu:
        '"Greetings."' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"Greetings."' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"Greetings."' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"Greetings."' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        'Leave him in peace.':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Before the Dustman can utter a word, your hands clamp onto his temples, and you twist his head sharply to the left.'

    menu:
        '"Can„t have you alerting your friends…"':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr 'There is a *crack,* and the Dustman falls limp in your arms.'

    menu:
        '"Better you than me, Dustie."' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"Better you than me, Dustie."' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr 'To your surprise, the act seemed instinctual, as if you had done it many times before… with this thought comes the stirring of a memory, but it is not strong enough to surface.'

    menu:
        'Leave the body, continue on.':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'You are not fast enough, and the Dustman dodges as you lunge for him. Taking a step back, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr 'As you lean in to „whisper“ to him, the Dustman leans in as well. As he comes within arm„s reach, your hands clamp onto his temples, and you twist his head sharply to the left.'

    menu:
        '"Can„t have you alerting your friends…"':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'The Dustman seems suspicious. He looks like he„s about to say something, then shakes his head slightly and returns to his duties.'

    menu:
        'Walk away.':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'The Dustman studies you carefully. "You are not one of us. What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? This seems to be a matter for the guards…"'

    menu:
        'Snap his neck before he can call out.' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        'Snap his neck before he can call out.' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"No, no… it„s not, uh… I mean, I“m not a spy… you see, I woke up on one of the slabs… and…"':
            # a144 # r3916
            jump dust_s2

        'Leave. Quickly.':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'The Dustman nods, then returns to his duties.'

    menu:
        'Walk away.':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr 'The Dustman frowns. "That name is unfamiliar to me."'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"I„m… new here. I“m… trying to learn the routine."' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr 'The Dustman„s frown remains, but he nods slightly. "Very well. How may I be of service to you, initiate?"'

    menu:
        '"I had some questions…"':
            # a151 # r3902
            jump dust_s26

        '"Nothing this day. Farewell."':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'The Dustman regards you with a stony gaze. "Are you lost?"'

    menu:
        '"No, I am a member of the faction. I am just touring the Mortuary."' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"Yes."' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"No."' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"No, I„m not lost. I had some questions…"' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"Farewell."' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr 'The Dustman stares at you for a moment, then nods. "Very well. If you need assistance, let me know."'

    menu:
        '"I will do so. Farewell."':
            # a158 # r66682
            jump dust_dispose
