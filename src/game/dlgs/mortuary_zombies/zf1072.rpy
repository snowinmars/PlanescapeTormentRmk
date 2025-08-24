init 10 python:
    from game.dlgs.mortuary_zombies.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


label zf1072_s0_ctor: # - # IF ~  True()
    scene bg mortuary_f2r3
    show zf1072_img default at center_left_down
    jump zf1072_s0


label zf1072_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f2r3
    show zf1072_img default at center_left_down
    jump zf1072_s3


label zf1072_dispose:
    hide zf1072_img
    jump graphics_menu


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.'
    nr 'У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.'

    menu:
        '«Кажется, у нее бывали деньки и получше…»' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '«Кажется, у нее бывали деньки и получше…»' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        'Использовать на трупе свою способность «История костей».' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        'Оставить труп в покое.' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        'Оставить труп в покое.' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        'Оставить труп в покое.' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr 'Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.'

    menu:
        '«Тогда прощай».' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '«Тогда прощай».' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '«Тогда прощай».' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '«Тогда прощай».' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '«Тогда прощай».' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf1072_dispose
