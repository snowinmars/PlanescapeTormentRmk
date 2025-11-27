init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    nr 'Diese weibliche Leiche ist in einem schrecklichen Zustand. Etwas, das wie Hunderte von winzigen Bissen aussieht - vielleicht von Ratten - entstellt die zähe, konservierte Haut der Leiche. Dem verzogenen Fleisch um die Wunden herum nach zu urteilen, wurden die Bisse der Leiche höchstwahrscheinlich bereits zugefügt, bevor sie präpariert wurde. Ihre Lippen sind zugenäht, und die Zahl "444" ist mit dunkelblauer Tinte auf ihr Gesicht gekleckst worden.{#zf444_s0_}'

    menu:
        '"Sag mal… hast du nachher schon was vor?"{#zf444_s0_r35211}' if zf444Logic.r35211_condition():
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        '"Sag mal… hast du nachher schon was vor?"{#zf444_s0_r35228}' if zf444Logic.r35228_condition():
            # a1 # r35228
            jump zf444_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf444_s0_r35229}' if zf444Logic.r35229_condition():
            # a2 # r35229
            jump zf444_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf444_s0_r35230}' if zf444Logic.r35230_condition():
            # a3 # r35230
            jump zf444_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf444_s0_r35235}' if zf444Logic.r35235_condition():
            # a4 # r35235
            jump morte_s358  # EXTERN

        'Laß die Leiche in Ruhe.{#zf444_s0_r35236}' if zf444Logic.r35236_condition():
            # a5 # r35236
            jump morte_s358  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf444_s0_r35237}' if zf444Logic.r35237_condition():
            # a6 # r35237
            jump zf444_dispose

        'Laß die Leiche in Ruhe.{#zf444_s0_r35238}' if zf444Logic.r35238_condition():
            # a7 # r35238
            jump zf444_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf444_s0_r35239}' if zf444Logic.r35239_condition():
            # a8 # r35239
            jump zf444_dispose

        'Laß die Leiche in Ruhe.{#zf444_s0_r35240}' if zf444Logic.r35240_condition():
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zf444_s1_}'

    menu:
        '"Dann leb wohl."{#zf444_s1_r35213}' if zf444Logic.r35213_condition():
            # a10 # r35213
            jump morte_s358  # EXTERN

        '"Na dann leb wohl."{#zf444_s1_r35226}' if zf444Logic.r35226_condition():
            # a11 # r35226
            jump zf444_dispose

        '"Na dann leb wohl."{#zf444_s1_r35227}' if zf444Logic.r35227_condition():
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf444_s2_}'

    menu:
        '"Dann leb wohl."{#zf444_s2_r35232}' if zf444Logic.r35232_condition():
            # a13 # r35232
            jump morte_s358  # EXTERN

        '"Dann leb wohl."{#zf444_s2_r35233}' if zf444Logic.r35233_condition():
            # a14 # r35233
            jump zf444_dispose

        '"Dann leb wohl."{#zf444_s2_r35234}' if zf444Logic.r35234_condition():
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf444_s3_}'

    menu:
