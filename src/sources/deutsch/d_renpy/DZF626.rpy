init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr 'Die linke Seite des Gesichts dieser Frau sieht so aus, als ob sie mit einer Keule eingeschlagen worden ist, und ihr Fleisch hängt in wunden, geschwollenen Klumpen über ihren kaputten Schädel. Die Zahl "626" ist kurz unter dem Auge auf die rechte Wange der Leiche gestickt worden.{#zf626_s0_}'

    menu:
        '"Äh… Schlimme Wunde, die du da hast."{#zf626_s0_r35051}' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '"Äh… Schlimme Wunde, die du da hast."{#zf626_s0_r35068}' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf626_s0_r35069}' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf626_s0_r35070}' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf626_s0_r35075}' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        'Laß die Leiche in Ruhe.{#zf626_s0_r35076}' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.{#zf626_s0_r35077}' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        'Laß die Leiche in Ruhe.{#zf626_s0_r35078}' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.{#zf626_s0_r35079}' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        'Laß die Leiche in Ruhe.{#zf626_s0_r35080}' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiterhin mit ihrem einen guten Auge an.{#zf626_s1_}'

    menu:
        '"Dann leb wohl."{#zf626_s1_r35053}' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '"Na dann leb wohl."{#zf626_s1_r35066}' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '"Na dann leb wohl."{#zf626_s1_r35067}' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr 'Diese Leiche regt sich nicht. Sie sieht so aus, als sei sie bereits zu hinüber, um deine Fragen zu beantworten.{#zf626_s2_}'

    menu:
        '"Dann leb wohl."{#zf626_s2_r35072}' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '"Dann leb wohl."{#zf626_s2_r35073}' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '"Dann leb wohl."{#zf626_s2_r35074}' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf626_s3_}'

    menu:
