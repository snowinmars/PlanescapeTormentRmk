init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr 'Die Zahl "613" ist tief in die Stirn dieser schwerfälligen Leiche geschnitten, wobei etwa 2 cm zerfetzter, ledriger Haut die "1" von der "3" trennt. Als du genauer hinsiehst, kannst du dort eben noch eine "2" erkennen.{#zm613_s0_1}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm613_s0_r6543}' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm613_s0_r6544}' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm613_s0_r6545}' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm613_s0_r6546}' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm613_s0_r6547}':
            # a4 # r6547
            jump zm613_dispose

        'Laß die Leiche in Ruhe.{#zm613_s0_r6548}':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm613_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm613_s1_r6549}':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr 'Die Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zm613_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm613_s2_r6550}':
            # a7 # r6550
            jump zm613_dispose
