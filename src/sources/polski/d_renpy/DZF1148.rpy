init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0: # - # IF ~  True()
    nr 'Skóra tego kobiecego trupa jest pokryta tatuażami o wymyślnych kształtach. Na czole została odwinięta, aby można było wyżłobić numer "1148" na czaszce pod spodem. Jej usta zasznurowano grubymi, szorstkimi nićmi.'

    menu:
        '"Więc jak… masz jakieś plany na później?"' if zf1148Logic.r35243_condition():
            # a0 # r35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '"Więc jak… masz jakieś plany na później?"' if zf1148Logic.r35260_condition():
            # a1 # r35260
            jump zf1148_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zf1148Logic.r35261_condition():
            # a2 # r35261
            jump zf1148_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zf1148Logic.r35262_condition():
            # a3 # r35262
            jump zf1148_s2

        '"Miło było z tobą pogadać. Żegnaj."' if zf1148Logic.r35267_condition():
            # a4 # r35267
            jump morte_s362  # EXTERN

        'Zostaw truposza w spokoju.' if zf1148Logic.r35268_condition():
            # a5 # r35268
            jump morte_s362  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."' if zf1148Logic.r35269_condition():
            # a6 # r35269
            jump zf1148_dispose

        'Zostaw truposza w spokoju.' if zf1148Logic.r35270_condition():
            # a7 # r35270
            jump zf1148_dispose

        '"Miło było z tobą pogadać. Żegnaj."' if zf1148Logic.r35271_condition():
            # a8 # r35271
            jump zf1148_dispose

        'Zostaw truposza w spokoju.' if zf1148Logic.r35272_condition():
            # a9 # r35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        '"A zatem żegnaj."' if zf1148Logic.r35245_condition():
            # a10 # r35245
            jump morte_s362  # EXTERN

        '"A zatem żegnaj."' if zf1148Logic.r35258_condition():
            # a11 # r35258
            jump zf1148_dispose

        '"A zatem żegnaj."' if zf1148Logic.r35259_condition():
            # a12 # r35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        '"A zatem żegnaj."' if zf1148Logic.r35264_condition():
            # a13 # r35264
            jump morte_s362  # EXTERN

        '"A zatem żegnaj."' if zf1148Logic.r35265_condition():
            # a14 # r35265
            jump zf1148_dispose

        '"A zatem żegnaj."' if zf1148Logic.r35266_condition():
            # a15 # r35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3: # - # IF ~  False()
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
