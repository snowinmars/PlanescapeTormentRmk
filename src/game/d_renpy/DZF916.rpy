init 10 python:
    from dlgs.dzf916_logic import Dzf916Logic
    dzf916Logic = Dzf916Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZF916.DLG
# ###


label dzf916_init:
    return


label dzf916_dispose:
    jump show_graphics_menu


# s0 # say24719
label dzf916_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 46
    SPEAKER 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер 916; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf916Logic.r24720_condition():
            # r0 # reply24720
            $ dzf916Logic.r24720_action()
            jump dzf916_s1

        'Итак… чем занимаешься вечером?' if dzf916Logic.r24737_condition():
            # r1 # reply24737
            jump dzf916_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf916Logic.r24738_condition():
            # r2 # reply24738
            jump dzf916_s1

        'Использовать на трупе свою способность История костей.' if dzf916Logic.r24739_condition():
            # r3 # reply24739
            jump dzf916_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24746_condition():
            # r4 # reply24746
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf916Logic.r24747_condition():
            # r5 # reply24747
            jump show_graphics_menu

        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24748_condition():
            # r6 # reply24748
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf916Logic.r24749_condition():
            # r7 # reply24749
            jump show_graphics_menu


# s1 # say24721
label dzf916_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 46
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf916Logic.r24735_condition():
            # r8 # reply24735
            jump show_graphics_menu

        'Тогда прощай.' if dzf916Logic.r24736_condition():
            # r9 # reply24736
            jump show_graphics_menu


# s2 # say24740
label dzf916_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 46
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf916Logic.r24742_condition():
            # r10 # reply24742
            jump show_graphics_menu

        'Тогда прощай.' if dzf916Logic.r24743_condition():
            # r11 # reply24743
            jump show_graphics_menu


# s3 # say24750
label dzf916_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu