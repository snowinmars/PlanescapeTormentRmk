init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf891_logic import Zf891Logic
    zf891Logic = Zf891Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF891.DLG
# ###


# s0 # say35274
label zf891_s0: # - # IF ~  True()
    nr 'Diese besonders grauenhaft aussehende weibliche Leiche hat keine Ohren, Nase und Lippen mehr. Um ihren Mund zuzunähen, mußte derjenige, der dies getan hat, die Haut besonders straff um ihren Mund ziehen. Du kannst noch immer eine Reihe schiefer, gelber Zähne durch den verbleibenden offenen Schlitz sehen. Die Zahl "891" ist in das Fleisch ihrer Braue geschnitzt worden.{#zf891_s0_}'

    menu:
        '"Sag mal… hast du nachher schon was vor?"{#zf891_s0_r35275}' if zf891Logic.r35275_condition():
            # a0 # r35275
            $ zf891Logic.r35275_action()
            jump zf891_s1

        '"Sag mal… hast du nachher schon was vor?"{#zf891_s0_r35292}' if zf891Logic.r35292_condition():
            # a1 # r35292
            jump zf891_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf891_s0_r35293}' if zf891Logic.r35293_condition():
            # a2 # r35293
            jump zf891_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf891_s0_r35294}' if zf891Logic.r35294_condition():
            # a3 # r35294
            jump zf891_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf891_s0_r35299}' if zf891Logic.r35299_condition():
            # a4 # r35299
            jump morte_s366  # EXTERN

        'Laß die Leiche in Ruhe.{#zf891_s0_r35300}' if zf891Logic.r35300_condition():
            # a5 # r35300
            jump morte_s366  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf891_s0_r35301}' if zf891Logic.r35301_condition():
            # a6 # r35301
            jump zf891_dispose

        'Laß die Leiche in Ruhe.{#zf891_s0_r35302}' if zf891Logic.r35302_condition():
            # a7 # r35302
            jump zf891_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf891_s0_r35303}' if zf891Logic.r35303_condition():
            # a8 # r35303
            jump zf891_dispose

        'Laß die Leiche in Ruhe.{#zf891_s0_r35304}' if zf891Logic.r35304_condition():
            # a9 # r35304
            jump zf891_dispose


# s1 # say35276
label zf891_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zf891_s1_}'

    menu:
        '"Dann leb wohl."{#zf891_s1_r35277}' if zf891Logic.r35277_condition():
            # a10 # r35277
            jump morte_s366  # EXTERN

        '"Na dann leb wohl."{#zf891_s1_r35290}' if zf891Logic.r35290_condition():
            # a11 # r35290
            jump zf891_dispose

        '"Na dann leb wohl."{#zf891_s1_r35291}' if zf891Logic.r35291_condition():
            # a12 # r35291
            jump zf891_dispose


# s2 # say35295
label zf891_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf891_s2_}'

    menu:
        '"Dann leb wohl."{#zf891_s2_r35296}' if zf891Logic.r35296_condition():
            # a13 # r35296
            jump morte_s366  # EXTERN

        '"Dann leb wohl."{#zf891_s2_r35297}' if zf891Logic.r35297_condition():
            # a14 # r35297
            jump zf891_dispose

        '"Dann leb wohl."{#zf891_s2_r35298}' if zf891Logic.r35298_condition():
            # a15 # r35298
            jump zf891_dispose


# s3 # say35305
label zf891_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf891_s3_}'

    menu:
