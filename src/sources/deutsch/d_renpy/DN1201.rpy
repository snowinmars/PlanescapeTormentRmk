init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'Auf diesem stinkenden Zettel ist unter einem Stück Text ein seltsames Diagramm erkennbar. Du verstehst es als Anleitung, alle Ecken auf die Mitte zu falten. In jeder Ecke stehen mehrere seltsame Zeichen: ein Zeichen oben rechts, zwei unten rechts und drei unten links. In der oberen linken Ecke steht gar nichts.{#n1201_s0_1}'

    menu:
        'Falte die obere rechte Ecke zur Mitte.{#n1201_s0_r44994}':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Falte die untere rechte Ecke zur Mitte.{#n1201_s0_r44995}':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Falte die untere linke Ecke zur Mitte.{#n1201_s0_r44996}':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Falte die obere linke Ecke zur Mitte.{#n1201_s0_r44997}':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Laß den Zettel einfach liegen.{#n1201_s0_r44998}':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'Du faltest die Ecke so nach innen, daß sie mit der Spitze auf dem Mittelpunkt liegt.{#n1201_s1_1}'

    menu:
        'Falte die obere rechte Ecke zur Mitte.{#n1201_s1_r45000}' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Falte die untere rechte Ecke zur Mitte.{#n1201_s1_r45001}' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Falte die untere rechte Ecke zur Mitte.{#n1201_s1_r45002}' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Falte die untere linke Ecke zur Mitte.{#n1201_s1_r45003}' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Falte die obere linke Ecke zur Mitte.{#n1201_s1_r45004}' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Falte die obere linke Ecke zur Mitte.{#n1201_s1_r45005}' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Entfalte den Zettel und fang noch mal von vorn an.{#n1201_s1_r45006}':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Entfalte den Zettel, und laß ihn dann liegen.{#n1201_s1_r45008}':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'Als du die obere linke Ecke nach innen faltest, siehst du, wie die obere rechte Ecke in ihre normale Lage zurückkehrt.{#n1201_s2_1}'

    menu:
        'Falte die obere rechte Ecke wieder zur Mitte.{#n1201_s2_r45016}':
            # a13 # r45016
            jump n1201_s4

        'Falte die untere linke Ecke nach innen.{#n1201_s2_r45017}':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Entfalte den Zettel, und laß ihn dann liegen.{#n1201_s2_r45018}':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'Als du die untere linke Ecke nach innen faltest, bleibt sie kurz so liegen, aber dann gehen die anderen beiden Ecken auf. Sonst rührt sich nichts.{#n1201_s3_1}'

    menu:
        'Schau dir den Zettel noch mal genau an.{#n1201_s3_r45020}':
            # a16 # r45020
            jump n1201_s0

        'Leg den Zettel weg.{#n1201_s3_r45021}':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'Als du die obere rechte Ecke erneut nach innen faltest, knickt sich die untere linke Ecke ebenfalls spiegelbildlich nach innen. Es folgen die anderen beiden Ecken, bis alle sich mit der Spitze in der Mitte berühren. Dann richten sich die Ecken des Zettels zu einer kleinen vierseitige Papierpyramide auf.{#n1201_s4_1}'

    menu:
        'Öffne die Seiten der Pyramide.{#n1201_s4_r45023}':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'Als du die Seiten der Pyramide wieder nach unten biegen willst, zerfällt das Papier zu Staub. Darin liegt ein kleiner dreieckiger Ohrring, der das Licht einfängt und strahlend glänzt.{#n1201_s5_1}'

    menu:
        'Nimm den dreieckigen Ohrring…{#n1201_s5_r45025}':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
