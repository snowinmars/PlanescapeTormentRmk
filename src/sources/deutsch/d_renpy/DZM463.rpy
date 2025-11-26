init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'Die elendige Leiche starrt dich mit leeren Augen an. Die Nummer "463" ist in ihre Stirn geritzt und ihre Lippen wurden zugenäht. Dem Körper entströmt ein leichter Formaldehydgeruch.'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a4 # r6491
            jump zm463_dispose

        'Laß die Leiche in Ruhe.':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'Die Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a7 # r6494
            jump zm463_dispose
