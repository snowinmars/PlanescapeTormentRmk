init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    'zm985_s0{#zm985_s0}'
    # nr 'This corpse - "985" - has stopped dead in its tracks; judging from the condition of its left leg, it looks as if some sort of tomb rot or corpse mold has eaten through its knee. The corpse is wobbling unsteadily back and forth, trying to keep its balance.{#zm985_s0_1}'

    menu:
        'zm985_s0_r45516{#zm985_s0_r45516}' if zm985Logic.r45516_condition(): # 'Give the corpse a push.{#zm985_s0_r45516}'
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'zm985_s0_r45517{#zm985_s0_r45517}' if zm985Logic.r45517_condition(): # 'Give the corpse a push.{#zm985_s0_r45517}'
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'zm985_s0_r45518{#zm985_s0_r45518}' if zm985Logic.r45518_condition(): # 'Try and help the corpse balance.{#zm985_s0_r45518}'
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'zm985_s0_r45519{#zm985_s0_r45519}' if zm985Logic.r45519_condition(): # 'Try and help the corpse balance.{#zm985_s0_r45519}'
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        'zm985_s0_r45520{#zm985_s0_r45520}' if zm985Logic.r45520_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm985_s0_r45520}'
            # a4 # r45520
            jump zm985_s1

        'zm985_s0_r45521{#zm985_s0_r45521}' if zm985Logic.r45521_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm985_s0_r45521}'
            # a5 # r45521
            jump zm985_s2

        'zm985_s0_r45522{#zm985_s0_r45522}': # '"It was great talking to you. Farewell."{#zm985_s0_r45522}'
            # a6 # r45522
            jump zm985_dispose

        'zm985_s0_r45523{#zm985_s0_r45523}': # 'Leave the corpse in peace.{#zm985_s0_r45523}'
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    'zm985_s1{#zm985_s1}'
    # nr 'The corpse stares straight ahead, oblivious. It makes no sign that it has heard you.{#zm985_s1_1}'

    menu:
        'zm985_s1_r45525{#zm985_s1_r45525}': # 'Leave the corpse in peace.{#zm985_s1_r45525}'
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    'zm985_s2{#zm985_s2}'
    # nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zm985_s2_1}'

    menu:
        'zm985_s2_r45527{#zm985_s2_r45527}': # 'Leave the corpse in peace.{#zm985_s2_r45527}'
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    'zm985_s3{#zm985_s3}'
    # nr 'There is a *crack* from the corpse„s left leg, and the body falls like a dead tree. Its torso strikes the stone flagstones and shatters like a rotten melon, filth and ichor gurgling from the cavity. To your surprise, no one seems to have noticed the corpse“s collapse… and even stranger, the left leg remains standing where the body was, as if at attention. After a moment, the leg falls over with a wet *thump.*{#zm985_s3_1}'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    'zm985_s4{#zm985_s4}'
    # nr 'You reach out for the corpse„s left arm to help steady it. As you grab its arm, however, the corpse suddenly sways to the right, and you end up tugging the corpse rather than steadying it…{#zm985_s4_1}'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    'zm985_s5{#zm985_s5}'
    # nr 'It looks like someone has replaced this corpse„s left arm and left leg with some spare limbs taken from other corpses. The left leg is shorter than the old one, but at least the corpse is able to stand now.{#zm985_s5_1}'

    menu:
        'zm985_s5_r45532{#zm985_s5_r45532}' if zm985Logic.r45532_condition(): # '"Sorry about knocking you over before. It was an accident."{#zm985_s5_r45532}'
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        'zm985_s5_r45533{#zm985_s5_r45533}' if zm985Logic.r45533_condition(): # '"Sorry about knocking you over before. It was an accident."{#zm985_s5_r45533}'
            # a11 # r45533
            jump zm985_s1

        'zm985_s5_r45534{#zm985_s5_r45534}' if zm985Logic.r45534_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm985_s5_r45534}'
            # a12 # r45534
            jump zm985_s1

        'zm985_s5_r45535{#zm985_s5_r45535}' if zm985Logic.r45535_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm985_s5_r45535}'
            # a13 # r45535
            jump zm985_s2

        'zm985_s5_r45536{#zm985_s5_r45536}': # '"It was great talking to you. Farewell."{#zm985_s5_r45536}'
            # a14 # r45536
            jump zm985_dispose

        'zm985_s5_r45537{#zm985_s5_r45537}': # 'Leave the corpse in peace.{#zm985_s5_r45537}'
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    'zm985_s6{#zm985_s6}'
    # nr 'You reach out for the corpse„s left arm to help steady it. As you grab its arm, however, the corpse suddenly sways to the right, and you end up tugging the corpse rather than steadying it…{#zm985_s6_1}'

    menu:
        'zm985_s6_r45539{#zm985_s6_r45539}': # '"Uh-oh…"{#zm985_s6_r45539}'
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    'zm985_s7{#zm985_s7}'
    # nr 'As you gaze upon the putrefied remains of the corpse, you notice that its left arm seems intact - it has snapped from the torso during the fall, and it doesn„t appear to have been touched by the tomb rot that had spread through the rest of the body.{#zm985_s7_1}'

    menu:
        'zm985_s7_r64206{#zm985_s7_r64206}': # '"Hmmm. I wonder if I could make use of that arm…"{#zm985_s7_r64206}'
            # a17 # r64206
            jump zm985_dispose
