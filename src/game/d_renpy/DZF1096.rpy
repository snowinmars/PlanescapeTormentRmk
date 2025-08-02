init 10 python:
    from dlgs.dzf1096_logic import Dzf1096Logic
    dzf1096Logic = Dzf1096Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZF1096.DLG
# ###


label dzf1096_init:
    return


label dzf1096_dispose:
    jump show_graphics_menu


# s0 # say35082
label dzf1096_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 342
    SPEAKER 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли. Кто-то под трафарет написал номер 1096 у нее на лбу; ее губы крепко зашиты.'

    menu:
        'Э… Красивая коса.' if dzf1096Logic.r35083_condition():
            # r0 # reply35083
            $ dzf1096Logic.r35083_action()
            jump dzf1096_s1

        'Э… Красивая коса.' if dzf1096Logic.r35100_condition():
            # r1 # reply35100
            jump dzf1096_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1096Logic.r35101_condition():
            # r2 # reply35101
            jump dzf1096_s1

        'Использовать на трупе свою способность История костей.' if dzf1096Logic.r35102_condition():
            # r3 # reply35102
            jump dzf1096_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35109_condition():
            # r4 # reply35109
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf1096Logic.r35110_condition():
            # r5 # reply35110
            jump show_graphics_menu

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35111_condition():
            # r6 # reply35111
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf1096Logic.r35112_condition():
            # r7 # reply35112
            jump show_graphics_menu


# s1 # say35084
label dzf1096_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 342
    SPEAKER 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.'

    menu:
        'Тогда прощай.' if dzf1096Logic.r35098_condition():
            # r8 # reply35098
            jump show_graphics_menu

        'Тогда прощай.' if dzf1096Logic.r35099_condition():
            # r9 # reply35099
            jump show_graphics_menu


# s2 # say35103
label dzf1096_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 342
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf1096Logic.r35105_condition():
            # r10 # reply35105
            jump show_graphics_menu

        'Тогда прощай.' if dzf1096Logic.r35106_condition():
            # r11 # reply35106
            jump show_graphics_menu


# s3 # say35113
label dzf1096_s3:  # - # IF ~  False()
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu