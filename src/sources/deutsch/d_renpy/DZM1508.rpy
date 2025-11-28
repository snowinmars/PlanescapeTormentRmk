init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr 'Die Stirn dieser äußerst muskulösen Leiche ist eine einzige Narbenlandschaft. Sie sieht aus, als hätte die Leiche ihre Gegner zu Lebzeiten mit dem Kopf totgeschlagen. Auf der Stirn ist mit einem roten Faden die Nummer "1508" eingenäht. Ihr Mund ist mit einer groben schwarzen Faser zusammengenäht. Die Leiche riecht leicht nach Balsamierungsöl.{#zm1508_s0_1}'

    menu:
        '"Und… hast du was Interessantes bemerkt?"{#zm1508_s0_r46746}' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"Und… hast du was Interessantes bemerkt?"{#zm1508_s0_r46749}' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"Ich weiß genau, daß du kein Zombie bist. Darauf fällt bei dir keiner rein."{#zm1508_s0_r46750}' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm1508_s0_r46751}' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"War schön, mit dir zu reden. Wiedersehen."{#zm1508_s0_r46754}':
            # a4 # r46754
            jump zm1508_dispose

        'Laß die Leiche in Ruhe.{#zm1508_s0_r46755}':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm1508_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1508_s1_r46748}':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr 'Die Leiche gibt keine Antwort. Es scheint, als wäre sie zu weit im Jenseits, um deine Fragen zu beantworten.{#zm1508_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1508_s2_r46753}':
            # a7 # r46753
            jump zm1508_dispose
