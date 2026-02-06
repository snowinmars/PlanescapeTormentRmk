init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf114.Zf114Logic import (Zf114Logic)

    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    $ zf114Logic.talk()
    'zf114_s0{#zf114_s0}'
    # nr 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу. Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.{#zf114_s0_1}'

    menu:
        'zf114_s0_r34987{#zf114_s0_r34987}' if zf114Logic.r34987_condition(): # '«Итак… чем занимаешься вечером?»{#zf114_s0_r34987}'
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        'zf114_s0_r35004{#zf114_s0_r35004}' if zf114Logic.r35004_condition(): # '«Итак… чем занимаешься вечером?»{#zf114_s0_r35004}'
            # a1 # r35004
            jump zf114_s1

        'zf114_s0_r35005{#zf114_s0_r35005}' if zf114Logic.r35005_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf114_s0_r35005}'
            # a2 # r35005
            jump zf114_s1

        'zf114_s0_r35006{#zf114_s0_r35006}' if zf114Logic.r35006_condition(): # 'Использовать на трупе свою способность «История костей».{#zf114_s0_r35006}'
            # a3 # r35006
            jump zf114_s2

        'zf114_s0_r35011{#zf114_s0_r35011}' if zf114Logic.r35011_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf114_s0_r35011}'
            # a4 # r35011
            jump morte_s330  # EXTERN

        'zf114_s0_r35012{#zf114_s0_r35012}' if zf114Logic.r35012_condition(): # 'Оставить труп в покое.{#zf114_s0_r35012}'
            # a5 # r35012
            jump morte_s330  # EXTERN

        'zf114_s0_r35013{#zf114_s0_r35013}' if zf114Logic.r35013_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf114_s0_r35013}'
            # a6 # r35013
            jump zf114_dispose

        'zf114_s0_r35014{#zf114_s0_r35014}' if zf114Logic.r35014_condition(): # 'Оставить труп в покое.{#zf114_s0_r35014}'
            # a7 # r35014
            jump zf114_dispose

        'zf114_s0_r35015{#zf114_s0_r35015}' if zf114Logic.r35015_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf114_s0_r35015}'
            # a8 # r35015
            jump zf114_dispose

        'zf114_s0_r35016{#zf114_s0_r35016}' if zf114Logic.r35016_condition(): # 'Оставить труп в покое.{#zf114_s0_r35016}'
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    'zf114_s1{#zf114_s1}'
    # nr 'Труп продолжает пялиться на тебя.{#zf114_s1_1}'

    menu:
        'zf114_s1_r34989{#zf114_s1_r34989}' if zf114Logic.r34989_condition(): # '«Тогда прощай».{#zf114_s1_r34989}'
            # a10 # r34989
            jump morte_s330  # EXTERN

        'zf114_s1_r35002{#zf114_s1_r35002}' if zf114Logic.r35002_condition(): # '«Тогда прощай».{#zf114_s1_r35002}'
            # a11 # r35002
            jump zf114_dispose

        'zf114_s1_r35003{#zf114_s1_r35003}' if zf114Logic.r35003_condition(): # '«Тогда прощай».{#zf114_s1_r35003}'
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    'zf114_s2{#zf114_s2}'
    # nr 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf114_s2_1}'

    menu:
        'zf114_s2_r35008{#zf114_s2_r35008}' if zf114Logic.r35008_condition(): # '«Тогда прощай».{#zf114_s2_r35008}'
            # a13 # r35008
            jump morte_s330  # EXTERN

        'zf114_s2_r35009{#zf114_s2_r35009}' if zf114Logic.r35009_condition(): # '«Тогда прощай».{#zf114_s2_r35009}'
            # a14 # r35009
            jump zf114_dispose

        'zf114_s2_r35010{#zf114_s2_r35010}' if zf114Logic.r35010_condition(): # '«Тогда прощай».{#zf114_s2_r35010}'
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    'zf114_s3{#zf114_s3}'
    # nr 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf114_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf114_dispose
