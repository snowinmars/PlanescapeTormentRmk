init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0: # - # IF ~  True()
    nr 'Кожа этого женского трупа покрыто замысловатыми узорами татуировок. Кожа на лбу отвалилась, так что номер «1148» вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.{#zf1148_s0_1}'

    menu:
        '«Итак… чем занимаешься вечером?»{#zf1148_s0_r35243}' if zf1148Logic.r35243_condition():
            # a0 # r35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '«Итак… чем занимаешься вечером?»{#zf1148_s0_r35260}' if zf1148Logic.r35260_condition():
            # a1 # r35260
            jump zf1148_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf1148_s0_r35261}' if zf1148Logic.r35261_condition():
            # a2 # r35261
            jump zf1148_s1

        'Использовать на трупе свою способность «История костей».{#zf1148_s0_r35262}' if zf1148Logic.r35262_condition():
            # a3 # r35262
            jump zf1148_s2

        '«Было приятно с тобой поболтать. Прощай».{#zf1148_s0_r35267}' if zf1148Logic.r35267_condition():
            # a4 # r35267
            jump morte_s362  # EXTERN

        'Оставить труп в покое.{#zf1148_s0_r35268}' if zf1148Logic.r35268_condition():
            # a5 # r35268
            jump morte_s362  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».{#zf1148_s0_r35269}' if zf1148Logic.r35269_condition():
            # a6 # r35269
            jump zf1148_dispose

        'Оставить труп в покое.{#zf1148_s0_r35270}' if zf1148Logic.r35270_condition():
            # a7 # r35270
            jump zf1148_dispose

        '«Было приятно с тобой поболтать. Прощай».{#zf1148_s0_r35271}' if zf1148Logic.r35271_condition():
            # a8 # r35271
            jump zf1148_dispose

        'Оставить труп в покое.{#zf1148_s0_r35272}' if zf1148Logic.r35272_condition():
            # a9 # r35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.{#zf1148_s1_1}'

    menu:
        '«Тогда прощай».{#zf1148_s1_r35245}' if zf1148Logic.r35245_condition():
            # a10 # r35245
            jump morte_s362  # EXTERN

        '«Тогда прощай».{#zf1148_s1_r35258}' if zf1148Logic.r35258_condition():
            # a11 # r35258
            jump zf1148_dispose

        '«Тогда прощай».{#zf1148_s1_r35259}' if zf1148Logic.r35259_condition():
            # a12 # r35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf1148_s2_1}'

    menu:
        '«Тогда прощай».{#zf1148_s2_r35264}' if zf1148Logic.r35264_condition():
            # a13 # r35264
            jump morte_s362  # EXTERN

        '«Тогда прощай».{#zf1148_s2_r35265}' if zf1148Logic.r35265_condition():
            # a14 # r35265
            jump zf1148_dispose

        '«Тогда прощай».{#zf1148_s2_r35266}' if zf1148Logic.r35266_condition():
            # a15 # r35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3: # - # IF ~  False()
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf1148_s3_1}'

    jump zf1148_dispose
