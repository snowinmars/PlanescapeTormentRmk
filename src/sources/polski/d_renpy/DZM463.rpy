init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'Powłóczący nogami truposz spoziera na ciebie. Na jego czole wyryty jest numer "463", a jego usta zostały zaszyte. Od ciała dolatuje słaby odór formaliny.'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r6491
            jump zm463_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r6494
            jump zm463_dispose
