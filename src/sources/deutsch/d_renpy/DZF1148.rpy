init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0: # - # IF ~  True()
    nr 'Die Haut dieser weiblichen Leiche ist über und über mit komplizierten Mustern tätowiert. Die Haut ihrer Braue ist zurückgepellt worden, so daß die Zahl "1148" in den Schädel gemeißelt werden konnte. Ihr Mund wurde mit dicken, rohen Stichen versiegelt.{#zf1148_s0_}'

    menu:
        '"Sag mal… hast du nachher schon was vor?"{#zf1148_s0_r35243}' if zf1148Logic.r35243_condition():
            # a0 # r35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '"Sag mal… hast du nachher schon was vor?"{#zf1148_s0_r35260}' if zf1148Logic.r35260_condition():
            # a1 # r35260
            jump zf1148_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf1148_s0_r35261}' if zf1148Logic.r35261_condition():
            # a2 # r35261
            jump zf1148_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf1148_s0_r35262}' if zf1148Logic.r35262_condition():
            # a3 # r35262
            jump zf1148_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf1148_s0_r35267}' if zf1148Logic.r35267_condition():
            # a4 # r35267
            jump morte_s362  # EXTERN

        'Laß die Leiche in Ruhe.{#zf1148_s0_r35268}' if zf1148Logic.r35268_condition():
            # a5 # r35268
            jump morte_s362  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf1148_s0_r35269}' if zf1148Logic.r35269_condition():
            # a6 # r35269
            jump zf1148_dispose

        'Laß die Leiche in Ruhe.{#zf1148_s0_r35270}' if zf1148Logic.r35270_condition():
            # a7 # r35270
            jump zf1148_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf1148_s0_r35271}' if zf1148Logic.r35271_condition():
            # a8 # r35271
            jump zf1148_dispose

        'Laß die Leiche in Ruhe.{#zf1148_s0_r35272}' if zf1148Logic.r35272_condition():
            # a9 # r35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zf1148_s1_}'

    menu:
        '"Dann leb wohl."{#zf1148_s1_r35245}' if zf1148Logic.r35245_condition():
            # a10 # r35245
            jump morte_s362  # EXTERN

        '"Na dann leb wohl."{#zf1148_s1_r35258}' if zf1148Logic.r35258_condition():
            # a11 # r35258
            jump zf1148_dispose

        '"Na dann leb wohl."{#zf1148_s1_r35259}' if zf1148Logic.r35259_condition():
            # a12 # r35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf1148_s2_}'

    menu:
        '"Dann leb wohl."{#zf1148_s2_r35264}' if zf1148Logic.r35264_condition():
            # a13 # r35264
            jump morte_s362  # EXTERN

        '"Dann leb wohl."{#zf1148_s2_r35265}' if zf1148Logic.r35265_condition():
            # a14 # r35265
            jump zf1148_dispose

        '"Dann leb wohl."{#zf1148_s2_r35266}' if zf1148Logic.r35266_condition():
            # a15 # r35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf1148_s3_}'

    menu:
