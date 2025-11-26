init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf679_logic import Zf679Logic
    zf679Logic = Zf679Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF679.DLG
# ###


# s0 # say35178
label zf679_s0: # - # IF ~  True()
    nr 'Dies scheint die Leiche einer alten, ja uralten Frau zu sein. Abgesehen von dem Gestank des Balsamierungsöls, den Stichen, die ihren Mund versiegeln und der Zahl "679", die auf ihre rechte Wange gestickt wurde, sieht sie jetzt wahrscheinlich kaum anders aus als in den letzten Jahren ihres Lebens.'

    menu:
        '"Sag mal… hast du nachher schon was vor?"' if zf679Logic.r35179_condition():
            # a0 # r35179
            $ zf679Logic.r35179_action()
            jump zf679_s1

        '"Sag mal… hast du nachher schon was vor?"' if zf679Logic.r35196_condition():
            # a1 # r35196
            jump zf679_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zf679Logic.r35197_condition():
            # a2 # r35197
            jump zf679_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zf679Logic.r35198_condition():
            # a3 # r35198
            jump zf679_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."' if zf679Logic.r35203_condition():
            # a4 # r35203
            jump morte_s354  # EXTERN

        'Laß die Leiche in Ruhe.' if zf679Logic.r35204_condition():
            # a5 # r35204
            jump morte_s354  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.' if zf679Logic.r35205_condition():
            # a6 # r35205
            jump zf679_dispose

        'Laß die Leiche in Ruhe.' if zf679Logic.r35206_condition():
            # a7 # r35206
            jump zf679_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.' if zf679Logic.r35207_condition():
            # a8 # r35207
            jump zf679_dispose

        'Laß die Leiche in Ruhe.' if zf679Logic.r35208_condition():
            # a9 # r35208
            jump zf679_dispose


# s1 # say35180
label zf679_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.'

    menu:
        '"Dann leb wohl."' if zf679Logic.r35181_condition():
            # a10 # r35181
            jump morte_s354  # EXTERN

        '"Na dann leb wohl."' if zf679Logic.r35194_condition():
            # a11 # r35194
            jump zf679_dispose

        '"Na dann leb wohl."' if zf679Logic.r35195_condition():
            # a12 # r35195
            jump zf679_dispose


# s2 # say35199
label zf679_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
        '"Dann leb wohl."' if zf679Logic.r35200_condition():
            # a13 # r35200
            jump morte_s354  # EXTERN

        '"Dann leb wohl."' if zf679Logic.r35201_condition():
            # a14 # r35201
            jump zf679_dispose

        '"Dann leb wohl."' if zf679Logic.r35202_condition():
            # a15 # r35202
            jump zf679_dispose


# s3 # say35209
label zf679_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
