init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    nr 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу. Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.{#zf114_s0_1}'

    menu:
        '«Итак… чем занимаешься вечером?»{#zf114_s0_r34987}' if zf114Logic.r34987_condition():
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        '«Итак… чем занимаешься вечером?»{#zf114_s0_r35004}' if zf114Logic.r35004_condition():
            # a1 # r35004
            jump zf114_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf114_s0_r35005}' if zf114Logic.r35005_condition():
            # a2 # r35005
            jump zf114_s1

        'Использовать на трупе свою способность «История костей».{#zf114_s0_r35006}' if zf114Logic.r35006_condition():
            # a3 # r35006
            jump zf114_s2

        '«Было приятно с тобой поболтать. Прощай».{#zf114_s0_r35011}' if zf114Logic.r35011_condition():
            # a4 # r35011
            jump morte_s330  # EXTERN

        'Оставить труп в покое.{#zf114_s0_r35012}' if zf114Logic.r35012_condition():
            # a5 # r35012
            jump morte_s330  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».{#zf114_s0_r35013}' if zf114Logic.r35013_condition():
            # a6 # r35013
            jump zf114_dispose

        'Оставить труп в покое.{#zf114_s0_r35014}' if zf114Logic.r35014_condition():
            # a7 # r35014
            jump zf114_dispose

        '«Было приятно с тобой поболтать. Прощай».{#zf114_s0_r35015}' if zf114Logic.r35015_condition():
            # a8 # r35015
            jump zf114_dispose

        'Оставить труп в покое.{#zf114_s0_r35016}' if zf114Logic.r35016_condition():
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.{#zf114_s1_1}'

    menu:
        '«Тогда прощай».{#zf114_s1_r34989}' if zf114Logic.r34989_condition():
            # a10 # r34989
            jump morte_s330  # EXTERN

        '«Тогда прощай».{#zf114_s1_r35002}' if zf114Logic.r35002_condition():
            # a11 # r35002
            jump zf114_dispose

        '«Тогда прощай».{#zf114_s1_r35003}' if zf114Logic.r35003_condition():
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    nr 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf114_s2_1}'

    menu:
        '«Тогда прощай».{#zf114_s2_r35008}' if zf114Logic.r35008_condition():
            # a13 # r35008
            jump morte_s330  # EXTERN

        '«Тогда прощай».{#zf114_s2_r35009}' if zf114Logic.r35009_condition():
            # a14 # r35009
            jump zf114_dispose

        '«Тогда прощай».{#zf114_s2_r35010}' if zf114Logic.r35010_condition():
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    nr 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf114_s3_1}'

    jump zf114_dispose
