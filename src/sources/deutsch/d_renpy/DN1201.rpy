init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'Auf diesem stinkenden Zettel ist unter einem Stück Text ein seltsames Diagramm erkennbar. Du verstehst es als Anleitung, alle Ecken auf die Mitte zu falten. In jeder Ecke stehen mehrere seltsame Zeichen: ein Zeichen oben rechts, zwei unten rechts und drei unten links. In der oberen linken Ecke steht gar nichts.'

    menu:
        'Falte die obere rechte Ecke zur Mitte.':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Falte die untere rechte Ecke zur Mitte.':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Falte die untere linke Ecke zur Mitte.':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Falte die obere linke Ecke zur Mitte.':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Laß den Zettel einfach liegen.':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'Du faltest die Ecke so nach innen, daß sie mit der Spitze auf dem Mittelpunkt liegt.'

    menu:
        'Falte die obere rechte Ecke zur Mitte.' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Falte die untere rechte Ecke zur Mitte.' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Falte die untere rechte Ecke zur Mitte.' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Falte die untere linke Ecke zur Mitte.' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Falte die obere linke Ecke zur Mitte.' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Falte die obere linke Ecke zur Mitte.' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Entfalte den Zettel und fang noch mal von vorn an.':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Entfalte den Zettel, und laß ihn dann liegen.':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'Als du die obere linke Ecke nach innen faltest, siehst du, wie die obere rechte Ecke in ihre normale Lage zurückkehrt.'

    menu:
        'Falte die obere rechte Ecke wieder zur Mitte.':
            # a13 # r45016
            jump n1201_s4

        'Falte die untere linke Ecke nach innen.':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Entfalte den Zettel, und laß ihn dann liegen.':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'Als du die untere linke Ecke nach innen faltest, bleibt sie kurz so liegen, aber dann gehen die anderen beiden Ecken auf. Sonst rührt sich nichts.'

    menu:
        'Schau dir den Zettel noch mal genau an.':
            # a16 # r45020
            jump n1201_s0

        'Leg den Zettel weg.':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'Als du die obere rechte Ecke erneut nach innen faltest, knickt sich die untere linke Ecke ebenfalls spiegelbildlich nach innen. Es folgen die anderen beiden Ecken, bis alle sich mit der Spitze in der Mitte berühren. Dann richten sich die Ecken des Zettels zu einer kleinen vierseitige Papierpyramide auf.'

    menu:
        'Öffne die Seiten der Pyramide.':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'Als du die Seiten der Pyramide wieder nach unten biegen willst, zerfällt das Papier zu Staub. Darin liegt ein kleiner dreieckiger Ohrring, der das Licht einfängt und strahlend glänzt.'

    menu:
        'Nimm den dreieckigen Ohrring…':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
