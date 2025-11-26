init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'Die Leiche bleibt stehen und starrt dich mit leerem Blick an, als du dich näherst. Die Zahl "782" ist in die Stirn geritzt, und ihre Lippen sind zugenäht. Die Leiche verbreitet einen leichten Geruch nach Formaldehyd.'

    menu:
        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Untersuche die Leiche und sieh nach, ob sie einen Schlüssel bei sich hat.':
            # a2 # r24713
            jump zm782_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a3 # r24714
            jump zm782_s2

        'Laß die Leiche in Ruhe.':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'Die Leiche antwortet nicht.'

    menu:
        '"Ach, vergiß es. Leb wohl."':
            # a5 # r24711
            jump zm782_dispose

        'Laß die Leiche in Ruhe.':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'Diese Leiche sieht wie die mit dem Schlüssel aus. Sie hält ihn in der linken Hand ganz fest, ihr Daumen und Zeigefinger sind in einem totenstarren Griff darum geklammert. Es sieht so aus, als ob du die Hand der Leiche abschlagen mußt, um an den Schlüssel zu kommen.'

    menu:
        '"Ich brauche diesen Schlüssel, Leiche. Sieht so aus, als ob du es in dieser Welt nicht mehr lange machst."':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Laß die Leiche in Ruhe.':
            # a8 # r42305
            jump zm782_dispose
