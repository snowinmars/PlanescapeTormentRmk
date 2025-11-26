init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    nr 'Mrtvola ženy chodí v místnosti od desky k desce. Její vlasy jsou zapleteny do dlouhého copu, který má obtočen kolem krku jako oprátku. Někdo jí na čelo napsal číslo "1096" a pevně sešil její rty dohromady.'

    menu:
        '"Uh… hezký cop."' if zf1096Logic.r35083_condition():
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        '"Uh… hezký cop."' if zf1096Logic.r35100_condition():
            # a1 # r35100
            jump zf1096_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zf1096Logic.r35101_condition():
            # a2 # r35101
            jump zf1096_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.' if zf1096Logic.r35102_condition():
            # a3 # r35102
            jump zf1096_s2

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf1096Logic.r35107_condition():
            # a4 # r35107
            jump morte_s342  # EXTERN

        'Nechej mrtvolu být.' if zf1096Logic.r35108_condition():
            # a5 # r35108
            jump morte_s342  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf1096Logic.r35109_condition():
            # a6 # r35109
            jump zf1096_dispose

        'Nechej mrtvolu být.' if zf1096Logic.r35110_condition():
            # a7 # r35110
            jump zf1096_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf1096Logic.r35111_condition():
            # a8 # r35111
            jump zf1096_dispose

        'Nechej mrtvolu být.' if zf1096Logic.r35112_condition():
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola neodpovídá. Pochybuješ, že o tobě vůbec ví.'

    menu:
        '"Sbohem tedy."' if zf1096Logic.r35085_condition():
            # a10 # r35085
            jump morte_s342  # EXTERN

        '"Sbohem tedy."' if zf1096Logic.r35098_condition():
            # a11 # r35098
            jump zf1096_dispose

        '"Sbohem tedy."' if zf1096Logic.r35099_condition():
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    nr 'Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.'

    menu:
        '"Sbohem tedy."' if zf1096Logic.r35104_condition():
            # a13 # r35104
            jump morte_s342  # EXTERN

        '"Sbohem tedy."' if zf1096Logic.r35105_condition():
            # a14 # r35105
            jump zf1096_dispose

        '"Sbohem tedy."' if zf1096Logic.r35106_condition():
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    nr 'Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.'

    menu:
