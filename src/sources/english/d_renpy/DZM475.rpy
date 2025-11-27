init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'This corpse„s slightly misshapen head appears to be held together by a number of narrow metal bands bolted directly onto the skull. A rusting iron plate over its left eye has the number "475" etched into it. Its mouth is bolted shut, and it reeks of embalming fluid.{#zm475_s0_}'

    menu:
        '"So… seen anything interesting going on?"{#zm475_s0_r6587}' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"So… seen anything interesting going on?"{#zm475_s0_r6588}' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm475_s0_r6589}' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zm475_s0_r6590}' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"It was great talking to you. Farewell."{#zm475_s0_r6591}':
            # a4 # r6591
            jump zm475_dispose

        'Leave the corpse in peace.{#zm475_s0_r6592}':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.{#zm475_s1_}'

    menu:
        'Leave the corpse in peace.{#zm475_s1_r6593}':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zm475_s2_}'

    menu:
        'Leave the corpse in peace.{#zm475_s2_r6594}':
            # a7 # r6594
            jump zm475_dispose
