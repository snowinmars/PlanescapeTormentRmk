init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr 'The left side of this woman„s face looks as if it was caved in with a club, and her flesh sags in bruised, swollen clumps over her ruined skull. The number "626" has been stitched onto the corpse“s right cheek, just below the eye.'

    menu:
        '"Uh… nasty wound you„ve got there."' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '"Uh… nasty wound you„ve got there."' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '"It was great talking to you. Farewell."' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        'Leave the corpse in peace.' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        '"It was great talking to you. Farewell."' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        'Leave the corpse in peace.' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        '"It was great talking to you. Farewell."' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        'Leave the corpse in peace.' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you with its one good eye.'

    menu:
        '"Farewell then."' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '"Farewell then."' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '"Farewell then."' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr 'This corpse does not stir. It looks like it is too far gone to answer any of your questions.'

    menu:
        '"Farewell then."' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '"Farewell then."' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '"Farewell then."' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
