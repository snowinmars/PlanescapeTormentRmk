init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr 'Czoło tego muskularnego trupa to jedna wielka blizna, jakby za życia walił głową w przeciwników podczas bitwy niczym taranem. Numer "1508" został mu wyszyty w poprzek czoła czerwoną nicią, a jego usta zostały zaszyte przy pomocy chropowatego, czarnego łyka. Cuchnie nieznacznie płynem balsamującym.{#zm1508_s0_}'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"{#zm1508_s0_r46746}' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"{#zm1508_s0_r46749}' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm1508_s0_r46750}' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm1508_s0_r46751}' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm1508_s0_r46754}':
            # a4 # r46754
            jump zm1508_dispose

        'Zostaw truposza w spokoju.{#zm1508_s0_r46755}':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zm1508_s1_}'

    menu:
        'Zostaw truposza w spokoju.{#zm1508_s1_r46748}':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zm1508_s2_}'

    menu:
        'Zostaw truposza w spokoju.{#zm1508_s2_r46753}':
            # a7 # r46753
            jump zm1508_dispose
