init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    nr 'Ten trup kobiety porusza się po pokoju od płyty do płyty. Włosy ma zaplecione w długi warkocz i zaplecione w pętlę wokół szyi. Ktoś wymalował jej na czole przez szablon numer "1096" i zaszył mocno wargi.'

    menu:
        '"Ehm… ładny warkocz."' if zf1096Logic.r35083_condition():
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        '"Ehm… ładny warkocz."' if zf1096Logic.r35100_condition():
            # a1 # r35100
            jump zf1096_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zf1096Logic.r35101_condition():
            # a2 # r35101
            jump zf1096_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zf1096Logic.r35102_condition():
            # a3 # r35102
            jump zf1096_s2

        '"Miło było z tobą pogadać. Żegnaj."' if zf1096Logic.r35107_condition():
            # a4 # r35107
            jump morte_s342  # EXTERN

        'Zostaw truposza w spokoju.' if zf1096Logic.r35108_condition():
            # a5 # r35108
            jump morte_s342  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."' if zf1096Logic.r35109_condition():
            # a6 # r35109
            jump zf1096_dispose

        'Zostaw truposza w spokoju.' if zf1096Logic.r35110_condition():
            # a7 # r35110
            jump zf1096_dispose

        '"Miło było z tobą pogadać. Żegnaj."' if zf1096Logic.r35111_condition():
            # a8 # r35111
            jump zf1096_dispose

        'Zostaw truposza w spokoju.' if zf1096Logic.r35112_condition():
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    nr 'Trup nie odpowiada. Wątpliwe, czy w ogóle wie, że tu jesteś.'

    menu:
        '"A zatem żegnaj."' if zf1096Logic.r35085_condition():
            # a10 # r35085
            jump morte_s342  # EXTERN

        '"A zatem żegnaj."' if zf1096Logic.r35098_condition():
            # a11 # r35098
            jump zf1096_dispose

        '"A zatem żegnaj."' if zf1096Logic.r35099_condition():
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    nr 'Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        '"A zatem żegnaj."' if zf1096Logic.r35104_condition():
            # a13 # r35104
            jump morte_s342  # EXTERN

        '"A zatem żegnaj."' if zf1096Logic.r35105_condition():
            # a14 # r35105
            jump zf1096_dispose

        '"A zatem żegnaj."' if zf1096Logic.r35106_condition():
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    nr 'Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
