init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'Wygląda na to, że nieco zniekształcona głowa tego trupa trzyma się dzięki kilku wąskim metalowym obręczom przybitym bezpośrednio do czaszki. Zardzewiała żelazna płytka nad lewym okiem ma wyryty numer „475”. Usta truposza są zabite gwoździami. Poza tym cały cuchnie płynem balsamującym.'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r6591
            jump zm475_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r6594
            jump zm475_dispose
