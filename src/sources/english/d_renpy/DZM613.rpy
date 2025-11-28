init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr 'The numbers "613" are cut deeply into this plodding corpse„s forehead, but an inch of shredded, leathery skin separates the "1" and the "3." Looking closely, you can barely make out a "2" carved there.{#zm613_s0_1}'

    menu:
        '"So… seen anything interesting going on?"{#zm613_s0_r6543}' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '"So… seen anything interesting going on?"{#zm613_s0_r6544}' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm613_s0_r6545}' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zm613_s0_r6546}' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '"It was great talking to you. Farewell."{#zm613_s0_r6547}':
            # a4 # r6547
            jump zm613_dispose

        'Leave the corpse in peace.{#zm613_s0_r6548}':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.{#zm613_s1_1}'

    menu:
        'Leave the corpse in peace.{#zm613_s1_r6549}':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zm613_s2_1}'

    menu:
        'Leave the corpse in peace.{#zm613_s2_r6550}':
            # a7 # r6550
            jump zm613_dispose
