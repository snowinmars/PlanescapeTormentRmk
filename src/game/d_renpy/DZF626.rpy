init 10 python:
    from dlgs.dzf626_logic import Dzf626Logic
    dzf626Logic = Dzf626Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


label dzf626_init:
    return


label dzf626_dispose:
    jump show_graphics_menu


# s0 # say35050
label dzf626_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 338
    SPEAKER 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе. Номер 626 вышит на правой щеке, прямо под глазом.'

    menu:
        'Э… здорово тебе досталось.' if dzf626Logic.r35051_condition():
            # r0 # reply35051
            $ dzf626Logic.r35051_action()
            jump dzf626_s1

        'Э… здорово тебе досталось.' if dzf626Logic.r35068_condition():
            # r1 # reply35068
            jump dzf626_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf626Logic.r35069_condition():
            # r2 # reply35069
            jump dzf626_s1

        'Использовать на трупе свою способность История костей.' if dzf626Logic.r35070_condition():
            # r3 # reply35070
            jump dzf626_s2

        'Было приятно поболтать с тобой. Прощай.' if dzf626Logic.r35075_condition():
            # r4 # reply35075
            jump dzf626_dispose

        'Оставить труп в покое.' if dzf626Logic.r35076_condition():
            # r5 # reply35076
            jump dzf626_dispose

        'Было приятно поболтать с тобой. Прощай.' if dzf626Logic.r35077_condition():
            # r6 # reply35077
            jump dzf626_dispose

        'Оставить труп в покое.' if dzf626Logic.r35078_condition():
            # r7 # reply35078
            jump dzf626_dispose

        'Было приятно поболтать с тобой. Прощай.' if dzf626Logic.r35079_condition():
            # r8 # reply35079
            jump dzf626_dispose

        'Оставить труп в покое.' if dzf626Logic.r35080_condition():
            # r9 # reply35080
            jump dzf626_dispose


# s1 # say35052
label dzf626_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 338
    SPEAKER 'Труп продолжает смотреть на тебя одним уцелевшим глазом.'

    menu:
        'Тогда прощай.' if dzf626Logic.r35053_condition():
            # r10 # reply35053
            jump dzf626_dispose

        'Тогда прощай.' if dzf626Logic.r35066_condition():
            # r11 # reply35066
            jump dzf626_dispose

        'Тогда прощай.' if dzf626Logic.r35067_condition():
            # r12 # reply35067
            jump dzf626_dispose


# s2 # say35071
label dzf626_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 338
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf626Logic.r35072_condition():
            # r13 # reply35072
            jump dzf626_dispose

        'Тогда прощай.' if dzf626Logic.r35073_condition():
            # r14 # reply35073
            jump dzf626_dispose

        'Тогда прощай.' if dzf626Logic.r35074_condition():
            # r15 # reply35074
            jump dzf626_dispose


# s3 # say35081
label dzf626_s3:  # - # IF ~  False()
    SPEAKER 'Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.'

    jump dzf626_dispose