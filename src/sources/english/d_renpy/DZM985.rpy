init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    nr 'This corpse - "985" - has stopped dead in its tracks; judging from the condition of its left leg, it looks as if some sort of tomb rot or corpse mold has eaten through its knee. The corpse is wobbling unsteadily back and forth, trying to keep its balance.'

    menu:
        'Give the corpse a push.' if zm985Logic.r45516_condition():
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'Give the corpse a push.' if zm985Logic.r45517_condition():
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'Try and help the corpse balance.' if zm985Logic.r45518_condition():
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'Try and help the corpse balance.' if zm985Logic.r45519_condition():
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm985Logic.r45520_condition():
            # a4 # r45520
            jump zm985_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm985Logic.r45521_condition():
            # a5 # r45521
            jump zm985_s2

        '"It was great talking to you. Farewell."':
            # a6 # r45522
            jump zm985_dispose

        'Leave the corpse in peace.':
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    nr 'The corpse stares straight ahead, oblivious. It makes no sign that it has heard you.'

    menu:
        'Leave the corpse in peace.':
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    nr 'There is a *crack* from the corpse„s left leg, and the body falls like a dead tree. Its torso strikes the stone flagstones and shatters like a rotten melon, filth and ichor gurgling from the cavity. To your surprise, no one seems to have noticed the corpse“s collapse… and even stranger, the left leg remains standing where the body was, as if at attention. After a moment, the leg falls over with a wet *thump.*'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    nr 'You reach out for the corpse„s left arm to help steady it. As you grab its arm, however, the corpse suddenly sways to the right, and you end up tugging the corpse rather than steadying it…'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    nr 'It looks like someone has replaced this corpse„s left arm and left leg with some spare limbs taken from other corpses. The left leg is shorter than the old one, but at least the corpse is able to stand now.'

    menu:
        '"Sorry about knocking you over before. It was an accident."' if zm985Logic.r45532_condition():
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '"Sorry about knocking you over before. It was an accident."' if zm985Logic.r45533_condition():
            # a11 # r45533
            jump zm985_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm985Logic.r45534_condition():
            # a12 # r45534
            jump zm985_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm985Logic.r45535_condition():
            # a13 # r45535
            jump zm985_s2

        '"It was great talking to you. Farewell."':
            # a14 # r45536
            jump zm985_dispose

        'Leave the corpse in peace.':
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    nr 'You reach out for the corpse„s left arm to help steady it. As you grab its arm, however, the corpse suddenly sways to the right, and you end up tugging the corpse rather than steadying it…'

    menu:
        '"Uh-oh…"':
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    nr 'As you gaze upon the putrefied remains of the corpse, you notice that its left arm seems intact - it has snapped from the torso during the fall, and it doesn„t appear to have been touched by the tomb rot that had spread through the rest of the body.'

    menu:
        '"Hmmm. I wonder if I could make use of that arm…"':
            # a17 # r64206
            jump zm985_dispose
