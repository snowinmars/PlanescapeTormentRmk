init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr 'Die Haut dieser Leiche ist mit Pocken übersät. Ihre Ohren, die Nasenspitze und Teile ihrer Finger sind abgefault… Der Mann mußt einer entsetzlichen Krankheit zum Opfer gefallen sein. Auf seiner Stirn ist die Nummer "1445" eintätowiert, und seine Lippen sind fest zusammengenäht.{#zm1445_s0_1}'

    menu:
        '"Und… hast du was Interessantes bemerkt?"{#zm1445_s0_r46757}' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '"Und… hast du was Interessantes bemerkt?"{#zm1445_s0_r46760}' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '"Ich weiß genau, daß du kein Zombie bist. Darauf fällt bei dir keiner rein."{#zm1445_s0_r46761}' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm1445_s0_r46762}' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '"War schön, mit dir zu reden. Wiedersehen."{#zm1445_s0_r46765}':
            # a4 # r46765
            jump zm1445_dispose

        'Laß die Leiche in Ruhe.{#zm1445_s0_r46766}':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm1445_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1445_s1_r46759}':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr 'Die Leiche gibt keine Antwort. Es scheint, als wäre sie zu weit im Jenseits, um deine Fragen zu beantworten.{#zm1445_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1445_s2_r46764}':
            # a7 # r46764
            jump zm1445_dispose
