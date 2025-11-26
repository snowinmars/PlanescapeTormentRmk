init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr 'Czoło tego muskularnego trupa to jedna wielka blizna, jakby za życia walił głową w przeciwników podczas bitwy niczym taranem. Numer "1508" został mu wyszyty w poprzek czoła czerwoną nicią, a jego usta zostały zaszyte przy pomocy chropowatego, czarnego łyka. Cuchnie nieznacznie płynem balsamującym.'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r46754
            jump zm1508_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r46753
            jump zm1508_dispose
