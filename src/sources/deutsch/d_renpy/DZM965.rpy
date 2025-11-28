init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0: # - # IF ~  NearbyDialog("Dmorte")
    nr 'Diese Leiche trampelt einen dreieckigen Pfad entlang. Wenn sie eine der Ecken des Dreiecks erreicht, hält sie kurz inne, dreht sich dann um, und torkelt zur nächsten Ecke. Auf die Seite ihres Schädels ist "965" tätowiert. Als du herankommst, hält sie an und starrt dich an.{#zm965_s0_1}'

    jump morte_s477  # EXTERN


# s1 # say34922
label zm965_s1: # externs morte_s481 morte_s480 # IF ~  !NearbyDialog("Dmorte")
    nr 'Diese Leiche trampelt einen dreieckigen Pfad entlang. Wenn sie eine der Ecken des Dreiecks erreicht, hält sie kurz inne, dreht sich dann um, und torkelt zur nächsten Ecke. Auf die Seite ihres Schädels ist "965" tätowiert. Als du herankommst, hält sie an und starrt dich an.{#zm965_s1_1}'

    menu:
        '"Also… Warum läufst du immer im Dreieck?"{#zm965_s1_r34923}' if zm965Logic.r34923_condition():
            # a0 # r34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '"Also… Warum läufst du immer im Dreieck?"{#zm965_s1_r45070}' if zm965Logic.r45070_condition():
            # a1 # r45070
            jump zm965_s2

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm965_s1_r45071}' if zm965Logic.r45071_condition():
            # a2 # r45071
            jump zm965_s2

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm965_s1_r45072}' if zm965Logic.r45072_condition():
            # a3 # r45072
            jump zm965_s3

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm965_s1_r45073}':
            # a4 # r45073
            jump zm965_dispose

        'Laß die Leiche in Ruhe.{#zm965_s1_r45074}':
            # a5 # r45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2: # from 1.0 1.1 1.2
    nr 'Die Leiche starrt dich verständnislos an.{#zm965_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm965_s2_r34928}':
            # a6 # r34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3: # from 1.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.{#zm965_s3_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm965_s3_r45075}':
            # a7 # r45075
            jump zm965_dispose
