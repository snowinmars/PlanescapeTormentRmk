init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'This corpse„s slightly misshapen head appears to be held together by a number of narrow metal bands bolted directly onto the skull. A rusting iron plate over its left eye has the number "475" etched into it. Its mouth is bolted shut, and it reeks of embalming fluid.'

    menu:
        '"So… seen anything interesting going on?"' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"So… seen anything interesting going on?"' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"It was great talking to you. Farewell."':
            # a4 # r6591
            jump zm475_dispose

        'Leave the corpse in peace.':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Leave the corpse in peace.':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a7 # r6594
            jump zm475_dispose
