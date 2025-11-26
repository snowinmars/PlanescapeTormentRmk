init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf891_logic import Zf891Logic
    zf891Logic = Zf891Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF891.DLG
# ###


# s0 # say35274
label zf891_s0: # - # IF ~  True()
    nr 'Ten szczególnie odrażająco wyglądający trup kobiety nie ma uszu, nosa i warg. Ktokolwiek go przygotowywał, musiał bardzo mocno naciągnąć skórę wokół ust, aby zszyć szczęki razem; poprzez otwartą szparę wciąż widać rząd krzywych, pożółkłych zębów. Na czole wygrawerowano jej numer "891".'

    menu:
        '"Więc jak… masz jakieś plany na później?"' if zf891Logic.r35275_condition():
            # a0 # r35275
            $ zf891Logic.r35275_action()
            jump zf891_s1

        '"Więc jak… masz jakieś plany na później?"' if zf891Logic.r35292_condition():
            # a1 # r35292
            jump zf891_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zf891Logic.r35293_condition():
            # a2 # r35293
            jump zf891_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zf891Logic.r35294_condition():
            # a3 # r35294
            jump zf891_s2

        '"Miło było z tobą pogadać. Żegnaj."' if zf891Logic.r35299_condition():
            # a4 # r35299
            jump morte_s366  # EXTERN

        'Zostaw truposza w spokoju.' if zf891Logic.r35300_condition():
            # a5 # r35300
            jump morte_s366  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."' if zf891Logic.r35301_condition():
            # a6 # r35301
            jump zf891_dispose

        'Zostaw truposza w spokoju.' if zf891Logic.r35302_condition():
            # a7 # r35302
            jump zf891_dispose

        '"Miło było z tobą pogadać. Żegnaj."' if zf891Logic.r35303_condition():
            # a8 # r35303
            jump zf891_dispose

        'Zostaw truposza w spokoju.' if zf891Logic.r35304_condition():
            # a9 # r35304
            jump zf891_dispose


# s1 # say35276
label zf891_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        '"A zatem żegnaj."' if zf891Logic.r35277_condition():
            # a10 # r35277
            jump morte_s366  # EXTERN

        '"A zatem żegnaj."' if zf891Logic.r35290_condition():
            # a11 # r35290
            jump zf891_dispose

        '"A zatem żegnaj."' if zf891Logic.r35291_condition():
            # a12 # r35291
            jump zf891_dispose


# s2 # say35295
label zf891_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        '"A zatem żegnaj."' if zf891Logic.r35296_condition():
            # a13 # r35296
            jump morte_s366  # EXTERN

        '"A zatem żegnaj."' if zf891Logic.r35297_condition():
            # a14 # r35297
            jump zf891_dispose

        '"A zatem żegnaj."' if zf891Logic.r35298_condition():
            # a15 # r35298
            jump zf891_dispose


# s3 # say35305
label zf891_s3: # - # IF ~  False()
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
