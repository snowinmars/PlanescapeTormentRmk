init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr 'Lewa strona twarzy tej martwej kobiety wygląda tak, jakby zapadła się po uderzeniu pałką. Jej skóra, nad rozwaloną czaszką, jest posiniaczona i nabrzmiała. Na prawym policzku, zaraz pod okiem, ma wyszyty numer "626".'

    menu:
        '"Uch… co za szkaradna rana."' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '"Uch… co za szkaradna rana."' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '"Miło było z tobą pogadać. Żegnaj."' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        'Zostaw truposza w spokoju.' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        'Zostaw truposza w spokoju.' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        '"Miło było z tobą pogadać. Żegnaj."' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        'Zostaw truposza w spokoju.' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż patrzy na ciebie swoim jedynym całym okiem.'

    menu:
        '"A zatem żegnaj."' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '"A zatem żegnaj."' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '"A zatem żegnaj."' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr 'Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        '"A zatem żegnaj."' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '"A zatem żegnaj."' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '"A zatem żegnaj."' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
