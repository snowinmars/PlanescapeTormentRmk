init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    nr 'Ten trup kobiety jest w strasznym stanie. Skórę konserwowaną odczynnikiem pokrywają setki maluteńkich ukąszeń - prawdopodobnie od szczurów - niczym krosty po ospie. Sądząc po zmarszczonej skórze wokół ranek, pojawiły się one zanim przygotowano ciało. Usta ma zszyte, a na twarzy niebieskim atramentem ktoś napisał numer "444".'

    menu:
        '"Więc jak… masz jakieś plany na później?"' if zf444Logic.r35211_condition():
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        '"Więc jak… masz jakieś plany na później?"' if zf444Logic.r35228_condition():
            # a1 # r35228
            jump zf444_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zf444Logic.r35229_condition():
            # a2 # r35229
            jump zf444_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zf444Logic.r35230_condition():
            # a3 # r35230
            jump zf444_s2

        '"Miło było z tobą pogadać. Żegnaj."' if zf444Logic.r35235_condition():
            # a4 # r35235
            jump morte_s358  # EXTERN

        'Zostaw truposza w spokoju.' if zf444Logic.r35236_condition():
            # a5 # r35236
            jump morte_s358  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."' if zf444Logic.r35237_condition():
            # a6 # r35237
            jump zf444_dispose

        'Zostaw truposza w spokoju.' if zf444Logic.r35238_condition():
            # a7 # r35238
            jump zf444_dispose

        '"Miło było z tobą pogadać. Żegnaj."' if zf444Logic.r35239_condition():
            # a8 # r35239
            jump zf444_dispose

        'Zostaw truposza w spokoju.' if zf444Logic.r35240_condition():
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        '"A zatem żegnaj."' if zf444Logic.r35213_condition():
            # a10 # r35213
            jump morte_s358  # EXTERN

        '"A zatem żegnaj."' if zf444Logic.r35226_condition():
            # a11 # r35226
            jump zf444_dispose

        '"A zatem żegnaj."' if zf444Logic.r35227_condition():
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        '"A zatem żegnaj."' if zf444Logic.r35232_condition():
            # a13 # r35232
            jump morte_s358  # EXTERN

        '"A zatem żegnaj."' if zf444Logic.r35233_condition():
            # a14 # r35233
            jump zf444_dispose

        '"A zatem żegnaj."' if zf444Logic.r35234_condition():
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
