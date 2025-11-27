init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'Der leicht deformierte Kopf der Leiche scheint von einigen dünnen Metallbändern, die direkt an seinen Schädel geschraubt sind, zusammengehalten zu werden. Ein verrostetes Eisenschild über seinem linken Auge hat die Nummer „475“ eingraviert. Ihr Mund ist zugeschraubt und sie riecht nach Einbalsamierflüssigkeit.{#zm475_s0_}'

    menu:
        '"Na… irgendwas Interessantes passiert?"{#zm475_s0_r6587}' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm475_s0_r6588}' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm475_s0_r6589}' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm475_s0_r6590}' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm475_s0_r6591}':
            # a4 # r6591
            jump zm475_dispose

        'Laß die Leiche in Ruhe.{#zm475_s0_r6592}':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm475_s1_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm475_s1_r6593}':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Die Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zm475_s2_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm475_s2_r6594}':
            # a7 # r6594
            jump zm475_dispose
