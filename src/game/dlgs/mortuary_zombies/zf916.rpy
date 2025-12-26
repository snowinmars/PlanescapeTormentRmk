init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf916_logic import Zf916Logic
    zf916Logic = Zf916Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF916.DLG
# ###


# s0 # say24719
label zf916_s0: # - # IF ~  True()
    'zf916_s0{#zf916_s0}'
    # nr 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер «916»; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.{#zf916_s0_1}'

    menu:
        'zf916_s0_r24720{#zf916_s0_r24720}' if zf916Logic.r24720_condition(): # '«Итак… чем занимаешься вечером?»{#zf916_s0_r24720}'
            # a0 # r24720
            $ zf916Logic.r24720_action()
            jump zf916_s1

        'zf916_s0_r24737{#zf916_s0_r24737}' if zf916Logic.r24737_condition(): # '«Итак… чем занимаешься вечером?»{#zf916_s0_r24737}'
            # a1 # r24737
            jump zf916_s1

        'zf916_s0_r24738{#zf916_s0_r24738}' if zf916Logic.r24738_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf916_s0_r24738}'
            # a2 # r24738
            jump zf916_s1

        'zf916_s0_r24739{#zf916_s0_r24739}' if zf916Logic.r24739_condition(): # 'Использовать на трупе свою способность «История костей».{#zf916_s0_r24739}'
            # a3 # r24739
            jump zf916_s2

        'zf916_s0_r24744{#zf916_s0_r24744}' if zf916Logic.r24744_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf916_s0_r24744}'
            # a4 # r24744
            jump morte_s46  # EXTERN

        'zf916_s0_r24745{#zf916_s0_r24745}' if zf916Logic.r24745_condition(): # 'Оставить труп в покое.{#zf916_s0_r24745}'
            # a5 # r24745
            jump morte_s46  # EXTERN

        'zf916_s0_r24746{#zf916_s0_r24746}' if zf916Logic.r24746_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf916_s0_r24746}'
            # a6 # r24746
            jump zf916_dispose

        'zf916_s0_r24747{#zf916_s0_r24747}' if zf916Logic.r24747_condition(): # 'Оставить труп в покое.{#zf916_s0_r24747}'
            # a7 # r24747
            jump zf916_dispose

        'zf916_s0_r24748{#zf916_s0_r24748}' if zf916Logic.r24748_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf916_s0_r24748}'
            # a8 # r24748
            jump zf916_dispose

        'zf916_s0_r24749{#zf916_s0_r24749}' if zf916Logic.r24749_condition(): # 'Оставить труп в покое.{#zf916_s0_r24749}'
            # a9 # r24749
            jump zf916_dispose


# s1 # say24721
label zf916_s1: # from 0.0 0.1 0.2
    'zf916_s1{#zf916_s1}'
    # nr 'Труп продолжает пялиться на тебя.{#zf916_s1_1}'

    menu:
        'zf916_s1_r24722{#zf916_s1_r24722}' if zf916Logic.r24722_condition(): # '«Тогда прощай».{#zf916_s1_r24722}'
            # a10 # r24722
            jump morte_s46  # EXTERN

        'zf916_s1_r24735{#zf916_s1_r24735}' if zf916Logic.r24735_condition(): # '«Тогда прощай».{#zf916_s1_r24735}'
            # a11 # r24735
            jump zf916_dispose

        'zf916_s1_r24736{#zf916_s1_r24736}' if zf916Logic.r24736_condition(): # '«Тогда прощай».{#zf916_s1_r24736}'
            # a12 # r24736
            jump zf916_dispose


# s2 # say24740
label zf916_s2: # from 0.3
    'zf916_s2{#zf916_s2}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf916_s2_1}'

    menu:
        'zf916_s2_r24741{#zf916_s2_r24741}' if zf916Logic.r24741_condition(): # '«Тогда прощай».{#zf916_s2_r24741}'
            # a13 # r24741
            jump morte_s46  # EXTERN

        'zf916_s2_r24742{#zf916_s2_r24742}' if zf916Logic.r24742_condition(): # '«Тогда прощай».{#zf916_s2_r24742}'
            # a14 # r24742
            jump zf916_dispose

        'zf916_s2_r24743{#zf916_s2_r24743}' if zf916Logic.r24743_condition(): # '«Тогда прощай».{#zf916_s2_r24743}'
            # a15 # r24743
            jump zf916_dispose


# s3 # say24750
label zf916_s3: # - # IF ~  False()
    'zf916_s3{#zf916_s3}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf916_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf916_dispose
