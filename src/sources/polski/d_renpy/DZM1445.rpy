init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr 'Ciało tego truposza jest całe pokryte krostami, a jego uszy, czubek nosa i niektóre palce przegniły na amen… człowiek ten padł najprawdopodobniej ofiarą jakiejś straszliwej choroby. Na jego czole ktoś wytatuował numer "1445"; jego usta są zaszyte.'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r46765
            jump zm1445_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r46764
            jump zm1445_dispose
