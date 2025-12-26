init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    'dust_s0{#dust_s0}'
    # nr 'The Dustman does not appear to notice you. He must mistake you for one of the cadaverous workers.{#dust_s0_1}'

    menu:
        'dust_s0_r302{#dust_s0_r302}': # '"Greetings."{#dust_s0_r302}'
            # a0 # r302
            jump dust_s1

        'dust_s0_r303{#dust_s0_r303}': # '"Who are you?"{#dust_s0_r303}'
            # a1 # r303
            jump dust_s1

        'dust_s0_r304{#dust_s0_r304}': # '"What is this place?"{#dust_s0_r304}'
            # a2 # r304
            jump dust_s1

        'dust_s0_r305{#dust_s0_r305}': # '"I had some questions…"{#dust_s0_r305}'
            # a3 # r305
            jump dust_s1

        'dust_s0_r306{#dust_s0_r306}': # 'Leave him in peace.{#dust_s0_r306}'
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    'dust_s1{#dust_s1}'
    # nr 'The Dustman jumps, then snaps his head around to stare at you. He looks shocked - your disguise must be quite good.{#dust_s1_1}'

    menu:
        'dust_s1_r310{#dust_s1_r310}': # 'Take advantage of his surprise and snap his neck before he can call out.{#dust_s1_r310}'
            # a5 # r310
            jump dust_s41

        'dust_s1_r312{#dust_s1_r312}': # '"I had some questions…"{#dust_s1_r312}'
            # a6 # r312
            jump dust_s2

        'dust_s1_r1332{#dust_s1_r1332}': # 'Leave. Quickly.{#dust_s1_r1332}'
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    'dust_s2{#dust_s2}'
    # nr 'The Dustman takes a step back, then claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#dust_s2_1}'

    menu:
        'dust_s2_r313{#dust_s2_r313}': # '"All right then…"{#dust_s2_r313}'
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    'dust_s3{#dust_s3}'
    # nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.{#dust_s3_1}'

    menu:
        'dust_s3_r315{#dust_s3_r315}': # '"Greetings."{#dust_s3_r315}'
            # a9 # r315
            jump dust_s4

        'dust_s3_r316{#dust_s3_r316}': # '"Who are you?"{#dust_s3_r316}'
            # a10 # r316
            jump dust_s4

        'dust_s3_r317{#dust_s3_r317}': # '"What is this place?"{#dust_s3_r317}'
            # a11 # r317
            jump dust_s4

        'dust_s3_r319{#dust_s3_r319}': # '"I had some questions…"{#dust_s3_r319}'
            # a12 # r319
            jump dust_s4

        'dust_s3_r382{#dust_s3_r382}': # 'Leave him in peace.{#dust_s3_r382}'
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    'dust_s4{#dust_s4}'
    # nr 'The Dustman slowly lifts his head and turns toward you. "Are you lost?"{#dust_s4_1}'

    menu:
        'dust_s4_r322{#dust_s4_r322}': # '"Yes."{#dust_s4_r322}'
            # a14 # r322
            jump dust_s5

        'dust_s4_r323{#dust_s4_r323}': # '"No."{#dust_s4_r323}'
            # a15 # r323
            jump dust_s6

        'dust_s4_r324{#dust_s4_r324}': # '"No, I„m not lost. I had some questions…"{#dust_s4_r324}'
            # a16 # r324
            jump dust_s6

        'dust_s4_r325{#dust_s4_r325}': # '"Farewell."{#dust_s4_r325}'
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    'dust_s5{#dust_s5}'
    # nr '"I will summon a guard to direct you out. Hold a moment."{#dust_s5_1}'

    menu:
        'dust_s5_r327{#dust_s5_r327}' if dustLogic.r327_condition(): # 'Snap his neck before he can call out.{#dust_s5_r327}'
            # a18 # r327
            jump dust_s44

        'dust_s5_r328{#dust_s5_r328}' if dustLogic.r328_condition(): # 'Snap his neck before he can call out.{#dust_s5_r328}'
            # a19 # r328
            jump dust_s41

        'dust_s5_r329{#dust_s5_r329}': # 'Leave. Quickly.{#dust_s5_r329}'
            # a20 # r329
            jump dust_s2

        'dust_s5_r1333{#dust_s5_r1333}': # 'Wait.{#dust_s5_r1333}'
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    'dust_s6{#dust_s6}'
    # nr '"If you are not lost, what is your business here?"{#dust_s6_1}'

    menu:
        'dust_s6_r331{#dust_s6_r331}': # '"That is none of your concern."{#dust_s6_r331}'
            # a22 # r331
            jump dust_s7

        'dust_s6_r332{#dust_s6_r332}': # '"I awoke on one of the slabs in your preparation room."{#dust_s6_r332}'
            # a23 # r332
            jump dust_s8

        'dust_s6_r333{#dust_s6_r333}': # '"I„m here to see someone."{#dust_s6_r333}'
            # a24 # r333
            jump dust_s9

        'dust_s6_r334{#dust_s6_r334}' if dustLogic.r334_condition(): # '"I was here for an interment, but there seems to have been a mistake."{#dust_s6_r334}'
            # a25 # r334
            jump dust_s16

        'dust_s6_r337{#dust_s6_r337}': # 'Leave. Quickly.{#dust_s6_r337}'
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    'dust_s7{#dust_s7}'
    # nr '"I„m afraid that it is my concern. Mayhap the guards can loosen your tongue." The Dustman takes a step back; he looks like he is about to summon the guards.{#dust_s7_1}'

    menu:
        'dust_s7_r344{#dust_s7_r344}' if dustLogic.r344_condition(): # 'Snap his neck before he can call out.{#dust_s7_r344}'
            # a27 # r344
            jump dust_s44

        'dust_s7_r3887{#dust_s7_r3887}' if dustLogic.r3887_condition(): # 'Snap his neck before he can call out.{#dust_s7_r3887}'
            # a28 # r3887
            jump dust_s41

        'dust_s7_r3888{#dust_s7_r3888}': # '"Summon them, then. I„d like to meet them."{#dust_s7_r3888}'
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    'dust_s8{#dust_s8}'
    # nr '"Do you speak in jest? Perhaps you would like to share it with the guards." The Dustman takes a step back; he looks like he is about to summon the guards.{#dust_s8_1}'

    menu:
        'dust_s8_r358{#dust_s8_r358}' if dustLogic.r358_condition(): # 'Snap his neck before he can call out.{#dust_s8_r358}'
            # a30 # r358
            jump dust_s44

        'dust_s8_r3885{#dust_s8_r3885}' if dustLogic.r3885_condition(): # 'Snap his neck before he can call out.{#dust_s8_r3885}'
            # a31 # r3885
            jump dust_s41

        'dust_s8_r3886{#dust_s8_r3886}': # '"Summon them, then. I„d like to meet them."{#dust_s8_r3886}'
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    'dust_s9{#dust_s9}'
    # nr '"Who are you here to see?"{#dust_s9_1}'

    menu:
        'dust_s9_r3922{#dust_s9_r3922}': # '"It is none of your concern."{#dust_s9_r3922}'
            # a33 # r3922
            jump dust_s7

        'dust_s9_r342{#dust_s9_r342}' if dustLogic.r342_condition(): # '"I am here to see Dhall."{#dust_s9_r342}'
            # a34 # r342
            jump dust_s10

        'dust_s9_r343{#dust_s9_r343}' if dustLogic.r343_condition(): # '"I am here to see Dhall."{#dust_s9_r343}'
            # a35 # r343
            jump dust_s11

        'dust_s9_r33183{#dust_s9_r33183}' if dustLogic.r33183_condition(): # '"I am here to see Deionarra."{#dust_s9_r33183}'
            # a36 # r33183
            jump dust_s13

        'dust_s9_r33185{#dust_s9_r33185}' if dustLogic.r33185_condition(): # '"I am here to see Deionarra."{#dust_s9_r33185}'
            # a37 # r33185
            jump dust_s12

        'dust_s9_r33186{#dust_s9_r33186}' if dustLogic.r33186_condition(): # '"I am here to see Soego."{#dust_s9_r33186}'
            # a38 # r33186
            jump dust_s15

        'dust_s9_r33187{#dust_s9_r33187}' if dustLogic.r33187_condition(): # '"I am here to see Soego."{#dust_s9_r33187}'
            # a39 # r33187
            jump dust_s14

        'dust_s9_r33189{#dust_s9_r33189}' if dustLogic.r33189_condition(): # 'Lie: "Uh… Adahn. Does he still work here, or…?"{#dust_s9_r33189}'
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'dust_s9_r33190{#dust_s9_r33190}' if dustLogic.r33190_condition(): # 'Lie: "Uh… Adahn. Does he still work here, or…?"{#dust_s9_r33190}'
            # a41 # r33190
            jump dust_s21

        'dust_s9_r33191{#dust_s9_r33191}': # '"Uh, no one. I misspoke."{#dust_s9_r33191}'
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    'dust_s10{#dust_s10}'
    # nr '"Dhall is in the receiving room on this floor. I must warn you… Dhall is quite busy with his duties and is not in the best of health. Unless you have pressing business, I would not disturb him."{#dust_s10_1}'

    menu:
        'dust_s10_r347{#dust_s10_r347}': # '"Very well. Thanks for the information."{#dust_s10_r347}'
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    'dust_s11{#dust_s11}'
    # nr '"Dhall is most likely in the receiving room on the second floor. He is quite busy and not in the best of health. Unless you have pressing business, I would not disturb him."{#dust_s11_1}'

    menu:
        'dust_s11_r348{#dust_s11_r348}': # '"Very well. Thanks for the information."{#dust_s11_r348}'
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    'dust_s12{#dust_s12}'
    # nr '"Deionarra? I know there is a woman interred in the memorial hall on the first floor. Could that be she?"{#dust_s12_1}'

    menu:
        'dust_s12_r352{#dust_s12_r352}': # '"Most likely. Thank you."{#dust_s12_r352}'
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    'dust_s13{#dust_s13}'
    # nr '"Deionarra? I know there is a woman interred in the northwest memorial hall. Could that be she?"{#dust_s13_1}'

    menu:
        'dust_s13_r353{#dust_s13_r353}': # '"Most likely. Thank you."{#dust_s13_r353}'
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    'dust_s14{#dust_s14}'
    # nr '"I believe Soego is by the front gate on the first floor. He is acting as a guide during the anti-peak hours."{#dust_s14_1}'

    menu:
        'dust_s14_r354{#dust_s14_r354}': # '"Very well. Thank you."{#dust_s14_r354}'
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    'dust_s15{#dust_s15}'
    # nr '"I believe Soego is by the front gate. He is acting as a guide during the anti-peak hours."{#dust_s15_1}'

    menu:
        'dust_s15_r356{#dust_s15_r356}': # '"Very well. Thank you."{#dust_s15_r356}'
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    'dust_s16{#dust_s16}'
    # nr '"Who was being interred? Perhaps the services are taking place somewhere else in the Mortuary."{#dust_s16_1}'

    menu:
        'dust_s16_r359{#dust_s16_r359}': # '"You misunderstand… the mistaken interment was ME."{#dust_s16_r359}'
            # a49 # r359
            jump dust_s8

        'dust_s16_r360{#dust_s16_r360}': # '"That could be. Where are these other services taking place?"{#dust_s16_r360}'
            # a50 # r360
            jump dust_s17

        'dust_s16_r361{#dust_s16_r361}': # '"Can you show me the way out?"{#dust_s16_r361}'
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    'dust_s17{#dust_s17}'
    # nr '"Several interment chambers line the perimeter of the Mortuary. They follow the curve of the wall on the first and second floors. Do you know the name of the deceased?"{#dust_s17_1}'

    menu:
        'dust_s17_r363{#dust_s17_r363}': # '"No."{#dust_s17_r363}'
            # a52 # r363
            jump dust_s18

        'dust_s17_r364{#dust_s17_r364}': # '"Yes."{#dust_s17_r364}'
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    'dust_s18{#dust_s18}'
    # nr '"Then you should check with one of the guides at the front gate. They can assist you."{#dust_s18_1}'

    menu:
        'dust_s18_r366{#dust_s18_r366}': # '"Very well. Thank you."{#dust_s18_r366}'
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    'dust_s19{#dust_s19}'
    # nr 'The Dustman waits.{#dust_s19_1}'

    menu:
        'dust_s19_r369{#dust_s19_r369}': # '"Pardon… I misspoke. I don„t know the name of the deceased."{#dust_s19_r369}'
            # a55 # r369
            jump dust_s20

        'dust_s19_r370{#dust_s19_r370}' if dustLogic.r370_condition(): # '"The name is Deionarra."{#dust_s19_r370}'
            # a56 # r370
            jump dust_s12

        'dust_s19_r371{#dust_s19_r371}' if dustLogic.r371_condition(): # 'Lie: "The name is… uh, Adahn."{#dust_s19_r371}'
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'dust_s19_r372{#dust_s19_r372}' if dustLogic.r372_condition(): # 'Lie: "The name is… uh, Adahn."{#dust_s19_r372}'
            # a58 # r372
            jump dust_s21

        'dust_s19_r373{#dust_s19_r373}' if dustLogic.r373_condition(): # 'Lean in as if to whisper something to him, then snap his neck.{#dust_s19_r373}'
            # a59 # r373
            jump dust_s44

        'dust_s19_r1335{#dust_s19_r1335}' if dustLogic.r1335_condition(): # 'Lean in as if to whisper something to him, then snap his neck.{#dust_s19_r1335}'
            # a60 # r1335
            jump dust_s45

        'dust_s19_r1336{#dust_s19_r1336}': # 'Run for it.{#dust_s19_r1336}'
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    'dust_s20{#dust_s20}'
    # nr '"I see. Now, what is your business here?"{#dust_s20_1}'

    menu:
        'dust_s20_r375{#dust_s20_r375}': # '"None of your concern."{#dust_s20_r375}'
            # a62 # r375
            jump dust_s7

        'dust_s20_r376{#dust_s20_r376}': # '"I woke up on one of the slabs in your preparation room."{#dust_s20_r376}'
            # a63 # r376
            jump dust_s8

        'dust_s20_r377{#dust_s20_r377}': # '"I„m here to see someone."{#dust_s20_r377}'
            # a64 # r377
            jump dust_s9

        'dust_s20_r378{#dust_s20_r378}' if dustLogic.r378_condition(): # '"I was here for an interment, but there seems to have been a mistake."{#dust_s20_r378}'
            # a65 # r378
            jump dust_s16

        'dust_s20_r379{#dust_s20_r379}': # 'Run for it.{#dust_s20_r379}'
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    'dust_s21{#dust_s21}'
    # nr '"That name is not familiar to me. Check with one of the guides at the front gate… they may be able to direct you better than I."{#dust_s21_1}'

    menu:
        'dust_s21_r380{#dust_s21_r380}': # '"Very well. I will do that. Farewell."{#dust_s21_r380}'
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    'dust_s22{#dust_s22}'
    # nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.{#dust_s22_1}'

    menu:
        'dust_s22_r295{#dust_s22_r295}': # '"Greetings."{#dust_s22_r295}'
            # a68 # r295
            jump dust_s23

        'dust_s22_r297{#dust_s22_r297}': # 'Leave him in peace.{#dust_s22_r297}'
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    'dust_s23{#dust_s23}'
    # nr 'He slowly turns, and his eyes flicker to your robes. "Greetings, fellow initiate."{#dust_s23_1}'

    menu:
        'dust_s23_r383{#dust_s23_r383}': # '"Who are you?"{#dust_s23_r383}'
            # a70 # r383
            jump dust_s24

        'dust_s23_r384{#dust_s23_r384}': # '"What is this place?"{#dust_s23_r384}'
            # a71 # r384
            jump dust_s25

        'dust_s23_r391{#dust_s23_r391}': # '"I had some questions…"{#dust_s23_r391}'
            # a72 # r391
            jump dust_s26

        'dust_s23_r392{#dust_s23_r392}': # 'Leave him in peace.{#dust_s23_r392}'
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    'dust_s24{#dust_s24}'
    # nr '"That is as much my question as yours. Your face is unknown to me. Who are you?"{#dust_s24_1}'

    menu:
        'dust_s24_r450{#dust_s24_r450}' if dustLogic.r450_condition(): # 'Lie: "The name is… uh, Adahn."{#dust_s24_r450}'
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'dust_s24_r1337{#dust_s24_r1337}' if dustLogic.r1337_condition(): # 'Lie: "The name is… uh, Adahn."{#dust_s24_r1337}'
            # a75 # r1337
            jump dust_s49

        'dust_s24_r3904{#dust_s24_r3904}' if dustLogic.r3904_condition(): # '"My name is not your concern. I must take my leave. Farewell."{#dust_s24_r3904}'
            # a76 # r3904
            jump dust_s47

        'dust_s24_r3905{#dust_s24_r3905}' if dustLogic.r3905_condition(): # '"My name is not your concern. I must take my leave. Farewell."{#dust_s24_r3905}'
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    'dust_s25{#dust_s25}'
    # nr '"This is the Mortuary…" The Dustman looks at you for a moment, as if digesting what you„ve just said. "What did you say your name was again?"{#dust_s25_1}'

    menu:
        'dust_s25_r399{#dust_s25_r399}' if dustLogic.r399_condition(): # 'Lie: "The name is… uh, Adahn."{#dust_s25_r399}'
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'dust_s25_r3906{#dust_s25_r3906}' if dustLogic.r3906_condition(): # 'Lie: "The name is… uh, Adahn."{#dust_s25_r3906}'
            # a79 # r3906
            jump dust_s49

        'dust_s25_r3907{#dust_s25_r3907}' if dustLogic.r3907_condition(): # '"My name is not your concern. I must take my leave. Farewell."{#dust_s25_r3907}'
            # a80 # r3907
            jump dust_s47

        'dust_s25_r3908{#dust_s25_r3908}' if dustLogic.r3908_condition(): # '"My name is not your concern. I must take my leave. Farewell."{#dust_s25_r3908}'
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    'dust_s26{#dust_s26}'
    # nr 'The Dustman waits patiently for you to continue.{#dust_s26_1}'

    menu:
        'dust_s26_r401{#dust_s26_r401}': # '"Can you direct me out of here?"{#dust_s26_r401}'
            # a82 # r401
            jump dust_s27

        'dust_s26_r402{#dust_s26_r402}': # '"Do you know someone named Pharod?"{#dust_s26_r402}'
            # a83 # r402
            jump dust_s28

        'dust_s26_r403{#dust_s26_r403}': # '"I„m missing a journal. Have you seen it?"{#dust_s26_r403}'
            # a84 # r403
            jump dust_s39

        'dust_s26_r404{#dust_s26_r404}': # '"Never mind. Sorry to trouble you."{#dust_s26_r404}'
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    'dust_s27{#dust_s27}'
    # nr '"You may simply leave by the front gate. It is on the first floor."{#dust_s27_1}'

    menu:
        'dust_s27_r406{#dust_s27_r406}': # '"I had some other questions…"{#dust_s27_r406}'
            # a86 # r406
            jump dust_s26

        'dust_s27_r407{#dust_s27_r407}': # '"Thank you. Farewell."{#dust_s27_r407}'
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    'dust_s28{#dust_s28}'
    # nr '"That name…" The Dustman pauses for a moment. "That name *sounds* familiar… I seem to recall a Collector by that name. Dhall the Scrivener might know of him."{#dust_s28_1}'

    menu:
        'dust_s28_r409{#dust_s28_r409}': # '"Collector?"{#dust_s28_r409}'
            # a88 # r409
            jump dust_s29

        'dust_s28_r410{#dust_s28_r410}': # '"Dhall?"{#dust_s28_r410}'
            # a89 # r410
            jump dust_s30

        'dust_s28_r411{#dust_s28_r411}': # '"I had some other questions…"{#dust_s28_r411}'
            # a90 # r411
            jump dust_s26

        'dust_s28_r425{#dust_s28_r425}': # '"Thank you for your time. Farewell."{#dust_s28_r425}'
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    'dust_s29{#dust_s29}'
    # nr '"Collectors… they gather those who have died on the streets of Sigil and bring them to the Mortuary…" The Dustman pauses, then frowns. "You are not from around here. Who are you?"{#dust_s29_1}'

    menu:
        'dust_s29_r413{#dust_s29_r413}' if dustLogic.r413_condition(): # '"I„m a recent initiate. Forgive my ignorance."{#dust_s29_r413}'
            # a92 # r413
            jump dust_s50

        'dust_s29_r3918{#dust_s29_r3918}' if dustLogic.r3918_condition(): # '"I„m… new here. I“m… trying to get my bearings."{#dust_s29_r3918}'
            # a93 # r3918
            jump dust_s47

        'dust_s29_r3919{#dust_s29_r3919}' if dustLogic.r3919_condition(): # '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s29_r3919}'
            # a94 # r3919
            jump dust_s47

        'dust_s29_r3920{#dust_s29_r3920}' if dustLogic.r3920_condition(): # '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s29_r3920}'
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    'dust_s30{#dust_s30}'
    # nr '"Dhall is one of the most revered of our faction. I can think of none who have meditated more on the nature of the True Death nor one more deserving of it than he. He has much wisdom to impart. If you do not know him, I suggest you speak to him at your earliest opportunity. He will not linger much longer in the shadow of this existence."{#dust_s30_1}'

    menu:
        'dust_s30_r415{#dust_s30_r415}': # '"*He will not linger long in the shadow of this existence?*"{#dust_s30_r415}'
            # a96 # r415
            jump dust_s31

        'dust_s30_r416{#dust_s30_r416}' if dustLogic.r416_condition(): # '"Where can I find Dhall?"{#dust_s30_r416}'
            # a97 # r416
            jump dust_s32

        'dust_s30_r417{#dust_s30_r417}' if dustLogic.r417_condition(): # '"Where can I find Dhall?"{#dust_s30_r417}'
            # a98 # r417
            jump dust_s33

        'dust_s30_r418{#dust_s30_r418}': # '"I had some other questions…"{#dust_s30_r418}'
            # a99 # r418
            jump dust_s26

        'dust_s30_r33204{#dust_s30_r33204}': # '"Thank you for the information. I will speak to him."{#dust_s30_r33204}'
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    'dust_s31{#dust_s31}'
    # nr 'Nods. "Dhall is ill. He is old, even by githzerai standards. Death will no doubt follow the wasting sickness he has contracted. He is fortunate, indeed."{#dust_s31_1}'

    menu:
        'dust_s31_r420{#dust_s31_r420}': # '"Githzerai standards?"{#dust_s31_r420}'
            # a101 # r420
            jump dust_s34

        'dust_s31_r421{#dust_s31_r421}': # '"What is a *githzerai?*"{#dust_s31_r421}'
            # a102 # r421
            jump dust_s35

        'dust_s31_r422{#dust_s31_r422}': # '"Fortunate?"{#dust_s31_r422}'
            # a103 # r422
            jump dust_s36

        'dust_s31_r423{#dust_s31_r423}': # '"I see. I had some other questions…"{#dust_s31_r423}'
            # a104 # r423
            jump dust_s26

        'dust_s31_r424{#dust_s31_r424}': # '"Thank you for your time. I must take my leave."{#dust_s31_r424}'
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    'dust_s32{#dust_s32}'
    # nr '"Dhall is in the receiving room in the northwest corner of this floor. I must warn you… Dhall is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."{#dust_s32_1}'

    menu:
        'dust_s32_r428{#dust_s32_r428}': # '"Is Dhall ill?"{#dust_s32_r428}'
            # a106 # r428
            jump dust_s31

        'dust_s32_r429{#dust_s32_r429}': # '"Thank you for your time. I must take my leave. Farewell."{#dust_s32_r429}'
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    'dust_s33{#dust_s33}'
    # nr '"Dhall is most likely in the receiving room on the second floor. I would not take too much of his time, as he is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."{#dust_s33_1}'

    menu:
        'dust_s33_r430{#dust_s33_r430}': # '"Is Dhall ill?"{#dust_s33_r430}'
            # a108 # r430
            jump dust_s31

        'dust_s33_r431{#dust_s33_r431}': # '"Thanks for your time. I must take my leave of you. Farewell."{#dust_s33_r431}'
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    'dust_s34{#dust_s34}'
    # nr '"Yes, the githzerai have a much longer lifespan than humans."{#dust_s34_1}'

    menu:
        'dust_s34_r433{#dust_s34_r433}': # '"What is a *githzerai?*"{#dust_s34_r433}'
            # a110 # r433
            jump dust_s35

        'dust_s34_r437{#dust_s34_r437}': # '"How is Dhall„s death fortunate? Is he not well-liked?"{#dust_s34_r437}'
            # a111 # r437
            jump dust_s36

        'dust_s34_r438{#dust_s34_r438}': # '"Oh. I had some other questions…"{#dust_s34_r438}'
            # a112 # r438
            jump dust_s26

        'dust_s34_r440{#dust_s34_r440}': # '"Thank you for your time. Farewell."{#dust_s34_r440}'
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    'dust_s35{#dust_s35}'
    # nr '"The githzerai are…" The Dustman pauses, then frowns, staring at you intently. "You are not from around here. Who are you?"{#dust_s35_1}'

    menu:
        'dust_s35_r436{#dust_s35_r436}' if dustLogic.r436_condition(): # '"I„m a recent initiate. Forgive my ignorance."{#dust_s35_r436}'
            # a114 # r436
            jump dust_s50

        'dust_s35_r3909{#dust_s35_r3909}' if dustLogic.r3909_condition(): # '"I„m… new here. I“m… trying to get my bearings."{#dust_s35_r3909}'
            # a115 # r3909
            jump dust_s47

        'dust_s35_r3910{#dust_s35_r3910}' if dustLogic.r3910_condition(): # '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s35_r3910}'
            # a116 # r3910
            jump dust_s47

        'dust_s35_r3911{#dust_s35_r3911}' if dustLogic.r3911_condition(): # '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s35_r3911}'
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    'dust_s36{#dust_s36}'
    # nr '"He is fortunate in that he will achieve the True Death. No longer must he dwell within the shadow of this existence."{#dust_s36_1}'

    menu:
        'dust_s36_r441{#dust_s36_r441}': # '"And… that„s a good thing?"{#dust_s36_r441}'
            # a118 # r441
            jump dust_s37

        'dust_s36_r442{#dust_s36_r442}': # '"I see. Very fortunate, indeed. I had some other questions…"{#dust_s36_r442}'
            # a119 # r442
            jump dust_s26

        'dust_s36_r443{#dust_s36_r443}': # '"I see. Well, I must take my leave of you. Farewell."{#dust_s36_r443}'
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    'dust_s37{#dust_s37}'
    # nr 'The Dustman nods. "Yes." He frowns, then studies you intently. "You are not from around here. Who are you?"{#dust_s37_1}'

    menu:
        'dust_s37_r445{#dust_s37_r445}' if dustLogic.r445_condition(): # '"I„m a recent initiate. Forgive my ignorance."{#dust_s37_r445}'
            # a121 # r445
            jump dust_s50

        'dust_s37_r446{#dust_s37_r446}' if dustLogic.r446_condition(): # '"I„m… new here. I“m… trying to get my bearings."{#dust_s37_r446}'
            # a122 # r446
            jump dust_s47

        'dust_s37_r3912{#dust_s37_r3912}' if dustLogic.r3912_condition(): # '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s37_r3912}'
            # a123 # r3912
            jump dust_s47

        'dust_s37_r3913{#dust_s37_r3913}' if dustLogic.r3913_condition(): # '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s37_r3913}'
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    'dust_s38{#dust_s38}'
    # nr '"You are not one of us, are you? What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? Guards! Guards!"{#dust_s38_1}'

    menu:
        'dust_s38_r448{#dust_s38_r448}': # '"Dammit!"{#dust_s38_r448}'
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        'dust_s38_r449{#dust_s38_r449}' if dustLogic.r449_condition(): # '"Shhhh! I can„t answer you over all that shouting!"{#dust_s38_r449}'
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        'dust_s38_r1339{#dust_s38_r1339}' if dustLogic.r1339_condition(): # '"Shhhh! I can„t answer you over all that shouting!"{#dust_s38_r1339}'
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    'dust_s39{#dust_s39}'
    # nr '"A journal? I have not seen one."{#dust_s39_1}'

    menu:
        'dust_s39_r451{#dust_s39_r451}': # '"I had some other questions…"{#dust_s39_r451}'
            # a128 # r451
            jump dust_s26

        'dust_s39_r452{#dust_s39_r452}': # '"I must take my leave. Farewell."{#dust_s39_r452}'
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    'dust_s40{#dust_s40}'
    # nr 'This pale-faced man is dressed in long dark robes. He has a slight musty smell about him. His expression is blank, and he seems absorbed in his duties.{#dust_s40_1}'

    menu:
        'dust_s40_r1420{#dust_s40_r1420}' if dustLogic.r1420_condition(): # '"Greetings."{#dust_s40_r1420}'
            # a130 # r1420
            jump morte_s61  # EXTERN

        'dust_s40_r1421{#dust_s40_r1421}' if dustLogic.r1421_condition(): # '"Greetings."{#dust_s40_r1421}'
            # a131 # r1421
            jump morte_s63  # EXTERN

        'dust_s40_r1422{#dust_s40_r1422}' if dustLogic.r1422_condition(): # '"Greetings."{#dust_s40_r1422}'
            # a132 # r1422
            jump dust_s4

        'dust_s40_r1423{#dust_s40_r1423}' if dustLogic.r1423_condition(): # '"Greetings."{#dust_s40_r1423}'
            # a133 # r1423
            jump dust_s4

        'dust_s40_r1424{#dust_s40_r1424}': # 'Leave him in peace.{#dust_s40_r1424}'
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    'dust_s41{#dust_s41}'
    # nr 'Before the Dustman can utter a word, your hands clamp onto his temples, and you twist his head sharply to the left.{#dust_s41_1}'

    menu:
        'dust_s41_r1426{#dust_s41_r1426}': # '"Can„t have you alerting your friends…"{#dust_s41_r1426}'
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    'dust_s42{#dust_s42}'
    # nr 'There is a *crack,* and the Dustman falls limp in your arms.{#dust_s42_1}'

    menu:
        'dust_s42_r1428{#dust_s42_r1428}' if dustLogic.r1428_condition(): # '"Better you than me, Dustie."{#dust_s42_r1428}'
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        'dust_s42_r1429{#dust_s42_r1429}' if dustLogic.r1429_condition(): # '"Better you than me, Dustie."{#dust_s42_r1429}'
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    'dust_s43{#dust_s43}'
    # nr 'To your surprise, the act seemed instinctual, as if you had done it many times before… with this thought comes the stirring of a memory, but it is not strong enough to surface.{#dust_s43_1}'

    menu:
        'dust_s43_r3882{#dust_s43_r3882}': # 'Leave the body, continue on.{#dust_s43_r3882}'
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    'dust_s44{#dust_s44}'
    # nr 'You are not fast enough, and the Dustman dodges as you lunge for him. Taking a step back, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#dust_s44_1}'

    menu:
        'dust_s44_r3884{#dust_s44_r3884}': # '"All right then…"{#dust_s44_r3884}'
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    'dust_s45{#dust_s45}'
    # nr 'As you lean in to „whisper“ to him, the Dustman leans in as well. As he comes within arm„s reach, your hands clamp onto his temples, and you twist his head sharply to the left.{#dust_s45_1}'

    menu:
        'dust_s45_r3890{#dust_s45_r3890}': # '"Can„t have you alerting your friends…"{#dust_s45_r3890}'
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    'dust_s46{#dust_s46}'
    # nr 'The Dustman seems suspicious. He looks like he„s about to say something, then shakes his head slightly and returns to his duties.{#dust_s46_1}'

    menu:
        'dust_s46_r3892{#dust_s46_r3892}': # 'Walk away.{#dust_s46_r3892}'
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    'dust_s47{#dust_s47}'
    # nr 'The Dustman studies you carefully. "You are not one of us. What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? This seems to be a matter for the guards…"{#dust_s47_1}'

    menu:
        'dust_s47_r3914{#dust_s47_r3914}' if dustLogic.r3914_condition(): # 'Snap his neck before he can call out.{#dust_s47_r3914}'
            # a142 # r3914
            jump dust_s44

        'dust_s47_r3915{#dust_s47_r3915}' if dustLogic.r3915_condition(): # 'Snap his neck before he can call out.{#dust_s47_r3915}'
            # a143 # r3915
            jump dust_s41

        'dust_s47_r3916{#dust_s47_r3916}': # '"No, no… it„s not, uh… I mean, I“m not a spy… you see, I woke up on one of the slabs… and…"{#dust_s47_r3916}'
            # a144 # r3916
            jump dust_s2

        'dust_s47_r3917{#dust_s47_r3917}': # 'Leave. Quickly.{#dust_s47_r3917}'
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    'dust_s48{#dust_s48}'
    # nr 'The Dustman nods, then returns to his duties.{#dust_s48_1}'

    menu:
        'dust_s48_r3895{#dust_s48_r3895}': # 'Walk away.{#dust_s48_r3895}'
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    'dust_s49{#dust_s49}'
    # nr 'The Dustman frowns. "That name is unfamiliar to me."{#dust_s49_1}'

    menu:
        'dust_s49_r3898{#dust_s49_r3898}' if dustLogic.r3898_condition(): # '"I„m a recent initiate. Forgive my ignorance."{#dust_s49_r3898}'
            # a147 # r3898
            jump dust_s50

        'dust_s49_r3899{#dust_s49_r3899}' if dustLogic.r3899_condition(): # '"I„m… new here. I“m… trying to learn the routine."{#dust_s49_r3899}'
            # a148 # r3899
            jump dust_s47

        'dust_s49_r3900{#dust_s49_r3900}' if dustLogic.r3900_condition(): # '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dust_s49_r3900}'
            # a149 # r3900
            jump dust_s47

        'dust_s49_r3901{#dust_s49_r3901}' if dustLogic.r3901_condition(): # '"If you can„t help me, then I will find someone else who can. Farewell."{#dust_s49_r3901}'
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    'dust_s50{#dust_s50}'
    # nr 'The Dustman„s frown remains, but he nods slightly. "Very well. How may I be of service to you, initiate?"{#dust_s50_1}'

    menu:
        'dust_s50_r3902{#dust_s50_r3902}': # '"I had some questions…"{#dust_s50_r3902}'
            # a151 # r3902
            jump dust_s26

        'dust_s50_r3903{#dust_s50_r3903}': # '"Nothing this day. Farewell."{#dust_s50_r3903}'
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    'dust_s51{#dust_s51}'
    # nr 'The Dustman regards you with a stony gaze. "Are you lost?"{#dust_s51_1}'

    menu:
        'dust_s51_r66675{#dust_s51_r66675}' if dustLogic.r66675_condition(): # '"No, I am a member of the faction. I am just touring the Mortuary."{#dust_s51_r66675}'
            # a153 # r66675
            jump dust_s52

        'dust_s51_r66676{#dust_s51_r66676}' if dustLogic.r66676_condition(): # '"Yes."{#dust_s51_r66676}'
            # a154 # r66676
            jump dust_s5

        'dust_s51_r66677{#dust_s51_r66677}' if dustLogic.r66677_condition(): # '"No."{#dust_s51_r66677}'
            # a155 # r66677
            jump dust_s6

        'dust_s51_r66678{#dust_s51_r66678}' if dustLogic.r66678_condition(): # '"No, I„m not lost. I had some questions…"{#dust_s51_r66678}'
            # a156 # r66678
            jump dust_s6

        'dust_s51_r66679{#dust_s51_r66679}' if dustLogic.r66679_condition(): # '"Farewell."{#dust_s51_r66679}'
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    'dust_s52{#dust_s52}'
    # nr 'The Dustman stares at you for a moment, then nods. "Very well. If you need assistance, let me know."{#dust_s52_1}'

    menu:
        'dust_s52_r66682{#dust_s52_r66682}': # '"I will do so. Farewell."{#dust_s52_r66682}'
            # a158 # r66682
            jump dust_dispose
