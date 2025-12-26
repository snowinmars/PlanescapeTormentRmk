init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    'zf1096_s0{#zf1096_s0}'
    # nr 'This female corpse is making the rounds from slab to slab in the room. Her hair is knotted into a long braid and looped around her neck like a noose. Someone has stenciled the number "1096" onto her forehead, and her lips have been stitched closed.{#zf1096_s0_1}'

    menu:
        'zf1096_s0_r35083{#zf1096_s0_r35083}' if zf1096Logic.r35083_condition(): # '"Uh… nice braid."{#zf1096_s0_r35083}'
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        'zf1096_s0_r35100{#zf1096_s0_r35100}' if zf1096Logic.r35100_condition(): # '"Uh… nice braid."{#zf1096_s0_r35100}'
            # a1 # r35100
            jump zf1096_s1

        'zf1096_s0_r35101{#zf1096_s0_r35101}' if zf1096Logic.r35101_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zf1096_s0_r35101}'
            # a2 # r35101
            jump zf1096_s1

        'zf1096_s0_r35102{#zf1096_s0_r35102}' if zf1096Logic.r35102_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zf1096_s0_r35102}'
            # a3 # r35102
            jump zf1096_s2

        'zf1096_s0_r35107{#zf1096_s0_r35107}' if zf1096Logic.r35107_condition(): # '"It was great talking to you. Farewell."{#zf1096_s0_r35107}'
            # a4 # r35107
            jump morte_s342  # EXTERN

        'zf1096_s0_r35108{#zf1096_s0_r35108}' if zf1096Logic.r35108_condition(): # 'Leave the corpse in peace.{#zf1096_s0_r35108}'
            # a5 # r35108
            jump morte_s342  # EXTERN

        'zf1096_s0_r35109{#zf1096_s0_r35109}' if zf1096Logic.r35109_condition(): # '"It was great talking to you. Farewell."{#zf1096_s0_r35109}'
            # a6 # r35109
            jump zf1096_dispose

        'zf1096_s0_r35110{#zf1096_s0_r35110}' if zf1096Logic.r35110_condition(): # 'Leave the corpse in peace.{#zf1096_s0_r35110}'
            # a7 # r35110
            jump zf1096_dispose

        'zf1096_s0_r35111{#zf1096_s0_r35111}' if zf1096Logic.r35111_condition(): # '"It was great talking to you. Farewell."{#zf1096_s0_r35111}'
            # a8 # r35111
            jump zf1096_dispose

        'zf1096_s0_r35112{#zf1096_s0_r35112}' if zf1096Logic.r35112_condition(): # 'Leave the corpse in peace.{#zf1096_s0_r35112}'
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    'zf1096_s1{#zf1096_s1}'
    # nr 'The corpse does not respond. You doubt it even knows you„re there.{#zf1096_s1_1}'

    menu:
        'zf1096_s1_r35085{#zf1096_s1_r35085}' if zf1096Logic.r35085_condition(): # '"Farewell then."{#zf1096_s1_r35085}'
            # a10 # r35085
            jump morte_s342  # EXTERN

        'zf1096_s1_r35098{#zf1096_s1_r35098}' if zf1096Logic.r35098_condition(): # '"Farewell then."{#zf1096_s1_r35098}'
            # a11 # r35098
            jump zf1096_dispose

        'zf1096_s1_r35099{#zf1096_s1_r35099}' if zf1096Logic.r35099_condition(): # '"Farewell then."{#zf1096_s1_r35099}'
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    'zf1096_s2{#zf1096_s2}'
    # nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zf1096_s2_1}'

    menu:
        'zf1096_s2_r35104{#zf1096_s2_r35104}' if zf1096Logic.r35104_condition(): # '"Farewell then."{#zf1096_s2_r35104}'
            # a13 # r35104
            jump morte_s342  # EXTERN

        'zf1096_s2_r35105{#zf1096_s2_r35105}' if zf1096Logic.r35105_condition(): # '"Farewell then."{#zf1096_s2_r35105}'
            # a14 # r35105
            jump zf1096_dispose

        'zf1096_s2_r35106{#zf1096_s2_r35106}' if zf1096Logic.r35106_condition(): # '"Farewell then."{#zf1096_s2_r35106}'
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    'zf1096_s3{#zf1096_s3}'
    # nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zf1096_s3_1}'

    menu:
