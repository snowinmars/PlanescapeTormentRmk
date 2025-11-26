init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'The shambling corpse gazes at you with vacant eyes. The number "463" is carved into his forehead, and his lips have been stitched closed. The faint smell of formaldehyde emanates from the body.'

    menu:
        '"So… seen anything interesting going on?"' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"So… seen anything interesting going on?"' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"It was great talking to you. Farewell."':
            # a4 # r6491
            jump zm463_dispose

        'Leave the corpse in peace.':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Leave the corpse in peace.':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a7 # r6494
            jump zm463_dispose
