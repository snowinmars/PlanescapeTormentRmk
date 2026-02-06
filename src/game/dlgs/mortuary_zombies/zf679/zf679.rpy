init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf679.Zf679Logic import (Zf679Logic)

    zf679Logic = Zf679Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF679.DLG
# ###


# s0 # say35178
label zf679_s0: # - # IF ~  True()
    $ zf679Logic.talk()
    'zf679_s0{#zf679_s0}'
    # nr 'Похоже, это труп довольно таки старой, даже древней женщины. Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер «679», вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.{#zf679_s0_1}'

    menu:
        'zf679_s0_r35179{#zf679_s0_r35179}' if zf679Logic.r35179_condition(): # '«Итак… чем занимаешься вечером?»{#zf679_s0_r35179}'
            # a0 # r35179
            $ zf679Logic.r35179_action()
            jump zf679_s1

        'zf679_s0_r35196{#zf679_s0_r35196}' if zf679Logic.r35196_condition(): # '«Итак… чем занимаешься вечером?»{#zf679_s0_r35196}'
            # a1 # r35196
            jump zf679_s1

        'zf679_s0_r35197{#zf679_s0_r35197}' if zf679Logic.r35197_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf679_s0_r35197}'
            # a2 # r35197
            jump zf679_s1

        'zf679_s0_r35198{#zf679_s0_r35198}' if zf679Logic.r35198_condition(): # 'Использовать на трупе свою способность «История костей».{#zf679_s0_r35198}'
            # a3 # r35198
            jump zf679_s2

        'zf679_s0_r35203{#zf679_s0_r35203}' if zf679Logic.r35203_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf679_s0_r35203}'
            # a4 # r35203
            jump morte_s354  # EXTERN

        'zf679_s0_r35204{#zf679_s0_r35204}' if zf679Logic.r35204_condition(): # 'Оставить труп в покое.{#zf679_s0_r35204}'
            # a5 # r35204
            jump morte_s354  # EXTERN

        'zf679_s0_r35205{#zf679_s0_r35205}' if zf679Logic.r35205_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf679_s0_r35205}'
            # a6 # r35205
            jump zf679_dispose

        'zf679_s0_r35206{#zf679_s0_r35206}' if zf679Logic.r35206_condition(): # 'Оставить труп в покое.{#zf679_s0_r35206}'
            # a7 # r35206
            jump zf679_dispose

        'zf679_s0_r35207{#zf679_s0_r35207}' if zf679Logic.r35207_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf679_s0_r35207}'
            # a8 # r35207
            jump zf679_dispose

        'zf679_s0_r35208{#zf679_s0_r35208}' if zf679Logic.r35208_condition(): # 'Оставить труп в покое.{#zf679_s0_r35208}'
            # a9 # r35208
            jump zf679_dispose


# s1 # say35180
label zf679_s1: # from 0.0 0.1 0.2
    'zf679_s1{#zf679_s1}'
    # nr 'Труп продолжает пялиться на тебя.{#zf679_s1_1}'

    menu:
        'zf679_s1_r35181{#zf679_s1_r35181}' if zf679Logic.r35181_condition(): # '«Тогда прощай».{#zf679_s1_r35181}'
            # a10 # r35181
            jump morte_s354  # EXTERN

        'zf679_s1_r35194{#zf679_s1_r35194}' if zf679Logic.r35194_condition(): # '«Тогда прощай».{#zf679_s1_r35194}'
            # a11 # r35194
            jump zf679_dispose

        'zf679_s1_r35195{#zf679_s1_r35195}' if zf679Logic.r35195_condition(): # '«Тогда прощай».{#zf679_s1_r35195}'
            # a12 # r35195
            jump zf679_dispose


# s2 # say35199
label zf679_s2: # from 0.3
    'zf679_s2{#zf679_s2}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf679_s2_1}'

    menu:
        'zf679_s2_r35200{#zf679_s2_r35200}' if zf679Logic.r35200_condition(): # '«Тогда прощай».{#zf679_s2_r35200}'
            # a13 # r35200
            jump morte_s354  # EXTERN

        'zf679_s2_r35201{#zf679_s2_r35201}' if zf679Logic.r35201_condition(): # '«Тогда прощай».{#zf679_s2_r35201}'
            # a14 # r35201
            jump zf679_dispose

        'zf679_s2_r35202{#zf679_s2_r35202}' if zf679Logic.r35202_condition(): # '«Тогда прощай».{#zf679_s2_r35202}'
            # a15 # r35202
            jump zf679_dispose


# s3 # say35209
label zf679_s3: # - # IF ~  False()
    'zf679_s3{#zf679_s3}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf679_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf679_dispose
