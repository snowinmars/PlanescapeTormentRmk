init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.'
    nr 'Номер «626» вышит на правой щеке, прямо под глазом.'

    menu:
        '«Э… здорово тебе досталось».' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '«Э… здорово тебе досталось».' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        'Использовать на трупе свою способность «История костей».' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '«Было приятно поболтать с тобой. Прощай».' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        'Оставить труп в покое.' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        '«Было приятно поболтать с тобой. Прощай».' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        'Оставить труп в покое.' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        '«Было приятно поболтать с тобой. Прощай».' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        'Оставить труп в покое.' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает смотреть на тебя одним уцелевшим глазом.'

    menu:
        '«Тогда прощай».' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '«Тогда прощай».' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '«Тогда прощай».' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '«Тогда прощай».' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '«Тогда прощай».' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr 'Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.'

    jump zf626_dispose
