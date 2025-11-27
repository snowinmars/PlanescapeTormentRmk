init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr 'The forehead of this heavily muscled corpse is a mass of scar tissue, as if in life he had used his head to bludgeon opponents in battle. The number "1508" has been stitched across it in red thread, and his mouth is sewn shut with coarse black fiber. He smells faintly of embalming fluid.{#zm1508_s0_}'

    menu:
        '"So… seen anything interesting going on?"{#zm1508_s0_r46746}' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"So… seen anything interesting going on?"{#zm1508_s0_r46749}' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm1508_s0_r46750}' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zm1508_s0_r46751}' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"It was great talking to you. Farewell."{#zm1508_s0_r46754}':
            # a4 # r46754
            jump zm1508_dispose

        'Leave the corpse in peace.{#zm1508_s0_r46755}':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.{#zm1508_s1_}'

    menu:
        'Leave the corpse in peace.{#zm1508_s1_r46748}':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zm1508_s2_}'

    menu:
        'Leave the corpse in peace.{#zm1508_s2_r46753}':
            # a7 # r46753
            jump zm1508_dispose
