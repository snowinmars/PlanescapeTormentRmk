init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    nr 'Dieser kupferne Ohrring sieht extrem alt aus. Er sieht aus als sollte er getragen werden, doch besitzt er weder einen Haken noch sonst was, mit dem du ihn am Ohr befestigen könntest. Dafür fallen dir ein paar merkwürdige Rillen auf der Innenseite des Ohrrings auf.{#copearc_s0_}'

    menu:
        'Sieh dir die Rillen genau an.{#copearc_s0_r46724}':
            # a0 # r46724
            jump copearc_s1

        'Leg deinen Fingernagel in die Kerbe an der Stelle, auf die das Dreieck in dem gezackten Kreis zeigte, den du auf der Stirn von Zombie Nr. 79 gesehen hast.{#copearc_s0_r46725}' if copearcLogic.r46725_condition():
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        'Leg den Ohrring beiseite.{#copearc_s0_r46726}':
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    nr 'Die Rillen laufen im jeweils selben Abstand über die Innenseite des Ohrrings. Bei genauerem Hinsehen sind sie leicht gezahnt. Sie sind sicher von Menschenhand gefertig, aber dir ist schleierhaft, zu welchem Zweck.{#copearc_s1_}'

    menu:
        'Leg deinen Fingernagel in die Kerbe an der Stelle, auf die das Dreieck in dem gezackten Kreis zeigte, den du auf der Stirn von Zombie Nr. 79 gesehen hast.{#copearc_s1_r46728}' if copearcLogic.r46728_condition():
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        'Leg den Ohrring beiseite.{#copearc_s1_r46729}':
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    nr 'Du steckst deinen Fingernagel in die dritte Rille von oben und drückst fest darauf. Es macht *klick*, und der obere Teil des Ohrrings schnappt auf. Du kannst ihn jetzt tragen. Außerdem scheint sich in seinem Inneren ein Geheimfach zu befinden.{#copearc_s2_}'

    menu:
        'Schüttle den Ohrring, um zu sehen, ob was herausfällt.{#copearc_s2_r46731}':
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    nr 'Du schüttelst den Ohrring, aber es kommt nichts heraus. Was immer in dem Ohrring verborgen war ist verschwunden.  ^NHINWEIS: Jetzt, da du den Verschluß des Ohrrings gefunden hast, kannst du ihn tragen. Außerdem gewinnt er durch das Geheimfach an Wert, falls du erwägst, ihn zu verkaufen.^-{#copearc_s3_}'

    menu:
        'Leg den Ohrring beiseite.{#copearc_s3_r46733}':
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
