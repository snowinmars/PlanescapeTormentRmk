init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr 'Ten ponownie ożywiony truposz ciągnie za sobą odór zwęglonego mięsa i palących się tkanin. Dość świeże ślady oparzeń ciągną się wzdłuż jego prawego boku; być może stanął zbyt blisko jakiegoś pożaru i zaczął się palić. Na czole ma wyryty numer "199"; jego wargi są zaszyte.'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r34984
            jump zm199_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r34983
            jump zm199_dispose
