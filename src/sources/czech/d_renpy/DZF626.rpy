init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr 'Levá část ženina obličeje vypadá jako po ráně palicí, maso jí z lebky visí ve zhmožděných, nateklých chumáčích. Do pravé tváře, těsně pod oko, jí někdo vyšil číslo "626".'

    menu:
        '"Uh… máš pěkně škaredou ránu."' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '"Uh… máš pěkně škaredou ránu."' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        'Nechej mrtvolu být.' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        'Nechej mrtvolu být.' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        'Nechej mrtvolu být.' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola se na tebe dál dívá svým jediným dobrým okem.'

    menu:
        '"Sbohem tedy."' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '"Sbohem tedy."' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '"Sbohem tedy."' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr 'Tělo se nehýbe. Asi už shnilo příliš.'

    menu:
        '"Sbohem tedy."' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '"Sbohem tedy."' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '"Sbohem tedy."' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
