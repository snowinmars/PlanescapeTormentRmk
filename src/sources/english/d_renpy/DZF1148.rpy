init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0: # - # IF ~  True()
    nr 'The skin of this female corpse is heavily tattooed with intricate patterns. The skin of her brow has been peeled back so that the number "1148" could be chiseled into the skull beneath. Her mouth has been sealed shut with thick, rough stitching.'

    menu:
        '"So… doing anything later?"' if zf1148Logic.r35243_condition():
            # a0 # r35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '"So… doing anything later?"' if zf1148Logic.r35260_condition():
            # a1 # r35260
            jump zf1148_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zf1148Logic.r35261_condition():
            # a2 # r35261
            jump zf1148_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zf1148Logic.r35262_condition():
            # a3 # r35262
            jump zf1148_s2

        '"It was great talking to you. Farewell."' if zf1148Logic.r35267_condition():
            # a4 # r35267
            jump morte_s362  # EXTERN

        'Leave the corpse in peace.' if zf1148Logic.r35268_condition():
            # a5 # r35268
            jump morte_s362  # EXTERN

        '"It was great talking to you. Farewell."' if zf1148Logic.r35269_condition():
            # a6 # r35269
            jump zf1148_dispose

        'Leave the corpse in peace.' if zf1148Logic.r35270_condition():
            # a7 # r35270
            jump zf1148_dispose

        '"It was great talking to you. Farewell."' if zf1148Logic.r35271_condition():
            # a8 # r35271
            jump zf1148_dispose

        'Leave the corpse in peace.' if zf1148Logic.r35272_condition():
            # a9 # r35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        '"Farewell then."' if zf1148Logic.r35245_condition():
            # a10 # r35245
            jump morte_s362  # EXTERN

        '"Farewell then."' if zf1148Logic.r35258_condition():
            # a11 # r35258
            jump zf1148_dispose

        '"Farewell then."' if zf1148Logic.r35259_condition():
            # a12 # r35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2: # from 0.3
    nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        '"Farewell then."' if zf1148Logic.r35264_condition():
            # a13 # r35264
            jump morte_s362  # EXTERN

        '"Farewell then."' if zf1148Logic.r35265_condition():
            # a14 # r35265
            jump zf1148_dispose

        '"Farewell then."' if zf1148Logic.r35266_condition():
            # a15 # r35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3: # - # IF ~  False()
    nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
