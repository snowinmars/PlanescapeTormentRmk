init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


# s0 # say35018
label zf594_s0: # - # IF ~  True()
    nr 'Die trottende Leiche starrt dich mit leerem Blick an. Ihre Haut ist dünn wie Papier, beinahe brüchig… Sie sieht aus, als hätte jemand ein Laken aus Spinnweben über ihre Figur drapiert. Die Zahl "594" ist mit einem Kohlestift auf ihre Stirn geritzt worden.{#zf594_s0_}'

    menu:
        '"Sag mal… hast du nachher schon was vor?"{#zf594_s0_r35019}' if zf594Logic.r35019_condition():
            # a0 # r35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        '"Sag mal… hast du nachher schon was vor?"{#zf594_s0_r35036}' if zf594Logic.r35036_condition():
            # a1 # r35036
            jump zf594_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf594_s0_r35037}' if zf594Logic.r35037_condition():
            # a2 # r35037
            jump zf594_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf594_s0_r35038}' if zf594Logic.r35038_condition():
            # a3 # r35038
            jump zf594_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf594_s0_r35043}' if zf594Logic.r35043_condition():
            # a4 # r35043
            jump morte_s334  # EXTERN

        'Laß die Leiche in Ruhe.{#zf594_s0_r35044}' if zf594Logic.r35044_condition():
            # a5 # r35044
            jump morte_s334  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf594_s0_r35045}' if zf594Logic.r35045_condition():
            # a6 # r35045
            jump zf594_dispose

        'Laß die Leiche in Ruhe.{#zf594_s0_r35046}' if zf594Logic.r35046_condition():
            # a7 # r35046
            jump zf594_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf594_s0_r35047}' if zf594Logic.r35047_condition():
            # a8 # r35047
            jump zf594_dispose

        'Laß die Leiche in Ruhe.{#zf594_s0_r35048}' if zf594Logic.r35048_condition():
            # a9 # r35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zf594_s1_}'

    menu:
        '"Dann leb wohl."{#zf594_s1_r35021}' if zf594Logic.r35021_condition():
            # a10 # r35021
            jump morte_s334  # EXTERN

        '"Na dann leb wohl."{#zf594_s1_r35034}' if zf594Logic.r35034_condition():
            # a11 # r35034
            jump zf594_dispose

        '"Na dann leb wohl."{#zf594_s1_r35035}' if zf594Logic.r35035_condition():
            # a12 # r35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf594_s2_}'

    menu:
        '"Dann leb wohl."{#zf594_s2_r35040}' if zf594Logic.r35040_condition():
            # a13 # r35040
            jump morte_s334  # EXTERN

        '"Dann leb wohl."{#zf594_s2_r35041}' if zf594Logic.r35041_condition():
            # a14 # r35041
            jump zf594_dispose

        '"Dann leb wohl."{#zf594_s2_r35042}' if zf594Logic.r35042_condition():
            # a15 # r35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf594_s3_}'

    menu:
