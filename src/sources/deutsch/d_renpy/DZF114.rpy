init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    nr 'Die Leiche dieser Frau hält in ihrem trottenden Gang inne, als du dich näherst. Du bemerkst, daß die Zahl "114" auf ihre Stirn geritzt ist. Ihr Mund ist zugenäht worden, aber die Fäden lösen sich langsam, und zwischen ihren Lippen dringt schwaches Stöhnen hervor.{#zf114_s0_1}'

    menu:
        '"Sag mal… hast du nachher schon was vor?"{#zf114_s0_r34987}' if zf114Logic.r34987_condition():
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        '"Sag mal… hast du nachher schon was vor?"{#zf114_s0_r35004}' if zf114Logic.r35004_condition():
            # a1 # r35004
            jump zf114_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf114_s0_r35005}' if zf114Logic.r35005_condition():
            # a2 # r35005
            jump zf114_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf114_s0_r35006}' if zf114Logic.r35006_condition():
            # a3 # r35006
            jump zf114_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf114_s0_r35011}' if zf114Logic.r35011_condition():
            # a4 # r35011
            jump morte_s330  # EXTERN

        'Laß die Leiche in Ruhe.{#zf114_s0_r35012}' if zf114Logic.r35012_condition():
            # a5 # r35012
            jump morte_s330  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf114_s0_r35013}' if zf114Logic.r35013_condition():
            # a6 # r35013
            jump zf114_dispose

        'Laß die Leiche in Ruhe.{#zf114_s0_r35014}' if zf114Logic.r35014_condition():
            # a7 # r35014
            jump zf114_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf114_s0_r35015}' if zf114Logic.r35015_condition():
            # a8 # r35015
            jump zf114_dispose

        'Laß die Leiche in Ruhe.{#zf114_s0_r35016}' if zf114Logic.r35016_condition():
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zf114_s1_1}'

    menu:
        '"Dann leb wohl."{#zf114_s1_r34989}' if zf114Logic.r34989_condition():
            # a10 # r34989
            jump morte_s330  # EXTERN

        '"Na dann leb wohl."{#zf114_s1_r35002}' if zf114Logic.r35002_condition():
            # a11 # r35002
            jump zf114_dispose

        '"Na dann leb wohl."{#zf114_s1_r35003}' if zf114Logic.r35003_condition():
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf114_s2_1}'

    menu:
        '"Dann leb wohl."{#zf114_s2_r35008}' if zf114Logic.r35008_condition():
            # a13 # r35008
            jump morte_s330  # EXTERN

        '"Dann leb wohl."{#zf114_s2_r35009}' if zf114Logic.r35009_condition():
            # a14 # r35009
            jump zf114_dispose

        '"Dann leb wohl."{#zf114_s2_r35010}' if zf114Logic.r35010_condition():
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf114_s3_1}'

    menu:
