init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr 'Der Geruch nach Formaldehyd, der von dieser Leiche ausgeht, ist besonders stark… Es riecht so, als sei es erst kürzlich angewendet worden, und das aus gutem Grund: Diese Leiche scheint sich in einem fortgeschrittenen Zustand der Verwesung zu befinden. Ihr Unterkiefer fehlt, und das Fleisch ist teilweise von ihrem Schädel geglitten, so daß die Zahl "1072" freigelegt ist, die in den Knochen gemeißelt wurde.{#zf1072_s0_1}'

    menu:
        '"Ich denke mal, diese hier hat auch schon mal bessere Zeiten gesehen…"{#zf1072_s0_r35115}' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '"Ich denke mal, diese hier hat auch schon mal bessere Zeiten gesehen…"{#zf1072_s0_r35132}' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf1072_s0_r35133}' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf1072_s0_r35134}' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf1072_s0_r35139}' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        'Laß die Leiche in Ruhe.{#zf1072_s0_r35140}' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf1072_s0_r35141}' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        'Laß die Leiche in Ruhe.{#zf1072_s0_r35142}' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf1072_s0_r35143}' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        'Laß die Leiche in Ruhe.{#zf1072_s0_r35144}' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche antwortet nicht auf deine Stimme, was teilweise daran liegen kann, daß sie keinen Unterkiefer hat. Entweder ist es das, oder sie hat einfach nichts zu sagen.{#zf1072_s1_1}'

    menu:
        '"Dann leb wohl."{#zf1072_s1_r35117}' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '"Na dann leb wohl."{#zf1072_s1_r35130}' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '"Na dann leb wohl."{#zf1072_s1_r35131}' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.{#zf1072_s2_1}'

    menu:
        '"Dann leb wohl."{#zf1072_s2_r35136}' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '"Dann leb wohl."{#zf1072_s2_r35137}' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '"Dann leb wohl."{#zf1072_s2_r35138}' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.{#zf1072_s3_1}'

    menu:
