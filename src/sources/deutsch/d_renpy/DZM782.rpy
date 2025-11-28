init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'Die Leiche bleibt stehen und starrt dich mit leerem Blick an, als du dich näherst. Die Zahl "782" ist in die Stirn geritzt, und ihre Lippen sind zugenäht. Die Leiche verbreitet einen leichten Geruch nach Formaldehyd.{#zm782_s0_1}'

    menu:
        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"{#zm782_s0_r24709}' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"{#zm782_s0_r24712}' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Untersuche die Leiche und sieh nach, ob sie einen Schlüssel bei sich hat.{#zm782_s0_r24713}':
            # a2 # r24713
            jump zm782_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm782_s0_r24714}':
            # a3 # r24714
            jump zm782_s2

        'Laß die Leiche in Ruhe.{#zm782_s0_r24717}':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'Die Leiche antwortet nicht.{#zm782_s1_1}'

    menu:
        '"Ach, vergiß es. Leb wohl."{#zm782_s1_r24711}':
            # a5 # r24711
            jump zm782_dispose

        'Laß die Leiche in Ruhe.{#zm782_s1_r42304}':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'Diese Leiche sieht wie die mit dem Schlüssel aus. Sie hält ihn in der linken Hand ganz fest, ihr Daumen und Zeigefinger sind in einem totenstarren Griff darum geklammert. Es sieht so aus, als ob du die Hand der Leiche abschlagen mußt, um an den Schlüssel zu kommen.{#zm782_s2_1}'

    menu:
        '"Ich brauche diesen Schlüssel, Leiche. Sieht so aus, als ob du es in dieser Welt nicht mehr lange machst."{#zm782_s2_r24716}':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Laß die Leiche in Ruhe.{#zm782_s2_r42305}':
            # a8 # r42305
            jump zm782_dispose
