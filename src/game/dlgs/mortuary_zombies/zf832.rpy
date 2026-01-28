init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.Zf832Logic import (Zf832Logic)

    zf832Logic = Zf832Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF832.DLG
# ###


# s0 # say35146
label zf832_s0: # - # IF ~  True()
    $ zf832Logic.talk()
    'zf832_s0{#zf832_s0}'
    # nr 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет. Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.{#zf832_s0_1}'

    menu:
        'zf832_s0_r35147{#zf832_s0_r35147}' if zf832Logic.r35147_condition(): # '«Итак… чем занимаешься вечером?»{#zf832_s0_r35147}'
            # a0 # r35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        'zf832_s0_r35164{#zf832_s0_r35164}' if zf832Logic.r35164_condition(): # '«Итак… чем занимаешься вечером?»{#zf832_s0_r35164}'
            # a1 # r35164
            jump zf832_s1

        'zf832_s0_r35165{#zf832_s0_r35165}' if zf832Logic.r35165_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf832_s0_r35165}'
            # a2 # r35165
            jump zf832_s1

        'zf832_s0_r35166{#zf832_s0_r35166}' if zf832Logic.r35166_condition(): # 'Использовать на трупе свою способность «История костей».{#zf832_s0_r35166}'
            # a3 # r35166
            jump zf832_s2

        'zf832_s0_r35171{#zf832_s0_r35171}' if zf832Logic.r35171_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf832_s0_r35171}'
            # a4 # r35171
            jump morte_s350  # EXTERN

        'zf832_s0_r35172{#zf832_s0_r35172}' if zf832Logic.r35172_condition(): # 'Оставить труп в покое.{#zf832_s0_r35172}'
            # a5 # r35172
            jump morte_s350  # EXTERN

        'zf832_s0_r35173{#zf832_s0_r35173}' if zf832Logic.r35173_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf832_s0_r35173}'
            # a6 # r35173
            jump zf832_dispose

        'zf832_s0_r35174{#zf832_s0_r35174}' if zf832Logic.r35174_condition(): # 'Оставить труп в покое.{#zf832_s0_r35174}'
            # a7 # r35174
            jump zf832_dispose

        'zf832_s0_r35175{#zf832_s0_r35175}' if zf832Logic.r35175_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf832_s0_r35175}'
            # a8 # r35175
            jump zf832_dispose

        'zf832_s0_r35176{#zf832_s0_r35176}' if zf832Logic.r35176_condition(): # 'Оставить труп в покое.{#zf832_s0_r35176}'
            # a9 # r35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1: # from 0.0 0.1 0.2
    'zf832_s1{#zf832_s1}'
    # nr 'Труп продолжает пялиться на тебя.{#zf832_s1_1}'

    menu:
        'zf832_s1_r35149{#zf832_s1_r35149}' if zf832Logic.r35149_condition(): # '«Тогда прощай».{#zf832_s1_r35149}'
            # a10 # r35149
            jump morte_s350  # EXTERN

        'zf832_s1_r35162{#zf832_s1_r35162}' if zf832Logic.r35162_condition(): # '«Тогда прощай».{#zf832_s1_r35162}'
            # a11 # r35162
            jump zf832_dispose

        'zf832_s1_r35163{#zf832_s1_r35163}' if zf832Logic.r35163_condition(): # '«Тогда прощай».{#zf832_s1_r35163}'
            # a12 # r35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2: # from 0.3
    'zf832_s2{#zf832_s2}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf832_s2_1}'

    menu:
        'zf832_s2_r35168{#zf832_s2_r35168}' if zf832Logic.r35168_condition(): # '«Тогда прощай».{#zf832_s2_r35168}'
            # a13 # r35168
            jump morte_s350  # EXTERN

        'zf832_s2_r35169{#zf832_s2_r35169}' if zf832Logic.r35169_condition(): # '«Тогда прощай».{#zf832_s2_r35169}'
            # a14 # r35169
            jump zf832_dispose

        'zf832_s2_r35170{#zf832_s2_r35170}' if zf832Logic.r35170_condition(): # '«Тогда прощай».{#zf832_s2_r35170}'
            # a15 # r35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3: # - # IF ~  False()
    'zf832_s3{#zf832_s3}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf832_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf832_dispose
