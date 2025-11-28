init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf679_logic import Zf679Logic
    zf679Logic = Zf679Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF679.DLG
# ###


# s0 # say35178
label zf679_s0: # - # IF ~  True()
    nr 'Ten trup, to ciało stareńkiej kobiety. Oprócz odoru płynu balsamującego, szwów spinających usta i numeru "679" wyszytego na prawym policzku, wygląda najprawdopodobniej niewiele inaczej niż w ostatnich latach swego życia.{#zf679_s0_1}'

    menu:
        '"Więc jak… masz jakieś plany na później?"{#zf679_s0_r35179}' if zf679Logic.r35179_condition():
            # a0 # r35179
            $ zf679Logic.r35179_action()
            jump zf679_s1

        '"Więc jak… masz jakieś plany na później?"{#zf679_s0_r35196}' if zf679Logic.r35196_condition():
            # a1 # r35196
            jump zf679_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zf679_s0_r35197}' if zf679Logic.r35197_condition():
            # a2 # r35197
            jump zf679_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zf679_s0_r35198}' if zf679Logic.r35198_condition():
            # a3 # r35198
            jump zf679_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zf679_s0_r35203}' if zf679Logic.r35203_condition():
            # a4 # r35203
            jump morte_s354  # EXTERN

        'Zostaw truposza w spokoju.{#zf679_s0_r35204}' if zf679Logic.r35204_condition():
            # a5 # r35204
            jump morte_s354  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."{#zf679_s0_r35205}' if zf679Logic.r35205_condition():
            # a6 # r35205
            jump zf679_dispose

        'Zostaw truposza w spokoju.{#zf679_s0_r35206}' if zf679Logic.r35206_condition():
            # a7 # r35206
            jump zf679_dispose

        '"Miło było z tobą pogadać. Żegnaj."{#zf679_s0_r35207}' if zf679Logic.r35207_condition():
            # a8 # r35207
            jump zf679_dispose

        'Zostaw truposza w spokoju.{#zf679_s0_r35208}' if zf679Logic.r35208_condition():
            # a9 # r35208
            jump zf679_dispose


# s1 # say35180
label zf679_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zf679_s1_1}'

    menu:
        '"A zatem żegnaj."{#zf679_s1_r35181}' if zf679Logic.r35181_condition():
            # a10 # r35181
            jump morte_s354  # EXTERN

        '"A zatem żegnaj."{#zf679_s1_r35194}' if zf679Logic.r35194_condition():
            # a11 # r35194
            jump zf679_dispose

        '"A zatem żegnaj."{#zf679_s1_r35195}' if zf679Logic.r35195_condition():
            # a12 # r35195
            jump zf679_dispose


# s2 # say35199
label zf679_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zf679_s2_1}'

    menu:
        '"A zatem żegnaj."{#zf679_s2_r35200}' if zf679Logic.r35200_condition():
            # a13 # r35200
            jump morte_s354  # EXTERN

        '"A zatem żegnaj."{#zf679_s2_r35201}' if zf679Logic.r35201_condition():
            # a14 # r35201
            jump zf679_dispose

        '"A zatem żegnaj."{#zf679_s2_r35202}' if zf679Logic.r35202_condition():
            # a15 # r35202
            jump zf679_dispose


# s3 # say35209
label zf679_s3: # - # IF ~  False()
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zf679_s3_1}'

    menu:
