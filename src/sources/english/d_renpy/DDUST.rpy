init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'The Dustman does not appear to notice you. He must mistake you for one of the cadaverous workers.{#dust_s0_}'

    menu:
        '"Greetings."{#dust_s0_r302}':
            # a0 # r302
            jump dust_s1

        '"Who are you?"{#dust_s0_r303}':
            # a1 # r303
            jump dust_s1

        '"What is this place?"{#dust_s0_r304}':
            # a2 # r304
            jump dust_s1

        '"I had some questions…"{#dust_s0_r305}':
            # a3 # r305
            jump dust_s1

        'Leave him in peace.{#dust_s0_r306}':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr 'The Dustman jumps, then snaps his head around to stare at you. He looks shocked - your disguise must be quite good.{#dust_s1_}'

    menu:
        'Take advantage of his surprise and snap his neck before he can call out.{#dust_s1_r310}':
            # a5 # r310
            jump dust_s41

        '"I had some questions…"{#dust_s1_r312}':
            # a6 # r312
            jump dust_s2

        'Leave. Quickly.{#dust_s1_r1332}':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'The Dustman takes a step back, then claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#dust_s2_}'

    menu:
        '"All right then…"{#dust_s2_r313}':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.{#dust_s3_}'

    menu:
        '"Greetings."{#dust_s3_r315}':
            # a9 # r315
            jump dust_s4

        '"Who are you?"{#dust_s3_r316}':
            # a10 # r316
            jump dust_s4

        '"What is this place?"{#dust_s3_r317}':
            # a11 # r317
            jump dust_s4

        '"I had some questions…"{#dust_s3_r319}':
            # a12 # r319
            jump dust_s4

        'Leave him in peace.{#dust_s3_r382}':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'The Dustman slowly lifts his head and turns toward you. "Are you lost?"{#dust_s4_}'

    menu:
        '"Yes."{#dust_s4_r322}':
            # a14 # r322
            jump dust_s5

        '"No."{#dust_s4_r323}':
            # a15 # r323
            jump dust_s6

        '"No, I„m not lost. I had some questions…"{#dust_s4_r324}':
            # a16 # r324
            jump dust_s6

        '"Farewell."{#dust_s4_r325}':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"I will summon a guard to direct you out. Hold a moment."{#dust_s5_}'

    menu:
        'Snap his neck before he can call out.{#dust_s5_r327}' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        'Snap his neck before he can call out.{#dust_s5_r328}' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        'Leave. Quickly.{#dust_s5_r329}':
            # a20 # r329
            jump dust_s2

        'Wait.{#dust_s5_r1333}':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"If you are not lost, what is your business here?"{#dust_s6_}'

    menu:
        '"That is none of your concern."{#dust_s6_r331}':
            # a22 # r331
            jump dust_s7

        '"I awoke on one of the slabs in your preparation room."{#dust_s6_r332}':
            # a23 # r332
            jump dust_s8

        '"I„m here to see someone."{#dust_s6_r333}':
            # a24 # r333
            jump dust_s9

        '"I was here for an interment, but there seems to have been a mistake."{#dust_s6_r334}' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        'Leave. Quickly.{#dust_s6_r337}':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"I„m afraid that it is my concern. Mayhap the guards can loosen your tongue." The Dustman takes a step back; he looks like he is about to summon the guards.{#dust_s7_}'

    menu:
        'Snap his neck before he can call out.{#dust_s7_r344}' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        'Snap his neck before he can call out.{#dust_s7_r3887}' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"Summon them, then. I„d like to meet them."{#dust_s7_r3888}':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"Do you speak in jest? Perhaps you would like to share it with the guards." The Dustman takes a step back; he looks like he is about to summon the guards.{#dust_s8_}'

    menu:
        'Snap his neck before he can call out.{#dust_s8_r358}' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        'Snap his neck before he can call out.{#dust_s8_r3885}' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"Summon them, then. I„d like to meet them."{#dust_s8_r3886}':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"Who are you here to see?"{#dust_s9_}'

    menu:
        '"It is none of your concern."{#dust_s9_r3922}':
            # a33 # r3922
            jump dust_s7

        '"I am here to see Dhall."{#dust_s9_r342}' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"I am here to see Dhall."{#dust_s9_r343}' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"I am here to see Deionarra."{#dust_s9_r33183}' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"I am here to see Deionarra."{#dust_s9_r33185}' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"I am here to see Soego."{#dust_s9_r33186}' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"I am here to see Soego."{#dust_s9_r33187}' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        'Lie: "Uh… Adahn. Does he still work here, or…?"{#dust_s9_r33189}' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Lie: "Uh… Adahn. Does he still work here, or…?"{#dust_s9_r33190}' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"Uh, no one. I misspoke."{#dust_s9_r33191}':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"Dhall is in the receiving room on this floor. I must warn you… Dhall is quite busy with his duties and is not in the best of health. Unless you have pressing business, I would not disturb him."{#dust_s10_}'

    menu:
        '"Very well. Thanks for the information."{#dust_s10_r347}':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"Dhall is most likely in the receiving room on the second floor. He is quite busy and not in the best of health. Unless you have pressing business, I would not disturb him."{#dust_s11_}'

    menu:
        '"Very well. Thanks for the information."{#dust_s11_r348}':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"Deionarra? I know there is a woman interred in the memorial hall on the first floor. Could that be she?"{#dust_s12_}'

    menu:
        '"Most likely. Thank you."{#dust_s12_r352}':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"Deionarra? I know there is a woman interred in the northwest memorial hall. Could that be she?"{#dust_s13_}'

    menu:
        '"Most likely. Thank you."{#dust_s13_r353}':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"I believe Soego is by the front gate on the first floor. He is acting as a guide during the anti-peak hours."{#dust_s14_}'

    menu:
        '"Very well. Thank you."{#dust_s14_r354}':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"I believe Soego is by the front gate. He is acting as a guide during the anti-peak hours."{#dust_s15_}'

    menu:
        '"Very well. Thank you."{#dust_s15_r356}':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"Who was being interred? Perhaps the services are taking place somewhere else in the Mortuary."{#dust_s16_}'

    menu:
        '"You misunderstand… the mistaken interment was ME."{#dust_s16_r359}':
            # a49 # r359
            jump dust_s8

        '"That could be. Where are these other services taking place?"{#dust_s16_r360}':
            # a50 # r360
            jump dust_s17

        '"Can you show me the way out?"{#dust_s16_r361}':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"Several interment chambers line the perimeter of the Mortuary. They follow the curve of the wall on the first and second floors. Do you know the name of the deceased?"{#dust_s17_}'

    menu:
        '"No."{#dust_s17_r363}':
            # a52 # r363
            jump dust_s18

        '"Yes."{#dust_s17_r364}':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"Then you should check with one of the guides at the front gate. They can assist you."{#dust_s18_}'

    menu:
        '"Very well. Thank you."{#dust_s18_r366}':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr 'The Dustman waits.{#dust_s19_}'

    menu:
        '"Pardon… I misspoke. I don„t know the name of the deceased."{#dust_s19_r369}':
            # a55 # r369
            jump dust_s20

        '"The name is Deionarra."{#dust_s19_r370}' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        'Lie: "The name is… uh, Adahn."{#dust_s19_r371}' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'Lie: "The name is… uh, Adahn."{#dust_s19_r372}' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        'Lean in as if to whisper something to him, then snap his neck.{#dust_s19_r373}' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        'Lean in as if to whisper something to him, then snap his neck.{#dust_s19_r1335}' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        'Run for it.{#dust_s19_r1336}':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"I see. Now, what is your business here?"{#dust_s20_}'

    menu:
        '"None of your concern."{#dust_s20_r375}':
            # a62 # r375
            jump dust_s7

        '"I woke up on one of the slabs in your preparation room."{#dust_s20_r376}':
            # a63 # r376
            jump dust_s8

        '"I„m here to see someone."{#dust_s20_r377}':
            # a64 # r377
            jump dust_s9

        '"I was here for an interment, but there seems to have been a mistake."{#dust_s20_r378}' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        'Run for it.{#dust_s20_r379}':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"That name is not familiar to me. Check with one of the guides at the front gate… they may be able to direct you better than I."{#dust_s21_}'

    menu:
        '"Very well. I will do that. Farewell."{#dust_s21_r380}':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.{#dust_s22_}'

    menu:
        '"Greetings."{#dust_s22_r295}':
            # a68 # r295
            jump dust_s23

        'Leave him in peace.{#dust_s22_r297}':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr 'He slowly turns, and his eyes flicker to your robes. "Greetings, fellow initiate."{#dust_s23_}'

    menu:
        '"Who are you?"{#dust_s23_r383}':
            # a70 # r383
            jump dust_s24

        '"What is this place?"{#dust_s23_r384}':
            # a71 # r384
            jump dust_s25

        '"I had some questions…"{#dust_s23_r391}':
            # a72 # r391
            jump dust_s26

        'Leave him in peace.{#dust_s23_r392}':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"That is as much my question as yours. Your face is unknown to me. Who are you?"{#dust_s24_}'

    menu:
        'Lie: "The name is… uh, Adahn."{#dust_s24_r450}' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'Lie: "The name is… uh, Adahn."{#dust_s24_r1337}' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"My name is not your concern. I must take my leave. Farewell."{#dust_s24_r3904}' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"My name is not your concern. I must take my leave. Farewell."{#dust_s24_r3905}' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"This is the Mortuary…" The Dustman looks at you for a moment, as if digesting what you„ve just said. "What did you say your name was again?"{#dust_s25_}'

    menu:
        'Lie: "The name is… uh, Adahn."{#dust_s25_r399}' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'Lie: "The name is… uh, Adahn."{#dust_s25_r3906}' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"My name is not your concern. I must take my leave. Farewell."{#dust_s25_r3907}' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"My name is not your concern. I must take my leave. Farewell."{#dust_s25_r3908}' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'The Dustman waits patiently for you to continue.{#dust_s26_}'

    menu:
        '"Can you direct me out of here?"{#dust_s26_r401}':
            # a82 # r401
            jump dust_s27

        '"Do you know someone named Pharod?"{#dust_s26_r402}':
            # a83 # r402
            jump dust_s28

        '"I„m missing a journal. Have you seen it?"{#dust_s26_r403}':
            # a84 # r403
            jump dust_s39

        '"Never mind. Sorry to trouble you."{#dust_s26_r404}':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"You may simply leave by the front gate. It is on the first floor."{#dust_s27_}'

    menu:
        '"I had some other questions…"{#dust_s27_r406}':
            # a86 # r406
            jump dust_s26

        '"Thank you. Farewell."{#dust_s27_r407}':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"That name…" The Dustman pauses for a moment. "That name *sounds* familiar… I seem to recall a Collector by that name. Dhall the Scrivener might know of him."{#dust_s28_}'

    menu:
        '"Collector?"{#dust_s28_r409}':
            # a88 # r409
            jump dust_s29

        '"Dhall?"{#dust_s28_r410}':
            # a89 # r410
            jump dust_s30

        '"I had some other questions…"{#dust_s28_r411}':
            # a90 # r411
            jump dust_s26

        '"Thank you for your time. Farewell."{#dust_s28_r425}':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"Collectors… they gather those who have died on the streets of Sigil and bring them to the Mortuary…" The Dustman pauses, then frowns. "You are not from around here. Who are you?"{#dust_s29_}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dust_s29_r413}' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"I„m… new here. I“m… trying to get my bearings."{#dust_s29_r3918}' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s29_r3919}' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s29_r3920}' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"Dhall is one of the most revered of our faction. I can think of none who have meditated more on the nature of the True Death nor one more deserving of it than he. He has much wisdom to impart. If you do not know him, I suggest you speak to him at your earliest opportunity. He will not linger much longer in the shadow of this existence."{#dust_s30_}'

    menu:
        '"*He will not linger long in the shadow of this existence?*"{#dust_s30_r415}':
            # a96 # r415
            jump dust_s31

        '"Where can I find Dhall?"{#dust_s30_r416}' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"Where can I find Dhall?"{#dust_s30_r417}' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"I had some other questions…"{#dust_s30_r418}':
            # a99 # r418
            jump dust_s26

        '"Thank you for the information. I will speak to him."{#dust_s30_r33204}':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr 'Nods. "Dhall is ill. He is old, even by githzerai standards. Death will no doubt follow the wasting sickness he has contracted. He is fortunate, indeed."{#dust_s31_}'

    menu:
        '"Githzerai standards?"{#dust_s31_r420}':
            # a101 # r420
            jump dust_s34

        '"What is a *githzerai?*"{#dust_s31_r421}':
            # a102 # r421
            jump dust_s35

        '"Fortunate?"{#dust_s31_r422}':
            # a103 # r422
            jump dust_s36

        '"I see. I had some other questions…"{#dust_s31_r423}':
            # a104 # r423
            jump dust_s26

        '"Thank you for your time. I must take my leave."{#dust_s31_r424}':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"Dhall is in the receiving room in the northwest corner of this floor. I must warn you… Dhall is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."{#dust_s32_}'

    menu:
        '"Is Dhall ill?"{#dust_s32_r428}':
            # a106 # r428
            jump dust_s31

        '"Thank you for your time. I must take my leave. Farewell."{#dust_s32_r429}':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"Dhall is most likely in the receiving room on the second floor. I would not take too much of his time, as he is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."{#dust_s33_}'

    menu:
        '"Is Dhall ill?"{#dust_s33_r430}':
            # a108 # r430
            jump dust_s31

        '"Thanks for your time. I must take my leave of you. Farewell."{#dust_s33_r431}':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"Yes, the githzerai have a much longer lifespan than humans."{#dust_s34_}'

    menu:
        '"What is a *githzerai?*"{#dust_s34_r433}':
            # a110 # r433
            jump dust_s35

        '"How is Dhall„s death fortunate? Is he not well-liked?"{#dust_s34_r437}':
            # a111 # r437
            jump dust_s36

        '"Oh. I had some other questions…"{#dust_s34_r438}':
            # a112 # r438
            jump dust_s26

        '"Thank you for your time. Farewell."{#dust_s34_r440}':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"The githzerai are…" The Dustman pauses, then frowns, staring at you intently. "You are not from around here. Who are you?"{#dust_s35_}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dust_s35_r436}' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"I„m… new here. I“m… trying to get my bearings."{#dust_s35_r3909}' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s35_r3910}' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s35_r3911}' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"He is fortunate in that he will achieve the True Death. No longer must he dwell within the shadow of this existence."{#dust_s36_}'

    menu:
        '"And… that„s a good thing?"{#dust_s36_r441}':
            # a118 # r441
            jump dust_s37

        '"I see. Very fortunate, indeed. I had some other questions…"{#dust_s36_r442}':
            # a119 # r442
            jump dust_s26

        '"I see. Well, I must take my leave of you. Farewell."{#dust_s36_r443}':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr 'The Dustman nods. "Yes." He frowns, then studies you intently. "You are not from around here. Who are you?"{#dust_s37_}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dust_s37_r445}' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"I„m… new here. I“m… trying to get my bearings."{#dust_s37_r446}' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s37_r3912}' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s37_r3913}' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"You are not one of us, are you? What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? Guards! Guards!"{#dust_s38_}'

    menu:
        '"Dammit!"{#dust_s38_r448}':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"Shhhh! I can„t answer you over all that shouting!"{#dust_s38_r449}' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"Shhhh! I can„t answer you over all that shouting!"{#dust_s38_r1339}' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"A journal? I have not seen one."{#dust_s39_}'

    menu:
        '"I had some other questions…"{#dust_s39_r451}':
            # a128 # r451
            jump dust_s26

        '"I must take my leave. Farewell."{#dust_s39_r452}':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.{#dust_s40_}'

    menu:
        '"Greetings."{#dust_s40_r1420}' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"Greetings."{#dust_s40_r1421}' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"Greetings."{#dust_s40_r1422}' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"Greetings."{#dust_s40_r1423}' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        'Leave him in peace.{#dust_s40_r1424}':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Before the Dustman can utter a word, your hands clamp onto his temples, and you twist his head sharply to the left.{#dust_s41_}'

    menu:
        '"Can„t have you alerting your friends…"{#dust_s41_r1426}':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr 'There is a *crack,* and the Dustman falls limp in your arms.{#dust_s42_}'

    menu:
        '"Better you than me, Dustie."{#dust_s42_r1428}' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"Better you than me, Dustie."{#dust_s42_r1429}' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr 'To your surprise, the act seemed instinctual, as if you had done it many times before… with this thought comes the stirring of a memory, but it is not strong enough to surface.{#dust_s43_}'

    menu:
        'Leave the body, continue on.{#dust_s43_r3882}':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'You are not fast enough, and the Dustman dodges as you lunge for him. Taking a step back, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#dust_s44_}'

    menu:
        '"All right then…"{#dust_s44_r3884}':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr 'As you lean in to „whisper“ to him, the Dustman leans in as well. As he comes within arm„s reach, your hands clamp onto his temples, and you twist his head sharply to the left.{#dust_s45_}'

    menu:
        '"Can„t have you alerting your friends…"{#dust_s45_r3890}':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'The Dustman seems suspicious. He looks like he„s about to say something, then shakes his head slightly and returns to his duties.{#dust_s46_}'

    menu:
        'Walk away.{#dust_s46_r3892}':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'The Dustman studies you carefully. "You are not one of us. What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? This seems to be a matter for the guards…"{#dust_s47_}'

    menu:
        'Snap his neck before he can call out.{#dust_s47_r3914}' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        'Snap his neck before he can call out.{#dust_s47_r3915}' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"No, no… it„s not, uh… I mean, I“m not a spy… you see, I woke up on one of the slabs… and…"{#dust_s47_r3916}':
            # a144 # r3916
            jump dust_s2

        'Leave. Quickly.{#dust_s47_r3917}':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'The Dustman nods, then returns to his duties.{#dust_s48_}'

    menu:
        'Walk away.{#dust_s48_r3895}':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr 'The Dustman frowns. "That name is unfamiliar to me."{#dust_s49_}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dust_s49_r3898}' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"I„m… new here. I“m… trying to learn the routine."{#dust_s49_r3899}' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s49_r3900}' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s49_r3901}' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr 'The Dustman„s frown remains, but he nods slightly. "Very well. How may I be of service to you, initiate?"{#dust_s50_}'

    menu:
        '"I had some questions…"{#dust_s50_r3902}':
            # a151 # r3902
            jump dust_s26

        '"Nothing this day. Farewell."{#dust_s50_r3903}':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'The Dustman regards you with a stony gaze. "Are you lost?"{#dust_s51_}'

    menu:
        '"No, I am a member of the faction. I am just touring the Mortuary."{#dust_s51_r66675}' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"Yes."{#dust_s51_r66676}' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"No."{#dust_s51_r66677}' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"No, I„m not lost. I had some questions…"{#dust_s51_r66678}' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"Farewell."{#dust_s51_r66679}' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr 'The Dustman stares at you for a moment, then nods. "Very well. If you need assistance, let me know."{#dust_s52_}'

    menu:
        '"I will do so. Farewell."{#dust_s52_r66682}':
            # a158 # r66682
            jump dust_dispose
