init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr 'Diese wiederbelebte Leiche umgibt der Gestank verkohlten Fleisches und verbrannter Textilien. Ziemlich frische Verbrennungswunden laufen entlang ihrer rechten Seite. Vielleicht hat sie zu nah an einem Feuer gestanden und zu schwelen begonnen. Die Zahl "199" ist auf ihre Stirn geätzt worden, und ihre Lippen sind zusammengenäht.{#zm199_s0_}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm199_s0_r34976}' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '"Na… irgendwas Interessantes passiert?"{#zm199_s0_r34979}' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm199_s0_r34980}' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm199_s0_r34981}' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm199_s0_r34984}':
            # a4 # r34984
            jump zm199_dispose

        'Laß die Leiche in Ruhe.{#zm199_s0_r34985}':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm199_s1_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm199_s1_r34978}':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr 'Die Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können..{#zm199_s2_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm199_s2_r34983}':
            # a7 # r34983
            jump zm199_dispose
