init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    nr 'Diese weibliche Leiche macht ihre Runden im Raum, von Totenbank zu Totenbank. Ihr Haar ist zu einen langen Zopf geflochten und wie eine Schlinge um ihren Hals gelegt. Jemand hat die Zahl "1096" auf ihre Stirn gestanzt, und ihre Lippen sind zugenäht worden.'

    menu:
        '"Äh… Netter Zopf."' if zf1096Logic.r35083_condition():
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        '"Äh… Netter Zopf."' if zf1096Logic.r35100_condition():
            # a1 # r35100
            jump zf1096_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zf1096Logic.r35101_condition():
            # a2 # r35101
            jump zf1096_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zf1096Logic.r35102_condition():
            # a3 # r35102
            jump zf1096_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."' if zf1096Logic.r35107_condition():
            # a4 # r35107
            jump morte_s342  # EXTERN

        'Laß die Leiche in Ruhe.' if zf1096Logic.r35108_condition():
            # a5 # r35108
            jump morte_s342  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.' if zf1096Logic.r35109_condition():
            # a6 # r35109
            jump zf1096_dispose

        'Laß die Leiche in Ruhe.' if zf1096Logic.r35110_condition():
            # a7 # r35110
            jump zf1096_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.' if zf1096Logic.r35111_condition():
            # a8 # r35111
            jump zf1096_dispose

        'Laß die Leiche in Ruhe.' if zf1096Logic.r35112_condition():
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche antwortet nicht. Du bezweifelst, daß sie überhaupt weiß, daß du da bist.'

    menu:
        '"Dann leb wohl."' if zf1096Logic.r35085_condition():
            # a10 # r35085
            jump morte_s342  # EXTERN

        '"Na dann leb wohl."' if zf1096Logic.r35098_condition():
            # a11 # r35098
            jump zf1096_dispose

        '"Na dann leb wohl."' if zf1096Logic.r35099_condition():
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.'

    menu:
        '"Dann leb wohl."' if zf1096Logic.r35104_condition():
            # a13 # r35104
            jump morte_s342  # EXTERN

        '"Dann leb wohl."' if zf1096Logic.r35105_condition():
            # a14 # r35105
            jump zf1096_dispose

        '"Dann leb wohl."' if zf1096Logic.r35106_condition():
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.'

    menu:
