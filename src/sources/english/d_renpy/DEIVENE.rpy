init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    nr 'You see a slight young woman with pale features. The sunken flesh around her cheeks and neck makes her appear as if she is starving. She seems intent on dissecting the corpse in front of her, prodding the chest with a finger.'

    menu:
        '"Greetings."':
            # a0 # r3406
            jump eivene_s1

        'Leave her alone.':
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    nr 'The woman does not respond… she seems too intent on the body in front of her. As you watch her work, you suddenly notice her hands… her fingers are talons. They are darting in and out of the corpse„s chest cavity like knives, removing organs.'

    menu:
        '"I said, Greetings."' if eiveneLogic.r3412_condition():
            # a2 # r3412
            jump eivene_s2

        '"I said, Greetings."' if eiveneLogic.r3413_condition():
            # a3 # r3413
            jump eivene_s3

        '"What„s wrong with your hands?"' if eiveneLogic.r3414_condition():
            # a4 # r3414
            jump eivene_s2

        '"What„s wrong with your hands?"' if eiveneLogic.r3415_condition():
            # a5 # r3415
            jump eivene_s19

        'Leave her alone.':
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    nr 'The woman makes no response.'

    menu:
        'Tap the woman, get her attention.':
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'Leave her alone.':
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    nr 'The woman makes no response.'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    nr 'The woman jumps and whips around to face you… her eyes are a rotting yellow, with small orange dots for pupils. As she sees you, her expression changes from surprise to irritation, and she frowns at you.'

    menu:
        '"Uh… greetings."':
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    nr 'She doesn„t seem to have heard you. She leans forward, squinting, as if she can“t quite make you out… whatever is wrong with her eyes must make her terribly near-sighted. "You -" She clacks her taloned fingers together, then makes a strange motion with her hands. "Find THREAD and EM-balming juice, bring HERE, to Ei-Vene. Go - Go - Go."  ^NNOTE: You have been assigned a quest. Quests are displayed in your diary and in the "Quests" portion of your journal. To see all the quests you„ve been assigned (and their status), simply select "quests" from the journal menu.^-'

    menu:
        'Give her the thread and embalming fluid.' if eiveneLogic.r3424_condition():
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        '"I had some questions first…"' if eiveneLogic.r3425_condition():
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        '"I had some questions first…"' if eiveneLogic.r3426_condition():
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        '"What„s wrong with your hands?"' if eiveneLogic.r3427_condition():
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        '"What„s wrong with your hands?"' if eiveneLogic.r3428_condition():
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'Leave.':
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    nr 'She turns away… she makes no sign that she heard you. Her hearing must be as poor as her eyesight.'

    menu:
        'Tap her on the shoulder, get her attention.':
            # a16 # r3431
            jump eivene_s17

        'Leave.':
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    nr 'Without missing a beat, Ei-Vene snaps the thread from your hands and hooks it around one of her talons, then begins sewing up the corpse„s chest. She then takes the embalming fluid, and begins to apply a layer to the corpse.'

    menu:
        'Wait.':
            # a18 # r3434
            jump eivene_s9

        'Leave.':
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    nr 'As you are about to leave, Ei-Vene speaks: "Stay. You - next."'

    menu:
        'Wait.':
            # a20 # r3437
            jump eivene_s9

        'Leave. Quickly.':
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    nr 'Within minutes, she is finished. She clicks her talons, then turns to face you. To your surprise, she extends her hand and drags her talons along your arms and chest.'

    menu:
        '"Uh, it„s not that I“m not flattered, but…"' if eiveneLogic.r3440_condition():
            # a22 # r3440
            jump eivene_s11

        '"Uh, it„s not that I“m not flattered, but…"' if eiveneLogic.r3441_condition():
            # a23 # r3441
            jump morte_s59  # EXTERN

        'Keep playing zombie.' if eiveneLogic.r3442_condition():
            # a24 # r3442
            jump eivene_s11

        'Keep playing zombie.' if eiveneLogic.r3443_condition():
            # a25 # r3443
            jump morte_s59  # EXTERN

        'Push her away, leave.':
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    nr 'She looks shocked as you push her away. "Zomfie? You no zomfie!" She takes a step back, then before you can react, she claps her hands three times. In response, the tolling of a huge bell echoes throughout the Mortuary.'

    menu:
        '"All right then…"':
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    nr 'As she traces your arms and chest, you suddenly notice she seems to be examining your scars. She withdraws her talons, clicks them twice, then bends forward and examines some of the tattoos on your chest. "Hmmph. Who write on you? Hivers do that? No respect for zomfies. Zomfies, not paintings." She sniffs, then pokes one of your scars. "This one bad shape, many scars, no preserfs."'

    menu:
        'Wait.':
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    nr 'Her talons suddenly hook into the thread you brought her, and lightning-like, she jabs another talon into the skin near one of your scars. It feels barely more than a pin-prick, but it looks like she„s about to start stitching you up.'

    menu:
        'Let her work.':
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'Push her away, leave.':
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    nr 'The sensation is curiously painless as Ei-Vene begins to stitch up your scars.  When she is done, she sniffs you, frowns, then stabs her fingers into the embalming fluid. Within minutes, she has dabbed your body with the fluid… and strangely enough, it makes you feel *better.*'

    menu:
        'Let her work.' if eiveneLogic.r3452_condition():
            # a31 # r3452
            jump eivene_s14

        'Let her work.' if eiveneLogic.r3453_condition():
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    nr 'Ei-Vene puts the last touches on your body, gives you another sniff, nods, then makes a shooing motion with her talons. "Done. Go - go."'

    menu:
        '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"' if eiveneLogic.r3456_condition():
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"' if eiveneLogic.r3457_condition():
            # a34 # r3457
            jump eivene_s24

        'Leave.':
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    nr 'You see Ei-Vene. She is still dissecting the corpse„s chest with her talons. The rhythm of the talons reminds you of something, but you can“t quite recall what.'

    menu:
        'Watch her, study the motions of her hands.' if eiveneLogic.r3459_condition():
            # a36 # r3459
            $ eiveneLogic.j61612_s15_r3459_action()
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'Tap her, get her attention.' if eiveneLogic.r3463_condition():
            # a37 # r3463
            jump eivene_s17

        'Tap her, get her attention.' if eiveneLogic.r4351_condition():
            # a38 # r4351
            jump eivene_s22

        'Leave.':
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    nr 'As you study the motion of Ei-Vene„s hands, you feel a prickling along your scalp, and then suddenly, you find your vision swimming, blurring, until…'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    nr 'She turns, sees you, then frowns. "Dum zomfies." She clacks her taloned fingers together impatiently, then makes a stitching motion with her fingers. "Find thread and embalming fluid, bring here, to Ei-Vene. Go - Go - Go."'

    menu:
        'Give her the thread and embalming fluid.' if eiveneLogic.r3469_condition():
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"' if eiveneLogic.r3470_condition():
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"' if eiveneLogic.r3497_condition():
            # a42 # r3497
            jump eivene_s24

        'Leave.':
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    nr 'She leans forward, looks at your hand motions, then sniffs. Her hand darts into her robe, then emerges, a key hanging from her wickedly sharp index finger. She flicks it into your hand. "Bring back when done. Go - go."'

    menu:
        '"What„s wrong with your hands?"' if eiveneLogic.r3494_condition():
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        '"What„s wrong with your hands?"' if eiveneLogic.r3495_condition():
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'Leave.':
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    nr 'The woman makes no response.'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    nr 'She turns away… she makes no sign that she heard you.'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    nr 'She turns away… she makes no sign that she heard you. Her hearing must be as poor as her eyesight.'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    nr 'She turns, sees you, then frowns. "Dum zomfies." She clacks her taloned fingers together impatiently, then makes a stitching motion with her fingers. "You done. All stich up. Go - Go - Go."'

    menu:
        '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"' if eiveneLogic.r3501_condition():
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        '"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"' if eiveneLogic.r3502_condition():
            # a48 # r3502
            jump eivene_s24

        'Leave.':
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    nr 'She turns away… she makes no sign that she heard you. Her hearing must be as poor as her eyesight.'

    menu:
        'Leave.':
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    nr 'She leans forward, looks at your hand motions, then sniffs. Her hand darts into her robe, rummages around for a moment, then she shrugs. "No key." She makes a shooing motion. "Go - go - go."'

    menu:
        'Leave.':
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    nr 'You watch her for a while, and the rhythm of her hands causes two memories to surface - one of you playing some sort of stringed instrument, perhaps a harp. The other memory is that of stealing a purse… to your surprise, this last memory gives you a sudden temptation to pick Ei-Vene„s pocket.  ^NNOTE: You have regained a memory. Memories can give you additional experience points, skills, and may even lead to you gaining more memories later on.^-'

    menu:
        'Tap her, get her attention.' if eiveneLogic.r4354_condition():
            # a52 # r4354
            jump eivene_s17

        'Tap her, get her attention.' if eiveneLogic.r4355_condition():
            # a53 # r4355
            jump eivene_s22

        'Leave.':
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    nr '…you are standing in front of a freshly-slain corpse, rigor mortis making a mockery of its smile; the number „42“ has been stitched onto its scalp. The zombie is lying on a slab, and you have just finished stitching up its chest. You have placed something inside, something that may prove useful if you come this way again…'

    menu:
        'Echo: "Keep these things safe and wait for my return."' if eiveneLogic.r63478_condition():
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'Echo: "Keep these things safe and wait for my return."' if eiveneLogic.r63479_condition():
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    nr 'The memory of your voice is an echo, strange and hollow to your ears. You cross your arms in front of your chest, and to your surprise, the corpse does, too. After a moment, its hands fall back to its sides, and as it does, the vision fades… until you are watching Ei-Vene„s hands make their stitching motions once more.  ^NNOTE: You have regained a memory. Memories can give you additional experience points, skills, and may even lead to you gaining something else of value later on.^-'

    menu:
        'Tap her, get her attention.' if eiveneLogic.r63482_condition():
            # a57 # r63482
            jump eivene_s17

        'Tap her, get her attention.' if eiveneLogic.r63481_condition():
            # a58 # r63481
            jump eivene_s22

        'Leave.':
            # a59 # r63483
            jump eivene_dispose
