init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


# s0 # say35018
label zf594_s0: # - # IF ~  True()
    'zf594_s0{#zf594_s0}'
    # nr 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани. На ее лбу угольным карандашом нацарапан номер «594».{#zf594_s0_1}'

    menu:
        'zf594_s0_r35019{#zf594_s0_r35019}' if zf594Logic.r35019_condition(): # '«Итак… чем занимаешься вечером?»{#zf594_s0_r35019}'
            # a0 # r35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        'zf594_s0_r35036{#zf594_s0_r35036}' if zf594Logic.r35036_condition(): # '«Итак… чем занимаешься вечером?»{#zf594_s0_r35036}'
            # a1 # r35036
            jump zf594_s1

        'zf594_s0_r35037{#zf594_s0_r35037}' if zf594Logic.r35037_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf594_s0_r35037}'
            # a2 # r35037
            jump zf594_s1

        'zf594_s0_r35038{#zf594_s0_r35038}' if zf594Logic.r35038_condition(): # 'Использовать на трупе свою способность «История костей».{#zf594_s0_r35038}'
            # a3 # r35038
            jump zf594_s2

        'zf594_s0_r35043{#zf594_s0_r35043}' if zf594Logic.r35043_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf594_s0_r35043}'
            # a4 # r35043
            jump morte_s334  # EXTERN

        'zf594_s0_r35044{#zf594_s0_r35044}' if zf594Logic.r35044_condition(): # 'Оставить труп в покое.{#zf594_s0_r35044}'
            # a5 # r35044
            jump morte_s334  # EXTERN

        'zf594_s0_r35045{#zf594_s0_r35045}' if zf594Logic.r35045_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf594_s0_r35045}'
            # a6 # r35045
            jump zf594_dispose

        'zf594_s0_r35046{#zf594_s0_r35046}' if zf594Logic.r35046_condition(): # 'Оставить труп в покое.{#zf594_s0_r35046}'
            # a7 # r35046
            jump zf594_dispose

        'zf594_s0_r35047{#zf594_s0_r35047}' if zf594Logic.r35047_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf594_s0_r35047}'
            # a8 # r35047
            jump zf594_dispose

        'zf594_s0_r35048{#zf594_s0_r35048}' if zf594Logic.r35048_condition(): # 'Оставить труп в покое.{#zf594_s0_r35048}'
            # a9 # r35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1: # from 0.0 0.1 0.2
    'zf594_s1{#zf594_s1}'
    # nr 'Труп продолжает пялиться на тебя.{#zf594_s1_1}'

    menu:
        'zf594_s1_r35021{#zf594_s1_r35021}' if zf594Logic.r35021_condition(): # '«Тогда прощай».{#zf594_s1_r35021}'
            # a10 # r35021
            jump morte_s334  # EXTERN

        'zf594_s1_r35034{#zf594_s1_r35034}' if zf594Logic.r35034_condition(): # '«Тогда прощай».{#zf594_s1_r35034}'
            # a11 # r35034
            jump zf594_dispose

        'zf594_s1_r35035{#zf594_s1_r35035}' if zf594Logic.r35035_condition(): # '«Тогда прощай».{#zf594_s1_r35035}'
            # a12 # r35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2: # from 0.3
    'zf594_s2{#zf594_s2}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf594_s2_1}'

    menu:
        'zf594_s2_r35040{#zf594_s2_r35040}' if zf594Logic.r35040_condition(): # '«Тогда прощай».{#zf594_s2_r35040}'
            # a13 # r35040
            jump morte_s334  # EXTERN

        'zf594_s2_r35041{#zf594_s2_r35041}' if zf594Logic.r35041_condition(): # '«Тогда прощай».{#zf594_s2_r35041}'
            # a14 # r35041
            jump zf594_dispose

        'zf594_s2_r35042{#zf594_s2_r35042}' if zf594Logic.r35042_condition(): # '«Тогда прощай».{#zf594_s2_r35042}'
            # a15 # r35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3: # - # IF ~  False()
    'zf594_s3{#zf594_s3}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf594_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf594_dispose
