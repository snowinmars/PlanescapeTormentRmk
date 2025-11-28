init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr 'This reanimated corpse carries with it the stench of charred meat and burning textiles. Fairly fresh scorch marks run the length of its right side; perhaps it stood too close to a fire and began to smolder. The number "199" has been etched onto its forehead and its lips are stitched together.{#zm199_s0_1}'

    menu:
        '"So… seen anything interesting going on?"{#zm199_s0_r34976}' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '"So… seen anything interesting going on?"{#zm199_s0_r34979}' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm199_s0_r34980}' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zm199_s0_r34981}' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '"It was great talking to you. Farewell."{#zm199_s0_r34984}':
            # a4 # r34984
            jump zm199_dispose

        'Leave the corpse in peace.{#zm199_s0_r34985}':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.{#zm199_s1_1}'

    menu:
        'Leave the corpse in peace.{#zm199_s1_r34978}':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zm199_s2_1}'

    menu:
        'Leave the corpse in peace.{#zm199_s2_r34983}':
            # a7 # r34983
            jump zm199_dispose
