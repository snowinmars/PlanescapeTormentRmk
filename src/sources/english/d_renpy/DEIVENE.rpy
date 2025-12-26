init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    'eivene_s0{#eivene_s0}'
    # nr 'You see a slight young woman with pale features. The sunken flesh around her cheeks and neck makes her appear as if she is starving. She seems intent on dissecting the corpse in front of her, prodding the chest with a finger.{#eivene_s0_1}'

    menu:
        'eivene_s0_r3406{#eivene_s0_r3406}': # '"Greetings."{#eivene_s0_r3406}'
            # a0 # r3406
            jump eivene_s1

        'eivene_s0_r3407{#eivene_s0_r3407}': # 'Leave her alone.{#eivene_s0_r3407}'
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    'eivene_s1{#eivene_s1}'
    # nr 'The woman does not respond… she seems too intent on the body in front of her. As you watch her work, you suddenly notice her hands… her fingers are talons. They are darting in and out of the corpse„s chest cavity like knives, removing organs.{#eivene_s1_1}'

    menu:
        'eivene_s1_r3412{#eivene_s1_r3412}' if eiveneLogic.r3412_condition(): # '"I said, Greetings."{#eivene_s1_r3412}'
            # a2 # r3412
            jump eivene_s2

        'eivene_s1_r3413{#eivene_s1_r3413}' if eiveneLogic.r3413_condition(): # '"I said, Greetings."{#eivene_s1_r3413}'
            # a3 # r3413
            jump eivene_s3

        'eivene_s1_r3414{#eivene_s1_r3414}' if eiveneLogic.r3414_condition(): # '"What„s wrong with your hands?"{#eivene_s1_r3414}'
            # a4 # r3414
            jump eivene_s2

        'eivene_s1_r3415{#eivene_s1_r3415}' if eiveneLogic.r3415_condition(): # '"What„s wrong with your hands?"{#eivene_s1_r3415}'
            # a5 # r3415
            jump eivene_s19

        'eivene_s1_r3416{#eivene_s1_r3416}': # 'Leave her alone.{#eivene_s1_r3416}'
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    'eivene_s2{#eivene_s2}'
    # nr 'The woman makes no response.{#eivene_s2_1}'

    menu:
        'eivene_s2_r3418{#eivene_s2_r3418}': # 'Tap the woman, get her attention.{#eivene_s2_r3418}'
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'eivene_s2_r3419{#eivene_s2_r3419}': # 'Leave her alone.{#eivene_s2_r3419}'
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    'eivene_s3{#eivene_s3}'
    # nr 'The woman makes no response.{#eivene_s3_1}'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    'eivene_s4{#eivene_s4}'
    # nr 'The woman jumps and whips around to face you… her eyes are a rotting yellow, with small orange dots for pupils. As she sees you, her expression changes from surprise to irritation, and she frowns at you.{#eivene_s4_1}'

    menu:
        'eivene_s4_r3422{#eivene_s4_r3422}': # '"Uh… greetings."{#eivene_s4_r3422}'
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    'eivene_s5{#eivene_s5}'
    # nr 'She doesn„t seem to have heard you. She leans forward, squinting, as if she can“t quite make you out… whatever is wrong with her eyes must make her terribly near-sighted. "You -" She clacks her taloned fingers together, then makes a strange motion with her hands. "Find THREAD and EM-balming juice, bring HERE, to Ei-Vene. Go - Go - Go."  ^NNOTE: You have been assigned a quest. Quests are displayed in your diary and in the "Quests" portion of your journal. To see all the quests you„ve been assigned (and their status), simply select "quests" from the journal menu.^-{#eivene_s5_1}'

    menu:
        'eivene_s5_r3424{#eivene_s5_r3424}' if eiveneLogic.r3424_condition(): # 'Give her the thread and embalming fluid.{#eivene_s5_r3424}'
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        'eivene_s5_r3425{#eivene_s5_r3425}' if eiveneLogic.r3425_condition(): # '"I had some questions first…"{#eivene_s5_r3425}'
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        'eivene_s5_r3426{#eivene_s5_r3426}' if eiveneLogic.r3426_condition(): # '"I had some questions first…"{#eivene_s5_r3426}'
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        'eivene_s5_r3427{#eivene_s5_r3427}' if eiveneLogic.r3427_condition(): # '"What„s wrong with your hands?"{#eivene_s5_r3427}'
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        'eivene_s5_r3428{#eivene_s5_r3428}' if eiveneLogic.r3428_condition(): # '"What„s wrong with your hands?"{#eivene_s5_r3428}'
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'eivene_s5_r3429{#eivene_s5_r3429}': # 'Leave.{#eivene_s5_r3429}'
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    'eivene_s6{#eivene_s6}'
    # nr 'She turns away… she makes no sign that she heard you. Her hearing must be as poor as her eyesight.{#eivene_s6_1}'

    menu:
        'eivene_s6_r3431{#eivene_s6_r3431}': # 'Tap her on the shoulder, get her attention.{#eivene_s6_r3431}'
            # a16 # r3431
            jump eivene_s17

        'eivene_s6_r3432{#eivene_s6_r3432}': # 'Leave.{#eivene_s6_r3432}'
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    'eivene_s7{#eivene_s7}'
    # nr 'Without missing a beat, Ei-Vene snaps the thread from your hands and hooks it around one of her talons, then begins sewing up the corpse„s chest. She then takes the embalming fluid, and begins to apply a layer to the corpse.{#eivene_s7_1}'

    menu:
        'eivene_s7_r3434{#eivene_s7_r3434}': # 'Wait.{#eivene_s7_r3434}'
            # a18 # r3434
            jump eivene_s9

        'eivene_s7_r3435{#eivene_s7_r3435}': # 'Leave.{#eivene_s7_r3435}'
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    'eivene_s8{#eivene_s8}'
    # nr 'As you are about to leave, Ei-Vene speaks: "Stay. You - next."{#eivene_s8_1}'

    menu:
        'eivene_s8_r3437{#eivene_s8_r3437}': # 'Wait.{#eivene_s8_r3437}'
            # a20 # r3437
            jump eivene_s9

        'eivene_s8_r3438{#eivene_s8_r3438}': # 'Leave. Quickly.{#eivene_s8_r3438}'
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    'eivene_s9{#eivene_s9}'
    # nr 'Within minutes, she is finished. She clicks her talons, then turns to face you. To your surprise, she extends her hand and drags her talons along your arms and chest.{#eivene_s9_1}'

    menu:
        'eivene_s9_r3440{#eivene_s9_r3440}' if eiveneLogic.r3440_condition(): # '"Uh, it„s not that I“m not flattered, but…"{#eivene_s9_r3440}'
            # a22 # r3440
            jump eivene_s11

        'eivene_s9_r3441{#eivene_s9_r3441}' if eiveneLogic.r3441_condition(): # '"Uh, it„s not that I“m not flattered, but…"{#eivene_s9_r3441}'
            # a23 # r3441
            jump morte_s59  # EXTERN

        'eivene_s9_r3442{#eivene_s9_r3442}' if eiveneLogic.r3442_condition(): # 'Keep playing zombie.{#eivene_s9_r3442}'
            # a24 # r3442
            jump eivene_s11

        'eivene_s9_r3443{#eivene_s9_r3443}' if eiveneLogic.r3443_condition(): # 'Keep playing zombie.{#eivene_s9_r3443}'
            # a25 # r3443
            jump morte_s59  # EXTERN

        'eivene_s9_r3444{#eivene_s9_r3444}': # 'Push her away, leave.{#eivene_s9_r3444}'
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    'eivene_s10{#eivene_s10}'
    # nr 'She looks shocked as you push her away. "Zomfie? You no zomfie!" She takes a step back, then before you can react, she claps her hands three times. In response, the tolling of a huge bell echoes throughout the Mortuary.{#eivene_s10_1}'

    menu:
        'eivene_s10_r3491{#eivene_s10_r3491}': # '"All right then…"{#eivene_s10_r3491}'
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    'eivene_s11{#eivene_s11}'
    # nr 'As she traces your arms and chest, you suddenly notice she seems to be examining your scars. She withdraws her talons, clicks them twice, then bends forward and examines some of the tattoos on your chest. "Hmmph. Who write on you? Hivers do that? No respect for zomfies. Zomfies, not paintings." She sniffs, then pokes one of your scars. "This one bad shape, many scars, no preserfs."{#eivene_s11_1}'

    menu:
        'eivene_s11_r3447{#eivene_s11_r3447}': # 'Wait.{#eivene_s11_r3447}'
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    'eivene_s12{#eivene_s12}'
    # nr 'Her talons suddenly hook into the thread you brought her, and lightning-like, she jabs another talon into the skin near one of your scars. It feels barely more than a pin-prick, but it looks like she„s about to start stitching you up.{#eivene_s12_1}'

    menu:
        'eivene_s12_r3449{#eivene_s12_r3449}': # 'Let her work.{#eivene_s12_r3449}'
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'eivene_s12_r3450{#eivene_s12_r3450}': # 'Push her away, leave.{#eivene_s12_r3450}'
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    'eivene_s13{#eivene_s13}'
    # nr 'The sensation is curiously painless as Ei-Vene begins to stitch up your scars.  When she is done, she sniffs you, frowns, then stabs her fingers into the embalming fluid. Within minutes, she has dabbed your body with the fluid… and strangely enough, it makes you feel *better.*{#eivene_s13_1}'

    menu:
        'eivene_s13_r3452{#eivene_s13_r3452}' if eiveneLogic.r3452_condition(): # 'Let her work.{#eivene_s13_r3452}'
            # a31 # r3452
            jump eivene_s14

        'eivene_s13_r3453{#eivene_s13_r3453}' if eiveneLogic.r3453_condition(): # 'Let her work.{#eivene_s13_r3453}'
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    'eivene_s14{#eivene_s14}'
    # nr 'Ei-Vene puts the last touches on your body, gives you another sniff, nods, then makes a shooing motion with her talons. "Done. Go - go."{#eivene_s14_1}'

    menu:
        'eivene_s14_r3456{#eivene_s14_r3456}' if eiveneLogic.r3456_condition(): # '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"{#eivene_s14_r3456}'
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        'eivene_s14_r3457{#eivene_s14_r3457}' if eiveneLogic.r3457_condition(): # '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"{#eivene_s14_r3457}'
            # a34 # r3457
            jump eivene_s24

        'eivene_s14_r4350{#eivene_s14_r4350}': # 'Leave.{#eivene_s14_r4350}'
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    'eivene_s15{#eivene_s15}'
    # nr 'You see Ei-Vene. She is still dissecting the corpse„s chest with her talons. The rhythm of the talons reminds you of something, but you can“t quite recall what.{#eivene_s15_1}'

    menu:
        'eivene_s15_r3459{#eivene_s15_r3459}' if eiveneLogic.r3459_condition(): # 'Watch her, study the motions of her hands.{#eivene_s15_r3459}'
            # a36 # r3459
            $ eiveneLogic.j61612_s15_r3459_action()
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'eivene_s15_r3463{#eivene_s15_r3463}' if eiveneLogic.r3463_condition(): # 'Tap her, get her attention.{#eivene_s15_r3463}'
            # a37 # r3463
            jump eivene_s17

        'eivene_s15_r4351{#eivene_s15_r4351}' if eiveneLogic.r4351_condition(): # 'Tap her, get her attention.{#eivene_s15_r4351}'
            # a38 # r4351
            jump eivene_s22

        'eivene_s15_r4352{#eivene_s15_r4352}': # 'Leave.{#eivene_s15_r4352}'
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    'eivene_s16{#eivene_s16}'
    # nr 'As you study the motion of Ei-Vene„s hands, you feel a prickling along your scalp, and then suddenly, you find your vision swimming, blurring, until…{#eivene_s16_1}'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    'eivene_s17{#eivene_s17}'
    # nr 'She turns, sees you, then frowns. "Dum zomfies." She clacks her taloned fingers together impatiently, then makes a stitching motion with her fingers. "Find thread and embalming fluid, bring here, to Ei-Vene. Go - Go - Go."{#eivene_s17_1}'

    menu:
        'eivene_s17_r3469{#eivene_s17_r3469}' if eiveneLogic.r3469_condition(): # 'Give her the thread and embalming fluid.{#eivene_s17_r3469}'
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        'eivene_s17_r3470{#eivene_s17_r3470}' if eiveneLogic.r3470_condition(): # '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"{#eivene_s17_r3470}'
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        'eivene_s17_r3497{#eivene_s17_r3497}' if eiveneLogic.r3497_condition(): # '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"{#eivene_s17_r3497}'
            # a42 # r3497
            jump eivene_s24

        'eivene_s17_r4357{#eivene_s17_r4357}': # 'Leave.{#eivene_s17_r4357}'
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    'eivene_s18{#eivene_s18}'
    # nr 'She leans forward, looks at your hand motions, then sniffs. Her hand darts into her robe, then emerges, a key hanging from her wickedly sharp index finger. She flicks it into your hand. "Bring back when done. Go - go."{#eivene_s18_1}'

    menu:
        'eivene_s18_r3494{#eivene_s18_r3494}' if eiveneLogic.r3494_condition(): # '"What„s wrong with your hands?"{#eivene_s18_r3494}'
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        'eivene_s18_r3495{#eivene_s18_r3495}' if eiveneLogic.r3495_condition(): # '"What„s wrong with your hands?"{#eivene_s18_r3495}'
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'eivene_s18_r3496{#eivene_s18_r3496}': # 'Leave.{#eivene_s18_r3496}'
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    'eivene_s19{#eivene_s19}'
    # nr 'The woman makes no response.{#eivene_s19_1}'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    'eivene_s20{#eivene_s20}'
    # nr 'She turns away… she makes no sign that she heard you.{#eivene_s20_1}'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    'eivene_s21{#eivene_s21}'
    # nr 'She turns away… she makes no sign that she heard you. Her hearing must be as poor as her eyesight.{#eivene_s21_1}'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    'eivene_s22{#eivene_s22}'
    # nr 'She turns, sees you, then frowns. "Dum zomfies." She clacks her taloned fingers together impatiently, then makes a stitching motion with her fingers. "You done. All stich up. Go - Go - Go."{#eivene_s22_1}'

    menu:
        'eivene_s22_r3501{#eivene_s22_r3501}' if eiveneLogic.r3501_condition(): # '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"{#eivene_s22_r3501}'
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        'eivene_s22_r3502{#eivene_s22_r3502}' if eiveneLogic.r3502_condition(): # '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"{#eivene_s22_r3502}'
            # a48 # r3502
            jump eivene_s24

        'eivene_s22_r4358{#eivene_s22_r4358}': # 'Leave.{#eivene_s22_r4358}'
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    'eivene_s23{#eivene_s23}'
    # nr 'She turns away… she makes no sign that she heard you. Her hearing must be as poor as her eyesight.{#eivene_s23_1}'

    menu:
        'eivene_s23_r3499{#eivene_s23_r3499}': # 'Leave.{#eivene_s23_r3499}'
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    'eivene_s24{#eivene_s24}'
    # nr 'She leans forward, looks at your hand motions, then sniffs. Her hand darts into her robe, rummages around for a moment, then she shrugs. "No key." She makes a shooing motion. "Go - go - go."{#eivene_s24_1}'

    menu:
        'eivene_s24_r4201{#eivene_s24_r4201}': # 'Leave.{#eivene_s24_r4201}'
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    'eivene_s25{#eivene_s25}'
    # nr 'You watch her for a while, and the rhythm of her hands causes two memories to surface - one of you playing some sort of stringed instrument, perhaps a harp. The other memory is that of stealing a purse… to your surprise, this last memory gives you a sudden temptation to pick Ei-Vene„s pocket.  ^NNOTE: You have regained a memory. Memories can give you additional experience points, skills, and may even lead to you gaining more memories later on.^-{#eivene_s25_1}'

    menu:
        'eivene_s25_r4354{#eivene_s25_r4354}' if eiveneLogic.r4354_condition(): # 'Tap her, get her attention.{#eivene_s25_r4354}'
            # a52 # r4354
            jump eivene_s17

        'eivene_s25_r4355{#eivene_s25_r4355}' if eiveneLogic.r4355_condition(): # 'Tap her, get her attention.{#eivene_s25_r4355}'
            # a53 # r4355
            jump eivene_s22

        'eivene_s25_r4356{#eivene_s25_r4356}': # 'Leave.{#eivene_s25_r4356}'
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    'eivene_s26{#eivene_s26}'
    # nr '…you are standing in front of a freshly-slain corpse, rigor mortis making a mockery of its smile; the number „42“ has been stitched onto its scalp. The zombie is lying on a slab, and you have just finished stitching up its chest. You have placed something inside, something that may prove useful if you come this way again…{#eivene_s26_1}'

    menu:
        'eivene_s26_r63478{#eivene_s26_r63478}' if eiveneLogic.r63478_condition(): # 'Echo: "Keep these things safe and wait for my return."{#eivene_s26_r63478}'
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'eivene_s26_r63479{#eivene_s26_r63479}' if eiveneLogic.r63479_condition(): # 'Echo: "Keep these things safe and wait for my return."{#eivene_s26_r63479}'
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    'eivene_s27{#eivene_s27}'
    # nr 'The memory of your voice is an echo, strange and hollow to your ears. You cross your arms in front of your chest, and to your surprise, the corpse does, too. After a moment, its hands fall back to its sides, and as it does, the vision fades… until you are watching Ei-Vene„s hands make their stitching motions once more.  ^NNOTE: You have regained a memory. Memories can give you additional experience points, skills, and may even lead to you gaining something else of value later on.^-{#eivene_s27_1}'

    menu:
        'eivene_s27_r63482{#eivene_s27_r63482}' if eiveneLogic.r63482_condition(): # 'Tap her, get her attention.{#eivene_s27_r63482}'
            # a57 # r63482
            jump eivene_s17

        'eivene_s27_r63481{#eivene_s27_r63481}' if eiveneLogic.r63481_condition(): # 'Tap her, get her attention.{#eivene_s27_r63481}'
            # a58 # r63481
            jump eivene_s22

        'eivene_s27_r63483{#eivene_s27_r63483}': # 'Leave.{#eivene_s27_r63483}'
            # a59 # r63483
            jump eivene_dispose
